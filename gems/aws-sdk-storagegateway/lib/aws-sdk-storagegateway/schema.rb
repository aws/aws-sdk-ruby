# frozen_string_literal: true

# This is generated code!

module Aws::StorageGateway
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivateGatewayInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ActivateGatewayInput', name: 'ActivateGatewayInput')
    ActivateGatewayOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ActivateGatewayOutput', name: 'ActivateGatewayOutput')
    ActivationKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#ActivationKey', name: 'ActivationKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ActiveDirectoryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#ActiveDirectoryStatus', name: 'ActiveDirectoryStatus')
    AddCacheInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddCacheInput', name: 'AddCacheInput')
    AddCacheOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddCacheOutput', name: 'AddCacheOutput')
    AddTagsToResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddTagsToResourceInput', name: 'AddTagsToResourceInput')
    AddTagsToResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddTagsToResourceOutput', name: 'AddTagsToResourceOutput')
    AddUploadBufferInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddUploadBufferInput', name: 'AddUploadBufferInput')
    AddUploadBufferOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddUploadBufferOutput', name: 'AddUploadBufferOutput')
    AddWorkingStorageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddWorkingStorageInput', name: 'AddWorkingStorageInput')
    AddWorkingStorageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AddWorkingStorageOutput', name: 'AddWorkingStorageOutput')
    AssignTapePoolInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AssignTapePoolInput', name: 'AssignTapePoolInput')
    AssignTapePoolOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AssignTapePoolOutput', name: 'AssignTapePoolOutput')
    AssociateFileSystemInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AssociateFileSystemInput', name: 'AssociateFileSystemInput')
    AssociateFileSystemOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AssociateFileSystemOutput', name: 'AssociateFileSystemOutput')
    AttachVolumeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AttachVolumeInput', name: 'AttachVolumeInput')
    AttachVolumeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AttachVolumeOutput', name: 'AttachVolumeOutput')
    AuditDestinationARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#AuditDestinationARN', name: 'AuditDestinationARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Authentication = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Authentication', name: 'Authentication', traits: {"smithy.api#length" => {"min" => 5, "max" => 15}})
    AutomaticTapeCreationPolicyInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AutomaticTapeCreationPolicyInfo', name: 'AutomaticTapeCreationPolicyInfo')
    AutomaticTapeCreationPolicyInfos = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#AutomaticTapeCreationPolicyInfos', name: 'AutomaticTapeCreationPolicyInfos')
    AutomaticTapeCreationRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#AutomaticTapeCreationRule', name: 'AutomaticTapeCreationRule')
    AutomaticTapeCreationRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#AutomaticTapeCreationRules', name: 'AutomaticTapeCreationRules', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AutomaticUpdatePolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#AutomaticUpdatePolicy', name: 'AutomaticUpdatePolicy')
    AvailabilityMonitorTestStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#AvailabilityMonitorTestStatus', name: 'AvailabilityMonitorTestStatus')
    BandwidthDownloadRateLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#BandwidthDownloadRateLimit', name: 'BandwidthDownloadRateLimit', traits: {"smithy.api#range" => {"min" => 102400}})
    BandwidthRateLimitInterval = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#BandwidthRateLimitInterval', name: 'BandwidthRateLimitInterval')
    BandwidthRateLimitIntervals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#BandwidthRateLimitIntervals', name: 'BandwidthRateLimitIntervals', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BandwidthType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#BandwidthType', name: 'BandwidthType', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}})
    BandwidthUploadRateLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#BandwidthUploadRateLimit', name: 'BandwidthUploadRateLimit', traits: {"smithy.api#range" => {"min" => 51200}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.storagegateway#Boolean', name: 'Boolean')
    Boolean2 = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.storagegateway#Boolean2', name: 'Boolean2', traits: {"smithy.api#default" => false})
    CacheAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CacheAttributes', name: 'CacheAttributes')
    CacheReportARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#CacheReportARN', name: 'CacheReportARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    CacheReportFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CacheReportFilter', name: 'CacheReportFilter')
    CacheReportFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#CacheReportFilterList', name: 'CacheReportFilterList')
    CacheReportFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#CacheReportFilterName', name: 'CacheReportFilterName')
    CacheReportFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#CacheReportFilterValue', name: 'CacheReportFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    CacheReportFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#CacheReportFilterValues', name: 'CacheReportFilterValues')
    CacheReportInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CacheReportInfo', name: 'CacheReportInfo')
    CacheReportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#CacheReportList', name: 'CacheReportList')
    CacheReportName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#CacheReportName', name: 'CacheReportName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CacheReportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#CacheReportStatus', name: 'CacheReportStatus')
    CacheStaleTimeoutInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#CacheStaleTimeoutInSeconds', name: 'CacheStaleTimeoutInSeconds')
    CachediSCSIVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CachediSCSIVolume', name: 'CachediSCSIVolume')
    CachediSCSIVolumes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#CachediSCSIVolumes', name: 'CachediSCSIVolumes')
    CancelArchivalInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CancelArchivalInput', name: 'CancelArchivalInput')
    CancelArchivalOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CancelArchivalOutput', name: 'CancelArchivalOutput')
    CancelCacheReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CancelCacheReportInput', name: 'CancelCacheReportInput')
    CancelCacheReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CancelCacheReportOutput', name: 'CancelCacheReportOutput')
    CancelRetrievalInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CancelRetrievalInput', name: 'CancelRetrievalInput')
    CancelRetrievalOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CancelRetrievalOutput', name: 'CancelRetrievalOutput')
    CaseSensitivity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#CaseSensitivity', name: 'CaseSensitivity')
    ChapCredentials = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#ChapCredentials', name: 'ChapCredentials')
    ChapInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ChapInfo', name: 'ChapInfo')
    ChapSecret = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#ChapSecret', name: 'ChapSecret', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 5, "max" => 100}})
    CloudWatchLogGroupARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#CloudWatchLogGroupARN', name: 'CloudWatchLogGroupARN', traits: {"smithy.api#length" => {"min" => 0, "max" => 562}})
    CreateCachediSCSIVolumeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateCachediSCSIVolumeInput', name: 'CreateCachediSCSIVolumeInput')
    CreateCachediSCSIVolumeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateCachediSCSIVolumeOutput', name: 'CreateCachediSCSIVolumeOutput')
    CreateNFSFileShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateNFSFileShareInput', name: 'CreateNFSFileShareInput')
    CreateNFSFileShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateNFSFileShareOutput', name: 'CreateNFSFileShareOutput')
    CreateSMBFileShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateSMBFileShareInput', name: 'CreateSMBFileShareInput')
    CreateSMBFileShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateSMBFileShareOutput', name: 'CreateSMBFileShareOutput')
    CreateSnapshotFromVolumeRecoveryPointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateSnapshotFromVolumeRecoveryPointInput', name: 'CreateSnapshotFromVolumeRecoveryPointInput')
    CreateSnapshotFromVolumeRecoveryPointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateSnapshotFromVolumeRecoveryPointOutput', name: 'CreateSnapshotFromVolumeRecoveryPointOutput')
    CreateSnapshotInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateSnapshotInput', name: 'CreateSnapshotInput')
    CreateSnapshotOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateSnapshotOutput', name: 'CreateSnapshotOutput')
    CreateStorediSCSIVolumeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateStorediSCSIVolumeInput', name: 'CreateStorediSCSIVolumeInput')
    CreateStorediSCSIVolumeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateStorediSCSIVolumeOutput', name: 'CreateStorediSCSIVolumeOutput')
    CreateTapePoolInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateTapePoolInput', name: 'CreateTapePoolInput')
    CreateTapePoolOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateTapePoolOutput', name: 'CreateTapePoolOutput')
    CreateTapeWithBarcodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateTapeWithBarcodeInput', name: 'CreateTapeWithBarcodeInput')
    CreateTapeWithBarcodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateTapeWithBarcodeOutput', name: 'CreateTapeWithBarcodeOutput')
    CreateTapesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateTapesInput', name: 'CreateTapesInput')
    CreateTapesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#CreateTapesOutput', name: 'CreateTapesOutput')
    CreatedDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.storagegateway#CreatedDate', name: 'CreatedDate')
    DNSHostName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DNSHostName', name: 'DNSHostName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])$"})
    DayOfMonth = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#DayOfMonth', name: 'DayOfMonth', traits: {"smithy.api#range" => {"min" => 1, "max" => 28}})
    DayOfWeek = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#DayOfWeek', name: 'DayOfWeek', traits: {"smithy.api#range" => {"min" => 0, "max" => 6}})
    DaysOfWeek = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#DaysOfWeek', name: 'DaysOfWeek', traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    DeleteAutomaticTapeCreationPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteAutomaticTapeCreationPolicyInput', name: 'DeleteAutomaticTapeCreationPolicyInput')
    DeleteAutomaticTapeCreationPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteAutomaticTapeCreationPolicyOutput', name: 'DeleteAutomaticTapeCreationPolicyOutput')
    DeleteBandwidthRateLimitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteBandwidthRateLimitInput', name: 'DeleteBandwidthRateLimitInput')
    DeleteBandwidthRateLimitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteBandwidthRateLimitOutput', name: 'DeleteBandwidthRateLimitOutput')
    DeleteCacheReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteCacheReportInput', name: 'DeleteCacheReportInput')
    DeleteCacheReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteCacheReportOutput', name: 'DeleteCacheReportOutput')
    DeleteChapCredentialsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteChapCredentialsInput', name: 'DeleteChapCredentialsInput')
    DeleteChapCredentialsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteChapCredentialsOutput', name: 'DeleteChapCredentialsOutput')
    DeleteFileShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteFileShareInput', name: 'DeleteFileShareInput')
    DeleteFileShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteFileShareOutput', name: 'DeleteFileShareOutput')
    DeleteGatewayInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteGatewayInput', name: 'DeleteGatewayInput')
    DeleteGatewayOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteGatewayOutput', name: 'DeleteGatewayOutput')
    DeleteSnapshotScheduleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteSnapshotScheduleInput', name: 'DeleteSnapshotScheduleInput')
    DeleteSnapshotScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteSnapshotScheduleOutput', name: 'DeleteSnapshotScheduleOutput')
    DeleteTapeArchiveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteTapeArchiveInput', name: 'DeleteTapeArchiveInput')
    DeleteTapeArchiveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteTapeArchiveOutput', name: 'DeleteTapeArchiveOutput')
    DeleteTapeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteTapeInput', name: 'DeleteTapeInput')
    DeleteTapeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteTapeOutput', name: 'DeleteTapeOutput')
    DeleteTapePoolInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteTapePoolInput', name: 'DeleteTapePoolInput')
    DeleteTapePoolOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteTapePoolOutput', name: 'DeleteTapePoolOutput')
    DeleteVolumeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteVolumeInput', name: 'DeleteVolumeInput')
    DeleteVolumeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeleteVolumeOutput', name: 'DeleteVolumeOutput')
    DeprecationDate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DeprecationDate', name: 'DeprecationDate', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeAvailabilityMonitorTestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeAvailabilityMonitorTestInput', name: 'DescribeAvailabilityMonitorTestInput')
    DescribeAvailabilityMonitorTestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeAvailabilityMonitorTestOutput', name: 'DescribeAvailabilityMonitorTestOutput')
    DescribeBandwidthRateLimitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeBandwidthRateLimitInput', name: 'DescribeBandwidthRateLimitInput')
    DescribeBandwidthRateLimitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeBandwidthRateLimitOutput', name: 'DescribeBandwidthRateLimitOutput')
    DescribeBandwidthRateLimitScheduleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeBandwidthRateLimitScheduleInput', name: 'DescribeBandwidthRateLimitScheduleInput')
    DescribeBandwidthRateLimitScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeBandwidthRateLimitScheduleOutput', name: 'DescribeBandwidthRateLimitScheduleOutput')
    DescribeCacheInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeCacheInput', name: 'DescribeCacheInput')
    DescribeCacheOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeCacheOutput', name: 'DescribeCacheOutput')
    DescribeCacheReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeCacheReportInput', name: 'DescribeCacheReportInput')
    DescribeCacheReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeCacheReportOutput', name: 'DescribeCacheReportOutput')
    DescribeCachediSCSIVolumesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeCachediSCSIVolumesInput', name: 'DescribeCachediSCSIVolumesInput')
    DescribeCachediSCSIVolumesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeCachediSCSIVolumesOutput', name: 'DescribeCachediSCSIVolumesOutput')
    DescribeChapCredentialsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeChapCredentialsInput', name: 'DescribeChapCredentialsInput')
    DescribeChapCredentialsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeChapCredentialsOutput', name: 'DescribeChapCredentialsOutput')
    DescribeFileSystemAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeFileSystemAssociationsInput', name: 'DescribeFileSystemAssociationsInput')
    DescribeFileSystemAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeFileSystemAssociationsOutput', name: 'DescribeFileSystemAssociationsOutput')
    DescribeGatewayInformationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeGatewayInformationInput', name: 'DescribeGatewayInformationInput')
    DescribeGatewayInformationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeGatewayInformationOutput', name: 'DescribeGatewayInformationOutput')
    DescribeMaintenanceStartTimeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeMaintenanceStartTimeInput', name: 'DescribeMaintenanceStartTimeInput')
    DescribeMaintenanceStartTimeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeMaintenanceStartTimeOutput', name: 'DescribeMaintenanceStartTimeOutput')
    DescribeNFSFileSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeNFSFileSharesInput', name: 'DescribeNFSFileSharesInput')
    DescribeNFSFileSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeNFSFileSharesOutput', name: 'DescribeNFSFileSharesOutput')
    DescribeSMBFileSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeSMBFileSharesInput', name: 'DescribeSMBFileSharesInput')
    DescribeSMBFileSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeSMBFileSharesOutput', name: 'DescribeSMBFileSharesOutput')
    DescribeSMBSettingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeSMBSettingsInput', name: 'DescribeSMBSettingsInput')
    DescribeSMBSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeSMBSettingsOutput', name: 'DescribeSMBSettingsOutput')
    DescribeSnapshotScheduleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeSnapshotScheduleInput', name: 'DescribeSnapshotScheduleInput')
    DescribeSnapshotScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeSnapshotScheduleOutput', name: 'DescribeSnapshotScheduleOutput')
    DescribeStorediSCSIVolumesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeStorediSCSIVolumesInput', name: 'DescribeStorediSCSIVolumesInput')
    DescribeStorediSCSIVolumesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeStorediSCSIVolumesOutput', name: 'DescribeStorediSCSIVolumesOutput')
    DescribeTapeArchivesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeTapeArchivesInput', name: 'DescribeTapeArchivesInput')
    DescribeTapeArchivesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeTapeArchivesOutput', name: 'DescribeTapeArchivesOutput')
    DescribeTapeRecoveryPointsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeTapeRecoveryPointsInput', name: 'DescribeTapeRecoveryPointsInput')
    DescribeTapeRecoveryPointsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeTapeRecoveryPointsOutput', name: 'DescribeTapeRecoveryPointsOutput')
    DescribeTapesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeTapesInput', name: 'DescribeTapesInput')
    DescribeTapesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeTapesOutput', name: 'DescribeTapesOutput')
    DescribeUploadBufferInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeUploadBufferInput', name: 'DescribeUploadBufferInput')
    DescribeUploadBufferOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeUploadBufferOutput', name: 'DescribeUploadBufferOutput')
    DescribeVTLDevicesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeVTLDevicesInput', name: 'DescribeVTLDevicesInput')
    DescribeVTLDevicesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeVTLDevicesOutput', name: 'DescribeVTLDevicesOutput')
    DescribeWorkingStorageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeWorkingStorageInput', name: 'DescribeWorkingStorageInput')
    DescribeWorkingStorageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DescribeWorkingStorageOutput', name: 'DescribeWorkingStorageOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DetachVolumeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DetachVolumeInput', name: 'DetachVolumeInput')
    DetachVolumeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DetachVolumeOutput', name: 'DetachVolumeOutput')
    DeviceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DeviceType', name: 'DeviceType', traits: {"smithy.api#length" => {"min" => 2, "max" => 50}})
    DeviceiSCSIAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DeviceiSCSIAttributes', name: 'DeviceiSCSIAttributes')
    DisableGatewayInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DisableGatewayInput', name: 'DisableGatewayInput')
    DisableGatewayOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DisableGatewayOutput', name: 'DisableGatewayOutput')
    DisassociateFileSystemInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DisassociateFileSystemInput', name: 'DisassociateFileSystemInput')
    DisassociateFileSystemOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#DisassociateFileSystemOutput', name: 'DisassociateFileSystemOutput')
    Disk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#Disk', name: 'Disk')
    DiskAllocationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DiskAllocationType', name: 'DiskAllocationType', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    DiskAttribute = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DiskAttribute', name: 'DiskAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DiskAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#DiskAttributeList', name: 'DiskAttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    DiskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DiskId', name: 'DiskId', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    DiskIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#DiskIds', name: 'DiskIds')
    Disks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#Disks', name: 'Disks')
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"})
    DomainUserName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DomainUserName', name: 'DomainUserName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\w[\\w\\.\\- ]*$"})
    DomainUserPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#DomainUserPassword', name: 'DomainUserPassword', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    DoubleObject = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.storagegateway#DoubleObject', name: 'DoubleObject')
    Ec2InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Ec2InstanceId', name: 'Ec2InstanceId')
    Ec2InstanceRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Ec2InstanceRegion', name: 'Ec2InstanceRegion')
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#EncryptionType', name: 'EncryptionType')
    EndpointNetworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#EndpointNetworkConfiguration', name: 'EndpointNetworkConfiguration')
    EndpointType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#EndpointType', name: 'EndpointType', traits: {"smithy.api#length" => {"min" => 4, "max" => 8}})
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#ErrorCode', name: 'ErrorCode')
    EvictFilesFailingUploadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#EvictFilesFailingUploadInput', name: 'EvictFilesFailingUploadInput')
    EvictFilesFailingUploadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#EvictFilesFailingUploadOutput', name: 'EvictFilesFailingUploadOutput')
    FileShareARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileShareARN', name: 'FileShareARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    FileShareARNList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FileShareARNList', name: 'FileShareARNList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FileShareClientList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FileShareClientList', name: 'FileShareClientList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FileShareId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileShareId', name: 'FileShareId', traits: {"smithy.api#length" => {"min" => 12, "max" => 30}})
    FileShareInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#FileShareInfo', name: 'FileShareInfo')
    FileShareInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FileShareInfoList', name: 'FileShareInfoList')
    FileShareName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileShareName', name: 'FileShareName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FileShareStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileShareStatus', name: 'FileShareStatus', traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    FileShareType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#FileShareType', name: 'FileShareType')
    FileSystemAssociationARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationARN', name: 'FileSystemAssociationARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    FileSystemAssociationARNList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationARNList', name: 'FileSystemAssociationARNList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FileSystemAssociationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationId', name: 'FileSystemAssociationId', traits: {"smithy.api#length" => {"min" => 10, "max" => 30}})
    FileSystemAssociationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationInfo', name: 'FileSystemAssociationInfo')
    FileSystemAssociationInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationInfoList', name: 'FileSystemAssociationInfoList')
    FileSystemAssociationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationStatus', name: 'FileSystemAssociationStatus', traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    FileSystemAssociationStatusDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationStatusDetail', name: 'FileSystemAssociationStatusDetail')
    FileSystemAssociationStatusDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationStatusDetails', name: 'FileSystemAssociationStatusDetails')
    FileSystemAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationSummary', name: 'FileSystemAssociationSummary')
    FileSystemAssociationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationSummaryList', name: 'FileSystemAssociationSummaryList')
    FileSystemAssociationSyncErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileSystemAssociationSyncErrorCode', name: 'FileSystemAssociationSyncErrorCode')
    FileSystemLocationARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#FileSystemLocationARN', name: 'FileSystemLocationARN', traits: {"smithy.api#length" => {"min" => 8, "max" => 512}})
    Folder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Folder', name: 'Folder', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FolderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#FolderList', name: 'FolderList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    GatewayARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#GatewayARN', name: 'GatewayARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    GatewayCapacity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#GatewayCapacity', name: 'GatewayCapacity')
    GatewayId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#GatewayId', name: 'GatewayId', traits: {"smithy.api#length" => {"min" => 12, "max" => 30}})
    GatewayInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#GatewayInfo', name: 'GatewayInfo')
    GatewayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#GatewayName', name: 'GatewayName', traits: {"smithy.api#length" => {"min" => 2, "max" => 255}, "smithy.api#pattern" => "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$"})
    GatewayNetworkInterfaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#GatewayNetworkInterfaces', name: 'GatewayNetworkInterfaces')
    GatewayOperationalState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#GatewayOperationalState', name: 'GatewayOperationalState', traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    GatewayState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#GatewayState', name: 'GatewayState', traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    GatewayTimezone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#GatewayTimezone', name: 'GatewayTimezone', traits: {"smithy.api#length" => {"min" => 3, "max" => 10}})
    GatewayType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#GatewayType', name: 'GatewayType', traits: {"smithy.api#length" => {"min" => 2, "max" => 20}})
    Gateways = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#Gateways', name: 'Gateways')
    Host = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Host', name: 'Host', traits: {"smithy.api#length" => {"min" => 2, "max" => 1024}, "smithy.api#pattern" => "^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])(:(\\d+))?$|^(?:\\[(?:(?:(?:[A-Fa-f0-9]{1,4}:){6}|(?=(?:[A-Fa-f0-9]{0,4}:){0,6}(?:[0-9]{1,3}\\.){3}[0-9]{1,3}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){0,5}|:)(?:(?::[0-9A-Fa-f]{1,4}){1,5}:|:)|::(?:[A-Fa-f0-9]{1,4}:){5})(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}|(?=(?:[A-Fa-f0-9]{0,4}:){0,7}[A-Fa-f0-9]{0,4}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){1,7}|:)(?:(:[0-9A-Fa-f]{1,4}){1,7}|:)|(?:[A-Fa-f0-9]{1,4}:){7}:|:(:[A-Fa-f0-9]{1,4}){7})\\]:\\d+$|^(?:(?:(?:[A-Fa-f0-9]{1,4}:){6}|(?=(?:[A-Fa-f0-9]{0,4}:){0,6}(?:[0-9]{1,3}\\.){3}[0-9]{1,3}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){0,5}|:)(?:(?::[0-9A-Fa-f]{1,4}){1,5}:|:)|::(?:[A-Fa-f0-9]{1,4}:){5})(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}|(?=(?:[A-Fa-f0-9]{0,4}:){0,7}[A-Fa-f0-9]{0,4}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){1,7}|:)(?:(:[0-9A-Fa-f]{1,4}){1,7}|:)|(?:[A-Fa-f0-9]{1,4}:){7}:|:(:[A-Fa-f0-9]{1,4}){7})$)$"})
    HostEnvironment = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#HostEnvironment', name: 'HostEnvironment')
    HostEnvironmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#HostEnvironmentId', name: 'HostEnvironmentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Hosts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#Hosts', name: 'Hosts')
    HourOfDay = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#HourOfDay', name: 'HourOfDay', traits: {"smithy.api#range" => {"min" => 0, "max" => 23}})
    IPV4Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#IPV4Address', name: 'IPV4Address', traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^((25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])(\\.(?!$)|$)){4}$"})
    Initiator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Initiator', name: 'Initiator', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Initiators = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#Initiators', name: 'Initiators')
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidGatewayRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#InvalidGatewayRequestException', name: 'InvalidGatewayRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#IpAddressList', name: 'IpAddressList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Ipv4OrIpv6AddressCIDR = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Ipv4OrIpv6AddressCIDR', name: 'Ipv4OrIpv6AddressCIDR', traits: {"smithy.api#pattern" => "^(?:(?:[0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}(?:[0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(?:\\/(?:[0-9]|[1-2][0-9]|3[0-2]))?$|^(?:(?:(?:[A-Fa-f0-9]{1,4}:){6}|(?=(?:[A-Fa-f0-9]{0,4}:){0,6}(?:[0-9]{1,3}\\.){3}[0-9]{1,3}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){0,5}|:)(?:(?::[0-9A-Fa-f]{1,4}){1,5}:|:)|::(?:[A-Fa-f0-9]{1,4}:){5})(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}|(?=(?:[A-Fa-f0-9]{0,4}:){0,7}[A-Fa-f0-9]{0,4}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){1,7}|:)(?:(:[0-9A-Fa-f]{1,4}){1,7}|:)|(?:[A-Fa-f0-9]{1,4}:){7}:|:(:[A-Fa-f0-9]{1,4}){7})(?:\\/(?:12[0-8]|1[01][0-9]|[1-9]?[0-9]))?$"})
    IqnName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#IqnName', name: 'IqnName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z:.-]+$"})
    JoinDomainInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#JoinDomainInput', name: 'JoinDomainInput')
    JoinDomainOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#JoinDomainOutput', name: 'JoinDomainOutput')
    KMSKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#KMSKey', name: 'KMSKey', traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}, "smithy.api#pattern" => "^(^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):kms:([a-zA-Z0-9-]+):([0-9]+):(key|alias)/(\\S+)$)|(^alias/(\\S+)$)$"})
    LastSoftwareUpdate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#LastSoftwareUpdate', name: 'LastSoftwareUpdate', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ListAutomaticTapeCreationPoliciesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListAutomaticTapeCreationPoliciesInput', name: 'ListAutomaticTapeCreationPoliciesInput')
    ListAutomaticTapeCreationPoliciesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListAutomaticTapeCreationPoliciesOutput', name: 'ListAutomaticTapeCreationPoliciesOutput')
    ListCacheReportsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListCacheReportsInput', name: 'ListCacheReportsInput')
    ListCacheReportsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListCacheReportsOutput', name: 'ListCacheReportsOutput')
    ListFileSharesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListFileSharesInput', name: 'ListFileSharesInput')
    ListFileSharesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListFileSharesOutput', name: 'ListFileSharesOutput')
    ListFileSystemAssociationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListFileSystemAssociationsInput', name: 'ListFileSystemAssociationsInput')
    ListFileSystemAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListFileSystemAssociationsOutput', name: 'ListFileSystemAssociationsOutput')
    ListGatewaysInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListGatewaysInput', name: 'ListGatewaysInput')
    ListGatewaysOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListGatewaysOutput', name: 'ListGatewaysOutput')
    ListLocalDisksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListLocalDisksInput', name: 'ListLocalDisksInput')
    ListLocalDisksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListLocalDisksOutput', name: 'ListLocalDisksOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTapePoolsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListTapePoolsInput', name: 'ListTapePoolsInput')
    ListTapePoolsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListTapePoolsOutput', name: 'ListTapePoolsOutput')
    ListTapesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListTapesInput', name: 'ListTapesInput')
    ListTapesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListTapesOutput', name: 'ListTapesOutput')
    ListVolumeInitiatorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListVolumeInitiatorsInput', name: 'ListVolumeInitiatorsInput')
    ListVolumeInitiatorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListVolumeInitiatorsOutput', name: 'ListVolumeInitiatorsOutput')
    ListVolumeRecoveryPointsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListVolumeRecoveryPointsInput', name: 'ListVolumeRecoveryPointsInput')
    ListVolumeRecoveryPointsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListVolumeRecoveryPointsOutput', name: 'ListVolumeRecoveryPointsOutput')
    ListVolumesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListVolumesInput', name: 'ListVolumesInput')
    ListVolumesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ListVolumesOutput', name: 'ListVolumesOutput')
    LocalConsolePassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#LocalConsolePassword', name: 'LocalConsolePassword', traits: {"smithy.api#length" => {"min" => 6, "max" => 512}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    LocationARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#LocationARN', name: 'LocationARN', traits: {"smithy.api#length" => {"min" => 16, "max" => 1400}})
    Marker = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Marker', name: 'Marker', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MediumChangerType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#MediumChangerType', name: 'MediumChangerType', traits: {"smithy.api#length" => {"min" => 2, "max" => 50}})
    MinimumNumTapes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#MinimumNumTapes', name: 'MinimumNumTapes', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MinuteOfHour = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#MinuteOfHour', name: 'MinuteOfHour', traits: {"smithy.api#range" => {"min" => 0, "max" => 59}})
    NFSFileShareDefaults = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#NFSFileShareDefaults', name: 'NFSFileShareDefaults')
    NFSFileShareInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#NFSFileShareInfo', name: 'NFSFileShareInfo')
    NFSFileShareInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#NFSFileShareInfoList', name: 'NFSFileShareInfoList')
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#NetworkInterface', name: 'NetworkInterface', traits: {"smithy.api#sensitive" => {}})
    NetworkInterfaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#NetworkInterfaceId', name: 'NetworkInterfaceId')
    NextUpdateAvailabilityDate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#NextUpdateAvailabilityDate', name: 'NextUpdateAvailabilityDate', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    NotificationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#NotificationId', name: 'NotificationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NotificationPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#NotificationPolicy', name: 'NotificationPolicy', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^\\{[\\w\\s:\\{\\}\\[\\]\"]*}$"})
    NotifyWhenUploadedInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#NotifyWhenUploadedInput', name: 'NotifyWhenUploadedInput')
    NotifyWhenUploadedOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#NotifyWhenUploadedOutput', name: 'NotifyWhenUploadedOutput')
    NumTapesToCreate = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#NumTapesToCreate', name: 'NumTapesToCreate', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ObjectACL = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#ObjectACL', name: 'ObjectACL')
    OrganizationalUnit = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#OrganizationalUnit', name: 'OrganizationalUnit', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Path', name: 'Path')
    PermissionId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#PermissionId', name: 'PermissionId', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967294}})
    PermissionMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#PermissionMode', name: 'PermissionMode', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^[0-7]{4}$"})
    PoolARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#PoolARN', name: 'PoolARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    PoolARNs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#PoolARNs', name: 'PoolARNs')
    PoolId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#PoolId', name: 'PoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PoolInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#PoolInfo', name: 'PoolInfo')
    PoolInfos = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#PoolInfos', name: 'PoolInfos')
    PoolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#PoolName', name: 'PoolName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$"})
    PoolStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#PoolStatus', name: 'PoolStatus')
    PositiveIntObject = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#PositiveIntObject', name: 'PositiveIntObject', traits: {"smithy.api#range" => {"min" => 1}})
    RecurrenceInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#RecurrenceInHours', name: 'RecurrenceInHours', traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    RefreshCacheInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RefreshCacheInput', name: 'RefreshCacheInput')
    RefreshCacheOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RefreshCacheOutput', name: 'RefreshCacheOutput')
    RegionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#RegionId', name: 'RegionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    RemoveTagsFromResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RemoveTagsFromResourceInput', name: 'RemoveTagsFromResourceInput')
    RemoveTagsFromResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RemoveTagsFromResourceOutput', name: 'RemoveTagsFromResourceOutput')
    ReportCompletionPercent = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#ReportCompletionPercent', name: 'ReportCompletionPercent', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ResetCacheInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ResetCacheInput', name: 'ResetCacheInput')
    ResetCacheOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ResetCacheOutput', name: 'ResetCacheOutput')
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    RetentionLockTimeInDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#RetentionLockTimeInDays', name: 'RetentionLockTimeInDays', traits: {"smithy.api#range" => {"min" => 0, "max" => 36500}})
    RetentionLockType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#RetentionLockType', name: 'RetentionLockType')
    RetrieveTapeArchiveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RetrieveTapeArchiveInput', name: 'RetrieveTapeArchiveInput')
    RetrieveTapeArchiveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RetrieveTapeArchiveOutput', name: 'RetrieveTapeArchiveOutput')
    RetrieveTapeRecoveryPointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RetrieveTapeRecoveryPointInput', name: 'RetrieveTapeRecoveryPointInput')
    RetrieveTapeRecoveryPointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#RetrieveTapeRecoveryPointOutput', name: 'RetrieveTapeRecoveryPointOutput')
    Role = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Role', name: 'Role', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):iam::([0-9]+):role/(\\S+)$"})
    SMBFileShareInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#SMBFileShareInfo', name: 'SMBFileShareInfo')
    SMBFileShareInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#SMBFileShareInfoList', name: 'SMBFileShareInfoList')
    SMBGuestPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#SMBGuestPassword', name: 'SMBGuestPassword', traits: {"smithy.api#length" => {"min" => 6, "max" => 512}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    SMBLocalGroups = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#SMBLocalGroups', name: 'SMBLocalGroups')
    SMBSecurityStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#SMBSecurityStrategy', name: 'SMBSecurityStrategy')
    ServiceUnavailableError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ServiceUnavailableError', name: 'ServiceUnavailableError', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetLocalConsolePasswordInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#SetLocalConsolePasswordInput', name: 'SetLocalConsolePasswordInput')
    SetLocalConsolePasswordOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#SetLocalConsolePasswordOutput', name: 'SetLocalConsolePasswordOutput')
    SetSMBGuestPasswordInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#SetSMBGuestPasswordInput', name: 'SetSMBGuestPasswordInput')
    SetSMBGuestPasswordOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#SetSMBGuestPasswordOutput', name: 'SetSMBGuestPasswordOutput')
    ShutdownGatewayInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ShutdownGatewayInput', name: 'ShutdownGatewayInput')
    ShutdownGatewayOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#ShutdownGatewayOutput', name: 'ShutdownGatewayOutput')
    SnapshotDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#SnapshotDescription', name: 'SnapshotDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SnapshotId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#SnapshotId', name: 'SnapshotId', traits: {"smithy.api#pattern" => "^\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z$"})
    SoftwareUpdatePreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#SoftwareUpdatePreferences', name: 'SoftwareUpdatePreferences')
    SoftwareUpdatesEndDate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#SoftwareUpdatesEndDate', name: 'SoftwareUpdatesEndDate', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    SoftwareVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#SoftwareVersion', name: 'SoftwareVersion')
    Squash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#Squash', name: 'Squash', traits: {"smithy.api#length" => {"min" => 5, "max" => 15}})
    StartAvailabilityMonitorTestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StartAvailabilityMonitorTestInput', name: 'StartAvailabilityMonitorTestInput')
    StartAvailabilityMonitorTestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StartAvailabilityMonitorTestOutput', name: 'StartAvailabilityMonitorTestOutput')
    StartCacheReportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StartCacheReportInput', name: 'StartCacheReportInput')
    StartCacheReportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StartCacheReportOutput', name: 'StartCacheReportOutput')
    StartGatewayInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StartGatewayInput', name: 'StartGatewayInput')
    StartGatewayOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StartGatewayOutput', name: 'StartGatewayOutput')
    StorageClass = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#StorageClass', name: 'StorageClass', traits: {"smithy.api#length" => {"min" => 5, "max" => 50}})
    StorageGatewayError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StorageGatewayError', name: 'StorageGatewayError')
    StorediSCSIVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#StorediSCSIVolume', name: 'StorediSCSIVolume')
    StorediSCSIVolumes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#StorediSCSIVolumes', name: 'StorediSCSIVolumes')
    SupportedGatewayCapacities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#SupportedGatewayCapacities', name: 'SupportedGatewayCapacities')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#TagKeys', name: 'TagKeys')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#Tags', name: 'Tags')
    Tape = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#Tape', name: 'Tape')
    TapeARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TapeARN', name: 'TapeARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{5,16}$"})
    TapeARNs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#TapeARNs', name: 'TapeARNs')
    TapeArchive = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#TapeArchive', name: 'TapeArchive')
    TapeArchiveStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TapeArchiveStatus', name: 'TapeArchiveStatus')
    TapeArchives = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#TapeArchives', name: 'TapeArchives')
    TapeBarcode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TapeBarcode', name: 'TapeBarcode', traits: {"smithy.api#length" => {"min" => 5, "max" => 16}, "smithy.api#pattern" => "^[A-Z0-9]*$"})
    TapeBarcodePrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TapeBarcodePrefix', name: 'TapeBarcodePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^[A-Z]*$"})
    TapeDriveType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TapeDriveType', name: 'TapeDriveType', traits: {"smithy.api#length" => {"min" => 2, "max" => 50}})
    TapeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#TapeInfo', name: 'TapeInfo')
    TapeInfos = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#TapeInfos', name: 'TapeInfos')
    TapeRecoveryPointInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#TapeRecoveryPointInfo', name: 'TapeRecoveryPointInfo')
    TapeRecoveryPointInfos = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#TapeRecoveryPointInfos', name: 'TapeRecoveryPointInfos')
    TapeRecoveryPointStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TapeRecoveryPointStatus', name: 'TapeRecoveryPointStatus')
    TapeSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#TapeSize', name: 'TapeSize')
    TapeStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TapeStatus', name: 'TapeStatus')
    TapeStorageClass = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.storagegateway#TapeStorageClass', name: 'TapeStorageClass')
    TapeUsage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#TapeUsage', name: 'TapeUsage')
    Tapes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#Tapes', name: 'Tapes')
    TargetARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TargetARN', name: 'TargetARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 800}})
    TargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#TargetName', name: 'TargetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[-\\.;a-z0-9]+$"})
    Time = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.storagegateway#Time', name: 'Time')
    TimeoutInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#TimeoutInSeconds', name: 'TimeoutInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}})
    UpdateAutomaticTapeCreationPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateAutomaticTapeCreationPolicyInput', name: 'UpdateAutomaticTapeCreationPolicyInput')
    UpdateAutomaticTapeCreationPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateAutomaticTapeCreationPolicyOutput', name: 'UpdateAutomaticTapeCreationPolicyOutput')
    UpdateBandwidthRateLimitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateBandwidthRateLimitInput', name: 'UpdateBandwidthRateLimitInput')
    UpdateBandwidthRateLimitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateBandwidthRateLimitOutput', name: 'UpdateBandwidthRateLimitOutput')
    UpdateBandwidthRateLimitScheduleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateBandwidthRateLimitScheduleInput', name: 'UpdateBandwidthRateLimitScheduleInput')
    UpdateBandwidthRateLimitScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateBandwidthRateLimitScheduleOutput', name: 'UpdateBandwidthRateLimitScheduleOutput')
    UpdateChapCredentialsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateChapCredentialsInput', name: 'UpdateChapCredentialsInput')
    UpdateChapCredentialsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateChapCredentialsOutput', name: 'UpdateChapCredentialsOutput')
    UpdateFileSystemAssociationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateFileSystemAssociationInput', name: 'UpdateFileSystemAssociationInput')
    UpdateFileSystemAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateFileSystemAssociationOutput', name: 'UpdateFileSystemAssociationOutput')
    UpdateGatewayInformationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateGatewayInformationInput', name: 'UpdateGatewayInformationInput')
    UpdateGatewayInformationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateGatewayInformationOutput', name: 'UpdateGatewayInformationOutput')
    UpdateGatewaySoftwareNowInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateGatewaySoftwareNowInput', name: 'UpdateGatewaySoftwareNowInput')
    UpdateGatewaySoftwareNowOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateGatewaySoftwareNowOutput', name: 'UpdateGatewaySoftwareNowOutput')
    UpdateMaintenanceStartTimeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateMaintenanceStartTimeInput', name: 'UpdateMaintenanceStartTimeInput')
    UpdateMaintenanceStartTimeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateMaintenanceStartTimeOutput', name: 'UpdateMaintenanceStartTimeOutput')
    UpdateNFSFileShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateNFSFileShareInput', name: 'UpdateNFSFileShareInput')
    UpdateNFSFileShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateNFSFileShareOutput', name: 'UpdateNFSFileShareOutput')
    UpdateSMBFileShareInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBFileShareInput', name: 'UpdateSMBFileShareInput')
    UpdateSMBFileShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBFileShareOutput', name: 'UpdateSMBFileShareOutput')
    UpdateSMBFileShareVisibilityInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBFileShareVisibilityInput', name: 'UpdateSMBFileShareVisibilityInput')
    UpdateSMBFileShareVisibilityOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBFileShareVisibilityOutput', name: 'UpdateSMBFileShareVisibilityOutput')
    UpdateSMBLocalGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBLocalGroupsInput', name: 'UpdateSMBLocalGroupsInput')
    UpdateSMBLocalGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBLocalGroupsOutput', name: 'UpdateSMBLocalGroupsOutput')
    UpdateSMBSecurityStrategyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBSecurityStrategyInput', name: 'UpdateSMBSecurityStrategyInput')
    UpdateSMBSecurityStrategyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSMBSecurityStrategyOutput', name: 'UpdateSMBSecurityStrategyOutput')
    UpdateSnapshotScheduleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSnapshotScheduleInput', name: 'UpdateSnapshotScheduleInput')
    UpdateSnapshotScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateSnapshotScheduleOutput', name: 'UpdateSnapshotScheduleOutput')
    UpdateVTLDeviceTypeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateVTLDeviceTypeInput', name: 'UpdateVTLDeviceTypeInput')
    UpdateVTLDeviceTypeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#UpdateVTLDeviceTypeOutput', name: 'UpdateVTLDeviceTypeOutput')
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#UserList', name: 'UserList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UserListUser = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#UserListUser', name: 'UserListUser', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    VTLDevice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#VTLDevice', name: 'VTLDevice')
    VTLDeviceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VTLDeviceARN', name: 'VTLDeviceARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    VTLDeviceARNs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#VTLDeviceARNs', name: 'VTLDeviceARNs')
    VTLDeviceProductIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VTLDeviceProductIdentifier', name: 'VTLDeviceProductIdentifier')
    VTLDeviceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VTLDeviceType', name: 'VTLDeviceType')
    VTLDeviceVendor = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VTLDeviceVendor', name: 'VTLDeviceVendor')
    VTLDevices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#VTLDevices', name: 'VTLDevices')
    VolumeARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VolumeARN', name: 'VolumeARN', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):storagegateway:[a-z\\-0-9]+:[0-9]+:gateway\\/(.+)\\/volume\\/vol-(\\S+)$"})
    VolumeARNs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#VolumeARNs', name: 'VolumeARNs')
    VolumeAttachmentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VolumeAttachmentStatus', name: 'VolumeAttachmentStatus', traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    VolumeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VolumeId', name: 'VolumeId', traits: {"smithy.api#length" => {"min" => 12, "max" => 30}})
    VolumeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#VolumeInfo', name: 'VolumeInfo')
    VolumeInfos = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#VolumeInfos', name: 'VolumeInfos')
    VolumeRecoveryPointInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#VolumeRecoveryPointInfo', name: 'VolumeRecoveryPointInfo')
    VolumeRecoveryPointInfos = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.storagegateway#VolumeRecoveryPointInfos', name: 'VolumeRecoveryPointInfos')
    VolumeStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VolumeStatus', name: 'VolumeStatus', traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    VolumeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#VolumeType', name: 'VolumeType', traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    VolumeUsedInBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#VolumeUsedInBytes', name: 'VolumeUsedInBytes')
    VolumeiSCSIAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.storagegateway#VolumeiSCSIAttributes', name: 'VolumeiSCSIAttributes')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.storagegateway#double', name: 'Double', traits: {"smithy.api#default" => 0})
    ErrorDetails = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.storagegateway#errorDetails', name: 'ErrorDetails')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.storagegateway#long', name: 'Long', traits: {"smithy.api#default" => 0})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.storagegateway#string', name: 'String')

    ActivateGatewayInput.add_member(:activation_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationKey, location_name: 'ActivationKey', traits: {"smithy.api#documentation" => "<p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET\n         request with redirects enabled to the gateway IP address (port 80). The redirect URL\n         returned in the response provides you the activation key for your gateway in the query\n         string parameter <code>activationKey</code>. It may also include other activation-related\n         parameters, however, these are merely defaults -- the arguments you pass to the\n            <code>ActivateGateway</code> API call determine the actual configuration of your\n         gateway.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html\">Getting activation\n            key</a> in the <i>Storage Gateway User Guide</i>.</p>", "smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'GatewayName', traits: {"smithy.api#documentation" => "<p>The name you configured for your gateway.</p>", "smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: 'GatewayTimezone', traits: {"smithy.api#documentation" => "<p>A value that indicates the time zone you want to set for the gateway. The time zone is\n         of the format \"GMT\", \"GMT-hr:mm\", or \"GMT+hr:mm\". For example, GMT indicates Greenwich Mean\n         Time without any offset. GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00\n         indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for\n         scheduling snapshots and your gateway's maintenance schedule.</p>", "smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionId, location_name: 'GatewayRegion', traits: {"smithy.api#documentation" => "<p>A value that indicates the Amazon Web Services Region where you want to store your data.\n         The gateway Amazon Web Services Region specified must be the same Amazon Web Services Region\n         as the Amazon Web Services Region in your <code>Host</code> header in the request. For more\n         information about available Amazon Web Services Regions and endpoints for Storage Gateway, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/sg.html\">\n            Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services\n            General Reference</i>.</p>\n         <p>Valid Values: See <a href=\"https://docs.aws.amazon.com/general/latest/gr/sg.html\">\n            Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services\n            General Reference</i>.\n         \n      </p>", "smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: 'GatewayType', traits: {"smithy.api#documentation" => "<p>A value that defines the type of gateway to activate. The type specified is critical to\n         all later functions of the gateway and cannot be changed after activation. The default\n         value is <code>CACHED</code>.</p>\n         <important>\n            <p>Amazon FSx File Gateway is no longer available to new customers. Existing\n            customers of FSx File Gateway can continue to use the service normally. For\n            capabilities similar to FSx File Gateway, visit <a href=\"https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/\">this blog post</a>.</p>\n         </important>\n         <p>Valid Values: <code>STORED</code> | <code>CACHED</code> | <code>VTL</code>\n         | <code>FILE_S3</code> |\n         <code>FILE_FSX_SMB</code>\n         </p>"}))
    ActivateGatewayInput.add_member(:tape_drive_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeDriveType, location_name: 'TapeDriveType', traits: {"smithy.api#documentation" => "<p>The value that indicates the type of tape drive to use for tape gateway. This field is\n         optional.</p>\n         <p>Valid Values: <code>IBM-ULT3580-TD5</code>\n         </p>"}))
    ActivateGatewayInput.add_member(:medium_changer_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediumChangerType, location_name: 'MediumChangerType', traits: {"smithy.api#documentation" => "<p>The value that indicates the type of medium changer to use for tape gateway. This field\n         is optional.</p>\n         <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |\n            <code>IBM-03584L32-0402</code>\n         </p>"}))
    ActivateGatewayInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that you can assign to the gateway. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers that can be\n            represented in UTF-8 format, and the following special characters: + - = . _ : / @. The\n            maximum length of a tag's key is 128 characters, and the maximum length for a\n            tag's value is 256 characters.</p>\n         </note>"}))
    ActivateGatewayInput.type = Types::ActivateGatewayInput
    ActivateGatewayOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ActivateGatewayOutput.type = Types::ActivateGatewayOutput
    ActiveDirectoryStatus.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ActiveDirectoryStatus.add_member(:detached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETACHED', traits: {"smithy.api#enumValue" => "DETACHED"}))
    ActiveDirectoryStatus.add_member(:joined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JOINED', traits: {"smithy.api#enumValue" => "JOINED"}))
    ActiveDirectoryStatus.add_member(:joining, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JOINING', traits: {"smithy.api#enumValue" => "JOINING"}))
    ActiveDirectoryStatus.add_member(:network_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_ERROR', traits: {"smithy.api#enumValue" => "NETWORK_ERROR"}))
    ActiveDirectoryStatus.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    ActiveDirectoryStatus.add_member(:unknown_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_ERROR', traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    ActiveDirectoryStatus.add_member(:insufficient_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_PERMISSIONS', traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSIONS"}))
    AddCacheInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    AddCacheInput.add_member(:disk_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskIds, location_name: 'DiskIds', traits: {"smithy.api#documentation" => "<p>An array of strings that identify disks that are to be configured as working storage.\n         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs\n         from the <a>ListLocalDisks</a> API.</p>", "smithy.api#required" => {}}))
    AddCacheInput.type = Types::AddCacheInput
    AddCacheOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    AddCacheOutput.type = Types::AddCacheOutput
    AddTagsToResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>", "smithy.api#required" => {}}))
    AddTagsToResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pair that represents the tag you want to add to the resource. The value\n         can be an empty string.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>", "smithy.api#required" => {}}))
    AddTagsToResourceInput.type = Types::AddTagsToResourceInput
    AddTagsToResourceOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>"}))
    AddTagsToResourceOutput.type = Types::AddTagsToResourceOutput
    AddUploadBufferInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    AddUploadBufferInput.add_member(:disk_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskIds, location_name: 'DiskIds', traits: {"smithy.api#documentation" => "<p>An array of strings that identify disks that are to be configured as working storage.\n         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs\n         from the <a>ListLocalDisks</a> API.</p>", "smithy.api#required" => {}}))
    AddUploadBufferInput.type = Types::AddUploadBufferInput
    AddUploadBufferOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    AddUploadBufferOutput.type = Types::AddUploadBufferOutput
    AddWorkingStorageInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    AddWorkingStorageInput.add_member(:disk_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskIds, location_name: 'DiskIds', traits: {"smithy.api#documentation" => "<p>An array of strings that identify disks that are to be configured as working storage.\n         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs\n         from the <a>ListLocalDisks</a> API.</p>", "smithy.api#required" => {}}))
    AddWorkingStorageInput.type = Types::AddWorkingStorageInput
    AddWorkingStorageOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    AddWorkingStorageOutput.type = Types::AddWorkingStorageOutput
    AssignTapePoolInput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the virtual tape that you want to add to the\n         tape pool.</p>", "smithy.api#required" => {}}))
    AssignTapePoolInput.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the pool that you want to add your tape to for archiving. The tape in this\n         pool is archived in the S3 storage class that is associated with the pool. When you use\n         your backup application to eject the tape, the tape is archived directly into the storage\n         class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>", "smithy.api#required" => {}}))
    AssignTapePoolInput.add_member(:bypass_governance_retention, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'BypassGovernanceRetention', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set permissions to bypass governance retention. If the lock type of the archived tape is\n            <code>Governance</code>, the tape's archived age is not older than\n            <code>RetentionLockInDays</code>, and the user does not already have\n            <code>BypassGovernanceRetention</code>, setting this to TRUE enables the user to bypass\n         the retention lock. This parameter is set to true by default for calls from the\n         console.</p>\n         <p>Valid values: <code>TRUE</code> | <code>FALSE</code>\n         </p>"}))
    AssignTapePoolInput.type = Types::AssignTapePoolInput
    AssignTapePoolOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Names (ARN) of the virtual tape that was added to the tape\n         pool.</p>"}))
    AssignTapePoolOutput.type = Types::AssignTapePoolOutput
    AssociateFileSystemInput.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainUserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The user name of the user credential that has permission to access the root share D$ of\n         the Amazon FSx file system. The user account must belong to the Amazon FSx\n         delegated admin user group.</p>", "smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainUserPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password of the user credential.</p>", "smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique string value that you supply that is used by the FSx File Gateway to ensure\n         idempotent file system association creation.</p>", "smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationARN, location_name: 'LocationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with\n         the FSx File Gateway.</p>", "smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to the file system association. Each tag is\n         a key-value pair.</p>"}))
    AssociateFileSystemInput.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>"}))
    AssociateFileSystemInput.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes'))
    AssociateFileSystemInput.add_member(:endpoint_network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNetworkConfiguration, location_name: 'EndpointNetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the network configuration information for the gateway associated with the\n            Amazon FSx file system.</p>\n         <note>\n            <p>If multiple file systems are associated with this gateway, this parameter's\n               <code>IpAddresses</code> field is required.</p>\n         </note>"}))
    AssociateFileSystemInput.type = Types::AssociateFileSystemInput
    AssociateFileSystemOutput.add_member(:file_system_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN, location_name: 'FileSystemAssociationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the newly created file system association.</p>"}))
    AssociateFileSystemOutput.type = Types::AssociateFileSystemOutput
    AttachVolumeInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway that you want to attach the volume\n         to.</p>", "smithy.api#required" => {}}))
    AttachVolumeInput.add_member(:target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'TargetName', traits: {"smithy.api#documentation" => "<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a\n         suffix for the target ARN. For example, specifying <code>TargetName</code> as\n            <i>myvolume</i> results in the target ARN of\n            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.\n         The target name must be unique across all volumes on a gateway.</p>\n         <p>If you don't specify a value, Storage Gateway uses the value that was previously\n         used for this volume as the new target name.</p>"}))
    AttachVolumeInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume to attach to the specified gateway.</p>", "smithy.api#required" => {}}))
    AttachVolumeInput.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4\n         and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the\n         network interfaces available on a gateway.</p>\n         <p>Valid Values: A valid IP address.</p>", "smithy.api#required" => {}}))
    AttachVolumeInput.add_member(:disk_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskId, location_name: 'DiskId', traits: {"smithy.api#documentation" => "<p>The unique device ID or other distinguishing data that identifies the local disk used to\n         create the volume. This value is only required when you are attaching a stored\n         volume.</p>"}))
    AttachVolumeInput.type = Types::AttachVolumeInput
    AttachVolumeOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume that was attached to the gateway.</p>"}))
    AttachVolumeOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name for\n         the initiator that was used to connect to the target.</p>"}))
    AttachVolumeOutput.type = Types::AttachVolumeOutput
    AutomaticTapeCreationPolicyInfo.add_member(:automatic_tape_creation_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticTapeCreationRules, location_name: 'AutomaticTapeCreationRules', traits: {"smithy.api#documentation" => "<p>An automatic tape creation policy consists of a list of automatic tape creation rules.\n         This returns the rules that determine when and how to automatically create new\n         tapes.</p>"}))
    AutomaticTapeCreationPolicyInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    AutomaticTapeCreationPolicyInfo.type = Types::AutomaticTapeCreationPolicyInfo
    AutomaticTapeCreationPolicyInfos.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticTapeCreationPolicyInfo)
    AutomaticTapeCreationRule.add_member(:tape_barcode_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeBarcodePrefix, location_name: 'TapeBarcodePrefix', traits: {"smithy.api#documentation" => "<p>A prefix that you append to the barcode of the virtual tape that you are creating. This\n         prefix makes the barcode unique.</p>\n         <note>\n            <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters\n            from A to Z.</p>\n         </note>", "smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the pool that you want to add your tape to for archiving. The tape in this\n         pool is archived in the Amazon S3 storage class that is associated with the pool.\n         When you use your backup application to eject the tape, the tape is archived directly into\n         the storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the\n         pool.</p>", "smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:tape_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeSize, location_name: 'TapeSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the virtual tape capacity.</p>", "smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:minimum_num_tapes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumNumTapes, location_name: 'MinimumNumTapes', traits: {"smithy.api#documentation" => "<p>The minimum number of available virtual tapes that the gateway maintains at all times.\n         If the number of tapes on the gateway goes below this value, the gateway creates as many\n         new tapes as are needed to have <code>MinimumNumTapes</code> on the gateway. For more\n         information about automatic tape creation, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedCreateTapes.html#CreateTapesAutomatically\">Creating Tapes Automatically</a>.</p>", "smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:worm, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'Worm', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>true</code> to indicate that tapes are to be archived as\n         write-once-read-many (WORM). Set to <code>false</code> when WORM is not enabled for\n         tapes.</p>"}))
    AutomaticTapeCreationRule.type = Types::AutomaticTapeCreationRule
    AutomaticTapeCreationRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticTapeCreationRule)
    AutomaticUpdatePolicy.add_member(:all_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_VERSIONS', traits: {"smithy.api#enumValue" => "ALL_VERSIONS"}))
    AutomaticUpdatePolicy.add_member(:emergency_versions_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMERGENCY_VERSIONS_ONLY', traits: {"smithy.api#enumValue" => "EMERGENCY_VERSIONS_ONLY"}))
    AvailabilityMonitorTestStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    AvailabilityMonitorTestStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AvailabilityMonitorTestStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    BandwidthRateLimitInterval.add_member(:start_hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'StartHourOfDay', traits: {"smithy.api#documentation" => "<p> The hour of the day to start the bandwidth rate limit interval. </p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:start_minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'StartMinuteOfHour', traits: {"smithy.api#documentation" => "<p> The minute of the hour to start the bandwidth rate limit interval. The interval begins\n         at the start of that minute. To begin an interval exactly at the start of the hour, use the\n         value <code>0</code>. </p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'EndHourOfDay', traits: {"smithy.api#documentation" => "<p> The hour of the day to end the bandwidth rate limit interval. </p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'EndMinuteOfHour', traits: {"smithy.api#documentation" => "<p> The minute of the hour to end the bandwidth rate limit interval. </p>\n         <important>\n            <p> The bandwidth rate limit interval ends at the end of the minute. To end an interval\n            at the end of an hour, use the value <code>59</code>. </p>\n         </important>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:days_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DaysOfWeek, location_name: 'DaysOfWeek', traits: {"smithy.api#documentation" => "<p> The days of the week component of the bandwidth rate limit interval, represented as\n         ordinal numbers from 0 to 6, where 0 represents Sunday and 6 represents Saturday. </p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:average_upload_rate_limit_in_bits_per_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthUploadRateLimit, location_name: 'AverageUploadRateLimitInBitsPerSec', traits: {"smithy.api#documentation" => "<p> The average upload rate limit component of the bandwidth rate limit interval, in bits\n         per second. This field does not appear in the response if the upload rate limit is not set. </p>\n         <note>\n            <p>For Tape Gateway and Volume Gateway, the minimum value is <code>51200</code>.</p>\n            <p>This field is required for S3 File Gateway, and the minimum value is\n               <code>104857600</code>.</p>\n         </note>"}))
    BandwidthRateLimitInterval.add_member(:average_download_rate_limit_in_bits_per_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthDownloadRateLimit, location_name: 'AverageDownloadRateLimitInBitsPerSec', traits: {"smithy.api#documentation" => "<p> The average download rate limit component of the bandwidth rate limit interval, in bits\n         per second. This field does not appear in the response if the download rate limit is not\n         set. </p>\n         <note>\n            <p>S3 File Gateway does not support this feature.</p>\n         </note>"}))
    BandwidthRateLimitInterval.type = Types::BandwidthRateLimitInterval
    BandwidthRateLimitIntervals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitInterval)
    CacheAttributes.add_member(:cache_stale_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheStaleTimeoutInSeconds, location_name: 'CacheStaleTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>Refreshes a file share's cache by using Time To Live (TTL). TTL is the length of\n         time since the last refresh after which access to the directory would cause the file\n         gateway to first refresh that directory's contents from the Amazon S3 bucket\n         or Amazon FSx file system. The TTL duration is in seconds.</p>\n         <p>Valid Values:0, 300 to 2,592,000 seconds (5 minutes to 30 days)</p>"}))
    CacheAttributes.type = Types::CacheAttributes
    CacheReportFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The parameter name for a filter that determines which files are included or excluded\n         from a cache report.</p>\n         <p>\n            <b>Valid Names:</b>\n         </p>\n         <p>UploadFailureReason | UploadState</p>", "smithy.api#required" => {}}))
    CacheReportFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The parameter value for a filter that determines which files are included or excluded\n         from a cache report.</p>\n         <p>\n            <b>Valid <code>UploadFailureReason</code> Values:</b>\n         </p>\n         <p>\n            <code>InaccessibleStorageClass</code> | <code>InvalidObjectState</code> |\n            <code>ObjectMissing</code> | <code>S3AccessDenied</code>\n         </p>\n         <p>\n            <b>Valid <code>UploadState</code> Values:</b>\n         </p>\n         <p>\n            <code>FailingUpload</code>\n         </p>", "smithy.api#required" => {}}))
    CacheReportFilter.type = Types::CacheReportFilter
    CacheReportFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilter)
    CacheReportFilterName.add_member(:upload_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UploadState', traits: {"smithy.api#enumValue" => "UploadState"}))
    CacheReportFilterName.add_member(:upload_failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UploadFailureReason', traits: {"smithy.api#enumValue" => "UploadFailureReason"}))
    CacheReportFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilterValue)
    CacheReportInfo.add_member(:cache_report_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportARN, location_name: 'CacheReportARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cache report you want to describe.</p>"}))
    CacheReportInfo.add_member(:cache_report_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportStatus, location_name: 'CacheReportStatus', traits: {"smithy.api#documentation" => "<p>The status of the specified cache report.</p>"}))
    CacheReportInfo.add_member(:report_completion_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportCompletionPercent, location_name: 'ReportCompletionPercent', traits: {"smithy.api#documentation" => "<p>The percentage of the report generation process that has been completed at time of\n         inquiry.</p>"}))
    CacheReportInfo.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time at which the gateway stopped generating the cache report.</p>"}))
    CacheReportInfo.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    CacheReportInfo.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN'))
    CacheReportInfo.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationARN, location_name: 'LocationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon S3 bucket location where the cache report is saved.</p>"}))
    CacheReportInfo.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time at which the gateway started generating the cache report.</p>"}))
    CacheReportInfo.add_member(:inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilterList, location_name: 'InclusionFilters', traits: {"smithy.api#documentation" => "<p>The list of filters and parameters that determine which files are included in the\n         report.</p>"}))
    CacheReportInfo.add_member(:exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilterList, location_name: 'ExclusionFilters', traits: {"smithy.api#documentation" => "<p>The list of filters and parameters that determine which files are excluded from the\n         report.</p>"}))
    CacheReportInfo.add_member(:report_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportName, location_name: 'ReportName', traits: {"smithy.api#documentation" => "<p>The file name of the completed cache report object stored in Amazon S3.</p>"}))
    CacheReportInfo.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key/value tags associated with the report.</p>"}))
    CacheReportInfo.type = Types::CacheReportInfo
    CacheReportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportInfo)
    CacheReportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CacheReportStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CacheReportStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    CacheReportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CacheReportStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CachediSCSIVolume.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage volume.</p>"}))
    CachediSCSIVolume.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeId, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the volume, e.g., vol-AE4B946D.</p>"}))
    CachediSCSIVolume.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>One of the VolumeType enumeration values that describes the type of the volume.</p>"}))
    CachediSCSIVolume.add_member(:volume_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeStatus, location_name: 'VolumeStatus', traits: {"smithy.api#documentation" => "<p>One of the VolumeStatus values that indicates the state of the storage volume.</p>"}))
    CachediSCSIVolume.add_member(:volume_attachment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeAttachmentStatus, location_name: 'VolumeAttachmentStatus', traits: {"smithy.api#documentation" => "<p>A value that indicates whether a storage volume is attached to or detached from a\n         gateway. For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume\">Moving\n            your volumes to a different gateway</a>.</p>"}))
    CachediSCSIVolume.add_member(:volume_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'VolumeSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size, in bytes, of the volume capacity.</p>"}))
    CachediSCSIVolume.add_member(:volume_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleObject, location_name: 'VolumeProgress', traits: {"smithy.api#documentation" => "<p>Represents the percentage complete if the volume is restoring or bootstrapping that\n         represents the percent of data transferred. This field does not appear in the response if\n         the cached volume is not restoring or bootstrapping.</p>"}))
    CachediSCSIVolume.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SourceSnapshotId', traits: {"smithy.api#documentation" => "<p>If the cached volume was created from a snapshot, this field contains the snapshot ID\n         used, e.g., snap-78e22663. Otherwise, this field is not included.</p>"}))
    CachediSCSIVolume.add_member(:volumei_scsi_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeiSCSIAttributes, location_name: 'VolumeiSCSIAttributes', traits: {"smithy.api#documentation" => "<p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI\n         attributes for one stored volume.</p>"}))
    CachediSCSIVolume.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedDate, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this\n         timestamp.</p>"}))
    CachediSCSIVolume.add_member(:volume_used_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeUsedInBytes, location_name: 'VolumeUsedInBytes', traits: {"smithy.api#documentation" => "<p>The size of the data stored on the volume in bytes. This value is calculated based on\n         the number of blocks that are touched, instead of the actual amount of data written. This\n         value can be useful for sequential write patterns but less accurate for random write\n         patterns. <code>VolumeUsedInBytes</code> is different from the compressed size of the\n         volume, which is the value that is used to calculate your bill.</p>\n         <note>\n            <p>This value is not available for volumes created prior to May 13, 2015, until you\n            store data on the volume.</p>\n            <p>If you use a delete tool that overwrites the data on your volume with random data,\n            your usage will not be reduced. This is because the random data is not compressible. If\n            you want to reduce the amount of billed storage on your volume, we recommend overwriting\n            your files with zeros to compress the data to a negligible amount of actual\n            storage.</p>\n         </note>"}))
    CachediSCSIVolume.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey'))
    CachediSCSIVolume.add_member(:target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'TargetName', traits: {"smithy.api#documentation" => "<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a\n         suffix for the target ARN. For example, specifying <code>TargetName</code> as\n            <i>myvolume</i> results in the target ARN of\n            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.\n         The target name must be unique across all volumes on a gateway.</p>\n         <p>If you don't specify a value, Storage Gateway uses the value that was previously\n         used for this volume as the new target name.</p>"}))
    CachediSCSIVolume.type = Types::CachediSCSIVolume
    CachediSCSIVolumes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CachediSCSIVolume)
    CancelArchivalInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    CancelArchivalInput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving\n         for.</p>", "smithy.api#required" => {}}))
    CancelArchivalInput.type = Types::CancelArchivalInput
    CancelArchivalOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape for which archiving was\n         canceled.</p>"}))
    CancelArchivalOutput.type = Types::CancelArchivalOutput
    CancelCacheReportInput.add_member(:cache_report_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportARN, location_name: 'CacheReportARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cache report you want to cancel.</p>", "smithy.api#required" => {}}))
    CancelCacheReportInput.type = Types::CancelCacheReportInput
    CancelCacheReportOutput.add_member(:cache_report_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportARN, location_name: 'CacheReportARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cache report you want to cancel.</p>"}))
    CancelCacheReportOutput.type = Types::CancelCacheReportOutput
    CancelRetrievalInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    CancelRetrievalInput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval\n         for.</p>", "smithy.api#required" => {}}))
    CancelRetrievalInput.type = Types::CancelRetrievalInput
    CancelRetrievalOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape for which retrieval was\n         canceled.</p>"}))
    CancelRetrievalOutput.type = Types::CancelRetrievalOutput
    CaseSensitivity.add_member(:client_specified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ClientSpecified', traits: {"smithy.api#enumValue" => "ClientSpecified"}))
    CaseSensitivity.add_member(:case_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CaseSensitive', traits: {"smithy.api#enumValue" => "CaseSensitive"}))
    ChapCredentials.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChapInfo)
    ChapInfo.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume.</p>\n         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>"}))
    ChapInfo.add_member(:secret_to_authenticate_initiator, Smithy::Schema::Shapes::ShapeRef.new(shape: ChapSecret, location_name: 'SecretToAuthenticateInitiator', traits: {"smithy.api#documentation" => "<p>The secret key that the initiator (for example, the Windows client) must provide to\n         participate in mutual CHAP with the target.</p>"}))
    ChapInfo.add_member(:initiator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IqnName, location_name: 'InitiatorName', traits: {"smithy.api#documentation" => "<p>The iSCSI initiator that connects to the target.</p>"}))
    ChapInfo.add_member(:secret_to_authenticate_target, Smithy::Schema::Shapes::ShapeRef.new(shape: ChapSecret, location_name: 'SecretToAuthenticateTarget', traits: {"smithy.api#documentation" => "<p>The secret key that the target must provide to participate in mutual CHAP with the\n         initiator (e.g., Windows client).</p>"}))
    ChapInfo.type = Types::ChapInfo
    CreateCachediSCSIVolumeInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:volume_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'VolumeSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the volume in bytes.</p>", "smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The snapshot ID (e.g. \"snap-1122aabb\") of the snapshot to restore as the new cached\n         volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;\n         otherwise, do not include this field. To list snapshots for your account use <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html\">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API\n            Reference</i>.</p>"}))
    CreateCachediSCSIVolumeInput.add_member(:target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'TargetName', traits: {"smithy.api#documentation" => "<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a\n         suffix for the target ARN. For example, specifying <code>TargetName</code> as\n            <i>myvolume</i> results in the target ARN of\n            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.\n         The target name must be unique across all volumes on a gateway.</p>\n         <p>If you don't specify a value, Storage Gateway uses the value that was previously\n         used for this volume as the new target name.</p>", "smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:source_volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'SourceVolumeARN', traits: {"smithy.api#documentation" => "<p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact\n         copy of the specified existing volume's latest recovery point. The\n            <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than\n         the size of the existing volume, in bytes.</p>"}))
    CreateCachediSCSIVolumeInput.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4\n         and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the\n         network interfaces available on a gateway.</p>\n         <p>Valid Values: A valid IP address.</p>", "smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you use to retry a request. If you retry a request, use the\n         same <code>ClientToken</code> you specified in the initial request.</p>", "smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own\n            KMS key, or <code>false</code> to use a key managed by Amazon S3.\n         Optional.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateCachediSCSIVolumeInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This\n         value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>"}))
    CreateCachediSCSIVolumeInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that you can assign to a cached volume. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers that you can\n            represent in UTF-8 format, and the following special characters: + - = . _ : / @. The\n            maximum length of a tag's key is 128 characters, and the maximum length for a\n            tag's value is 256 characters.</p>\n         </note>"}))
    CreateCachediSCSIVolumeInput.type = Types::CreateCachediSCSIVolumeInput
    CreateCachediSCSIVolumeOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured volume.</p>"}))
    CreateCachediSCSIVolumeOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that\n         initiators can use to connect to the target.</p>"}))
    CreateCachediSCSIVolumeOutput.type = Types::CreateCachediSCSIVolumeOutput
    CreateNFSFileShareInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique string value that you supply that is used by S3 File Gateway to ensure\n         idempotent file share creation.</p>", "smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:nfs_file_share_defaults, Smithy::Schema::Shapes::ShapeRef.new(shape: NFSFileShareDefaults, location_name: 'NFSFileShareDefaults', traits: {"smithy.api#documentation" => "<p>File share default values. Optional.</p>"}))
    CreateNFSFileShareInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 File Gateway on which you want to create a file\n         share.</p>", "smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>A value that specifies the type of server-side encryption that the file share will use\n         for the data that it stores in Amazon S3.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>"}))
    CreateNFSFileShareInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}, "smithy.api#documentation" => "<p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with\n         your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by\n            Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the\n            <code>EncryptionType</code> parameter instead.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateNFSFileShareInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used\n         for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric\n         CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if\n            <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>"}))
    CreateNFSFileShareInput.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it\n         accesses the underlying storage.</p>", "smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationARN, location_name: 'LocationARN', traits: {"smithy.api#documentation" => "<p>A custom ARN for the backend storage used for storing data for file shares. It includes\n         a resource ARN with an optional prefix concatenation. The prefix must end with a forward\n         slash (/).</p>\n         <note>\n            <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,\n            as shown in the following examples.</p>\n            <p>Bucket ARN:</p>\n            <p>\n               <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>\n            </p>\n            <p>Access point ARN:</p>\n            <p>\n               <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>\n            </p>\n            <p>If you specify an access point, the bucket policy must be configured to delegate\n            access control to the access point. For information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control\">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>\n            <p>Access point alias:</p>\n            <p>\n               <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:default_storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'DefaultStorageClass', traits: {"smithy.api#documentation" => "<p>The default storage class for objects put into an Amazon S3 bucket by the S3\n         File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>\n         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |\n            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>\n         </p>"}))
    CreateNFSFileShareInput.add_member(:object_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectACL, location_name: 'ObjectACL', traits: {"smithy.api#documentation" => "<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket\n         that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>"}))
    CreateNFSFileShareInput.add_member(:client_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareClientList, location_name: 'ClientList', traits: {"smithy.api#documentation" => "<p>The list of clients that are allowed to access the S3 File Gateway. The list must\n         contain either valid IPv4/IPv6 addresses or valid CIDR blocks.</p>"}))
    CreateNFSFileShareInput.add_member(:squash, Smithy::Schema::Shapes::ShapeRef.new(shape: Squash, location_name: 'Squash', traits: {"smithy.api#documentation" => "<p>A value that maps a user to anonymous user.</p>\n         <p>Valid values are the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>RootSquash</code>: Only root is mapped to anonymous user.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NoSquash</code>: No one is mapped to anonymous user.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>\n            </li>\n         </ul>"}))
    CreateNFSFileShareInput.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadOnly', traits: {"smithy.api#documentation" => "<p>A value that sets the write status of a file share. Set this value to <code>true</code>\n         to set the write status to read-only, otherwise set to <code>false</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateNFSFileShareInput.add_member(:guess_mime_type_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'GuessMIMETypeEnabled', traits: {"smithy.api#documentation" => "<p>A value that enables guessing of the MIME type for uploaded objects based on file\n         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set\n         to <code>false</code>. The default value is <code>true</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateNFSFileShareInput.add_member(:requester_pays, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequesterPays', traits: {"smithy.api#documentation" => "<p>A value that sets who pays the cost of the request and the cost associated with data\n         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays\n         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays\n         the cost of storing data.</p>\n         <note>\n            <p>\n               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file\n            share, so make sure that the configuration on the file share is the same as the S3\n            bucket configuration.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateNFSFileShareInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a\n         key-value pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateNFSFileShareInput.add_member(:file_share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareName, location_name: 'FileShareName', traits: {"smithy.api#documentation" => "<p>The name of the file share. Optional.</p>\n         <note>\n            <p>\n               <code>FileShareName</code> must be set if an S3 prefix name is set in\n               <code>LocationARN</code>, or if an access point or access point alias is used.</p>\n            <p>A valid NFS file share name can only contain the following characters:\n               <code>a</code>-<code>z</code>, <code>A</code>-<code>Z</code>,\n               <code>0</code>-<code>9</code>, <code>-</code>, <code>.</code>, and\n            <code>_</code>.</p>\n         </note>"}))
    CreateNFSFileShareInput.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes', traits: {"smithy.api#documentation" => "<p>Specifies refresh cache information for the file share.</p>"}))
    CreateNFSFileShareInput.add_member(:notification_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationPolicy, location_name: 'NotificationPolicy', traits: {"smithy.api#documentation" => "<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls\n         the number of seconds to wait after the last point in time a client wrote to a file before\n         generating an <code>ObjectUploaded</code> notification. Because clients can make many small\n         writes to files, it's best to set this parameter for as long as possible to avoid\n         generating multiple notifications for the same file in a small time period.</p>\n         <note>\n            <p>\n               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object\n            uploading to Amazon S3, only the timing of the notification.</p>\n            <p>This setting is not meant to specify an exact time at which the notification will be\n            sent. In some cases, the gateway might require more than the specified delay time to\n            generate and send notifications.</p>\n         </note>\n         <p>The following example sets <code>NotificationPolicy</code> on with\n            <code>SettlingTimeInSeconds</code> set to 60.</p>\n         <p>\n            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>\n         </p>\n         <p>The following example sets <code>NotificationPolicy</code> off.</p>\n         <p>\n            <code>{}</code>\n         </p>"}))
    CreateNFSFileShareInput.add_member(:vpc_endpoint_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DNSHostName, location_name: 'VPCEndpointDNSName', traits: {"smithy.api#documentation" => "<p>Specifies the DNS name for the VPC endpoint that the NFS file share uses to connect to\n            Amazon S3.</p>\n         <note>\n            <p>This parameter is required for NFS file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    CreateNFSFileShareInput.add_member(:bucket_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionId, location_name: 'BucketRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Region of the S3 bucket where the NFS file share stores files.</p>\n         <note>\n            <p>This parameter is required for NFS file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    CreateNFSFileShareInput.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>"}))
    CreateNFSFileShareInput.type = Types::CreateNFSFileShareInput
    CreateNFSFileShareOutput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the newly created file share.</p>"}))
    CreateNFSFileShareOutput.type = Types::CreateNFSFileShareOutput
    CreateSMBFileShareInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique string value that you supply that is used by S3 File Gateway to ensure\n         idempotent file share creation.</p>", "smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The ARN of the S3 File Gateway on which you want to create a file share.</p>", "smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>A value that specifies the type of server-side encryption that the file share will use\n         for the data that it stores in Amazon S3.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>"}))
    CreateSMBFileShareInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}, "smithy.api#documentation" => "<p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with\n         your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by\n            Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the\n            <code>EncryptionType</code> parameter instead.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used\n         for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric\n         CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if\n            <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>"}))
    CreateSMBFileShareInput.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it\n         accesses the underlying storage.</p>", "smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationARN, location_name: 'LocationARN', traits: {"smithy.api#documentation" => "<p>A custom ARN for the backend storage used for storing data for file shares. It includes\n         a resource ARN with an optional prefix concatenation. The prefix must end with a forward\n         slash (/).</p>\n         <note>\n            <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,\n            as shown in the following examples.</p>\n            <p>Bucket ARN:</p>\n            <p>\n               <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>\n            </p>\n            <p>Access point ARN:</p>\n            <p>\n               <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>\n            </p>\n            <p>If you specify an access point, the bucket policy must be configured to delegate\n            access control to the access point. For information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control\">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>\n            <p>Access point alias:</p>\n            <p>\n               <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:default_storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'DefaultStorageClass', traits: {"smithy.api#documentation" => "<p>The default storage class for objects put into an Amazon S3 bucket by the S3\n         File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>\n         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |\n            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:object_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectACL, location_name: 'ObjectACL', traits: {"smithy.api#documentation" => "<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket\n         that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>"}))
    CreateSMBFileShareInput.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadOnly', traits: {"smithy.api#documentation" => "<p>A value that sets the write status of a file share. Set this value to <code>true</code>\n         to set the write status to read-only, otherwise set to <code>false</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:guess_mime_type_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'GuessMIMETypeEnabled', traits: {"smithy.api#documentation" => "<p>A value that enables guessing of the MIME type for uploaded objects based on file\n         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set\n         to <code>false</code>. The default value is <code>true</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:requester_pays, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequesterPays', traits: {"smithy.api#documentation" => "<p>A value that sets who pays the cost of the request and the cost associated with data\n         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays\n         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays\n         the cost of storing data.</p>\n         <note>\n            <p>\n               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file\n            share, so make sure that the configuration on the file share is the same as the S3\n            bucket configuration.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:smbacl_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SMBACLEnabled', traits: {"smithy.api#documentation" => "<p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file\n         share. Set it to <code>false</code> to map file and directory permissions to the POSIX\n         permissions.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html\">Using Windows ACLs to limit SMB file share\n            access</a> in the <i>Amazon S3 File Gateway User\n         Guide</i>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:access_based_enumeration, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AccessBasedEnumeration', traits: {"smithy.api#documentation" => "<p>The files and folders on this share will only be visible to users with read\n         access.</p>"}))
    CreateSMBFileShareInput.add_member(:admin_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'AdminUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that will be granted administrator\n         privileges on the file share. These users can do all file operations as the super-user.\n         Acceptable formats include: <code>DOMAIN\\User1</code>, <code>user1</code>,\n            <code>@group1</code>, and <code>@DOMAIN\\group1</code>.</p>\n         <important>\n            <p>Use this option very carefully, because any user in this list can do anything they\n            like on the file share, regardless of file permissions.</p>\n         </important>"}))
    CreateSMBFileShareInput.add_member(:valid_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'ValidUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that are allowed to access the file\n            <a href=\"\"></a> share. A group must be prefixed with the @ character. Acceptable formats\n         include: <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    CreateSMBFileShareInput.add_member(:invalid_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'InvalidUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that are not allowed to access the\n         file share. A group must be prefixed with the @ character. Acceptable formats include:\n            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    CreateSMBFileShareInput.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>"}))
    CreateSMBFileShareInput.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: Authentication, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>The authentication method that users use to access the file share. The default is\n            <code>ActiveDirectory</code>.</p>\n         <p>Valid Values: <code>ActiveDirectory</code> | <code>GuestAccess</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:case_sensitivity, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseSensitivity, location_name: 'CaseSensitivity', traits: {"smithy.api#documentation" => "<p>The case of an object name in an Amazon S3 bucket. For\n            <code>ClientSpecified</code>, the client determines the case sensitivity. For\n            <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default\n         value is <code>ClientSpecified</code>.</p>"}))
    CreateSMBFileShareInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a\n         key-value pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateSMBFileShareInput.add_member(:file_share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareName, location_name: 'FileShareName', traits: {"smithy.api#documentation" => "<p>The name of the file share. Optional.</p>\n         <note>\n            <p>\n               <code>FileShareName</code> must be set if an S3 prefix name is set in\n               <code>LocationARN</code>, or if an access point or access point alias is used.</p>\n            <p>A valid SMB file share name cannot contain the following characters:\n               <code>[</code>,<code>]</code>,<code>#</code>,<code>;</code>,<code><</code>,<code>></code>,<code>:</code>,<code>\"</code>,<code>\\</code>,<code>/</code>,<code>|</code>,<code>?</code>,<code>*</code>,<code>+</code>,\n            or ASCII control characters <code>1-31</code>.</p>\n         </note>"}))
    CreateSMBFileShareInput.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes', traits: {"smithy.api#documentation" => "<p>Specifies refresh cache information for the file share.</p>"}))
    CreateSMBFileShareInput.add_member(:notification_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationPolicy, location_name: 'NotificationPolicy', traits: {"smithy.api#documentation" => "<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls\n         the number of seconds to wait after the last point in time a client wrote to a file before\n         generating an <code>ObjectUploaded</code> notification. Because clients can make many small\n         writes to files, it's best to set this parameter for as long as possible to avoid\n         generating multiple notifications for the same file in a small time period.</p>\n         <note>\n            <p>\n               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object\n            uploading to Amazon S3, only the timing of the notification.</p>\n            <p>This setting is not meant to specify an exact time at which the notification will be\n            sent. In some cases, the gateway might require more than the specified delay time to\n            generate and send notifications.</p>\n         </note>\n         <p>The following example sets <code>NotificationPolicy</code> on with\n            <code>SettlingTimeInSeconds</code> set to 60.</p>\n         <p>\n            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>\n         </p>\n         <p>The following example sets <code>NotificationPolicy</code> off.</p>\n         <p>\n            <code>{}</code>\n         </p>"}))
    CreateSMBFileShareInput.add_member(:vpc_endpoint_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DNSHostName, location_name: 'VPCEndpointDNSName', traits: {"smithy.api#documentation" => "<p>Specifies the DNS name for the VPC endpoint that the SMB file share uses to connect to\n            Amazon S3.</p>\n         <note>\n            <p>This parameter is required for SMB file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    CreateSMBFileShareInput.add_member(:bucket_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionId, location_name: 'BucketRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Region of the S3 bucket where the SMB file share stores files.</p>\n         <note>\n            <p>This parameter is required for SMB file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    CreateSMBFileShareInput.add_member(:oplocks_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OplocksEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>\n         <note>\n            <p>Enabling opportunistic locking on case-sensitive shares is not recommended for\n            workloads that involve access to files with the same name in different case.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateSMBFileShareInput.type = Types::CreateSMBFileShareInput
    CreateSMBFileShareOutput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the newly created file share.</p>"}))
    CreateSMBFileShareOutput.type = Types::CreateSMBFileShareOutput
    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for\n         specified VolumeARN.</p>", "smithy.api#required" => {}}))
    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:snapshot_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotDescription, location_name: 'SnapshotDescription', traits: {"smithy.api#documentation" => "<p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic\n         Block Store snapshots panel in the <b>Description</b> field, and\n         in the Storage Gateway snapshot <b>Details</b> pane,\n            <b>Description</b> field.</p>", "smithy.api#required" => {}}))
    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateSnapshotFromVolumeRecoveryPointInput.type = Types::CreateSnapshotFromVolumeRecoveryPointInput
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot.</p>"}))
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for\n         specified VolumeARN.</p>"}))
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:volume_recovery_point_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeRecoveryPointTime', traits: {"smithy.api#documentation" => "<p>The time the volume was created from the recovery point.</p>"}))
    CreateSnapshotFromVolumeRecoveryPointOutput.type = Types::CreateSnapshotFromVolumeRecoveryPointOutput
    CreateSnapshotInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>\n         operation to return a list of gateway volumes.</p>", "smithy.api#required" => {}}))
    CreateSnapshotInput.add_member(:snapshot_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotDescription, location_name: 'SnapshotDescription', traits: {"smithy.api#documentation" => "<p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic\n         Block Store snapshots panel in the <b>Description</b> field, and\n         in the Storage Gateway snapshot <b>Details</b> pane,\n            <b>Description</b> field.</p>", "smithy.api#required" => {}}))
    CreateSnapshotInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateSnapshotInput.type = Types::CreateSnapshotInput
    CreateSnapshotOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.</p>"}))
    CreateSnapshotOutput.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The snapshot ID that is used to refer to the snapshot in future operations such as\n         describing snapshots (Amazon Elastic Compute Cloud API <code>DescribeSnapshots</code>) or\n         creating a volume from a snapshot (<a>CreateStorediSCSIVolume</a>).</p>"}))
    CreateSnapshotOutput.type = Types::CreateSnapshotOutput
    CreateStorediSCSIVolumeInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:disk_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskId, location_name: 'DiskId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the gateway local disk that is configured as a stored volume.\n         Use <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html\">ListLocalDisks</a> to\n         list disk IDs for a gateway.</p>", "smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The snapshot ID (e.g., \"snap-1122aabb\") of the snapshot to restore as the new stored\n         volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;\n         otherwise, do not include this field. To list snapshots for your account use <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html\">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API\n            Reference</i>.</p>"}))
    CreateStorediSCSIVolumeInput.add_member(:preserve_existing_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'PreserveExistingData', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>true</code> if you want to preserve the data on the local disk. Otherwise,\n         set to <code>false</code> to create an empty volume.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>", "smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'TargetName', traits: {"smithy.api#documentation" => "<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a\n         suffix for the target ARN. For example, specifying <code>TargetName</code> as\n            <i>myvolume</i> results in the target ARN of\n            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.\n         The target name must be unique across all volumes on a gateway.</p>\n         <p>If you don't specify a value, Storage Gateway uses the value that was previously\n         used for this volume as the new target name.</p>", "smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4\n         and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the\n         network interfaces available on a gateway.</p>\n         <p>Valid Values: A valid IP address.</p>", "smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own\n            KMS key, or <code>false</code> to use a key managed by Amazon S3.\n         Optional.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateStorediSCSIVolumeInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This\n         value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>"}))
    CreateStorediSCSIVolumeInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to a stored volume. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateStorediSCSIVolumeInput.type = Types::CreateStorediSCSIVolumeInput
    CreateStorediSCSIVolumeOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configured volume.</p>"}))
    CreateStorediSCSIVolumeOutput.add_member(:volume_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'VolumeSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the volume in bytes.</p>"}))
    CreateStorediSCSIVolumeOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that\n         initiators can use to connect to the target.</p>"}))
    CreateStorediSCSIVolumeOutput.type = Types::CreateStorediSCSIVolumeOutput
    CreateTapePoolInput.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the new custom tape pool.</p>", "smithy.api#required" => {}}))
    CreateTapePoolInput.add_member(:storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeStorageClass, location_name: 'StorageClass', traits: {"smithy.api#documentation" => "<p>The storage class that is associated with the new custom pool. When you use your backup\n         application to eject the tape, the tape is archived directly into the storage class (S3\n         Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>", "smithy.api#required" => {}}))
    CreateTapePoolInput.add_member(:retention_lock_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionLockType, location_name: 'RetentionLockType', traits: {"smithy.api#documentation" => "<p>Tape retention lock can be configured in two modes. When configured in governance mode,\n            Amazon Web Services accounts with specific IAM permissions are authorized to remove the\n         tape retention lock from archived virtual tapes. When configured in compliance mode, the\n         tape retention lock cannot be removed by any user, including the root Amazon Web Services account.</p>"}))
    CreateTapePoolInput.add_member(:retention_lock_time_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionLockTimeInDays, location_name: 'RetentionLockTimeInDays', traits: {"smithy.api#documentation" => "<p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to\n         100 years (36,500 days).</p>"}))
    CreateTapePoolInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to tape pool. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateTapePoolInput.type = Types::CreateTapePoolInput
    CreateTapePoolOutput.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolARN, location_name: 'PoolARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) that represents the custom tape pool. Use the\n            <a>ListTapePools</a> operation to return a list of tape pools for your\n         account and Amazon Web Services Region.</p>"}))
    CreateTapePoolOutput.type = Types::CreateTapePoolOutput
    CreateTapeWithBarcodeInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the\n         virtual tape with. Use the <a>ListGateways</a> operation to return a list of\n         gateways for your account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateTapeWithBarcodeInput.add_member(:tape_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeSize, location_name: 'TapeSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the virtual tape that you want to create.</p>\n         <note>\n            <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>\n         </note>", "smithy.api#required" => {}}))
    CreateTapeWithBarcodeInput.add_member(:tape_barcode, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeBarcode, location_name: 'TapeBarcode', traits: {"smithy.api#documentation" => "<p>The barcode that you want to assign to the tape.</p>\n         <note>\n            <p>Barcodes cannot be reused. This includes barcodes used for tapes that have been\n            deleted.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateTapeWithBarcodeInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own\n            KMS key, or <code>false</code> to use a key managed by Amazon S3.\n         Optional.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateTapeWithBarcodeInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This\n         value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>"}))
    CreateTapeWithBarcodeInput.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the pool that you want to add your tape to for archiving. The tape in this\n         pool is archived in the S3 storage class that is associated with the pool. When you use\n         your backup application to eject the tape, the tape is archived directly into the storage\n         class (S3 Glacier or S3 Deep Archive) that corresponds to the pool.</p>"}))
    CreateTapeWithBarcodeInput.add_member(:worm, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'Worm', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a\n         write-once-read-many (WORM) tape.</p>"}))
    CreateTapeWithBarcodeInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to a virtual tape that has a barcode. Each\n         tag is a key-value pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateTapeWithBarcodeInput.type = Types::CreateTapeWithBarcodeInput
    CreateTapeWithBarcodeOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>A unique Amazon Resource Name (ARN) that represents the virtual tape that was\n         created.</p>"}))
    CreateTapeWithBarcodeOutput.type = Types::CreateTapeWithBarcodeOutput
    CreateTapesInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the\n         virtual tapes with. Use the <a>ListGateways</a> operation to return a list of\n         gateways for your account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateTapesInput.add_member(:tape_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeSize, location_name: 'TapeSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the virtual tapes that you want to create.</p>\n         <note>\n            <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>\n         </note>", "smithy.api#required" => {}}))
    CreateTapesInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you use to retry a request. If you retry a request, use the\n         same <code>ClientToken</code> you specified in the initial request.</p>\n         <note>\n            <p>Using the same <code>ClientToken</code> prevents creating the tape multiple\n            times.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateTapesInput.add_member(:num_tapes_to_create, Smithy::Schema::Shapes::ShapeRef.new(shape: NumTapesToCreate, location_name: 'NumTapesToCreate', traits: {"smithy.api#documentation" => "<p>The number of virtual tapes that you want to create.</p>", "smithy.api#required" => {}}))
    CreateTapesInput.add_member(:tape_barcode_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeBarcodePrefix, location_name: 'TapeBarcodePrefix', traits: {"smithy.api#documentation" => "<p>A prefix that you append to the barcode of the virtual tape you are creating. This\n         prefix makes the barcode unique.</p>\n         <note>\n            <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters\n            from A to Z.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateTapesInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own\n            KMS key, or <code>false</code> to use a key managed by Amazon S3.\n         Optional.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    CreateTapesInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This\n         value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>"}))
    CreateTapesInput.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the pool that you want to add your tape to for archiving. The tape in this\n         pool is archived in the S3 storage class that is associated with the pool. When you use\n         your backup application to eject the tape, the tape is archived directly into the storage\n         class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>"}))
    CreateTapesInput.add_member(:worm, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'Worm', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a\n         write-once-read-many (WORM) tape.</p>"}))
    CreateTapesInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to a virtual tape. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    CreateTapesInput.type = Types::CreateTapesInput
    CreateTapesOutput.add_member(:tape_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARNs, location_name: 'TapeARNs', traits: {"smithy.api#documentation" => "<p>A list of unique Amazon Resource Names (ARNs) that represents the virtual tapes that\n         were created.</p>"}))
    CreateTapesOutput.type = Types::CreateTapesOutput
    DaysOfWeek.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek)
    DeleteAutomaticTapeCreationPolicyInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DeleteAutomaticTapeCreationPolicyInput.type = Types::DeleteAutomaticTapeCreationPolicyInput
    DeleteAutomaticTapeCreationPolicyOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DeleteAutomaticTapeCreationPolicyOutput.type = Types::DeleteAutomaticTapeCreationPolicyOutput
    DeleteBandwidthRateLimitInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DeleteBandwidthRateLimitInput.add_member(:bandwidth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthType, location_name: 'BandwidthType', traits: {"smithy.api#documentation" => "<p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to\n         delete.</p>\n         <p>Valid Values: <code>UPLOAD</code> | <code>DOWNLOAD</code> | <code>ALL</code>\n         </p>", "smithy.api#required" => {}}))
    DeleteBandwidthRateLimitInput.type = Types::DeleteBandwidthRateLimitInput
    DeleteBandwidthRateLimitOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DeleteBandwidthRateLimitOutput.type = Types::DeleteBandwidthRateLimitOutput
    DeleteCacheReportInput.add_member(:cache_report_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportARN, location_name: 'CacheReportARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cache report you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteCacheReportInput.type = Types::DeleteCacheReportInput
    DeleteCacheReportOutput.add_member(:cache_report_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportARN, location_name: 'CacheReportARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cache report you want to delete.</p>"}))
    DeleteCacheReportOutput.type = Types::DeleteCacheReportOutput
    DeleteChapCredentialsInput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for\n         specified VolumeARN.</p>", "smithy.api#required" => {}}))
    DeleteChapCredentialsInput.add_member(:initiator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IqnName, location_name: 'InitiatorName', traits: {"smithy.api#documentation" => "<p>The iSCSI initiator that connects to the target.</p>", "smithy.api#required" => {}}))
    DeleteChapCredentialsInput.type = Types::DeleteChapCredentialsInput
    DeleteChapCredentialsOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target.</p>"}))
    DeleteChapCredentialsOutput.add_member(:initiator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IqnName, location_name: 'InitiatorName', traits: {"smithy.api#documentation" => "<p>The iSCSI initiator that connects to the target.</p>"}))
    DeleteChapCredentialsOutput.type = Types::DeleteChapCredentialsOutput
    DeleteFileShareInput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file share to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteFileShareInput.add_member(:force_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'ForceDelete', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this value is set to <code>true</code>, the operation deletes a file share\n         immediately and aborts all data uploads to Amazon Web Services. Otherwise, the file share is\n         not deleted until all data is uploaded to Amazon Web Services. This process aborts the data\n         upload process, and the file share enters the <code>FORCE_DELETING</code> status.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    DeleteFileShareInput.type = Types::DeleteFileShareInput
    DeleteFileShareOutput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted file share.</p>"}))
    DeleteFileShareOutput.type = Types::DeleteFileShareOutput
    DeleteGatewayInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DeleteGatewayInput.type = Types::DeleteGatewayInput
    DeleteGatewayOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DeleteGatewayOutput.type = Types::DeleteGatewayOutput
    DeleteSnapshotScheduleInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The volume which snapshot schedule to delete.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotScheduleInput.type = Types::DeleteSnapshotScheduleInput
    DeleteSnapshotScheduleOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The volume which snapshot schedule was deleted.</p>"}))
    DeleteSnapshotScheduleOutput.type = Types::DeleteSnapshotScheduleOutput
    DeleteTapeArchiveInput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf\n         (VTS).</p>", "smithy.api#required" => {}}))
    DeleteTapeArchiveInput.add_member(:bypass_governance_retention, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'BypassGovernanceRetention', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with\n         tape retention lock. Only archived tapes with tape retention lock set to\n            <code>governance</code> can be deleted. Archived tapes with tape retention lock set to\n            <code>compliance</code> can't be deleted.</p>"}))
    DeleteTapeArchiveInput.type = Types::DeleteTapeArchiveInput
    DeleteTapeArchiveOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape that was deleted from the virtual\n         tape shelf (VTS).</p>"}))
    DeleteTapeArchiveOutput.type = Types::DeleteTapeArchiveOutput
    DeleteTapeInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is\n         associated with. Use the <a>ListGateways</a> operation to return a list of\n         gateways for your account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    DeleteTapeInput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>", "smithy.api#required" => {}}))
    DeleteTapeInput.add_member(:bypass_governance_retention, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'BypassGovernanceRetention', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with\n         tape retention lock. Only archived tapes with tape retention lock set to\n            <code>governance</code> can be deleted. Archived tapes with tape retention lock set to\n            <code>compliance</code> can't be deleted.</p>"}))
    DeleteTapeInput.type = Types::DeleteTapeInput
    DeleteTapeOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted virtual tape.</p>"}))
    DeleteTapeOutput.type = Types::DeleteTapeOutput
    DeleteTapePoolInput.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolARN, location_name: 'PoolARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom tape pool to delete.</p>", "smithy.api#required" => {}}))
    DeleteTapePoolInput.type = Types::DeleteTapePoolInput
    DeleteTapePoolOutput.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolARN, location_name: 'PoolARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom tape pool being deleted.</p>"}))
    DeleteTapePoolOutput.type = Types::DeleteTapePoolOutput
    DeleteVolumeInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>\n         operation to return a list of gateway volumes.</p>", "smithy.api#required" => {}}))
    DeleteVolumeInput.type = Types::DeleteVolumeInput
    DeleteVolumeOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage volume that was deleted. It is the same\n         ARN you provided in the request.</p>"}))
    DeleteVolumeOutput.type = Types::DeleteVolumeOutput
    DescribeAvailabilityMonitorTestInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeAvailabilityMonitorTestInput.type = Types::DescribeAvailabilityMonitorTestInput
    DescribeAvailabilityMonitorTestOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeAvailabilityMonitorTestOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityMonitorTestStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the high availability monitoring test. If a test hasn't been\n         performed, the value of this field is null.</p>"}))
    DescribeAvailabilityMonitorTestOutput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time the high availability monitoring test was started. If a test hasn't been\n         performed, the value of this field is null.</p>"}))
    DescribeAvailabilityMonitorTestOutput.type = Types::DescribeAvailabilityMonitorTestOutput
    DescribeBandwidthRateLimitInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeBandwidthRateLimitInput.type = Types::DescribeBandwidthRateLimitInput
    DescribeBandwidthRateLimitOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeBandwidthRateLimitOutput.add_member(:average_upload_rate_limit_in_bits_per_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthUploadRateLimit, location_name: 'AverageUploadRateLimitInBitsPerSec', traits: {"smithy.api#documentation" => "<p>The average upload bandwidth rate limit in bits per second. This field does not appear\n         in the response if the upload rate limit is not set.</p>"}))
    DescribeBandwidthRateLimitOutput.add_member(:average_download_rate_limit_in_bits_per_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthDownloadRateLimit, location_name: 'AverageDownloadRateLimitInBitsPerSec', traits: {"smithy.api#documentation" => "<p>The average download bandwidth rate limit in bits per second. This field does not appear\n         in the response if the download rate limit is not set.</p>"}))
    DescribeBandwidthRateLimitOutput.type = Types::DescribeBandwidthRateLimitOutput
    DescribeBandwidthRateLimitScheduleInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeBandwidthRateLimitScheduleInput.type = Types::DescribeBandwidthRateLimitScheduleInput
    DescribeBandwidthRateLimitScheduleOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeBandwidthRateLimitScheduleOutput.add_member(:bandwidth_rate_limit_intervals, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, location_name: 'BandwidthRateLimitIntervals', traits: {"smithy.api#documentation" => "<p> An array that contains the bandwidth rate limit intervals for a tape or volume gateway. </p>"}))
    DescribeBandwidthRateLimitScheduleOutput.type = Types::DescribeBandwidthRateLimitScheduleOutput
    DescribeCacheInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeCacheInput.type = Types::DescribeCacheInput
    DescribeCacheOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeCacheOutput.add_member(:disk_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskIds, location_name: 'DiskIds', traits: {"smithy.api#documentation" => "<p>An array of strings that identify disks that are to be configured as working storage.\n         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs\n         from the <a>ListLocalDisks</a> API.</p>"}))
    DescribeCacheOutput.add_member(:cache_allocated_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'CacheAllocatedInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of cache in bytes allocated to a gateway.</p>"}))
    DescribeCacheOutput.add_member(:cache_used_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CacheUsedPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Percent use of the gateway's cache storage. This metric applies only to the\n         gateway-cached volume setup. The sample is taken at the end of the reporting period.</p>"}))
    DescribeCacheOutput.add_member(:cache_dirty_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CacheDirtyPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The file share's contribution to the overall percentage of the gateway's cache\n         that has not been persisted to Amazon Web Services. The sample is taken at the end of the\n         reporting period.</p>"}))
    DescribeCacheOutput.add_member(:cache_hit_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CacheHitPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Percent of application read operations from the file shares that are served from cache.\n         The sample is taken at the end of the reporting period.</p>"}))
    DescribeCacheOutput.add_member(:cache_miss_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CacheMissPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Percent of application read operations from the file shares that are not served from\n         cache. The sample is taken at the end of the reporting period.</p>"}))
    DescribeCacheOutput.type = Types::DescribeCacheOutput
    DescribeCacheReportInput.add_member(:cache_report_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportARN, location_name: 'CacheReportARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cache report you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeCacheReportInput.type = Types::DescribeCacheReportInput
    DescribeCacheReportOutput.add_member(:cache_report_info, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportInfo, location_name: 'CacheReportInfo', traits: {"smithy.api#documentation" => "<p>Contains all informational fields associated with a cache report. Includes name, ARN,\n         tags, status, progress, filters, start time, and end time.</p>"}))
    DescribeCacheReportOutput.type = Types::DescribeCacheReportOutput
    DescribeCachediSCSIVolumesInput.add_member(:volume_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARNs, location_name: 'VolumeARNs', traits: {"smithy.api#documentation" => "<p>An array of strings where each string represents the Amazon Resource Name (ARN) of a\n         cached volume. All of the specified cached volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>", "smithy.api#required" => {}}))
    DescribeCachediSCSIVolumesInput.type = Types::DescribeCachediSCSIVolumesInput
    DescribeCachediSCSIVolumesOutput.add_member(:cachedi_scsi_volumes, Smithy::Schema::Shapes::ShapeRef.new(shape: CachediSCSIVolumes, location_name: 'CachediSCSIVolumes', traits: {"smithy.api#documentation" => "<p>An array of objects where each object contains metadata about one cached volume.</p>"}))
    DescribeCachediSCSIVolumesOutput.type = Types::DescribeCachediSCSIVolumesOutput
    DescribeChapCredentialsInput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for\n         specified VolumeARN.</p>", "smithy.api#required" => {}}))
    DescribeChapCredentialsInput.type = Types::DescribeChapCredentialsInput
    DescribeChapCredentialsOutput.add_member(:chap_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: ChapCredentials, location_name: 'ChapCredentials', traits: {"smithy.api#documentation" => "<p>An array of <a>ChapInfo</a> objects that represent CHAP credentials. Each\n         object in the array contains CHAP credential information for one target-initiator pair. If\n         no CHAP credentials are set, an empty array is returned. CHAP credential information is\n         provided in a JSON object with the following fields:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>InitiatorName</b>: The iSCSI initiator that connects to\n               the target.</p>\n            </li>\n            <li>\n               <p>\n                  <b>SecretToAuthenticateInitiator</b>: The secret key that\n               the initiator (for example, the Windows client) must provide to participate in mutual\n               CHAP with the target.</p>\n            </li>\n            <li>\n               <p>\n                  <b>SecretToAuthenticateTarget</b>: The secret key that the\n               target must provide to participate in mutual CHAP with the initiator (e.g. Windows\n               client).</p>\n            </li>\n            <li>\n               <p>\n                  <b>TargetARN</b>: The Amazon Resource Name (ARN) of the\n               storage volume.</p>\n            </li>\n         </ul>"}))
    DescribeChapCredentialsOutput.type = Types::DescribeChapCredentialsOutput
    DescribeFileSystemAssociationsInput.add_member(:file_system_association_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARNList, location_name: 'FileSystemAssociationARNList', traits: {"smithy.api#documentation" => "<p>An array containing the Amazon Resource Name (ARN) of each file system association to be\n         described.</p>", "smithy.api#required" => {}}))
    DescribeFileSystemAssociationsInput.type = Types::DescribeFileSystemAssociationsInput
    DescribeFileSystemAssociationsOutput.add_member(:file_system_association_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationInfoList, location_name: 'FileSystemAssociationInfoList', traits: {"smithy.api#documentation" => "<p>An array containing the <code>FileSystemAssociationInfo</code> data type of each file\n         system association to be described.\n         </p>"}))
    DescribeFileSystemAssociationsOutput.type = Types::DescribeFileSystemAssociationsOutput
    DescribeGatewayInformationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeGatewayInformationInput.type = Types::DescribeGatewayInformationInput
    DescribeGatewayInformationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeGatewayInformationOutput.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'GatewayId', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to your gateway during activation. This ID becomes part\n         of the gateway Amazon Resource Name (ARN), which you use as input for other\n         operations.</p>"}))
    DescribeGatewayInformationOutput.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GatewayName', traits: {"smithy.api#documentation" => "<p>The name you configured for your gateway.</p>"}))
    DescribeGatewayInformationOutput.add_member(:gateway_timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: 'GatewayTimezone', traits: {"smithy.api#documentation" => "<p>A value that indicates the time zone configured for the gateway.</p>"}))
    DescribeGatewayInformationOutput.add_member(:gateway_state, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayState, location_name: 'GatewayState', traits: {"smithy.api#documentation" => "<p>A value that indicates the operating state of the gateway.</p>"}))
    DescribeGatewayInformationOutput.add_member(:gateway_network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayNetworkInterfaces, location_name: 'GatewayNetworkInterfaces', traits: {"smithy.api#documentation" => "<p>A <a>NetworkInterface</a> array that contains descriptions of the gateway\n         network interfaces.</p>"}))
    DescribeGatewayInformationOutput.add_member(:gateway_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: 'GatewayType', traits: {"smithy.api#documentation" => "<p>The type of the gateway.</p>\n         <important>\n            <p>Amazon FSx File Gateway is no longer available to new customers. Existing\n            customers of FSx File Gateway can continue to use the service normally. For\n            capabilities similar to FSx File Gateway, visit <a href=\"https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/\">this blog post</a>.</p>\n         </important>"}))
    DescribeGatewayInformationOutput.add_member(:next_update_availability_date, Smithy::Schema::Shapes::ShapeRef.new(shape: NextUpdateAvailabilityDate, location_name: 'NextUpdateAvailabilityDate', traits: {"smithy.api#documentation" => "<p>The date on which an update to the gateway is available. This date is in the time zone\n         of the gateway. If the gateway is not available for an update this field is not returned in\n         the response.</p>"}))
    DescribeGatewayInformationOutput.add_member(:last_software_update, Smithy::Schema::Shapes::ShapeRef.new(shape: LastSoftwareUpdate, location_name: 'LastSoftwareUpdate', traits: {"smithy.api#documentation" => "<p>The date on which the last software update was applied to the gateway. If the gateway\n         has never been updated, this field does not return a value in the response. This only only\n         exist and returns once it have been chosen and set by the SGW service, based on the OS\n         version of the gateway VM</p>"}))
    DescribeGatewayInformationOutput.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceId, location_name: 'Ec2InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon EC2 instance that was used to launch the gateway.</p>"}))
    DescribeGatewayInformationOutput.add_member(:ec2_instance_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceRegion, location_name: 'Ec2InstanceRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where the Amazon EC2 instance is located.</p>"}))
    DescribeGatewayInformationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags assigned to the gateway, sorted alphabetically by key name. Each\n         tag is a key-value pair. For a gateway with more than 10 tags assigned, you can view all\n         tags using the <code>ListTagsForResource</code> API operation.</p>"}))
    DescribeGatewayInformationOutput.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VPCEndpoint', traits: {"smithy.api#documentation" => "<p>The configuration settings for the virtual private cloud (VPC) endpoint for your\n         gateway.</p>"}))
    DescribeGatewayInformationOutput.add_member(:cloud_watch_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupARN, location_name: 'CloudWatchLogGroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to\n         monitor events in the gateway. This field only only exist and returns once it have been\n         chosen and set by the SGW service, based on the OS version of the gateway VM</p>"}))
    DescribeGatewayInformationOutput.add_member(:host_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: HostEnvironment, location_name: 'HostEnvironment', traits: {"smithy.api#documentation" => "<p>The type of hardware or software platform on which the gateway is running.</p>\n         <note>\n            <p>Tape Gateway is no longer available on Snow Family devices.</p>\n         </note>"}))
    DescribeGatewayInformationOutput.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'EndpointType', traits: {"smithy.api#documentation" => "<p>The type of endpoint for your gateway.</p>\n         <p>Valid Values: <code>STANDARD</code> | <code>FIPS</code>\n         </p>"}))
    DescribeGatewayInformationOutput.add_member(:software_updates_end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdatesEndDate, location_name: 'SoftwareUpdatesEndDate', traits: {"smithy.api#documentation" => "<p>Date after which this gateway will not receive software updates for new features.</p>"}))
    DescribeGatewayInformationOutput.add_member(:deprecation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecationDate, location_name: 'DeprecationDate', traits: {"smithy.api#documentation" => "<p>Date after which this gateway will not receive software updates for new features and bug\n         fixes.</p>"}))
    DescribeGatewayInformationOutput.add_member(:gateway_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayCapacity, location_name: 'GatewayCapacity', traits: {"smithy.api#documentation" => "<p>Specifies the size of the gateway's metadata cache.</p>"}))
    DescribeGatewayInformationOutput.add_member(:supported_gateway_capacities, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedGatewayCapacities, location_name: 'SupportedGatewayCapacities', traits: {"smithy.api#documentation" => "<p>A list of the metadata cache sizes that the gateway can support based on its current\n         hardware specifications.</p>"}))
    DescribeGatewayInformationOutput.add_member(:host_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HostEnvironmentId, location_name: 'HostEnvironmentId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the specific instance of the host platform running the gateway.\n         This value is only available for certain host environments, and its format depends on the\n         host environment type.</p>"}))
    DescribeGatewayInformationOutput.add_member(:software_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareVersion, location_name: 'SoftwareVersion', traits: {"smithy.api#documentation" => "<p>The version number of the software running on the gateway appliance.</p>"}))
    DescribeGatewayInformationOutput.type = Types::DescribeGatewayInformationOutput
    DescribeMaintenanceStartTimeInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceStartTimeInput.type = Types::DescribeMaintenanceStartTimeInput
    DescribeMaintenanceStartTimeOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeMaintenanceStartTimeOutput.add_member(:hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'HourOfDay', traits: {"smithy.api#documentation" => "<p>The hour component of the maintenance start time represented as <i>hh</i>,\n         where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time\n         zone of the gateway.</p>"}))
    DescribeMaintenanceStartTimeOutput.add_member(:minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'MinuteOfHour', traits: {"smithy.api#documentation" => "<p>The minute component of the maintenance start time represented as\n            <i>mm</i>, where <i>mm</i> is the minute (0 to 59). The\n         minute of the hour is in the time zone of the gateway.</p>"}))
    DescribeMaintenanceStartTimeOutput.add_member(:day_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'DayOfWeek', traits: {"smithy.api#documentation" => "<p>An ordinal number between 0 and 6 that represents the day of the week, where 0\n         represents Sunday and 6 represents Saturday. The day of week is in the time zone of the\n         gateway.</p>"}))
    DescribeMaintenanceStartTimeOutput.add_member(:day_of_month, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfMonth, location_name: 'DayOfMonth', traits: {"smithy.api#documentation" => "<p>The day of the month component of the maintenance start time represented as an ordinal\n         number from 1 to 28, where 1 represents the first day of the month. It is not possible to\n         set the maintenance schedule to start on days 29 through 31.</p>"}))
    DescribeMaintenanceStartTimeOutput.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>A value that indicates the time zone that is set for the gateway. The start time and day\n         of week specified should be in the time zone of the gateway.</p>"}))
    DescribeMaintenanceStartTimeOutput.add_member(:software_update_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdatePreferences, location_name: 'SoftwareUpdatePreferences', traits: {"smithy.api#documentation" => "<p>A set of variables indicating the software update preferences for the gateway.</p>\n         <p>Includes <code>AutomaticUpdatePolicy</code> parameter with the following inputs:</p>\n         <p>\n            <code>ALL_VERSIONS</code> - Enables regular gateway maintenance updates.</p>\n         <p>\n            <code>EMERGENCY_VERSIONS_ONLY</code> - Disables regular gateway maintenance updates. The\n         gateway will still receive emergency version updates on rare occasions if necessary to\n         remedy highly critical security or durability issues. You will be notified before an\n         emergency version update is applied. These updates are applied during your gateway's\n         scheduled maintenance window.</p>"}))
    DescribeMaintenanceStartTimeOutput.type = Types::DescribeMaintenanceStartTimeOutput
    DescribeNFSFileSharesInput.add_member(:file_share_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARNList, location_name: 'FileShareARNList', traits: {"smithy.api#documentation" => "<p>An array containing the Amazon Resource Name (ARN) of each file share to be\n         described.</p>", "smithy.api#required" => {}}))
    DescribeNFSFileSharesInput.type = Types::DescribeNFSFileSharesInput
    DescribeNFSFileSharesOutput.add_member(:nfs_file_share_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: NFSFileShareInfoList, location_name: 'NFSFileShareInfoList', traits: {"smithy.api#documentation" => "<p>An array containing a description for each requested file share.</p>"}))
    DescribeNFSFileSharesOutput.type = Types::DescribeNFSFileSharesOutput
    DescribeSMBFileSharesInput.add_member(:file_share_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARNList, location_name: 'FileShareARNList', traits: {"smithy.api#documentation" => "<p>An array containing the Amazon Resource Name (ARN) of each file share to be\n         described.</p>", "smithy.api#required" => {}}))
    DescribeSMBFileSharesInput.type = Types::DescribeSMBFileSharesInput
    DescribeSMBFileSharesOutput.add_member(:smb_file_share_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SMBFileShareInfoList, location_name: 'SMBFileShareInfoList', traits: {"smithy.api#documentation" => "<p>An array containing a description for each requested file share.</p>"}))
    DescribeSMBFileSharesOutput.type = Types::DescribeSMBFileSharesOutput
    DescribeSMBSettingsInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeSMBSettingsInput.type = Types::DescribeSMBSettingsInput
    DescribeSMBSettingsOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeSMBSettingsOutput.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain that the gateway is joined to.</p>"}))
    DescribeSMBSettingsOutput.add_member(:active_directory_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveDirectoryStatus, location_name: 'ActiveDirectoryStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of a gateway that is a member of the Active Directory\n         domain.</p>\n         <note>\n            <p>This field is only used as part of a <code>JoinDomain</code> request. It is not\n            affected by Active Directory connectivity changes that occur after the\n               <code>JoinDomain</code> request succeeds.</p>\n         </note>\n         <ul>\n            <li>\n               <p>\n                  <code>ACCESS_DENIED</code>: Indicates that the <code>JoinDomain</code> operation\n               failed due to an authentication error.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DETACHED</code>: Indicates that gateway is not joined to a domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JOINED</code>: Indicates that the gateway has successfully joined a\n               domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JOINING</code>: Indicates that a <code>JoinDomain</code> operation is in\n               progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NETWORK_ERROR</code>: Indicates that <code>JoinDomain</code> operation\n               failed due to a network or connectivity error.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TIMEOUT</code>: Indicates that the <code>JoinDomain</code> operation failed\n               because the operation didn't complete within the allotted time.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNKNOWN_ERROR</code>: Indicates that the <code>JoinDomain</code> operation\n               failed due to another type of error.</p>\n            </li>\n         </ul>"}))
    DescribeSMBSettingsOutput.add_member(:smb_guest_password_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SMBGuestPasswordSet', traits: {"smithy.api#documentation" => "<p>This value is <code>true</code> if a password for the guest user <code>smbguest</code>\n         is set, otherwise <code>false</code>. Only supported for S3 File Gateways.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    DescribeSMBSettingsOutput.add_member(:smb_security_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SMBSecurityStrategy, location_name: 'SMBSecurityStrategy', traits: {"smithy.api#documentation" => "<p>The type of security strategy that was specified for file gateway.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ClientSpecified</code>: If you choose this option, requests are established\n               based on what is negotiated by the client. This option is recommended when you want\n               to maximize compatibility across different clients in your environment. Supported\n               only for S3 File Gateway.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MandatorySigning</code>: If you choose this option, File Gateway only allows\n               connections from SMBv2 or SMBv3 clients that have signing turned on. This option\n               works with SMB clients on Microsoft Windows Vista, Windows Server 2008, or later.\n            </p>\n            </li>\n            <li>\n               <p>\n                  <code>MandatoryEncryption</code>: If you choose this option, File Gateway only\n               allows connections from SMBv3 clients that have encryption turned on. Both 256-bit\n               and 128-bit algorithms are allowed. This option is recommended for environments that\n               handle sensitive data. It works with SMB clients on Microsoft Windows 8, Windows\n               Server 2012, or later.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MandatoryEncryptionNoAes128</code>: If you choose this option, File Gateway\n               only allows connections from SMBv3 clients that use 256-bit AES encryption\n               algorithms. 128-bit algorithms are not allowed. This option is recommended for\n               environments that handle sensitive data. It works with SMB clients on Microsoft\n               Windows 8, Windows Server 2012, or later.</p>\n            </li>\n         </ul>"}))
    DescribeSMBSettingsOutput.add_member(:file_shares_visible, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FileSharesVisible', traits: {"smithy.api#documentation" => "<p>The shares on this gateway appear when listing shares. Only supported for S3 File\n         Gateways. </p>"}))
    DescribeSMBSettingsOutput.add_member(:smb_local_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SMBLocalGroups, location_name: 'SMBLocalGroups', traits: {"smithy.api#documentation" => "<p>A list of Active Directory users and groups that have special permissions for SMB file\n         shares on the gateway.</p>"}))
    DescribeSMBSettingsOutput.type = Types::DescribeSMBSettingsOutput
    DescribeSnapshotScheduleInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>\n         operation to return a list of gateway volumes.</p>", "smithy.api#required" => {}}))
    DescribeSnapshotScheduleInput.type = Types::DescribeSnapshotScheduleInput
    DescribeSnapshotScheduleOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume that was specified in the request.</p>"}))
    DescribeSnapshotScheduleOutput.add_member(:start_at, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'StartAt', traits: {"smithy.api#documentation" => "<p>The hour of the day at which the snapshot schedule begins represented as\n            <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour\n         of the day is in the time zone of the gateway.</p>"}))
    DescribeSnapshotScheduleOutput.add_member(:recurrence_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceInHours, location_name: 'RecurrenceInHours', traits: {"smithy.api#documentation" => "<p>The number of hours between snapshots.</p>"}))
    DescribeSnapshotScheduleOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The snapshot description.</p>"}))
    DescribeSnapshotScheduleOutput.add_member(:timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: 'Timezone', traits: {"smithy.api#documentation" => "<p>A value that indicates the time zone of the gateway.</p>"}))
    DescribeSnapshotScheduleOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags assigned to the snapshot schedule, sorted alphabetically by key\n         name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can\n         view all tags using the <code>ListTagsForResource</code> API operation.</p>"}))
    DescribeSnapshotScheduleOutput.type = Types::DescribeSnapshotScheduleOutput
    DescribeStorediSCSIVolumesInput.add_member(:volume_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARNs, location_name: 'VolumeARNs', traits: {"smithy.api#documentation" => "<p>An array of strings where each string represents the Amazon Resource Name (ARN) of a\n         stored volume. All of the specified stored volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>", "smithy.api#required" => {}}))
    DescribeStorediSCSIVolumesInput.type = Types::DescribeStorediSCSIVolumesInput
    DescribeStorediSCSIVolumesOutput.add_member(:storedi_scsi_volumes, Smithy::Schema::Shapes::ShapeRef.new(shape: StorediSCSIVolumes, location_name: 'StorediSCSIVolumes', traits: {"smithy.api#documentation" => "<p>Describes a single unit of output from <a>DescribeStorediSCSIVolumes</a>. The\n         following fields are returned:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ChapEnabled</code>: Indicates whether mutual CHAP is enabled for the iSCSI\n               target.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LunNumber</code>: The logical disk number.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NetworkInterfaceId</code>: The network interface ID of the stored volume that\n               initiator use to map the stored volume as an iSCSI target.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NetworkInterfacePort</code>: The port used to communicate with iSCSI\n               targets.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PreservedExistingData</code>: Indicates when the stored volume was created,\n               existing data on the underlying local disk was preserved.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SourceSnapshotId</code>: If the stored volume was created from a snapshot, this\n               field contains the snapshot ID used, e.g. <code>snap-1122aabb</code>. Otherwise, this\n               field is not included.</p>\n            </li>\n            <li>\n               <p>\n                  <code>StorediSCSIVolumes</code>: An array of StorediSCSIVolume objects where each\n               object contains metadata about one stored volume.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TargetARN</code>: The Amazon Resource Name (ARN) of the volume target.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeARN</code>: The Amazon Resource Name (ARN) of the stored volume.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeDiskId</code>: The disk ID of the local disk that was specified in the\n                  <a>CreateStorediSCSIVolume</a> operation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeId</code>: The unique identifier of the storage volume, e.g.\n                  <code>vol-1122AABB</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeiSCSIAttributes</code>: An <a>VolumeiSCSIAttributes</a> object\n               that represents a collection of iSCSI attributes for one stored volume.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeProgress</code>: Represents the percentage complete if the volume is\n               restoring or bootstrapping that represents the percent of data transferred. This\n               field does not appear in the response if the stored volume is not restoring or\n               bootstrapping.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeSizeInBytes</code>: The size of the volume in bytes.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeStatus</code>: One of the <code>VolumeStatus</code> values that indicates\n               the state of the volume.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VolumeType</code>: One of the enumeration values describing the type of the\n               volume. Currently, only <code>STORED</code> volumes are supported.</p>\n            </li>\n         </ul>"}))
    DescribeStorediSCSIVolumesOutput.type = Types::DescribeStorediSCSIVolumesOutput
    DescribeTapeArchivesInput.add_member(:tape_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARNs, location_name: 'TapeARNs', traits: {"smithy.api#documentation" => "<p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual\n         tapes you want to describe.</p>"}))
    DescribeTapeArchivesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which to begin describing virtual\n         tapes.</p>"}))
    DescribeTapeArchivesInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies that the number of virtual tapes described be limited to the specified\n         number.</p>"}))
    DescribeTapeArchivesInput.type = Types::DescribeTapeArchivesInput
    DescribeTapeArchivesOutput.add_member(:tape_archives, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeArchives, location_name: 'TapeArchives', traits: {"smithy.api#documentation" => "<p>An array of virtual tape objects in the virtual tape shelf (VTS). The description\n         includes of the Amazon Resource Name (ARN) of the virtual tapes. The information returned\n         includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the\n         tapes, progress of the description, and tape barcode.</p>"}))
    DescribeTapeArchivesOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which the virtual tapes that were\n         fetched for description ended. Use this marker in your next request to fetch the next set\n         of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to\n         describe, this field does not appear in the response.</p>"}))
    DescribeTapeArchivesOutput.type = Types::DescribeTapeArchivesOutput
    DescribeTapeRecoveryPointsInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeTapeRecoveryPointsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which to begin describing the virtual\n         tape recovery points.</p>"}))
    DescribeTapeRecoveryPointsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies that the number of virtual tape recovery points that are described be limited\n         to the specified number.</p>"}))
    DescribeTapeRecoveryPointsInput.type = Types::DescribeTapeRecoveryPointsInput
    DescribeTapeRecoveryPointsOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeTapeRecoveryPointsOutput.add_member(:tape_recovery_point_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeRecoveryPointInfos, location_name: 'TapeRecoveryPointInfos', traits: {"smithy.api#documentation" => "<p>An array of TapeRecoveryPointInfos that are available for the specified gateway.</p>"}))
    DescribeTapeRecoveryPointsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which the virtual tape recovery points\n         that were listed for description ended.</p>\n         <p>Use this marker in your next request to list the next set of virtual tape recovery\n         points in the list. If there are no more recovery points to describe, this field does not\n         appear in the response.</p>"}))
    DescribeTapeRecoveryPointsOutput.type = Types::DescribeTapeRecoveryPointsOutput
    DescribeTapesInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeTapesInput.add_member(:tape_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARNs, location_name: 'TapeARNs', traits: {"smithy.api#documentation" => "<p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual\n         tapes you want to describe. If this parameter is not specified, Tape gateway returns a\n         description of all virtual tapes associated with the specified gateway.</p>"}))
    DescribeTapesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker\n         indicates which page of results to retrieve.</p>\n         <p>If not specified, the first page of results is retrieved.</p>"}))
    DescribeTapesInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies that the number of virtual tapes described be limited to the specified\n         number.</p>\n         <note>\n            <p>Amazon Web Services may impose its own limit, if this field is not set.</p>\n         </note>"}))
    DescribeTapesInput.type = Types::DescribeTapesInput
    DescribeTapesOutput.add_member(:tapes, Smithy::Schema::Shapes::ShapeRef.new(shape: Tapes, location_name: 'Tapes', traits: {"smithy.api#documentation" => "<p>An array of virtual tape descriptions.</p>"}))
    DescribeTapesOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that can be used as part of a subsequent <code>DescribeTapes</code>\n         call to retrieve the next page of results.</p>\n         <p>If a response does not contain a marker, then there are no more results to be\n         retrieved.</p>"}))
    DescribeTapesOutput.type = Types::DescribeTapesOutput
    DescribeUploadBufferInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeUploadBufferInput.type = Types::DescribeUploadBufferInput
    DescribeUploadBufferOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeUploadBufferOutput.add_member(:disk_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskIds, location_name: 'DiskIds', traits: {"smithy.api#documentation" => "<p>An array of the gateway's local disk IDs that are configured as working storage.\n         Each local disk ID is specified as a string (minimum length of 1 and maximum length of\n         300). If no local disks are configured as working storage, then the DiskIds array is\n         empty.</p>"}))
    DescribeUploadBufferOutput.add_member(:upload_buffer_used_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'UploadBufferUsedInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of bytes being used in the gateway's upload buffer.</p>"}))
    DescribeUploadBufferOutput.add_member(:upload_buffer_allocated_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'UploadBufferAllocatedInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of bytes allocated in the gateway's as upload buffer.</p>"}))
    DescribeUploadBufferOutput.type = Types::DescribeUploadBufferOutput
    DescribeVTLDevicesInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeVTLDevicesInput.add_member(:vtl_device_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceARNs, location_name: 'VTLDeviceARNs', traits: {"smithy.api#documentation" => "<p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a\n         VTL device.</p>\n         <note>\n            <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are\n            specified, the result will contain all devices on the specified gateway.</p>\n         </note>"}))
    DescribeVTLDevicesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which to begin describing the VTL\n         devices.</p>"}))
    DescribeVTLDevicesInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies that the number of VTL devices described be limited to the specified\n         number.</p>"}))
    DescribeVTLDevicesInput.type = Types::DescribeVTLDevicesInput
    DescribeVTLDevicesOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeVTLDevicesOutput.add_member(:vtl_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDevices, location_name: 'VTLDevices', traits: {"smithy.api#documentation" => "<p>An array of VTL device objects composed of the Amazon Resource Name (ARN) of the VTL\n         devices.</p>"}))
    DescribeVTLDevicesOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which the VTL devices that were fetched\n         for description ended. Use the marker in your next request to fetch the next set of VTL\n         devices in the list. If there are no more VTL devices to describe, this field does not\n         appear in the response.</p>"}))
    DescribeVTLDevicesOutput.type = Types::DescribeVTLDevicesOutput
    DescribeWorkingStorageInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DescribeWorkingStorageInput.type = Types::DescribeWorkingStorageInput
    DescribeWorkingStorageOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    DescribeWorkingStorageOutput.add_member(:disk_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskIds, location_name: 'DiskIds', traits: {"smithy.api#documentation" => "<p>An array of the gateway's local disk IDs that are configured as working storage.\n         Each local disk ID is specified as a string (minimum length of 1 and maximum length of\n         300). If no local disks are configured as working storage, then the DiskIds array is\n         empty.</p>"}))
    DescribeWorkingStorageOutput.add_member(:working_storage_used_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'WorkingStorageUsedInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total working storage in bytes in use by the gateway. If no working storage is\n         configured for the gateway, this field returns 0.</p>"}))
    DescribeWorkingStorageOutput.add_member(:working_storage_allocated_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'WorkingStorageAllocatedInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total working storage in bytes allocated for the gateway. If no working storage is\n         configured for the gateway, this field returns 0.</p>"}))
    DescribeWorkingStorageOutput.type = Types::DescribeWorkingStorageOutput
    DetachVolumeInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume to detach from the gateway.</p>", "smithy.api#required" => {}}))
    DetachVolumeInput.add_member(:force_detach, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ForceDetach', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> to forcibly remove the iSCSI connection of the target volume\n         and detach the volume. The default is <code>false</code>. If this value is set to\n            <code>false</code>, you must manually disconnect the iSCSI connection from the target\n         volume.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    DetachVolumeInput.type = Types::DetachVolumeInput
    DetachVolumeOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume that was detached.</p>"}))
    DetachVolumeOutput.type = Types::DetachVolumeOutput
    DeviceiSCSIAttributes.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>Specifies the unique Amazon Resource Name (ARN) that encodes the iSCSI qualified\n         name(iqn) of a tape drive or media changer target.</p>"}))
    DeviceiSCSIAttributes.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The network interface identifier of the VTL device.</p>"}))
    DeviceiSCSIAttributes.add_member(:network_interface_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NetworkInterfacePort', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The port used to communicate with iSCSI VTL device targets.</p>"}))
    DeviceiSCSIAttributes.add_member(:chap_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'ChapEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>"}))
    DeviceiSCSIAttributes.type = Types::DeviceiSCSIAttributes
    DisableGatewayInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    DisableGatewayInput.type = Types::DisableGatewayInput
    DisableGatewayOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the disabled gateway.</p>"}))
    DisableGatewayOutput.type = Types::DisableGatewayOutput
    DisassociateFileSystemInput.add_member(:file_system_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN, location_name: 'FileSystemAssociationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file system association to be deleted.</p>", "smithy.api#required" => {}}))
    DisassociateFileSystemInput.add_member(:force_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'ForceDelete', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If this value is set to true, the operation disassociates an Amazon FSx file\n         system immediately. It ends all data uploads to the file system, and the file system\n         association enters the <code>FORCE_DELETING</code> status. If this value is set to false,\n         the Amazon FSx file system does not disassociate until all data is uploaded.</p>"}))
    DisassociateFileSystemInput.type = Types::DisassociateFileSystemInput
    DisassociateFileSystemOutput.add_member(:file_system_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN, location_name: 'FileSystemAssociationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted file system association.</p>"}))
    DisassociateFileSystemOutput.type = Types::DisassociateFileSystemOutput
    Disk.add_member(:disk_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskId, location_name: 'DiskId', traits: {"smithy.api#documentation" => "<p>The unique device ID or other distinguishing data that identifies a local disk.</p>"}))
    Disk.add_member(:disk_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DiskPath', traits: {"smithy.api#documentation" => "<p>The path of a local disk in the gateway virtual machine (VM).</p>"}))
    Disk.add_member(:disk_node, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DiskNode', traits: {"smithy.api#documentation" => "<p>The device node of a local disk as assigned by the virtualization environment.</p>"}))
    Disk.add_member(:disk_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DiskStatus', traits: {"smithy.api#documentation" => "<p>A value that represents the status of a local disk.</p>"}))
    Disk.add_member(:disk_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DiskSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The local disk size in bytes.</p>"}))
    Disk.add_member(:disk_allocation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskAllocationType, location_name: 'DiskAllocationType'))
    Disk.add_member(:disk_allocation_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DiskAllocationResource', traits: {"smithy.api#documentation" => "<p>The iSCSI qualified name (IQN) that is defined for a disk. This field is not included in\n         the response if the local disk is not defined as an iSCSI target. The format of this field\n         is <i>targetIqn::LUNNumber::region-volumeId</i>.</p>"}))
    Disk.add_member(:disk_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskAttributeList, location_name: 'DiskAttributeList'))
    Disk.type = Types::Disk
    DiskAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DiskAttribute)
    DiskIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DiskId)
    Disks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Disk)
    EncryptionType.add_member(:sse_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SseS3', traits: {"smithy.api#enumValue" => "SseS3"}))
    EncryptionType.add_member(:sse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SseKms', traits: {"smithy.api#enumValue" => "SseKms"}))
    EncryptionType.add_member(:dsse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DsseKms', traits: {"smithy.api#enumValue" => "DsseKms"}))
    EndpointNetworkConfiguration.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressList, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>A list of gateway IP addresses on which the associated Amazon FSx file system is\n         available.</p>\n         <note>\n            <p>If multiple file systems are associated with this gateway, this field is\n            required.</p>\n         </note>"}))
    EndpointNetworkConfiguration.type = Types::EndpointNetworkConfiguration
    ErrorCode.add_member(:activation_key_expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivationKeyExpired', traits: {"smithy.api#enumValue" => "ActivationKeyExpired"}))
    ErrorCode.add_member(:activation_key_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivationKeyInvalid', traits: {"smithy.api#enumValue" => "ActivationKeyInvalid"}))
    ErrorCode.add_member(:activation_key_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActivationKeyNotFound', traits: {"smithy.api#enumValue" => "ActivationKeyNotFound"}))
    ErrorCode.add_member(:gateway_internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GatewayInternalError', traits: {"smithy.api#enumValue" => "GatewayInternalError"}))
    ErrorCode.add_member(:gateway_not_connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GatewayNotConnected', traits: {"smithy.api#enumValue" => "GatewayNotConnected"}))
    ErrorCode.add_member(:gateway_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GatewayNotFound', traits: {"smithy.api#enumValue" => "GatewayNotFound"}))
    ErrorCode.add_member(:gateway_proxy_network_connection_busy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GatewayProxyNetworkConnectionBusy', traits: {"smithy.api#enumValue" => "GatewayProxyNetworkConnectionBusy"}))
    ErrorCode.add_member(:authentication_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AuthenticationFailure', traits: {"smithy.api#enumValue" => "AuthenticationFailure"}))
    ErrorCode.add_member(:bandwidth_throttle_schedule_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BandwidthThrottleScheduleNotFound', traits: {"smithy.api#enumValue" => "BandwidthThrottleScheduleNotFound"}))
    ErrorCode.add_member(:blocked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Blocked', traits: {"smithy.api#enumValue" => "Blocked"}))
    ErrorCode.add_member(:cannot_export_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CannotExportSnapshot', traits: {"smithy.api#enumValue" => "CannotExportSnapshot"}))
    ErrorCode.add_member(:chap_credential_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChapCredentialNotFound', traits: {"smithy.api#enumValue" => "ChapCredentialNotFound"}))
    ErrorCode.add_member(:disk_already_allocated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DiskAlreadyAllocated', traits: {"smithy.api#enumValue" => "DiskAlreadyAllocated"}))
    ErrorCode.add_member(:disk_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DiskDoesNotExist', traits: {"smithy.api#enumValue" => "DiskDoesNotExist"}))
    ErrorCode.add_member(:disk_size_greater_than_volume_max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DiskSizeGreaterThanVolumeMaxSize', traits: {"smithy.api#enumValue" => "DiskSizeGreaterThanVolumeMaxSize"}))
    ErrorCode.add_member(:disk_size_less_than_volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DiskSizeLessThanVolumeSize', traits: {"smithy.api#enumValue" => "DiskSizeLessThanVolumeSize"}))
    ErrorCode.add_member(:disk_size_not_gig_aligned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DiskSizeNotGigAligned', traits: {"smithy.api#enumValue" => "DiskSizeNotGigAligned"}))
    ErrorCode.add_member(:duplicate_certificate_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DuplicateCertificateInfo', traits: {"smithy.api#enumValue" => "DuplicateCertificateInfo"}))
    ErrorCode.add_member(:duplicate_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DuplicateSchedule', traits: {"smithy.api#enumValue" => "DuplicateSchedule"}))
    ErrorCode.add_member(:endpoint_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EndpointNotFound', traits: {"smithy.api#enumValue" => "EndpointNotFound"}))
    ErrorCode.add_member(:iam_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAMNotSupported', traits: {"smithy.api#enumValue" => "IAMNotSupported"}))
    ErrorCode.add_member(:initiator_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InitiatorInvalid', traits: {"smithy.api#enumValue" => "InitiatorInvalid"}))
    ErrorCode.add_member(:initiator_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InitiatorNotFound', traits: {"smithy.api#enumValue" => "InitiatorNotFound"}))
    ErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalError', traits: {"smithy.api#enumValue" => "InternalError"}))
    ErrorCode.add_member(:invalid_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidGateway', traits: {"smithy.api#enumValue" => "InvalidGateway"}))
    ErrorCode.add_member(:invalid_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidEndpoint', traits: {"smithy.api#enumValue" => "InvalidEndpoint"}))
    ErrorCode.add_member(:invalid_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidParameters', traits: {"smithy.api#enumValue" => "InvalidParameters"}))
    ErrorCode.add_member(:invalid_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidSchedule', traits: {"smithy.api#enumValue" => "InvalidSchedule"}))
    ErrorCode.add_member(:local_storage_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LocalStorageLimitExceeded', traits: {"smithy.api#enumValue" => "LocalStorageLimitExceeded"}))
    ErrorCode.add_member(:lun_already_allocated_, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LunAlreadyAllocated_', traits: {"smithy.api#enumValue" => "LunAlreadyAllocated "}))
    ErrorCode.add_member(:lun_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LunInvalid', traits: {"smithy.api#enumValue" => "LunInvalid"}))
    ErrorCode.add_member(:join_domain_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JoinDomainInProgress', traits: {"smithy.api#enumValue" => "JoinDomainInProgress"}))
    ErrorCode.add_member(:maximum_content_length_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MaximumContentLengthExceeded', traits: {"smithy.api#enumValue" => "MaximumContentLengthExceeded"}))
    ErrorCode.add_member(:maximum_tape_cartridge_count_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MaximumTapeCartridgeCountExceeded', traits: {"smithy.api#enumValue" => "MaximumTapeCartridgeCountExceeded"}))
    ErrorCode.add_member(:maximum_volume_count_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MaximumVolumeCountExceeded', traits: {"smithy.api#enumValue" => "MaximumVolumeCountExceeded"}))
    ErrorCode.add_member(:network_configuration_changed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NetworkConfigurationChanged', traits: {"smithy.api#enumValue" => "NetworkConfigurationChanged"}))
    ErrorCode.add_member(:no_disks_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NoDisksAvailable', traits: {"smithy.api#enumValue" => "NoDisksAvailable"}))
    ErrorCode.add_member(:not_implemented, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotImplemented', traits: {"smithy.api#enumValue" => "NotImplemented"}))
    ErrorCode.add_member(:not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotSupported', traits: {"smithy.api#enumValue" => "NotSupported"}))
    ErrorCode.add_member(:operation_aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OperationAborted', traits: {"smithy.api#enumValue" => "OperationAborted"}))
    ErrorCode.add_member(:outdated_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OutdatedGateway', traits: {"smithy.api#enumValue" => "OutdatedGateway"}))
    ErrorCode.add_member(:parameters_not_implemented, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ParametersNotImplemented', traits: {"smithy.api#enumValue" => "ParametersNotImplemented"}))
    ErrorCode.add_member(:region_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RegionInvalid', traits: {"smithy.api#enumValue" => "RegionInvalid"}))
    ErrorCode.add_member(:request_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequestTimeout', traits: {"smithy.api#enumValue" => "RequestTimeout"}))
    ErrorCode.add_member(:service_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceUnavailable', traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:snapshot_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SnapshotDeleted', traits: {"smithy.api#enumValue" => "SnapshotDeleted"}))
    ErrorCode.add_member(:snapshot_id_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SnapshotIdInvalid', traits: {"smithy.api#enumValue" => "SnapshotIdInvalid"}))
    ErrorCode.add_member(:snapshot_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SnapshotInProgress', traits: {"smithy.api#enumValue" => "SnapshotInProgress"}))
    ErrorCode.add_member(:snapshot_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SnapshotNotFound', traits: {"smithy.api#enumValue" => "SnapshotNotFound"}))
    ErrorCode.add_member(:snapshot_schedule_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SnapshotScheduleNotFound', traits: {"smithy.api#enumValue" => "SnapshotScheduleNotFound"}))
    ErrorCode.add_member(:staging_area_full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StagingAreaFull', traits: {"smithy.api#enumValue" => "StagingAreaFull"}))
    ErrorCode.add_member(:storage_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StorageFailure', traits: {"smithy.api#enumValue" => "StorageFailure"}))
    ErrorCode.add_member(:tape_cartridge_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TapeCartridgeNotFound', traits: {"smithy.api#enumValue" => "TapeCartridgeNotFound"}))
    ErrorCode.add_member(:target_already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TargetAlreadyExists', traits: {"smithy.api#enumValue" => "TargetAlreadyExists"}))
    ErrorCode.add_member(:target_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TargetInvalid', traits: {"smithy.api#enumValue" => "TargetInvalid"}))
    ErrorCode.add_member(:target_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TargetNotFound', traits: {"smithy.api#enumValue" => "TargetNotFound"}))
    ErrorCode.add_member(:unauthorized_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UnauthorizedOperation', traits: {"smithy.api#enumValue" => "UnauthorizedOperation"}))
    ErrorCode.add_member(:volume_already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VolumeAlreadyExists', traits: {"smithy.api#enumValue" => "VolumeAlreadyExists"}))
    ErrorCode.add_member(:volume_id_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VolumeIdInvalid', traits: {"smithy.api#enumValue" => "VolumeIdInvalid"}))
    ErrorCode.add_member(:volume_in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VolumeInUse', traits: {"smithy.api#enumValue" => "VolumeInUse"}))
    ErrorCode.add_member(:volume_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VolumeNotFound', traits: {"smithy.api#enumValue" => "VolumeNotFound"}))
    ErrorCode.add_member(:volume_not_ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VolumeNotReady', traits: {"smithy.api#enumValue" => "VolumeNotReady"}))
    EvictFilesFailingUploadInput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file share for which you want to start the cache\n         clean operation.</p>", "smithy.api#required" => {}}))
    EvictFilesFailingUploadInput.add_member(:force_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'ForceRemove', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether cache entries with full or partial file data currently stored on the\n         gateway will be forcibly removed by the cache clean operation.</p>\n         <p>Valid arguments:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>False</code> - The cache clean operation skips cache entries failing upload\n               if they are associated with data currently stored on the gateway. This preserves the\n               cached data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>True</code> - The cache clean operation removes cache entries failing upload\n               even if they are associated with data currently stored on the gateway. This deletes\n               the cached data.</p>\n               <important>\n                  <p>If <code>ForceRemove</code> is set to <code>True</code>, the cache clean\n                  operation will delete file data from the gateway which might otherwise be\n                  recoverable.</p>\n               </important>\n            </li>\n         </ul>"}))
    EvictFilesFailingUploadInput.type = Types::EvictFilesFailingUploadInput
    EvictFilesFailingUploadOutput.add_member(:notification_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationId', traits: {"smithy.api#documentation" => "<p>The randomly generated ID of the CloudWatch notification associated with the\n         cache clean operation. This ID is in UUID format.</p>"}))
    EvictFilesFailingUploadOutput.type = Types::EvictFilesFailingUploadOutput
    FileShareARNList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN)
    FileShareClientList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4OrIpv6AddressCIDR)
    FileShareInfo.add_member(:file_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareType, location_name: 'FileShareType'))
    FileShareInfo.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN'))
    FileShareInfo.add_member(:file_share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareId, location_name: 'FileShareId'))
    FileShareInfo.add_member(:file_share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareStatus, location_name: 'FileShareStatus'))
    FileShareInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    FileShareInfo.type = Types::FileShareInfo
    FileShareInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareInfo)
    FileShareType.add_member(:nfs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NFS', traits: {"smithy.api#enumValue" => "NFS"}))
    FileShareType.add_member(:smb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMB', traits: {"smithy.api#enumValue" => "SMB"}))
    FileSystemAssociationARNList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN)
    FileSystemAssociationInfo.add_member(:file_system_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN, location_name: 'FileSystemAssociationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file system association.</p>"}))
    FileSystemAssociationInfo.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLocationARN, location_name: 'LocationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the backend Amazon FSx file system used for storing file data. For\n         information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/APIReference/API_FileSystem.html\">FileSystem</a> in the\n               <i>Amazon FSx API Reference</i>.</p>"}))
    FileSystemAssociationInfo.add_member(:file_system_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationStatus, location_name: 'FileSystemAssociationStatus', traits: {"smithy.api#documentation" => "<p>The status of the file system association. Valid Values: <code>AVAILABLE</code> |\n            <code>CREATING</code> | <code>DELETING</code> | <code>FORCE_DELETING</code> |\n            <code>UPDATING</code> | <code>ERROR</code>\n         </p>"}))
    FileSystemAssociationInfo.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>"}))
    FileSystemAssociationInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    FileSystemAssociationInfo.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags assigned to the SMB file share, sorted alphabetically by key\n         name. Each tag is a key-value pair.</p>"}))
    FileSystemAssociationInfo.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes'))
    FileSystemAssociationInfo.add_member(:endpoint_network_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNetworkConfiguration, location_name: 'EndpointNetworkConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies network configuration information for the gateway associated with the Amazon FSx file system.</p>\n         <note>\n            <p>If multiple file systems are associated with this gateway, this parameter's\n               <code>IpAddresses</code> field is required.</p>\n         </note>"}))
    FileSystemAssociationInfo.add_member(:file_system_association_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationStatusDetails, location_name: 'FileSystemAssociationStatusDetails', traits: {"smithy.api#documentation" => "<p>An array containing the FileSystemAssociationStatusDetail data type, which provides\n         detailed information on file system association status.</p>"}))
    FileSystemAssociationInfo.type = Types::FileSystemAssociationInfo
    FileSystemAssociationInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationInfo)
    FileSystemAssociationStatusDetail.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationSyncErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code for a given file system association status.</p>"}))
    FileSystemAssociationStatusDetail.type = Types::FileSystemAssociationStatusDetail
    FileSystemAssociationStatusDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationStatusDetail)
    FileSystemAssociationSummary.add_member(:file_system_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationId, location_name: 'FileSystemAssociationId', traits: {"smithy.api#documentation" => "<p>The ID of the file system association.</p>"}))
    FileSystemAssociationSummary.add_member(:file_system_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN, location_name: 'FileSystemAssociationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file system association.</p>"}))
    FileSystemAssociationSummary.add_member(:file_system_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationStatus, location_name: 'FileSystemAssociationStatus', traits: {"smithy.api#documentation" => "<p>The status of the file share. Valid Values: <code>AVAILABLE</code> |\n            <code>CREATING</code> | <code>DELETING</code> | <code>FORCE_DELETING</code> |\n            <code>UPDATING</code> | <code>ERROR</code>\n         </p>"}))
    FileSystemAssociationSummary.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    FileSystemAssociationSummary.type = Types::FileSystemAssociationSummary
    FileSystemAssociationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationSummary)
    FolderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Folder)
    GatewayCapacity.add_member(:small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Small', traits: {"smithy.api#enumValue" => "Small"}))
    GatewayCapacity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Medium', traits: {"smithy.api#enumValue" => "Medium"}))
    GatewayCapacity.add_member(:large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Large', traits: {"smithy.api#enumValue" => "Large"}))
    GatewayInfo.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'GatewayId', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to your gateway during activation. This ID becomes part\n         of the gateway Amazon Resource Name (ARN), which you use as input for other\n         operations.</p>"}))
    GatewayInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>\n         operation to return a list of gateways for your account and Amazon Web Services Region.</p>"}))
    GatewayInfo.add_member(:gateway_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: 'GatewayType', traits: {"smithy.api#documentation" => "<p>The type of the gateway.</p>\n         <important>\n            <p>Amazon FSx File Gateway is no longer available to new customers. Existing\n            customers of FSx File Gateway can continue to use the service normally. For\n            capabilities similar to FSx File Gateway, visit <a href=\"https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/\">this blog post</a>.</p>\n         </important>"}))
    GatewayInfo.add_member(:gateway_operational_state, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayOperationalState, location_name: 'GatewayOperationalState', traits: {"smithy.api#documentation" => "<p>The state of the gateway.</p>\n         <p>Valid Values: <code>DISABLED</code> | <code>ACTIVE</code>\n         </p>"}))
    GatewayInfo.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GatewayName', traits: {"smithy.api#documentation" => "<p>The name of the gateway.</p>"}))
    GatewayInfo.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceId, location_name: 'Ec2InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon EC2 instance that was used to launch the gateway.</p>"}))
    GatewayInfo.add_member(:ec2_instance_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceRegion, location_name: 'Ec2InstanceRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where the Amazon EC2 instance is located.</p>"}))
    GatewayInfo.add_member(:host_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: HostEnvironment, location_name: 'HostEnvironment', traits: {"smithy.api#documentation" => "<p>The type of hardware or software platform on which the gateway is running.</p>\n         <note>\n            <p>Tape Gateway is no longer available on Snow Family devices.</p>\n         </note>"}))
    GatewayInfo.add_member(:host_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HostEnvironmentId, location_name: 'HostEnvironmentId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the specific instance of the host platform running the gateway.\n         This value is only available for certain host environments, and its format depends on the\n         host environment type.</p>"}))
    GatewayInfo.add_member(:deprecation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecationDate, location_name: 'DeprecationDate', traits: {"smithy.api#documentation" => "<p>Date after which this gateway will not receive software updates for new features and bug\n         fixes.</p>"}))
    GatewayInfo.add_member(:software_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareVersion, location_name: 'SoftwareVersion', traits: {"smithy.api#documentation" => "<p>The version number of the software running on the gateway appliance.</p>"}))
    GatewayInfo.type = Types::GatewayInfo
    GatewayNetworkInterfaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    Gateways.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayInfo)
    HostEnvironment.add_member(:vmware, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VMWARE', traits: {"smithy.api#enumValue" => "VMWARE"}))
    HostEnvironment.add_member(:hyper_v, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYPER_V', traits: {"smithy.api#enumValue" => "HYPER-V"}))
    HostEnvironment.add_member(:ec2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    HostEnvironment.add_member(:kvm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KVM', traits: {"smithy.api#enumValue" => "KVM"}))
    HostEnvironment.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    HostEnvironment.add_member(:snowball, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNOWBALL', traits: {"smithy.api#enumValue" => "SNOWBALL"}))
    Hosts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Host)
    Initiators.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Initiator)
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A human-readable message describing the error that occurred.</p>"}))
    InternalServerError.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageGatewayError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>A <a>StorageGatewayError</a> that provides more information about the cause\n         of the error.</p>"}))
    InternalServerError.type = Types::InternalServerError
    InvalidGatewayRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A human-readable message describing the error that occurred.</p>"}))
    InvalidGatewayRequestException.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageGatewayError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>A <a>StorageGatewayError</a> that provides more detail about the cause of the\n         error.</p>"}))
    InvalidGatewayRequestException.type = Types::InvalidGatewayRequestException
    IpAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IPV4Address)
    JoinDomainInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code>\n         operation to return a list of gateways for your account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    JoinDomainInput.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain that you want the gateway to join.</p>", "smithy.api#required" => {}}))
    JoinDomainInput.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit, location_name: 'OrganizationalUnit', traits: {"smithy.api#documentation" => "<p>The organizational unit (OU) is a container in an Active Directory that can hold users,\n         groups, computers, and other OUs and this parameter specifies the OU that the gateway will\n         join within the AD domain.</p>"}))
    JoinDomainInput.add_member(:domain_controllers, Smithy::Schema::Shapes::ShapeRef.new(shape: Hosts, location_name: 'DomainControllers', traits: {"smithy.api#documentation" => "<p>List of IP addresses, NetBIOS names, or host names of your domain server. If you need to\n         specify the port number include it after the colon (“:”). For example,\n            <code>mydc.mydomain.com:389</code>.</p>\n         <note>\n            <p>S3 File Gateway supports IPv6 addresses in addition to IPv4 and other existing\n            formats.</p>\n            <p>FSx File Gateway does not support IPv6.</p>\n         </note>"}))
    JoinDomainInput.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInSeconds, location_name: 'TimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>Specifies the time in seconds, in which the <code>JoinDomain</code> operation must\n         complete. The default is 20 seconds.</p>"}))
    JoinDomainInput.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainUserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>Sets the user name of user who has permission to add the gateway to the Active Directory\n         domain. The domain user account should be enabled to join computers to the domain. For\n         example, you can use the domain administrator account or an account with delegated\n         permissions to join computers to the domain.</p>", "smithy.api#required" => {}}))
    JoinDomainInput.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainUserPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>Sets the password of the user who has permission to add the gateway to the Active\n         Directory domain.</p>", "smithy.api#required" => {}}))
    JoinDomainInput.type = Types::JoinDomainInput
    JoinDomainOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the gateway that joined the domain.</p>"}))
    JoinDomainOutput.add_member(:active_directory_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveDirectoryStatus, location_name: 'ActiveDirectoryStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the gateway as a member of the Active Directory domain.</p>\n         <note>\n            <p>This field is only used as part of a <code>JoinDomain</code> request. It is not\n            affected by Active Directory connectivity changes that occur after the\n               <code>JoinDomain</code> request succeeds.</p>\n         </note>\n         <ul>\n            <li>\n               <p>\n                  <code>ACCESS_DENIED</code>: Indicates that the <code>JoinDomain</code> operation\n               failed due to an authentication error.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DETACHED</code>: Indicates that gateway is not joined to a domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JOINED</code>: Indicates that the gateway has successfully joined a\n               domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JOINING</code>: Indicates that a <code>JoinDomain</code> operation is in\n               progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INSUFFICIENT_PERMISSIONS</code>: Indicates that the <code>JoinDomain</code>\n               operation failed because the specified user lacks the necessary permissions to join\n               the domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NETWORK_ERROR</code>: Indicates that <code>JoinDomain</code> operation\n               failed due to a network or connectivity error.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TIMEOUT</code>: Indicates that the <code>JoinDomain</code> operation failed\n               because the operation didn't complete within the allotted time.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNKNOWN_ERROR</code>: Indicates that the <code>JoinDomain</code> operation\n               failed due to another type of error.</p>\n            </li>\n         </ul>"}))
    JoinDomainOutput.type = Types::JoinDomainOutput
    ListAutomaticTapeCreationPoliciesInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ListAutomaticTapeCreationPoliciesInput.type = Types::ListAutomaticTapeCreationPoliciesInput
    ListAutomaticTapeCreationPoliciesOutput.add_member(:automatic_tape_creation_policy_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticTapeCreationPolicyInfos, location_name: 'AutomaticTapeCreationPolicyInfos', traits: {"smithy.api#documentation" => "<p>Gets a listing of information about the gateway's automatic tape creation policies,\n         including the automatic tape creation rules and the gateway that is using the\n         policies.</p>"}))
    ListAutomaticTapeCreationPoliciesOutput.type = Types::ListAutomaticTapeCreationPoliciesOutput
    ListCacheReportsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Opaque pagination token returned from a previous <code>ListCacheReports</code>\n         operation. If present, <code>Marker</code> specifies where to continue the list from after\n         a previous call to <code>ListCacheReports</code>. Optional.</p>"}))
    ListCacheReportsInput.type = Types::ListCacheReportsInput
    ListCacheReportsOutput.add_member(:cache_report_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportList, location_name: 'CacheReportList', traits: {"smithy.api#documentation" => "<p>A list of existing cache reports for all file shares associated with your Amazon Web Services account. This list includes all information provided by the\n            <code>DescribeCacheReport</code> action, such as report status, completion progress,\n         start time, end time, filters, and tags.</p>"}))
    ListCacheReportsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>If the request includes <code>Marker</code>, the response returns that value in this\n         field.</p>"}))
    ListCacheReportsOutput.type = Types::ListCacheReportsOutput
    ListFileSharesInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway whose file shares you want to list. If\n         this field is not present, all file shares under your account are listed.</p>"}))
    ListFileSharesInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of file shares to return in the response. The value must be an\n         integer with a value greater than zero. Optional.</p>"}))
    ListFileSharesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Opaque pagination token returned from a previous ListFileShares operation. If present,\n            <code>Marker</code> specifies where to continue the list from after a previous call to\n         ListFileShares. Optional.</p>"}))
    ListFileSharesInput.type = Types::ListFileSharesInput
    ListFileSharesOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>If the request includes <code>Marker</code>, the response returns that value in this\n         field.</p>"}))
    ListFileSharesOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If a value is present, there are more file shares to return. In a subsequent request,\n         use <code>NextMarker</code> as the value for <code>Marker</code> to retrieve the next set\n         of file shares.</p>"}))
    ListFileSharesOutput.add_member(:file_share_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareInfoList, location_name: 'FileShareInfoList', traits: {"smithy.api#documentation" => "<p>An array of information about the S3 File Gateway's file shares.</p>"}))
    ListFileSharesOutput.type = Types::ListFileSharesOutput
    ListFileSystemAssociationsInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ListFileSystemAssociationsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of file system associations to return in the response. If present,\n            <code>Limit</code> must be an integer with a value greater than zero. Optional.</p>"}))
    ListFileSystemAssociationsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Opaque pagination token returned from a previous <code>ListFileSystemAssociations</code>\n         operation. If present, <code>Marker</code> specifies where to continue the list from after\n         a previous call to <code>ListFileSystemAssociations</code>. Optional.</p>"}))
    ListFileSystemAssociationsInput.type = Types::ListFileSystemAssociationsInput
    ListFileSystemAssociationsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>If the request includes <code>Marker</code>, the response returns that value in this\n         field.</p>"}))
    ListFileSystemAssociationsOutput.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If a value is present, there are more file system associations to return. In a\n         subsequent request, use <code>NextMarker</code> as the value for <code>Marker</code> to\n         retrieve the next set of file system associations.</p>"}))
    ListFileSystemAssociationsOutput.add_member(:file_system_association_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationSummaryList, location_name: 'FileSystemAssociationSummaryList', traits: {"smithy.api#documentation" => "<p>An array of information about the Amazon FSx gateway's file system\n         associations.</p>"}))
    ListFileSystemAssociationsOutput.type = Types::ListFileSystemAssociationsOutput
    ListGatewaysInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which to begin the returned list of\n         gateways.</p>"}))
    ListGatewaysInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies that the list of gateways returned be limited to the specified number of\n         items.</p>"}))
    ListGatewaysInput.type = Types::ListGatewaysInput
    ListGatewaysOutput.add_member(:gateways, Smithy::Schema::Shapes::ShapeRef.new(shape: Gateways, location_name: 'Gateways', traits: {"smithy.api#documentation" => "<p>An array of <a>GatewayInfo</a> objects.</p>"}))
    ListGatewaysOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use the marker in your next request to fetch the next set of gateways in the list. If\n         there are no more gateways to list, this field does not appear in the response.</p>"}))
    ListGatewaysOutput.type = Types::ListGatewaysOutput
    ListLocalDisksInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    ListLocalDisksInput.type = Types::ListLocalDisksInput
    ListLocalDisksOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ListLocalDisksOutput.add_member(:disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Disks, location_name: 'Disks', traits: {"smithy.api#documentation" => "<p>A JSON object containing the following fields:</p>\n         <ul>\n            <li>\n               <p>\n                  <a>ListLocalDisksOutput$Disks</a>\n               </p>\n            </li>\n         </ul>"}))
    ListLocalDisksOutput.type = Types::ListLocalDisksOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which to begin returning the list of\n         tags.</p>"}))
    ListTagsForResourceInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies that the list of tags returned be limited to the specified number of\n         items.</p>"}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>"}))
    ListTagsForResourceOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that indicates the position at which to stop returning the list of\n         tags.</p>"}))
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array that contains the tags for the specified resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTapePoolsInput.add_member(:pool_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolARNs, location_name: 'PoolARNs', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of each of the custom tape pools you want to list. If you\n         don't specify a custom tape pool ARN, the response lists all custom tape pools. </p>"}))
    ListTapePoolsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A string that indicates the position at which to begin the returned list of tape\n         pools.</p>"}))
    ListTapePoolsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>An optional number limit for the tape pools in the list returned by this call.</p>"}))
    ListTapePoolsInput.type = Types::ListTapePoolsInput
    ListTapePoolsOutput.add_member(:pool_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolInfos, location_name: 'PoolInfos', traits: {"smithy.api#documentation" => "<p>An array of <code>PoolInfo</code> objects, where each object describes a single custom\n         tape pool. If there are no custom tape pools, the <code>PoolInfos</code> is an empty array.\n      </p>"}))
    ListTapePoolsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A string that indicates the position at which to begin the returned list of tape pools.\n         Use the marker in your next request to continue pagination of tape pools. If there are no\n         more tape pools to list, this element does not appear in the response body. </p>"}))
    ListTapePoolsOutput.type = Types::ListTapePoolsOutput
    ListTapesInput.add_member(:tape_ar_ns, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARNs, location_name: 'TapeARNs'))
    ListTapesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A string that indicates the position at which to begin the returned list of\n         tapes.</p>"}))
    ListTapesInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>An optional number limit for the tapes in the list returned by this call.</p>"}))
    ListTapesInput.type = Types::ListTapesInput
    ListTapesOutput.add_member(:tape_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeInfos, location_name: 'TapeInfos'))
    ListTapesOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A string that indicates the position at which to begin returning the next list of tapes.\n         Use the marker in your next request to continue pagination of tapes. If there are no more\n         tapes to list, this element does not appear in the response body.</p>"}))
    ListTapesOutput.type = Types::ListTapesOutput
    ListVolumeInitiatorsInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>\n         operation to return a list of gateway volumes for the gateway.</p>", "smithy.api#required" => {}}))
    ListVolumeInitiatorsInput.type = Types::ListVolumeInitiatorsInput
    ListVolumeInitiatorsOutput.add_member(:initiators, Smithy::Schema::Shapes::ShapeRef.new(shape: Initiators, location_name: 'Initiators', traits: {"smithy.api#documentation" => "<p>The host names and port numbers of all iSCSI initiators that are connected to the\n         gateway.</p>"}))
    ListVolumeInitiatorsOutput.type = Types::ListVolumeInitiatorsOutput
    ListVolumeRecoveryPointsInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    ListVolumeRecoveryPointsInput.type = Types::ListVolumeRecoveryPointsInput
    ListVolumeRecoveryPointsOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ListVolumeRecoveryPointsOutput.add_member(:volume_recovery_point_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeRecoveryPointInfos, location_name: 'VolumeRecoveryPointInfos', traits: {"smithy.api#documentation" => "<p>An array of <a>VolumeRecoveryPointInfo</a> objects.</p>"}))
    ListVolumeRecoveryPointsOutput.type = Types::ListVolumeRecoveryPointsOutput
    ListVolumesInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ListVolumesInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A string that indicates the position at which to begin the returned list of volumes.\n         Obtain the marker from the response of a previous List iSCSI Volumes request.</p>"}))
    ListVolumesInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies that the list of volumes returned be limited to the specified number of\n         items.</p>"}))
    ListVolumesInput.type = Types::ListVolumesInput
    ListVolumesOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ListVolumesOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Use the marker in your next request to continue pagination of iSCSI volumes. If there\n         are no more volumes to list, this field does not appear in the response body.</p>"}))
    ListVolumesOutput.add_member(:volume_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeInfos, location_name: 'VolumeInfos', traits: {"smithy.api#documentation" => "<p>An array of <a>VolumeInfo</a> objects, where each object describes an iSCSI\n         volume. If no volumes are defined for the gateway, then <code>VolumeInfos</code> is an\n         empty array \"[]\".</p>"}))
    ListVolumesOutput.type = Types::ListVolumesOutput
    NFSFileShareDefaults.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionMode, location_name: 'FileMode', traits: {"smithy.api#documentation" => "<p>The Unix file mode in the form \"nnnn\". For example, <code>0666</code> represents the\n         default file mode inside the file share. The default value is <code>0666</code>.</p>"}))
    NFSFileShareDefaults.add_member(:directory_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionMode, location_name: 'DirectoryMode', traits: {"smithy.api#documentation" => "<p>The Unix directory mode in the form \"nnnn\". For example, <code>0666</code> represents\n         the default access mode for all directories inside the file share. The default value is\n            <code>0777</code>.</p>"}))
    NFSFileShareDefaults.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The default group ID for the file share (unless the files have another group ID\n         specified). The default value is <code>nfsnobody</code>.</p>"}))
    NFSFileShareDefaults.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The default owner ID for files in the file share (unless the files have another owner ID\n         specified). The default value is <code>nfsnobody</code>.</p>"}))
    NFSFileShareDefaults.type = Types::NFSFileShareDefaults
    NFSFileShareInfo.add_member(:nfs_file_share_defaults, Smithy::Schema::Shapes::ShapeRef.new(shape: NFSFileShareDefaults, location_name: 'NFSFileShareDefaults'))
    NFSFileShareInfo.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN'))
    NFSFileShareInfo.add_member(:file_share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareId, location_name: 'FileShareId'))
    NFSFileShareInfo.add_member(:file_share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareStatus, location_name: 'FileShareStatus'))
    NFSFileShareInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    NFSFileShareInfo.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>A value that specifies the type of server-side encryption that the file share will use\n         for the data that it stores in Amazon S3.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>"}))
    NFSFileShareInfo.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'KMSEncrypted', traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}, "smithy.api#documentation" => "<p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with\n         your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by\n            Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the\n            <code>EncryptionType</code> parameter instead.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    NFSFileShareInfo.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey'))
    NFSFileShareInfo.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path'))
    NFSFileShareInfo.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    NFSFileShareInfo.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationARN, location_name: 'LocationARN'))
    NFSFileShareInfo.add_member(:default_storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'DefaultStorageClass', traits: {"smithy.api#documentation" => "<p>The default storage class for objects put into an Amazon S3 bucket by the S3\n         File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>\n         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |\n            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>\n         </p>"}))
    NFSFileShareInfo.add_member(:object_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectACL, location_name: 'ObjectACL'))
    NFSFileShareInfo.add_member(:client_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareClientList, location_name: 'ClientList'))
    NFSFileShareInfo.add_member(:squash, Smithy::Schema::Shapes::ShapeRef.new(shape: Squash, location_name: 'Squash'))
    NFSFileShareInfo.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadOnly', traits: {"smithy.api#documentation" => "<p>A value that sets the write status of a file share. Set this value to <code>true</code>\n         to set the write status to read-only, otherwise set to <code>false</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    NFSFileShareInfo.add_member(:guess_mime_type_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'GuessMIMETypeEnabled', traits: {"smithy.api#documentation" => "<p>A value that enables guessing of the MIME type for uploaded objects based on file\n         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set\n         to <code>false</code>. The default value is <code>true</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    NFSFileShareInfo.add_member(:requester_pays, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequesterPays', traits: {"smithy.api#documentation" => "<p>A value that sets who pays the cost of the request and the cost associated with data\n         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays\n         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays\n         the cost of storing data.</p>\n         <note>\n            <p>\n               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file\n            share, so make sure that the configuration on the file share is the same as the S3\n            bucket configuration.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    NFSFileShareInfo.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags assigned to the NFS file share, sorted alphabetically by key\n         name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can\n         view all tags using the <code>ListTagsForResource</code> API operation.</p>"}))
    NFSFileShareInfo.add_member(:file_share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareName, location_name: 'FileShareName', traits: {"smithy.api#documentation" => "<p>The name of the file share. Optional.</p>\n         <note>\n            <p>\n               <code>FileShareName</code> must be set if an S3 prefix name is set in\n               <code>LocationARN</code>, or if an access point or access point alias is used.</p>\n         </note>"}))
    NFSFileShareInfo.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes', traits: {"smithy.api#documentation" => "<p>Refresh cache information for the file share.</p>"}))
    NFSFileShareInfo.add_member(:notification_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationPolicy, location_name: 'NotificationPolicy', traits: {"smithy.api#documentation" => "<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls\n         the number of seconds to wait after the last point in time a client wrote to a file before\n         generating an <code>ObjectUploaded</code> notification. Because clients can make many small\n         writes to files, it's best to set this parameter for as long as possible to avoid\n         generating multiple notifications for the same file in a small time period.</p>\n         <note>\n            <p>\n               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object\n            uploading to Amazon S3, only the timing of the notification.</p>\n            <p>This setting is not meant to specify an exact time at which the notification will be\n            sent. In some cases, the gateway might require more than the specified delay time to\n            generate and send notifications.</p>\n         </note>\n         <p>The following example sets <code>NotificationPolicy</code> on with\n            <code>SettlingTimeInSeconds</code> set to 60.</p>\n         <p>\n            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>\n         </p>\n         <p>The following example sets <code>NotificationPolicy</code> off.</p>\n         <p>\n            <code>{}</code>\n         </p>"}))
    NFSFileShareInfo.add_member(:vpc_endpoint_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DNSHostName, location_name: 'VPCEndpointDNSName', traits: {"smithy.api#documentation" => "<p>Specifies the DNS name for the VPC endpoint that the NFS file share uses to connect to\n            Amazon S3.</p>\n         <note>\n            <p>This parameter is required for NFS file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    NFSFileShareInfo.add_member(:bucket_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionId, location_name: 'BucketRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Region of the S3 bucket where the NFS file share stores files.</p>\n         <note>\n            <p>This parameter is required for NFS file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    NFSFileShareInfo.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>"}))
    NFSFileShareInfo.type = Types::NFSFileShareInfo
    NFSFileShareInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NFSFileShareInfo)
    NetworkInterface.add_member(:ipv4_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ipv4Address', traits: {"smithy.api#documentation" => "<p>The Internet Protocol version 4 (IPv4) address of the interface.</p>"}))
    NetworkInterface.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MacAddress', traits: {"smithy.api#documentation" => "<p>The Media Access Control (MAC) address of the interface.</p>\n         <note>\n            <p>This is currently unsupported and will not be returned in output.</p>\n         </note>"}))
    NetworkInterface.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ipv6Address', traits: {"smithy.api#documentation" => "<p>The Internet Protocol version 6 (IPv6) address of the interface.</p>\n         <note>\n            <p>This element returns IPv6 addresses for all gateway types except FSx File Gateway.</p>\n         </note>"}))
    NetworkInterface.type = Types::NetworkInterface
    NotifyWhenUploadedInput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#required" => {}}))
    NotifyWhenUploadedInput.type = Types::NotifyWhenUploadedInput
    NotifyWhenUploadedOutput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN'))
    NotifyWhenUploadedOutput.add_member(:notification_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationId, location_name: 'NotificationId'))
    NotifyWhenUploadedOutput.type = Types::NotifyWhenUploadedOutput
    ObjectACL.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'private', traits: {"smithy.api#enumValue" => "private"}))
    ObjectACL.add_member(:public_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'public_read', traits: {"smithy.api#enumValue" => "public-read"}))
    ObjectACL.add_member(:public_read_write, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'public_read_write', traits: {"smithy.api#enumValue" => "public-read-write"}))
    ObjectACL.add_member(:authenticated_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'authenticated_read', traits: {"smithy.api#enumValue" => "authenticated-read"}))
    ObjectACL.add_member(:bucket_owner_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'bucket_owner_read', traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    ObjectACL.add_member(:bucket_owner_full_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'bucket_owner_full_control', traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    ObjectACL.add_member(:aws_exec_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_exec_read', traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    PoolARNs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolARN)
    PoolInfo.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolARN, location_name: 'PoolARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom tape pool. Use the <a>ListTapePools</a> operation to return a list of custom tape pools for your\n         account and Amazon Web Services Region.</p>"}))
    PoolInfo.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the custom tape pool. <code>PoolName</code> can use all ASCII characters,\n         except '/' and '\\'.</p>"}))
    PoolInfo.add_member(:storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeStorageClass, location_name: 'StorageClass', traits: {"smithy.api#documentation" => "<p>The storage class that is associated with the custom pool. When you use your backup\n         application to eject the tape, the tape is archived directly into the storage class (S3\n         Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>"}))
    PoolInfo.add_member(:retention_lock_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionLockType, location_name: 'RetentionLockType', traits: {"smithy.api#documentation" => "<p>Tape retention lock type, which can be configured in two modes. When configured in\n         governance mode, Amazon Web Services accounts with specific IAM permissions are authorized\n         to remove the tape retention lock from archived virtual tapes. When configured in\n         compliance mode, the tape retention lock cannot be removed by any user, including the root\n            Amazon Web Services account.</p>"}))
    PoolInfo.add_member(:retention_lock_time_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionLockTimeInDays, location_name: 'RetentionLockTimeInDays', traits: {"smithy.api#documentation" => "<p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to\n         100 years (36,500 days).</p>"}))
    PoolInfo.add_member(:pool_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolStatus, location_name: 'PoolStatus', traits: {"smithy.api#documentation" => "<p>Status of the custom tape pool. Pool can be <code>ACTIVE</code> or\n         <code>DELETED</code>.</p>"}))
    PoolInfo.type = Types::PoolInfo
    PoolInfos.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolInfo)
    PoolStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PoolStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    RefreshCacheInput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file share you want to refresh.</p>", "smithy.api#required" => {}}))
    RefreshCacheInput.add_member(:folder_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FolderList, location_name: 'FolderList', traits: {"smithy.api#documentation" => "<p>A comma-separated list of the paths of folders to refresh in the cache. The default is\n            [<code>\"/\"</code>]. The default refreshes objects and folders at the root of the Amazon S3 bucket. If <code>Recursive</code> is set to <code>true</code>, the entire S3\n         bucket that the file share has access to is refreshed.</p>\n         <p>Do not include <code>/</code> when specifying folder names. For example, you would\n         specify <code>samplefolder</code> rather than <code>samplefolder/</code>.</p>"}))
    RefreshCacheInput.add_member(:recursive, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Recursive', traits: {"smithy.api#documentation" => "<p>A value that specifies whether to recursively refresh folders in the cache. The refresh\n         includes folders that were in the cache the last time the gateway listed the folder's\n         contents. If this value set to <code>true</code>, each folder that is listed in\n            <code>FolderList</code> is recursively updated. Otherwise, subfolders listed in\n            <code>FolderList</code> are not refreshed. Only objects that are in folders listed\n         directly under <code>FolderList</code> are found and used for the update. The default is\n            <code>true</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    RefreshCacheInput.type = Types::RefreshCacheInput
    RefreshCacheOutput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN'))
    RefreshCacheOutput.add_member(:notification_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationId, location_name: 'NotificationId'))
    RefreshCacheOutput.type = Types::RefreshCacheOutput
    RemoveTagsFromResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags you want to remove from the specified resource. A tag is composed\n         of a key-value pair.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromResourceInput.type = Types::RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that the tags were removed from.</p>"}))
    RemoveTagsFromResourceOutput.type = Types::RemoveTagsFromResourceOutput
    ResetCacheInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    ResetCacheInput.type = Types::ResetCacheInput
    ResetCacheOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ResetCacheOutput.type = Types::ResetCacheOutput
    RetentionLockType.add_member(:compliance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLIANCE', traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    RetentionLockType.add_member(:governance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOVERNANCE', traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    RetentionLockType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    RetrieveTapeArchiveInput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual\n         tape shelf (VTS).</p>", "smithy.api#required" => {}}))
    RetrieveTapeArchiveInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to.\n         Use the <a>ListGateways</a> operation to return a list of gateways for your\n         account and Amazon Web Services Region.</p>\n         <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape\n         gateway.</p>", "smithy.api#required" => {}}))
    RetrieveTapeArchiveInput.type = Types::RetrieveTapeArchiveInput
    RetrieveTapeArchiveOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retrieved virtual tape.</p>"}))
    RetrieveTapeArchiveOutput.type = Types::RetrieveTapeArchiveOutput
    RetrieveTapeRecoveryPointInput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the\n         recovery point.</p>", "smithy.api#required" => {}}))
    RetrieveTapeRecoveryPointInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    RetrieveTapeRecoveryPointInput.type = Types::RetrieveTapeRecoveryPointInput
    RetrieveTapeRecoveryPointOutput.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was\n         retrieved.</p>"}))
    RetrieveTapeRecoveryPointOutput.type = Types::RetrieveTapeRecoveryPointOutput
    SMBFileShareInfo.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN'))
    SMBFileShareInfo.add_member(:file_share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareId, location_name: 'FileShareId'))
    SMBFileShareInfo.add_member(:file_share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareStatus, location_name: 'FileShareStatus'))
    SMBFileShareInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    SMBFileShareInfo.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>A value that specifies the type of server-side encryption that the file share will use\n         for the data that it stores in Amazon S3.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>"}))
    SMBFileShareInfo.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'KMSEncrypted', traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}, "smithy.api#documentation" => "<p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with\n         your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by\n            Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the\n            <code>EncryptionType</code> parameter instead.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    SMBFileShareInfo.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey'))
    SMBFileShareInfo.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The file share path used by the SMB client to identify the mount point.</p>"}))
    SMBFileShareInfo.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role'))
    SMBFileShareInfo.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationARN, location_name: 'LocationARN'))
    SMBFileShareInfo.add_member(:default_storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'DefaultStorageClass', traits: {"smithy.api#documentation" => "<p>The default storage class for objects put into an Amazon S3 bucket by the S3\n         File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>\n         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |\n            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>\n         </p>"}))
    SMBFileShareInfo.add_member(:object_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectACL, location_name: 'ObjectACL'))
    SMBFileShareInfo.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadOnly', traits: {"smithy.api#documentation" => "<p>A value that sets the write status of a file share. Set this value to <code>true</code>\n         to set the write status to read-only, otherwise set to <code>false</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    SMBFileShareInfo.add_member(:guess_mime_type_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'GuessMIMETypeEnabled', traits: {"smithy.api#documentation" => "<p>A value that enables guessing of the MIME type for uploaded objects based on file\n         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set\n         to <code>false</code>. The default value is <code>true</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    SMBFileShareInfo.add_member(:requester_pays, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequesterPays', traits: {"smithy.api#documentation" => "<p>A value that sets who pays the cost of the request and the cost associated with data\n         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays\n         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays\n         the cost of storing data.</p>\n         <note>\n            <p>\n               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file\n            share, so make sure that the configuration on the file share is the same as the S3\n            bucket configuration.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    SMBFileShareInfo.add_member(:smbacl_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SMBACLEnabled', traits: {"smithy.api#documentation" => "<p>If this value is set to <code>true</code>, it indicates that access control list (ACL)\n         is enabled on the SMB file share. If it is set to <code>false</code>, it indicates that\n         file and directory permissions are mapped to the POSIX permission.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html\">Using Windows ACLs to limit SMB file share\n            access</a> in the <i>Amazon S3 File Gateway User\n         Guide</i>.</p>"}))
    SMBFileShareInfo.add_member(:access_based_enumeration, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AccessBasedEnumeration', traits: {"smithy.api#documentation" => "<p>Indicates whether <code>AccessBasedEnumeration</code> is enabled.</p>"}))
    SMBFileShareInfo.add_member(:admin_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'AdminUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that have administrator rights to the\n         file share. A group must be prefixed with the @ character. Acceptable formats include:\n            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    SMBFileShareInfo.add_member(:valid_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'ValidUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that are allowed to access the file\n         share. A group must be prefixed with the @ character. Acceptable formats include:\n            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    SMBFileShareInfo.add_member(:invalid_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'InvalidUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that are not allowed to access the\n         file share. A group must be prefixed with the @ character. Acceptable formats include:\n            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    SMBFileShareInfo.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>"}))
    SMBFileShareInfo.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: Authentication, location_name: 'Authentication'))
    SMBFileShareInfo.add_member(:case_sensitivity, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseSensitivity, location_name: 'CaseSensitivity', traits: {"smithy.api#documentation" => "<p>The case of an object name in an Amazon S3 bucket. For\n            <code>ClientSpecified</code>, the client determines the case sensitivity. For\n            <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default\n         value is <code>ClientSpecified</code>.</p>"}))
    SMBFileShareInfo.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags assigned to the SMB file share, sorted alphabetically by key\n         name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can\n         view all tags using the <code>ListTagsForResource</code> API operation.</p>"}))
    SMBFileShareInfo.add_member(:file_share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareName, location_name: 'FileShareName', traits: {"smithy.api#documentation" => "<p>The name of the file share. Optional.</p>\n         <note>\n            <p>\n               <code>FileShareName</code> must be set if an S3 prefix name is set in\n               <code>LocationARN</code>, or if an access point or access point alias is used.</p>\n         </note>"}))
    SMBFileShareInfo.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes', traits: {"smithy.api#documentation" => "<p>Refresh cache information for the file share.</p>"}))
    SMBFileShareInfo.add_member(:notification_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationPolicy, location_name: 'NotificationPolicy', traits: {"smithy.api#documentation" => "<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls\n         the number of seconds to wait after the last point in time a client wrote to a file before\n         generating an <code>ObjectUploaded</code> notification. Because clients can make many small\n         writes to files, it's best to set this parameter for as long as possible to avoid\n         generating multiple notifications for the same file in a small time period.</p>\n         <note>\n            <p>\n               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object\n            uploading to Amazon S3, only the timing of the notification.</p>\n            <p>This setting is not meant to specify an exact time at which the notification will be\n            sent. In some cases, the gateway might require more than the specified delay time to\n            generate and send notifications.</p>\n         </note>\n         <p>The following example sets <code>NotificationPolicy</code> on with\n            <code>SettlingTimeInSeconds</code> set to 60.</p>\n         <p>\n            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>\n         </p>\n         <p>The following example sets <code>NotificationPolicy</code> off.</p>\n         <p>\n            <code>{}</code>\n         </p>"}))
    SMBFileShareInfo.add_member(:vpc_endpoint_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DNSHostName, location_name: 'VPCEndpointDNSName', traits: {"smithy.api#documentation" => "<p>Specifies the DNS name for the VPC endpoint that the SMB file share uses to connect to\n            Amazon S3.</p>\n         <note>\n            <p>This parameter is required for SMB file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    SMBFileShareInfo.add_member(:bucket_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionId, location_name: 'BucketRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Region of the S3 bucket where the SMB file share stores files.</p>\n         <note>\n            <p>This parameter is required for SMB file shares that connect to Amazon S3\n            through a VPC endpoint, a VPC access point, or an access point alias that points to a\n            VPC access point.</p>\n         </note>"}))
    SMBFileShareInfo.add_member(:oplocks_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OplocksEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>\n         <note>\n            <p>Enabling opportunistic locking on case-sensitive shares is not recommended for\n            workloads that involve access to files with the same name in different case.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    SMBFileShareInfo.type = Types::SMBFileShareInfo
    SMBFileShareInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SMBFileShareInfo)
    SMBLocalGroups.add_member(:gateway_admins, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'GatewayAdmins', traits: {"smithy.api#documentation" => "<p>A list of Active Directory users and groups that have local Gateway Admin permissions.\n         Acceptable formats include: <code>DOMAIN\\User1</code>, <code>user1</code>,\n            <code>DOMAIN\\group1</code>, and <code>group1</code>.</p>\n         <p>Gateway Admins can use the Shared Folders Microsoft Management Console snap-in to\n         force-close files that are open and locked.</p>"}))
    SMBLocalGroups.type = Types::SMBLocalGroups
    SMBSecurityStrategy.add_member(:client_specified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ClientSpecified', traits: {"smithy.api#enumValue" => "ClientSpecified"}))
    SMBSecurityStrategy.add_member(:mandatory_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MandatorySigning', traits: {"smithy.api#enumValue" => "MandatorySigning"}))
    SMBSecurityStrategy.add_member(:mandatory_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MandatoryEncryption', traits: {"smithy.api#enumValue" => "MandatoryEncryption"}))
    SMBSecurityStrategy.add_member(:mandatory_encryption_no_aes128, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MandatoryEncryptionNoAes128', traits: {"smithy.api#enumValue" => "MandatoryEncryptionNoAes128"}))
    ServiceUnavailableError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A human-readable message describing the error that occurred.</p>"}))
    ServiceUnavailableError.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageGatewayError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>A <a>StorageGatewayError</a> that provides more information about the cause\n         of the error.</p>"}))
    ServiceUnavailableError.type = Types::ServiceUnavailableError
    SetLocalConsolePasswordInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    SetLocalConsolePasswordInput.add_member(:local_console_password, Smithy::Schema::Shapes::ShapeRef.new(shape: LocalConsolePassword, location_name: 'LocalConsolePassword', traits: {"smithy.api#documentation" => "<p>The password you want to set for your VM local console.</p>", "smithy.api#required" => {}}))
    SetLocalConsolePasswordInput.type = Types::SetLocalConsolePasswordInput
    SetLocalConsolePasswordOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    SetLocalConsolePasswordOutput.type = Types::SetLocalConsolePasswordOutput
    SetSMBGuestPasswordInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 File Gateway the SMB file share is associated\n         with.</p>", "smithy.api#required" => {}}))
    SetSMBGuestPasswordInput.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: SMBGuestPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password that you want to set for your SMB server.</p>", "smithy.api#required" => {}}))
    SetSMBGuestPasswordInput.type = Types::SetSMBGuestPasswordInput
    SetSMBGuestPasswordOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    SetSMBGuestPasswordOutput.type = Types::SetSMBGuestPasswordOutput
    ShutdownGatewayInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    ShutdownGatewayInput.type = Types::ShutdownGatewayInput
    ShutdownGatewayOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    ShutdownGatewayOutput.type = Types::ShutdownGatewayOutput
    SoftwareUpdatePreferences.add_member(:automatic_update_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticUpdatePolicy, location_name: 'AutomaticUpdatePolicy', traits: {"smithy.api#documentation" => "<p>Indicates the automatic update policy for a gateway.</p>\n         <p>\n            <code>ALL_VERSIONS</code> - Enables regular gateway maintenance updates.</p>\n         <p>\n            <code>EMERGENCY_VERSIONS_ONLY</code> - Disables regular gateway maintenance updates. The\n         gateway will still receive emergency version updates on rare occasions if necessary to\n         remedy highly critical security or durability issues. You will be notified before an\n         emergency version update is applied. These updates are applied during your gateway's\n         scheduled maintenance window.</p>"}))
    SoftwareUpdatePreferences.type = Types::SoftwareUpdatePreferences
    StartAvailabilityMonitorTestInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    StartAvailabilityMonitorTestInput.type = Types::StartAvailabilityMonitorTestInput
    StartAvailabilityMonitorTestOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    StartAvailabilityMonitorTestOutput.type = Types::StartAvailabilityMonitorTestOutput
    StartCacheReportInput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'Role', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role used when saving the cache report to Amazon S3.</p>", "smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationARN, location_name: 'LocationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon S3 bucket where you want to save the cache report.</p>\n         <note>\n            <p>We do not recommend saving the cache report to the same Amazon S3 bucket for\n            which you are generating the report.</p>\n            <p>This field does not accept access point ARNs.</p>\n         </note>", "smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:bucket_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionId, location_name: 'BucketRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region of the Amazon S3 bucket where you want to save the\n         cache report.</p>", "smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:vpc_endpoint_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DNSHostName, location_name: 'VPCEndpointDNSName', traits: {"smithy.api#documentation" => "<p>The DNS name of the VPC endpoint associated with the Amazon S3 where you want to\n         save the cache report. Optional.</p>"}))
    StartCacheReportInput.add_member(:inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilterList, location_name: 'InclusionFilters', traits: {"smithy.api#documentation" => "<p>The list of filters and parameters that determine which files are included in the\n         report. You must specify at least one value for <code>InclusionFilters</code> or\n            <code>ExclusionFilters</code> in a <code>StartCacheReport</code> request.</p>"}))
    StartCacheReportInput.add_member(:exclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportFilterList, location_name: 'ExclusionFilters', traits: {"smithy.api#documentation" => "<p>The list of filters and parameters that determine which files are excluded from the\n         report. You must specify at least one value for <code>InclusionFilters</code> or\n            <code>ExclusionFilters</code> in a <code>StartCacheReport</code> request.</p>"}))
    StartCacheReportInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique identifier that you use to ensure idempotent report generation if you need to\n         retry an unsuccessful <code>StartCacheReport</code> request. If you retry a request, use\n         the same <code>ClientToken</code> you specified in the initial request.</p>", "smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 key/value tags that you can assign to the cache report. Using tags\n         can help you categorize your reports and more easily locate them in search results.</p>"}))
    StartCacheReportInput.type = Types::StartCacheReportInput
    StartCacheReportOutput.add_member(:cache_report_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheReportARN, location_name: 'CacheReportARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cache report generated by the\n            <code>StartCacheReport</code> request.</p>"}))
    StartCacheReportOutput.type = Types::StartCacheReportOutput
    StartGatewayInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    StartGatewayInput.type = Types::StartGatewayInput
    StartGatewayOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    StartGatewayOutput.type = Types::StartGatewayOutput
    StorageGatewayError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>Additional information about the error.</p>"}))
    StorageGatewayError.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errorDetails', traits: {"smithy.api#documentation" => "<p>Human-readable text that provides detail about the error that occurred.</p>"}))
    StorageGatewayError.type = Types::StorageGatewayError
    StorediSCSIVolume.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage volume.</p>"}))
    StorediSCSIVolume.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeId, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the volume, e.g., vol-AE4B946D.</p>"}))
    StorediSCSIVolume.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>One of the VolumeType enumeration values describing the type of the volume.</p>"}))
    StorediSCSIVolume.add_member(:volume_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeStatus, location_name: 'VolumeStatus', traits: {"smithy.api#documentation" => "<p>One of the VolumeStatus values that indicates the state of the storage volume.</p>"}))
    StorediSCSIVolume.add_member(:volume_attachment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeAttachmentStatus, location_name: 'VolumeAttachmentStatus', traits: {"smithy.api#documentation" => "<p>A value that indicates whether a storage volume is attached to, detached from, or is in\n         the process of detaching from a gateway. For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume\">Moving\n            your volumes to a different gateway</a>.</p>"}))
    StorediSCSIVolume.add_member(:volume_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'VolumeSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the volume in bytes.</p>"}))
    StorediSCSIVolume.add_member(:volume_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleObject, location_name: 'VolumeProgress', traits: {"smithy.api#documentation" => "<p>Represents the percentage complete if the volume is restoring or bootstrapping that\n         represents the percent of data transferred. This field does not appear in the response if\n         the stored volume is not restoring or bootstrapping.</p>"}))
    StorediSCSIVolume.add_member(:volume_disk_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DiskId, location_name: 'VolumeDiskId', traits: {"smithy.api#documentation" => "<p>The ID of the local disk that was specified in the <a>CreateStorediSCSIVolume</a> operation.</p>"}))
    StorediSCSIVolume.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'SourceSnapshotId', traits: {"smithy.api#documentation" => "<p>If the stored volume was created from a snapshot, this field contains the snapshot ID\n         used, e.g. snap-78e22663. Otherwise, this field is not included.</p>"}))
    StorediSCSIVolume.add_member(:preserved_existing_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'PreservedExistingData', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if when the stored volume was created, existing data on the underlying local\n         disk was preserved.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    StorediSCSIVolume.add_member(:volumei_scsi_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeiSCSIAttributes, location_name: 'VolumeiSCSIAttributes', traits: {"smithy.api#documentation" => "<p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI\n         attributes for one stored volume.</p>"}))
    StorediSCSIVolume.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedDate, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this\n         timestamp.</p>"}))
    StorediSCSIVolume.add_member(:volume_used_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeUsedInBytes, location_name: 'VolumeUsedInBytes', traits: {"smithy.api#documentation" => "<p>The size of the data stored on the volume in bytes. This value is calculated based on\n         the number of blocks that are touched, instead of the actual amount of data written. This\n         value can be useful for sequential write patterns but less accurate for random write\n         patterns. <code>VolumeUsedInBytes</code> is different from the compressed size of the\n         volume, which is the value that is used to calculate your bill.</p>\n         <note>\n            <p>This value is not available for volumes created prior to May 13, 2015, until you\n            store data on the volume.</p>\n         </note>"}))
    StorediSCSIVolume.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey'))
    StorediSCSIVolume.add_member(:target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'TargetName', traits: {"smithy.api#documentation" => "<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a\n         suffix for the target ARN. For example, specifying <code>TargetName</code> as\n            <i>myvolume</i> results in the target ARN of\n            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.\n         The target name must be unique across all volumes on a gateway.</p>\n         <p>If you don't specify a value, Storage Gateway uses the value that was previously\n         used for this volume as the new target name.</p>"}))
    StorediSCSIVolume.type = Types::StorediSCSIVolume
    StorediSCSIVolumes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorediSCSIVolume)
    SupportedGatewayCapacities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayCapacity)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Tag key. The key can't start with aws:.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of the tag key.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    Tape.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape.</p>"}))
    Tape.add_member(:tape_barcode, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeBarcode, location_name: 'TapeBarcode', traits: {"smithy.api#documentation" => "<p>The barcode that identifies a specific virtual tape.</p>"}))
    Tape.add_member(:tape_created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'TapeCreatedDate', traits: {"smithy.api#documentation" => "<p>The date the virtual tape was created.</p>"}))
    Tape.add_member(:tape_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeSize, location_name: 'TapeSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the virtual tape capacity.</p>"}))
    Tape.add_member(:tape_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeStatus, location_name: 'TapeStatus', traits: {"smithy.api#documentation" => "<p>The current state of the virtual tape.</p>"}))
    Tape.add_member(:vtl_device, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceARN, location_name: 'VTLDevice', traits: {"smithy.api#documentation" => "<p>The virtual tape library (VTL) device that the virtual tape is associated with.</p>"}))
    Tape.add_member(:progress, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleObject, location_name: 'Progress', traits: {"smithy.api#documentation" => "<p>For archiving virtual tapes, indicates how much data remains to be uploaded before\n         archiving is complete.</p>\n         <p>Range: 0 (not started) to 100 (complete).</p>"}))
    Tape.add_member(:tape_used_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeUsage, location_name: 'TapeUsedInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of data stored on the virtual tape.</p>\n         <note>\n            <p>This value is not available for tapes created prior to May 13, 2015.</p>\n         </note>"}))
    Tape.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey'))
    Tape.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the pool that contains tapes that will be archived. The tapes in this pool are\n         archived in the S3 storage class that is associated with the pool. When you use your backup\n         application to eject the tape, the tape is archived directly into the storage class (S3\n         Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>"}))
    Tape.add_member(:worm, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'Worm', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the tape is archived as write-once-read-many (WORM), this value is\n         <code>true</code>.</p>"}))
    Tape.add_member(:retention_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'RetentionStartDate', traits: {"smithy.api#documentation" => "<p>The date that the tape is first archived with tape retention lock enabled.</p>"}))
    Tape.add_member(:pool_entry_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'PoolEntryDate', traits: {"smithy.api#documentation" => "<p>The date that the tape enters a custom tape pool.</p>"}))
    Tape.type = Types::Tape
    TapeARNs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN)
    TapeArchive.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an archived virtual tape.</p>"}))
    TapeArchive.add_member(:tape_barcode, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeBarcode, location_name: 'TapeBarcode', traits: {"smithy.api#documentation" => "<p>The barcode that identifies the archived virtual tape.</p>"}))
    TapeArchive.add_member(:tape_created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'TapeCreatedDate', traits: {"smithy.api#documentation" => "<p>The date the virtual tape was created.</p>"}))
    TapeArchive.add_member(:tape_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeSize, location_name: 'TapeSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the archived virtual tape.</p>"}))
    TapeArchive.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'CompletionTime', traits: {"smithy.api#documentation" => "<p>The time that the archiving of the virtual tape was completed.</p>\n         <p>The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z'\n         format.</p>"}))
    TapeArchive.add_member(:retrieved_to, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'RetrievedTo', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being\n         retrieved to.</p>\n         <p>The virtual tape is retrieved from the virtual tape shelf (VTS).</p>"}))
    TapeArchive.add_member(:tape_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeArchiveStatus, location_name: 'TapeStatus', traits: {"smithy.api#documentation" => "<p>The current state of the archived virtual tape.</p>"}))
    TapeArchive.add_member(:tape_used_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeUsage, location_name: 'TapeUsedInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of data stored on the virtual tape.</p>\n         <note>\n            <p>This value is not available for tapes created prior to May 13, 2015.</p>\n         </note>"}))
    TapeArchive.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey'))
    TapeArchive.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the pool that was used to archive the tape. The tapes in this pool are\n         archived in the S3 storage class that is associated with the pool.</p>"}))
    TapeArchive.add_member(:worm, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'Worm', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Set to <code>true</code> if the archived tape is stored as write-once-read-many\n         (WORM).</p>"}))
    TapeArchive.add_member(:retention_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'RetentionStartDate', traits: {"smithy.api#documentation" => "<p>If the archived tape is subject to tape retention lock, the date that the archived tape\n         started being retained.</p>"}))
    TapeArchive.add_member(:pool_entry_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'PoolEntryDate', traits: {"smithy.api#documentation" => "<p>The time that the tape entered the custom tape pool.</p>\n         <p>The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z'\n         format.</p>"}))
    TapeArchive.type = Types::TapeArchive
    TapeArchives.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TapeArchive)
    TapeInfo.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a virtual tape.</p>"}))
    TapeInfo.add_member(:tape_barcode, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeBarcode, location_name: 'TapeBarcode', traits: {"smithy.api#documentation" => "<p>The barcode that identifies a specific virtual tape.</p>"}))
    TapeInfo.add_member(:tape_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeSize, location_name: 'TapeSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of a virtual tape.</p>"}))
    TapeInfo.add_member(:tape_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeStatus, location_name: 'TapeStatus', traits: {"smithy.api#documentation" => "<p>The status of the tape.</p>"}))
    TapeInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>\n         operation to return a list of gateways for your account and Amazon Web Services Region.</p>"}))
    TapeInfo.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the pool that you want to add your tape to for archiving. The tape in this\n         pool is archived in the S3 storage class that is associated with the pool. When you use\n         your backup application to eject the tape, the tape is archived directly into the storage\n         class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>"}))
    TapeInfo.add_member(:retention_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'RetentionStartDate', traits: {"smithy.api#documentation" => "<p>The date that the tape became subject to tape retention lock.</p>"}))
    TapeInfo.add_member(:pool_entry_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'PoolEntryDate', traits: {"smithy.api#documentation" => "<p>The date that the tape entered the custom tape pool with tape retention lock\n         enabled.</p>"}))
    TapeInfo.type = Types::TapeInfo
    TapeInfos.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TapeInfo)
    TapeRecoveryPointInfo.add_member(:tape_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeARN, location_name: 'TapeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual tape.</p>"}))
    TapeRecoveryPointInfo.add_member(:tape_recovery_point_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'TapeRecoveryPointTime', traits: {"smithy.api#documentation" => "<p>The time when the point-in-time view of the virtual tape was replicated for later\n         recovery.</p>\n         <p>The default timestamp format of the tape recovery point time is in the ISO8601 extended\n         YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>"}))
    TapeRecoveryPointInfo.add_member(:tape_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeSize, location_name: 'TapeSizeInBytes', traits: {"smithy.api#documentation" => "<p>The size, in bytes, of the virtual tapes to recover.</p>"}))
    TapeRecoveryPointInfo.add_member(:tape_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TapeRecoveryPointStatus, location_name: 'TapeStatus', traits: {"smithy.api#documentation" => "<p>The status of the virtual tapes.</p>"}))
    TapeRecoveryPointInfo.type = Types::TapeRecoveryPointInfo
    TapeRecoveryPointInfos.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TapeRecoveryPointInfo)
    TapeStorageClass.add_member(:deep_archive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEEP_ARCHIVE', traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    TapeStorageClass.add_member(:glacier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLACIER', traits: {"smithy.api#enumValue" => "GLACIER"}))
    Tapes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tape)
    UpdateAutomaticTapeCreationPolicyInput.add_member(:automatic_tape_creation_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticTapeCreationRules, location_name: 'AutomaticTapeCreationRules', traits: {"smithy.api#documentation" => "<p>An automatic tape creation policy consists of a list of automatic tape creation rules.\n         The rules determine when and how to automatically create new tapes.</p>", "smithy.api#required" => {}}))
    UpdateAutomaticTapeCreationPolicyInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateAutomaticTapeCreationPolicyInput.type = Types::UpdateAutomaticTapeCreationPolicyInput
    UpdateAutomaticTapeCreationPolicyOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateAutomaticTapeCreationPolicyOutput.type = Types::UpdateAutomaticTapeCreationPolicyOutput
    UpdateBandwidthRateLimitInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateBandwidthRateLimitInput.add_member(:average_upload_rate_limit_in_bits_per_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthUploadRateLimit, location_name: 'AverageUploadRateLimitInBitsPerSec', traits: {"smithy.api#documentation" => "<p>The average upload bandwidth rate limit in bits per second.</p>"}))
    UpdateBandwidthRateLimitInput.add_member(:average_download_rate_limit_in_bits_per_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthDownloadRateLimit, location_name: 'AverageDownloadRateLimitInBitsPerSec', traits: {"smithy.api#documentation" => "<p>The average download bandwidth rate limit in bits per second.</p>"}))
    UpdateBandwidthRateLimitInput.type = Types::UpdateBandwidthRateLimitInput
    UpdateBandwidthRateLimitOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateBandwidthRateLimitOutput.type = Types::UpdateBandwidthRateLimitOutput
    UpdateBandwidthRateLimitScheduleInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateBandwidthRateLimitScheduleInput.add_member(:bandwidth_rate_limit_intervals, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, location_name: 'BandwidthRateLimitIntervals', traits: {"smithy.api#documentation" => "<p> An array containing bandwidth rate limit schedule intervals for a gateway. When no\n         bandwidth rate limit intervals have been scheduled, the array is empty. </p>", "smithy.api#required" => {}}))
    UpdateBandwidthRateLimitScheduleInput.type = Types::UpdateBandwidthRateLimitScheduleInput
    UpdateBandwidthRateLimitScheduleOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateBandwidthRateLimitScheduleOutput.type = Types::UpdateBandwidthRateLimitScheduleOutput
    UpdateChapCredentialsInput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified\n         VolumeARN.</p>", "smithy.api#required" => {}}))
    UpdateChapCredentialsInput.add_member(:secret_to_authenticate_initiator, Smithy::Schema::Shapes::ShapeRef.new(shape: ChapSecret, location_name: 'SecretToAuthenticateInitiator', traits: {"smithy.api#documentation" => "<p>The secret key that the initiator (for example, the Windows client) must provide to\n         participate in mutual CHAP with the target.</p>\n         <note>\n            <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>\n         </note>", "smithy.api#required" => {}}))
    UpdateChapCredentialsInput.add_member(:initiator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IqnName, location_name: 'InitiatorName', traits: {"smithy.api#documentation" => "<p>The iSCSI initiator that connects to the target.</p>", "smithy.api#required" => {}}))
    UpdateChapCredentialsInput.add_member(:secret_to_authenticate_target, Smithy::Schema::Shapes::ShapeRef.new(shape: ChapSecret, location_name: 'SecretToAuthenticateTarget', traits: {"smithy.api#documentation" => "<p>The secret key that the target must provide to participate in mutual CHAP with the\n         initiator (e.g. Windows client).</p>\n         <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p>\n         <note>\n            <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>\n         </note>"}))
    UpdateChapCredentialsInput.type = Types::UpdateChapCredentialsInput
    UpdateChapCredentialsOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target. This is the same target specified in the\n         request.</p>"}))
    UpdateChapCredentialsOutput.add_member(:initiator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IqnName, location_name: 'InitiatorName', traits: {"smithy.api#documentation" => "<p>The iSCSI initiator that connects to the target. This is the same initiator name\n         specified in the request.</p>"}))
    UpdateChapCredentialsOutput.type = Types::UpdateChapCredentialsOutput
    UpdateFileSystemAssociationInput.add_member(:file_system_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN, location_name: 'FileSystemAssociationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file system association that you want to\n         update.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemAssociationInput.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainUserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The user name of the user credential that has permission to access the root share D$ of\n         the Amazon FSx file system. The user account must belong to the Amazon FSx\n         delegated admin user group.</p>"}))
    UpdateFileSystemAssociationInput.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainUserPassword, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password of the user credential.</p>"}))
    UpdateFileSystemAssociationInput.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>"}))
    UpdateFileSystemAssociationInput.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes'))
    UpdateFileSystemAssociationInput.type = Types::UpdateFileSystemAssociationInput
    UpdateFileSystemAssociationOutput.add_member(:file_system_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAssociationARN, location_name: 'FileSystemAssociationARN', traits: {"smithy.api#documentation" => "<p>The ARN of the updated file system association.</p>"}))
    UpdateFileSystemAssociationOutput.type = Types::UpdateFileSystemAssociationOutput
    UpdateGatewayInformationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateGatewayInformationInput.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'GatewayName'))
    UpdateGatewayInformationInput.add_member(:gateway_timezone, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayTimezone, location_name: 'GatewayTimezone', traits: {"smithy.api#documentation" => "<p>A value that indicates the time zone of the gateway.</p>"}))
    UpdateGatewayInformationInput.add_member(:cloud_watch_log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupARN, location_name: 'CloudWatchLogGroupARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that you want to use\n         to monitor and log events in the gateway.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html\">What is Amazon CloudWatch\n            Logs?</a>\n         </p>"}))
    UpdateGatewayInformationInput.add_member(:gateway_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayCapacity, location_name: 'GatewayCapacity', traits: {"smithy.api#documentation" => "<p>Specifies the size of the gateway's metadata cache. This setting impacts gateway\n         performance and hardware recommendations. For more information, see <a href=\"https://docs.aws.amazon.com/filegateway/latest/files3/performance-multiple-file-shares.html\">Performance guidance for gateways with multiple file shares</a>\n         in the <i>Amazon S3 File Gateway User Guide</i>.</p>"}))
    UpdateGatewayInformationInput.type = Types::UpdateGatewayInformationInput
    UpdateGatewayInformationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateGatewayInformationOutput.add_member(:gateway_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GatewayName', traits: {"smithy.api#documentation" => "<p>The name you configured for your gateway.</p>"}))
    UpdateGatewayInformationOutput.type = Types::UpdateGatewayInformationOutput
    UpdateGatewaySoftwareNowInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateGatewaySoftwareNowInput.type = Types::UpdateGatewaySoftwareNowInput
    UpdateGatewaySoftwareNowOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateGatewaySoftwareNowOutput.type = Types::UpdateGatewaySoftwareNowOutput
    UpdateMaintenanceStartTimeInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateMaintenanceStartTimeInput.add_member(:hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'HourOfDay', traits: {"smithy.api#documentation" => "<p>The hour component of the maintenance start time represented as <i>hh</i>,\n         where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time\n         zone of the gateway.</p>"}))
    UpdateMaintenanceStartTimeInput.add_member(:minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'MinuteOfHour', traits: {"smithy.api#documentation" => "<p>The minute component of the maintenance start time represented as\n            <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The\n         minute of the hour is in the time zone of the gateway.</p>"}))
    UpdateMaintenanceStartTimeInput.add_member(:day_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'DayOfWeek', traits: {"smithy.api#documentation" => "<p>The day of the week component of the maintenance start time week represented as an\n         ordinal number from 0 to 6, where 0 represents Sunday and 6 represents Saturday.</p>"}))
    UpdateMaintenanceStartTimeInput.add_member(:day_of_month, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfMonth, location_name: 'DayOfMonth', traits: {"smithy.api#documentation" => "<p>The day of the month component of the maintenance start time represented as an ordinal\n         number from 1 to 28, where 1 represents the first day of the month. It is not possible to\n         set the maintenance schedule to start on days 29 through 31.</p>"}))
    UpdateMaintenanceStartTimeInput.add_member(:software_update_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareUpdatePreferences, location_name: 'SoftwareUpdatePreferences', traits: {"smithy.api#documentation" => "<p>A set of variables indicating the software update preferences for the gateway.</p>\n         <p>Includes <code>AutomaticUpdatePolicy</code> field with the following inputs:</p>\n         <p>\n            <code>ALL_VERSIONS</code> - Enables regular gateway maintenance updates.</p>\n         <p>\n            <code>EMERGENCY_VERSIONS_ONLY</code> - Disables regular gateway maintenance updates. The\n         gateway will still receive emergency version updates on rare occasions if necessary to\n         remedy highly critical security or durability issues. You will be notified before an\n         emergency version update is applied. These updates are applied during your gateway's\n         scheduled maintenance window.</p>"}))
    UpdateMaintenanceStartTimeInput.type = Types::UpdateMaintenanceStartTimeInput
    UpdateMaintenanceStartTimeOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateMaintenanceStartTimeOutput.type = Types::UpdateMaintenanceStartTimeOutput
    UpdateNFSFileShareInput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the file share to be updated.</p>", "smithy.api#required" => {}}))
    UpdateNFSFileShareInput.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>A value that specifies the type of server-side encryption that the file share will use\n         for the data that it stores in Amazon S3.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>"}))
    UpdateNFSFileShareInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}, "smithy.api#documentation" => "<p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with\n         your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by\n            Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the\n            <code>EncryptionType</code> parameter instead.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateNFSFileShareInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used\n         for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric\n         CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if\n            <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>"}))
    UpdateNFSFileShareInput.add_member(:nfs_file_share_defaults, Smithy::Schema::Shapes::ShapeRef.new(shape: NFSFileShareDefaults, location_name: 'NFSFileShareDefaults', traits: {"smithy.api#documentation" => "<p>The default values for the file share. Optional.</p>"}))
    UpdateNFSFileShareInput.add_member(:default_storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'DefaultStorageClass', traits: {"smithy.api#documentation" => "<p>The default storage class for objects put into an Amazon S3 bucket by the S3\n         File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>\n         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |\n            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>\n         </p>"}))
    UpdateNFSFileShareInput.add_member(:object_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectACL, location_name: 'ObjectACL', traits: {"smithy.api#documentation" => "<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket\n         that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>"}))
    UpdateNFSFileShareInput.add_member(:client_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareClientList, location_name: 'ClientList', traits: {"smithy.api#documentation" => "<p>The list of clients that are allowed to access the S3 File Gateway. The list must\n         contain either valid IPv4/IPv6 addresses or valid CIDR blocks.</p>"}))
    UpdateNFSFileShareInput.add_member(:squash, Smithy::Schema::Shapes::ShapeRef.new(shape: Squash, location_name: 'Squash', traits: {"smithy.api#documentation" => "<p>The user mapped to anonymous user.</p>\n         <p>Valid values are the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>RootSquash</code>: Only root is mapped to anonymous user.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NoSquash</code>: No one is mapped to anonymous user.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>\n            </li>\n         </ul>"}))
    UpdateNFSFileShareInput.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadOnly', traits: {"smithy.api#documentation" => "<p>A value that sets the write status of a file share. Set this value to <code>true</code>\n         to set the write status to read-only, otherwise set to <code>false</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateNFSFileShareInput.add_member(:guess_mime_type_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'GuessMIMETypeEnabled', traits: {"smithy.api#documentation" => "<p>A value that enables guessing of the MIME type for uploaded objects based on file\n         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set\n         to <code>false</code>. The default value is <code>true</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateNFSFileShareInput.add_member(:requester_pays, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequesterPays', traits: {"smithy.api#documentation" => "<p>A value that sets who pays the cost of the request and the cost associated with data\n         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays\n         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays\n         the cost of storing data.</p>\n         <note>\n            <p>\n               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file\n            share, so make sure that the configuration on the file share is the same as the S3\n            bucket configuration.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateNFSFileShareInput.add_member(:file_share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareName, location_name: 'FileShareName', traits: {"smithy.api#documentation" => "<p>The name of the file share. Optional.</p>\n         <note>\n            <p>\n               <code>FileShareName</code> must be set if an S3 prefix name is set in\n               <code>LocationARN</code>, or if an access point or access point alias is used.</p>\n            <p>A valid NFS file share name can only contain the following characters:\n               <code>a</code>-<code>z</code>, <code>A</code>-<code>Z</code>,\n               <code>0</code>-<code>9</code>, <code>-</code>, <code>.</code>, and\n            <code>_</code>.</p>\n         </note>"}))
    UpdateNFSFileShareInput.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes', traits: {"smithy.api#documentation" => "<p>Specifies refresh cache information for the file share.</p>"}))
    UpdateNFSFileShareInput.add_member(:notification_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationPolicy, location_name: 'NotificationPolicy', traits: {"smithy.api#documentation" => "<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls\n         the number of seconds to wait after the last point in time a client wrote to a file before\n         generating an <code>ObjectUploaded</code> notification. Because clients can make many small\n         writes to files, it's best to set this parameter for as long as possible to avoid\n         generating multiple notifications for the same file in a small time period.</p>\n         <note>\n            <p>\n               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object\n            uploading to Amazon S3, only the timing of the notification.</p>\n            <p>This setting is not meant to specify an exact time at which the notification will be\n            sent. In some cases, the gateway might require more than the specified delay time to\n            generate and send notifications.</p>\n         </note>\n         <p>The following example sets <code>NotificationPolicy</code> on with\n            <code>SettlingTimeInSeconds</code> set to 60.</p>\n         <p>\n            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>\n         </p>\n         <p>The following example sets <code>NotificationPolicy</code> off.</p>\n         <p>\n            <code>{}</code>\n         </p>"}))
    UpdateNFSFileShareInput.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>"}))
    UpdateNFSFileShareInput.type = Types::UpdateNFSFileShareInput
    UpdateNFSFileShareOutput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated file share.</p>"}))
    UpdateNFSFileShareOutput.type = Types::UpdateNFSFileShareOutput
    UpdateSMBFileShareInput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SMB file share that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateSMBFileShareInput.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>A value that specifies the type of server-side encryption that the file share will use\n         for the data that it stores in Amazon S3.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>"}))
    UpdateSMBFileShareInput.add_member(:kms_encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KMSEncrypted', traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}, "smithy.api#documentation" => "<p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with\n         your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by\n            Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the\n            <code>EncryptionType</code> parameter instead.</p>\n         <note>\n            <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>\n            to set the file share encryption method. You do not need to provide values for both\n            parameters.</p>\n            <p>If values for both parameters exist in the same request, then the specified\n            encryption methods must not conflict. For example, if <code>EncryptionType</code> is\n               <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If\n               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then\n               <code>KMSEncrypted</code> must be <code>true</code>.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateSMBFileShareInput.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKey, location_name: 'KMSKey', traits: {"smithy.api#documentation" => "<p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used\n         for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric\n         CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if\n            <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>"}))
    UpdateSMBFileShareInput.add_member(:default_storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'DefaultStorageClass', traits: {"smithy.api#documentation" => "<p>The default storage class for objects put into an Amazon S3 bucket by the S3\n         File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>\n         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |\n            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>\n         </p>"}))
    UpdateSMBFileShareInput.add_member(:object_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectACL, location_name: 'ObjectACL', traits: {"smithy.api#documentation" => "<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket\n         that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>"}))
    UpdateSMBFileShareInput.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadOnly', traits: {"smithy.api#documentation" => "<p>A value that sets the write status of a file share. Set this value to <code>true</code>\n         to set write status to read-only, otherwise set to <code>false</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateSMBFileShareInput.add_member(:guess_mime_type_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'GuessMIMETypeEnabled', traits: {"smithy.api#documentation" => "<p>A value that enables guessing of the MIME type for uploaded objects based on file\n         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set\n         to <code>false</code>. The default value is <code>true</code>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateSMBFileShareInput.add_member(:requester_pays, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequesterPays', traits: {"smithy.api#documentation" => "<p>A value that sets who pays the cost of the request and the cost associated with data\n         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays\n         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays\n         the cost of storing data.</p>\n         <note>\n            <p>\n               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file\n            share, so make sure that the configuration on the file share is the same as the S3\n            bucket configuration.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateSMBFileShareInput.add_member(:smbacl_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SMBACLEnabled', traits: {"smithy.api#documentation" => "<p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file\n         share. Set it to <code>false</code> to map file and directory permissions to the POSIX\n         permissions.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html\">Using Windows ACLs to limit SMB file share\n            access</a> in the <i>Amazon S3 File Gateway User\n         Guide</i>.</p>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateSMBFileShareInput.add_member(:access_based_enumeration, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AccessBasedEnumeration', traits: {"smithy.api#documentation" => "<p>The files and folders on this share will only be visible to users with read\n         access.</p>"}))
    UpdateSMBFileShareInput.add_member(:admin_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'AdminUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that have administrator rights to the\n         file share. A group must be prefixed with the @ character. Acceptable formats include:\n            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    UpdateSMBFileShareInput.add_member(:valid_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'ValidUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that are allowed to access the file\n         share. A group must be prefixed with the @ character. Acceptable formats include:\n            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    UpdateSMBFileShareInput.add_member(:invalid_user_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'InvalidUserList', traits: {"smithy.api#documentation" => "<p>A list of users or groups in the Active Directory that are not allowed to access the\n         file share. A group must be prefixed with the @ character. Acceptable formats include:\n            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and\n            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to\n            <code>ActiveDirectory</code>.</p>"}))
    UpdateSMBFileShareInput.add_member(:audit_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditDestinationARN, location_name: 'AuditDestinationARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>"}))
    UpdateSMBFileShareInput.add_member(:case_sensitivity, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseSensitivity, location_name: 'CaseSensitivity', traits: {"smithy.api#documentation" => "<p>The case of an object name in an Amazon S3 bucket. For\n            <code>ClientSpecified</code>, the client determines the case sensitivity. For\n            <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default\n         value is <code>ClientSpecified</code>.</p>"}))
    UpdateSMBFileShareInput.add_member(:file_share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareName, location_name: 'FileShareName', traits: {"smithy.api#documentation" => "<p>The name of the file share. Optional.</p>\n         <note>\n            <p>\n               <code>FileShareName</code> must be set if an S3 prefix name is set in\n               <code>LocationARN</code>, or if an access point or access point alias is used.</p>\n            <p>A valid SMB file share name cannot contain the following characters:\n               <code>[</code>,<code>]</code>,<code>#</code>,<code>;</code>,<code><</code>,<code>></code>,<code>:</code>,<code>\"</code>,<code>\\</code>,<code>/</code>,<code>|</code>,<code>?</code>,<code>*</code>,<code>+</code>,\n            or ASCII control characters <code>1-31</code>.</p>\n         </note>"}))
    UpdateSMBFileShareInput.add_member(:cache_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheAttributes, location_name: 'CacheAttributes', traits: {"smithy.api#documentation" => "<p>Specifies refresh cache information for the file share.</p>"}))
    UpdateSMBFileShareInput.add_member(:notification_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationPolicy, location_name: 'NotificationPolicy', traits: {"smithy.api#documentation" => "<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls\n         the number of seconds to wait after the last point in time a client wrote to a file before\n         generating an <code>ObjectUploaded</code> notification. Because clients can make many small\n         writes to files, it's best to set this parameter for as long as possible to avoid\n         generating multiple notifications for the same file in a small time period.</p>\n         <note>\n            <p>\n               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object\n            uploading to Amazon S3, only the timing of the notification.</p>\n            <p>This setting is not meant to specify an exact time at which the notification will be\n            sent. In some cases, the gateway might require more than the specified delay time to\n            generate and send notifications.</p>\n         </note>\n         <p>The following example sets <code>NotificationPolicy</code> on with\n            <code>SettlingTimeInSeconds</code> set to 60.</p>\n         <p>\n            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>\n         </p>\n         <p>The following example sets <code>NotificationPolicy</code> off.</p>\n         <p>\n            <code>{}</code>\n         </p>"}))
    UpdateSMBFileShareInput.add_member(:oplocks_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OplocksEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>\n         <note>\n            <p>Enabling opportunistic locking on case-sensitive shares is not recommended for\n            workloads that involve access to files with the same name in different case.</p>\n         </note>\n         <p>Valid Values: <code>true</code> | <code>false</code>\n         </p>"}))
    UpdateSMBFileShareInput.type = Types::UpdateSMBFileShareInput
    UpdateSMBFileShareOutput.add_member(:file_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileShareARN, location_name: 'FileShareARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated SMB file share.</p>"}))
    UpdateSMBFileShareOutput.type = Types::UpdateSMBFileShareOutput
    UpdateSMBFileShareVisibilityInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateSMBFileShareVisibilityInput.add_member(:file_shares_visible, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FileSharesVisible', traits: {"smithy.api#documentation" => "<p>The shares on this gateway appear when listing shares.</p>", "smithy.api#required" => {}}))
    UpdateSMBFileShareVisibilityInput.type = Types::UpdateSMBFileShareVisibilityInput
    UpdateSMBFileShareVisibilityOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateSMBFileShareVisibilityOutput.type = Types::UpdateSMBFileShareVisibilityOutput
    UpdateSMBLocalGroupsInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateSMBLocalGroupsInput.add_member(:smb_local_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SMBLocalGroups, location_name: 'SMBLocalGroups', traits: {"smithy.api#documentation" => "<p>A list of Active Directory users and groups that you want to grant special permissions\n         for SMB file shares on the gateway.</p>", "smithy.api#required" => {}}))
    UpdateSMBLocalGroupsInput.type = Types::UpdateSMBLocalGroupsInput
    UpdateSMBLocalGroupsOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateSMBLocalGroupsOutput.type = Types::UpdateSMBLocalGroupsOutput
    UpdateSMBSecurityStrategyInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN', traits: {"smithy.api#required" => {}}))
    UpdateSMBSecurityStrategyInput.add_member(:smb_security_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SMBSecurityStrategy, location_name: 'SMBSecurityStrategy', traits: {"smithy.api#documentation" => "<p>Specifies the type of security strategy.</p>\n         <p>\n            <code>ClientSpecified</code>: If you choose this option, requests are established based\n         on what is negotiated by the client. This option is recommended when you want to maximize\n         compatibility across different clients in your environment. Supported only for S3 File\n         Gateway.</p>\n         <p>\n            <code>MandatorySigning</code>: If you choose this option, File Gateway only allows\n         connections from SMBv2 or SMBv3 clients that have signing enabled. This option works with\n         SMB clients on Microsoft Windows Vista, Windows Server 2008 or newer.</p>\n         <p>\n            <code>MandatoryEncryption</code>: If you choose this option, File Gateway only allows\n         connections from SMBv3 clients that have encryption enabled. This option is recommended for\n         environments that handle sensitive data. This option works with SMB clients on Microsoft\n         Windows 8, Windows Server 2012 or newer.</p>\n         <p>\n            <code>MandatoryEncryptionNoAes128</code>: If you choose this option, File Gateway only\n         allows connections from SMBv3 clients that use 256-bit AES encryption algorithms. 128-bit\n         algorithms are not allowed. This option is recommended for environments that handle\n         sensitive data. It works with SMB clients on Microsoft Windows 8, Windows Server 2012, or\n         later.</p>", "smithy.api#required" => {}}))
    UpdateSMBSecurityStrategyInput.type = Types::UpdateSMBSecurityStrategyInput
    UpdateSMBSecurityStrategyOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    UpdateSMBSecurityStrategyOutput.type = Types::UpdateSMBSecurityStrategyOutput
    UpdateSnapshotScheduleInput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>\n         operation to return a list of gateway volumes.</p>", "smithy.api#required" => {}}))
    UpdateSnapshotScheduleInput.add_member(:start_at, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'StartAt', traits: {"smithy.api#documentation" => "<p>The hour of the day at which the snapshot schedule begins represented as\n            <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour\n         of the day is in the time zone of the gateway.</p>", "smithy.api#required" => {}}))
    UpdateSnapshotScheduleInput.add_member(:recurrence_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurrenceInHours, location_name: 'RecurrenceInHours', traits: {"smithy.api#documentation" => "<p>Frequency of snapshots. Specify the number of hours between snapshots.</p>", "smithy.api#required" => {}}))
    UpdateSnapshotScheduleInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Optional description of the snapshot that overwrites the existing description.</p>"}))
    UpdateSnapshotScheduleInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value\n         pair.</p>\n         <note>\n            <p>Valid characters for key and value are letters, spaces, and numbers representable in\n            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length\n            of a tag's key is 128 characters, and the maximum length for a tag's value is\n            256.</p>\n         </note>"}))
    UpdateSnapshotScheduleInput.type = Types::UpdateSnapshotScheduleInput
    UpdateSnapshotScheduleOutput.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>\n         operation to return a list of gateway volumes.</p>"}))
    UpdateSnapshotScheduleOutput.type = Types::UpdateSnapshotScheduleOutput
    UpdateVTLDeviceTypeInput.add_member(:vtl_device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceARN, location_name: 'VTLDeviceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>", "smithy.api#required" => {}}))
    UpdateVTLDeviceTypeInput.add_member(:device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType, location_name: 'DeviceType', traits: {"smithy.api#documentation" => "<p>The type of medium changer you want to select.</p>\n         <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |\n            <code>IBM-03584L32-0402</code>\n         </p>", "smithy.api#required" => {}}))
    UpdateVTLDeviceTypeInput.type = Types::UpdateVTLDeviceTypeInput
    UpdateVTLDeviceTypeOutput.add_member(:vtl_device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceARN, location_name: 'VTLDeviceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the medium changer you have selected.</p>"}))
    UpdateVTLDeviceTypeOutput.type = Types::UpdateVTLDeviceTypeOutput
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserListUser)
    VTLDevice.add_member(:vtl_device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceARN, location_name: 'VTLDeviceARN', traits: {"smithy.api#documentation" => "<p>Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media\n         changer).</p>"}))
    VTLDevice.add_member(:vtl_device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceType, location_name: 'VTLDeviceType', traits: {"smithy.api#documentation" => "<p>Specifies the type of device that the VTL device emulates.</p>"}))
    VTLDevice.add_member(:vtl_device_vendor, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceVendor, location_name: 'VTLDeviceVendor', traits: {"smithy.api#documentation" => "<p>Specifies the vendor of the device that the VTL device object emulates.</p>"}))
    VTLDevice.add_member(:vtl_device_product_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceProductIdentifier, location_name: 'VTLDeviceProductIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the model number of device that the VTL device emulates.</p>"}))
    VTLDevice.add_member(:devicei_scsi_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceiSCSIAttributes, location_name: 'DeviceiSCSIAttributes', traits: {"smithy.api#documentation" => "<p>A list of iSCSI information about a VTL device.</p>"}))
    VTLDevice.type = Types::VTLDevice
    VTLDeviceARNs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDeviceARN)
    VTLDevices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VTLDevice)
    VolumeARNs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN)
    VolumeInfo.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the storage volume. For example, the following is a\n         valid ARN:</p>\n         <p>\n            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB</code>\n         </p>\n         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>"}))
    VolumeInfo.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeId, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to the volume. This ID becomes part of the volume Amazon\n         Resource Name (ARN), which you use as input for other operations.</p>\n         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>"}))
    VolumeInfo.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayARN, location_name: 'GatewayARN'))
    VolumeInfo.add_member(:gateway_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'GatewayId', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to your gateway during activation. This ID becomes part\n         of the gateway Amazon Resource Name (ARN), which you use as input for other\n         operations.</p>\n         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>"}))
    VolumeInfo.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>One of the VolumeType enumeration values describing the type of the volume.</p>"}))
    VolumeInfo.add_member(:volume_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'VolumeSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the volume in bytes.</p>\n         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>"}))
    VolumeInfo.add_member(:volume_attachment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeAttachmentStatus, location_name: 'VolumeAttachmentStatus', traits: {"smithy.api#documentation" => "<p>One of the VolumeStatus values that indicates the state of the storage volume.</p>"}))
    VolumeInfo.type = Types::VolumeInfo
    VolumeInfos.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeInfo)
    VolumeRecoveryPointInfo.add_member(:volume_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeARN, location_name: 'VolumeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume target.</p>"}))
    VolumeRecoveryPointInfo.add_member(:volume_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'VolumeSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the volume in bytes.</p>"}))
    VolumeRecoveryPointInfo.add_member(:volume_usage_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'VolumeUsageInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the data stored on the volume in bytes.</p>\n         <note>\n            <p>This value is not available for volumes created prior to May 13, 2015, until you\n            store data on the volume.</p>\n         </note>"}))
    VolumeRecoveryPointInfo.add_member(:volume_recovery_point_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeRecoveryPointTime', traits: {"smithy.api#documentation" => "<p>The time the recovery point was taken.</p>"}))
    VolumeRecoveryPointInfo.type = Types::VolumeRecoveryPointInfo
    VolumeRecoveryPointInfos.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeRecoveryPointInfo)
    VolumeiSCSIAttributes.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetARN, location_name: 'TargetARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the volume target.</p>"}))
    VolumeiSCSIAttributes.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The network interface identifier.</p>"}))
    VolumeiSCSIAttributes.add_member(:network_interface_port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NetworkInterfacePort', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The port used to communicate with iSCSI targets.</p>"}))
    VolumeiSCSIAttributes.add_member(:lun_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntObject, location_name: 'LunNumber', traits: {"smithy.api#documentation" => "<p>The logical disk number.</p>"}))
    VolumeiSCSIAttributes.add_member(:chap_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean2, location_name: 'ChapEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>"}))
    VolumeiSCSIAttributes.type = Types::VolumeiSCSIAttributes
    ErrorDetails.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ErrorDetails.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    StorageGateway20130630 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.storagegateway#StorageGateway_20130630"
      service.name = "StorageGateway20130630"
      service.version = "2013-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Storage Gateway", "arnNamespace" => "storagegateway", "cloudFormationName" => "StorageGateway", "cloudTrailEventSource" => "storagegateway.amazonaws.com", "docId" => "storagegateway-2013-06-30", "endpointPrefix" => "storagegateway"}, "aws.auth#sigv4" => {"name" => "storagegateway"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Storage Gateway", "smithy.api#xmlNamespace" => {"uri" => "http://storagegateway.amazonaws.com/doc/2013-06-30"}}
      service.add_operation(:activate_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ActivateGateway"
        operation.name = "ActivateGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateGatewayInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateGatewayOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:add_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddCache"
        operation.name = "AddCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddCacheInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddCacheOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:add_upload_buffer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddUploadBuffer"
        operation.name = "AddUploadBuffer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddUploadBufferInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddUploadBufferOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:add_working_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddWorkingStorage"
        operation.name = "AddWorkingStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddWorkingStorageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddWorkingStorageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:assign_tape_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AssignTapePool"
        operation.name = "AssignTapePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssignTapePoolInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssignTapePoolOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:associate_file_system, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AssociateFileSystem"
        operation.name = "AssociateFileSystem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFileSystemInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFileSystemOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:attach_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AttachVolume"
        operation.name = "AttachVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachVolumeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachVolumeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_archival, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CancelArchival"
        operation.name = "CancelArchival"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelArchivalInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelArchivalOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_cache_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CancelCacheReport"
        operation.name = "CancelCacheReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCacheReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCacheReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_retrieval, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CancelRetrieval"
        operation.name = "CancelRetrieval"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelRetrievalInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelRetrievalOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_cachedi_scsi_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateCachediSCSIVolume"
        operation.name = "CreateCachediSCSIVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCachediSCSIVolumeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCachediSCSIVolumeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_nfs_file_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateNFSFileShare"
        operation.name = "CreateNFSFileShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNFSFileShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNFSFileShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_smb_file_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateSMBFileShare"
        operation.name = "CreateSMBFileShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSMBFileShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSMBFileShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_from_volume_recovery_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateSnapshotFromVolumeRecoveryPoint"
        operation.name = "CreateSnapshotFromVolumeRecoveryPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotFromVolumeRecoveryPointInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotFromVolumeRecoveryPointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableError)
        operation.traits = {}
      end)
      service.add_operation(:create_storedi_scsi_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateStorediSCSIVolume"
        operation.name = "CreateStorediSCSIVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorediSCSIVolumeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorediSCSIVolumeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_tape_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateTapePool"
        operation.name = "CreateTapePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTapePoolInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTapePoolOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_tape_with_barcode, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateTapeWithBarcode"
        operation.name = "CreateTapeWithBarcode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTapeWithBarcodeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTapeWithBarcodeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_tapes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateTapes"
        operation.name = "CreateTapes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTapesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTapesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_automatic_tape_creation_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteAutomaticTapeCreationPolicy"
        operation.name = "DeleteAutomaticTapeCreationPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomaticTapeCreationPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomaticTapeCreationPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_bandwidth_rate_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteBandwidthRateLimit"
        operation.name = "DeleteBandwidthRateLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBandwidthRateLimitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBandwidthRateLimitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteCacheReport"
        operation.name = "DeleteCacheReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCacheReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCacheReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_chap_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteChapCredentials"
        operation.name = "DeleteChapCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChapCredentialsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChapCredentialsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_file_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteFileShare"
        operation.name = "DeleteFileShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteSnapshotSchedule"
        operation.name = "DeleteSnapshotSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotScheduleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotScheduleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tape, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteTape"
        operation.name = "DeleteTape"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTapeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTapeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tape_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteTapeArchive"
        operation.name = "DeleteTapeArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTapeArchiveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTapeArchiveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tape_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteTapePool"
        operation.name = "DeleteTapePool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTapePoolInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTapePoolOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteVolume"
        operation.name = "DeleteVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVolumeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVolumeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_availability_monitor_test, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeAvailabilityMonitorTest"
        operation.name = "DescribeAvailabilityMonitorTest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAvailabilityMonitorTestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAvailabilityMonitorTestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_bandwidth_rate_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeBandwidthRateLimit"
        operation.name = "DescribeBandwidthRateLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBandwidthRateLimitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBandwidthRateLimitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_bandwidth_rate_limit_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeBandwidthRateLimitSchedule"
        operation.name = "DescribeBandwidthRateLimitSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBandwidthRateLimitScheduleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBandwidthRateLimitScheduleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeCache"
        operation.name = "DescribeCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cache_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeCacheReport"
        operation.name = "DescribeCacheReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cachedi_scsi_volumes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeCachediSCSIVolumes"
        operation.name = "DescribeCachediSCSIVolumes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCachediSCSIVolumesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCachediSCSIVolumesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_chap_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeChapCredentials"
        operation.name = "DescribeChapCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChapCredentialsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChapCredentialsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_file_system_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeFileSystemAssociations"
        operation.name = "DescribeFileSystemAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_gateway_information, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeGatewayInformation"
        operation.name = "DescribeGatewayInformation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGatewayInformationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGatewayInformationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_maintenance_start_time, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeMaintenanceStartTime"
        operation.name = "DescribeMaintenanceStartTime"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMaintenanceStartTimeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMaintenanceStartTimeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_nfs_file_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeNFSFileShares"
        operation.name = "DescribeNFSFileShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNFSFileSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNFSFileSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_smb_file_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeSMBFileShares"
        operation.name = "DescribeSMBFileShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSMBFileSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSMBFileSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_smb_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeSMBSettings"
        operation.name = "DescribeSMBSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSMBSettingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSMBSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_snapshot_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeSnapshotSchedule"
        operation.name = "DescribeSnapshotSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotScheduleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotScheduleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_storedi_scsi_volumes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeStorediSCSIVolumes"
        operation.name = "DescribeStorediSCSIVolumes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStorediSCSIVolumesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStorediSCSIVolumesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_tape_archives, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeTapeArchives"
        operation.name = "DescribeTapeArchives"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTapeArchivesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTapeArchivesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTapeArchives.new
      end)
      service.add_operation(:describe_tape_recovery_points, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeTapeRecoveryPoints"
        operation.name = "DescribeTapeRecoveryPoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTapeRecoveryPointsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTapeRecoveryPointsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTapeRecoveryPoints.new
      end)
      service.add_operation(:describe_tapes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeTapes"
        operation.name = "DescribeTapes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTapesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTapesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTapes.new
      end)
      service.add_operation(:describe_upload_buffer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeUploadBuffer"
        operation.name = "DescribeUploadBuffer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUploadBufferInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUploadBufferOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_vtl_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeVTLDevices"
        operation.name = "DescribeVTLDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVTLDevicesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVTLDevicesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeVTLDevices.new
      end)
      service.add_operation(:describe_working_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeWorkingStorage"
        operation.name = "DescribeWorkingStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkingStorageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkingStorageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:detach_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DetachVolume"
        operation.name = "DetachVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachVolumeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachVolumeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:disable_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DisableGateway"
        operation.name = "DisableGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableGatewayInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableGatewayOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_file_system, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DisassociateFileSystem"
        operation.name = "DisassociateFileSystem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFileSystemInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFileSystemOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:evict_files_failing_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#EvictFilesFailingUpload"
        operation.name = "EvictFilesFailingUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EvictFilesFailingUploadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EvictFilesFailingUploadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:join_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#JoinDomain"
        operation.name = "JoinDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: JoinDomainInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: JoinDomainOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:list_automatic_tape_creation_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListAutomaticTapeCreationPolicies"
        operation.name = "ListAutomaticTapeCreationPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomaticTapeCreationPoliciesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomaticTapeCreationPoliciesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:list_cache_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListCacheReports"
        operation.name = "ListCacheReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCacheReportsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCacheReportsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCacheReports.new
      end)
      service.add_operation(:list_file_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListFileShares"
        operation.name = "ListFileShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileSharesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileSharesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFileShares.new
      end)
      service.add_operation(:list_file_system_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListFileSystemAssociations"
        operation.name = "ListFileSystemAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileSystemAssociationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileSystemAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFileSystemAssociations.new
      end)
      service.add_operation(:list_gateways, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListGateways"
        operation.name = "ListGateways"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_local_disks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListLocalDisks"
        operation.name = "ListLocalDisks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLocalDisksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLocalDisksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_tape_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListTapePools"
        operation.name = "ListTapePools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTapePoolsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTapePoolsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTapePools.new
      end)
      service.add_operation(:list_tapes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListTapes"
        operation.name = "ListTapes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTapesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTapesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTapes.new
      end)
      service.add_operation(:list_volume_initiators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListVolumeInitiators"
        operation.name = "ListVolumeInitiators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVolumeInitiatorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVolumeInitiatorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:list_volume_recovery_points, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListVolumeRecoveryPoints"
        operation.name = "ListVolumeRecoveryPoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVolumeRecoveryPointsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVolumeRecoveryPointsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:list_volumes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListVolumes"
        operation.name = "ListVolumes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVolumesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVolumesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListVolumes.new
      end)
      service.add_operation(:notify_when_uploaded, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#NotifyWhenUploaded"
        operation.name = "NotifyWhenUploaded"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWhenUploadedInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWhenUploadedOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:refresh_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RefreshCache"
        operation.name = "RefreshCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshCacheInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshCacheOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:reset_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ResetCache"
        operation.name = "ResetCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetCacheInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetCacheOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:retrieve_tape_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RetrieveTapeArchive"
        operation.name = "RetrieveTapeArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveTapeArchiveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveTapeArchiveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:retrieve_tape_recovery_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RetrieveTapeRecoveryPoint"
        operation.name = "RetrieveTapeRecoveryPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveTapeRecoveryPointInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveTapeRecoveryPointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:set_local_console_password, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#SetLocalConsolePassword"
        operation.name = "SetLocalConsolePassword"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetLocalConsolePasswordInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetLocalConsolePasswordOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:set_smb_guest_password, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#SetSMBGuestPassword"
        operation.name = "SetSMBGuestPassword"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetSMBGuestPasswordInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SetSMBGuestPasswordOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:shutdown_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ShutdownGateway"
        operation.name = "ShutdownGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ShutdownGatewayInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ShutdownGatewayOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:start_availability_monitor_test, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#StartAvailabilityMonitorTest"
        operation.name = "StartAvailabilityMonitorTest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAvailabilityMonitorTestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAvailabilityMonitorTestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:start_cache_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#StartCacheReport"
        operation.name = "StartCacheReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCacheReportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCacheReportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:start_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#StartGateway"
        operation.name = "StartGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartGatewayInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartGatewayOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_automatic_tape_creation_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateAutomaticTapeCreationPolicy"
        operation.name = "UpdateAutomaticTapeCreationPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomaticTapeCreationPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomaticTapeCreationPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_bandwidth_rate_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateBandwidthRateLimit"
        operation.name = "UpdateBandwidthRateLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBandwidthRateLimitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBandwidthRateLimitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_bandwidth_rate_limit_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateBandwidthRateLimitSchedule"
        operation.name = "UpdateBandwidthRateLimitSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBandwidthRateLimitScheduleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBandwidthRateLimitScheduleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_chap_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateChapCredentials"
        operation.name = "UpdateChapCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChapCredentialsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChapCredentialsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_file_system_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateFileSystemAssociation"
        operation.name = "UpdateFileSystemAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemAssociationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_information, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateGatewayInformation"
        operation.name = "UpdateGatewayInformation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayInformationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayInformationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_software_now, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateGatewaySoftwareNow"
        operation.name = "UpdateGatewaySoftwareNow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_maintenance_start_time, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateMaintenanceStartTime"
        operation.name = "UpdateMaintenanceStartTime"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMaintenanceStartTimeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMaintenanceStartTimeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_nfs_file_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateNFSFileShare"
        operation.name = "UpdateNFSFileShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNFSFileShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNFSFileShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_smb_file_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBFileShare"
        operation.name = "UpdateSMBFileShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBFileShareInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBFileShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_smb_file_share_visibility, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBFileShareVisibility"
        operation.name = "UpdateSMBFileShareVisibility"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBFileShareVisibilityInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBFileShareVisibilityOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_smb_local_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBLocalGroups"
        operation.name = "UpdateSMBLocalGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBLocalGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBLocalGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_smb_security_strategy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBSecurityStrategy"
        operation.name = "UpdateSMBSecurityStrategy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBSecurityStrategyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSMBSecurityStrategyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_snapshot_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSnapshotSchedule"
        operation.name = "UpdateSnapshotSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSnapshotScheduleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSnapshotScheduleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_vtl_device_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateVTLDeviceType"
        operation.name = "UpdateVTLDeviceType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVTLDeviceTypeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVTLDeviceTypeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGatewayRequestException)
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

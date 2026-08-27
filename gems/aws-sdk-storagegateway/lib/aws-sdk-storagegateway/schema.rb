# frozen_string_literal: true

# This is generated code!

module Aws::StorageGateway
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivateGatewayInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ActivateGatewayInput", name: "ActivateGatewayInput")
    ActivateGatewayOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ActivateGatewayOutput", name: "ActivateGatewayOutput")
    ActivationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#ActivationKey", name: "ActivationKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ActiveDirectoryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#ActiveDirectoryStatus", name: "ActiveDirectoryStatus")
    AddCacheInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddCacheInput", name: "AddCacheInput")
    AddCacheOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddCacheOutput", name: "AddCacheOutput")
    AddTagsToResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddTagsToResourceInput", name: "AddTagsToResourceInput")
    AddTagsToResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddTagsToResourceOutput", name: "AddTagsToResourceOutput")
    AddUploadBufferInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddUploadBufferInput", name: "AddUploadBufferInput")
    AddUploadBufferOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddUploadBufferOutput", name: "AddUploadBufferOutput")
    AddWorkingStorageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddWorkingStorageInput", name: "AddWorkingStorageInput")
    AddWorkingStorageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AddWorkingStorageOutput", name: "AddWorkingStorageOutput")
    AssignTapePoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AssignTapePoolInput", name: "AssignTapePoolInput")
    AssignTapePoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AssignTapePoolOutput", name: "AssignTapePoolOutput")
    AssociateFileSystemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AssociateFileSystemInput", name: "AssociateFileSystemInput")
    AssociateFileSystemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AssociateFileSystemOutput", name: "AssociateFileSystemOutput")
    AttachVolumeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AttachVolumeInput", name: "AttachVolumeInput")
    AttachVolumeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AttachVolumeOutput", name: "AttachVolumeOutput")
    AuditDestinationARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#AuditDestinationARN", name: "AuditDestinationARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Authentication = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Authentication", name: "Authentication", traits: {"smithy.api#length" => {"min" => 5, "max" => 15}})
    AutomaticTapeCreationPolicyInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AutomaticTapeCreationPolicyInfo", name: "AutomaticTapeCreationPolicyInfo")
    AutomaticTapeCreationPolicyInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#AutomaticTapeCreationPolicyInfos", name: "AutomaticTapeCreationPolicyInfos")
    AutomaticTapeCreationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#AutomaticTapeCreationRule", name: "AutomaticTapeCreationRule")
    AutomaticTapeCreationRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#AutomaticTapeCreationRules", name: "AutomaticTapeCreationRules", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AutomaticUpdatePolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#AutomaticUpdatePolicy", name: "AutomaticUpdatePolicy")
    AvailabilityMonitorTestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#AvailabilityMonitorTestStatus", name: "AvailabilityMonitorTestStatus")
    BandwidthDownloadRateLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#BandwidthDownloadRateLimit", name: "BandwidthDownloadRateLimit", traits: {"smithy.api#range" => {"min" => 102400}})
    BandwidthRateLimitInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#BandwidthRateLimitInterval", name: "BandwidthRateLimitInterval")
    BandwidthRateLimitIntervals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#BandwidthRateLimitIntervals", name: "BandwidthRateLimitIntervals", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BandwidthType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#BandwidthType", name: "BandwidthType", traits: {"smithy.api#length" => {"min" => 3, "max" => 25}})
    BandwidthUploadRateLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#BandwidthUploadRateLimit", name: "BandwidthUploadRateLimit", traits: {"smithy.api#range" => {"min" => 51200}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.storagegateway#Boolean", name: "Boolean")
    Boolean2 = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.storagegateway#Boolean2", name: "Boolean2", traits: {"smithy.api#default" => false})
    CacheAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CacheAttributes", name: "CacheAttributes")
    CacheReportARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#CacheReportARN", name: "CacheReportARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    CacheReportFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CacheReportFilter", name: "CacheReportFilter")
    CacheReportFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#CacheReportFilterList", name: "CacheReportFilterList")
    CacheReportFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#CacheReportFilterName", name: "CacheReportFilterName")
    CacheReportFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#CacheReportFilterValue", name: "CacheReportFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    CacheReportFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#CacheReportFilterValues", name: "CacheReportFilterValues")
    CacheReportInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CacheReportInfo", name: "CacheReportInfo")
    CacheReportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#CacheReportList", name: "CacheReportList")
    CacheReportName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#CacheReportName", name: "CacheReportName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CacheReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#CacheReportStatus", name: "CacheReportStatus")
    CacheStaleTimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#CacheStaleTimeoutInSeconds", name: "CacheStaleTimeoutInSeconds")
    CachediSCSIVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CachediSCSIVolume", name: "CachediSCSIVolume")
    CachediSCSIVolumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#CachediSCSIVolumes", name: "CachediSCSIVolumes")
    CancelArchivalInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CancelArchivalInput", name: "CancelArchivalInput")
    CancelArchivalOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CancelArchivalOutput", name: "CancelArchivalOutput")
    CancelCacheReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CancelCacheReportInput", name: "CancelCacheReportInput")
    CancelCacheReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CancelCacheReportOutput", name: "CancelCacheReportOutput")
    CancelRetrievalInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CancelRetrievalInput", name: "CancelRetrievalInput")
    CancelRetrievalOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CancelRetrievalOutput", name: "CancelRetrievalOutput")
    CaseSensitivity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#CaseSensitivity", name: "CaseSensitivity")
    ChapCredentials = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#ChapCredentials", name: "ChapCredentials")
    ChapInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ChapInfo", name: "ChapInfo")
    ChapSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#ChapSecret", name: "ChapSecret", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 5, "max" => 100}})
    CloudWatchLogGroupARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#CloudWatchLogGroupARN", name: "CloudWatchLogGroupARN", traits: {"smithy.api#length" => {"min" => 0, "max" => 562}})
    CreateCachediSCSIVolumeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateCachediSCSIVolumeInput", name: "CreateCachediSCSIVolumeInput")
    CreateCachediSCSIVolumeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateCachediSCSIVolumeOutput", name: "CreateCachediSCSIVolumeOutput")
    CreateNFSFileShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateNFSFileShareInput", name: "CreateNFSFileShareInput")
    CreateNFSFileShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateNFSFileShareOutput", name: "CreateNFSFileShareOutput")
    CreateSMBFileShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateSMBFileShareInput", name: "CreateSMBFileShareInput")
    CreateSMBFileShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateSMBFileShareOutput", name: "CreateSMBFileShareOutput")
    CreateSnapshotFromVolumeRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateSnapshotFromVolumeRecoveryPointInput", name: "CreateSnapshotFromVolumeRecoveryPointInput")
    CreateSnapshotFromVolumeRecoveryPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateSnapshotFromVolumeRecoveryPointOutput", name: "CreateSnapshotFromVolumeRecoveryPointOutput")
    CreateSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateSnapshotInput", name: "CreateSnapshotInput")
    CreateSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateSnapshotOutput", name: "CreateSnapshotOutput")
    CreateStorediSCSIVolumeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateStorediSCSIVolumeInput", name: "CreateStorediSCSIVolumeInput")
    CreateStorediSCSIVolumeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateStorediSCSIVolumeOutput", name: "CreateStorediSCSIVolumeOutput")
    CreateTapePoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateTapePoolInput", name: "CreateTapePoolInput")
    CreateTapePoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateTapePoolOutput", name: "CreateTapePoolOutput")
    CreateTapeWithBarcodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateTapeWithBarcodeInput", name: "CreateTapeWithBarcodeInput")
    CreateTapeWithBarcodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateTapeWithBarcodeOutput", name: "CreateTapeWithBarcodeOutput")
    CreateTapesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateTapesInput", name: "CreateTapesInput")
    CreateTapesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#CreateTapesOutput", name: "CreateTapesOutput")
    CreatedDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.storagegateway#CreatedDate", name: "CreatedDate")
    DNSHostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DNSHostName", name: "DNSHostName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])$"})
    DayOfMonth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#DayOfMonth", name: "DayOfMonth", traits: {"smithy.api#range" => {"min" => 1, "max" => 28}})
    DayOfWeek = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#DayOfWeek", name: "DayOfWeek", traits: {"smithy.api#range" => {"min" => 0, "max" => 6}})
    DaysOfWeek = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#DaysOfWeek", name: "DaysOfWeek", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    DeleteAutomaticTapeCreationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteAutomaticTapeCreationPolicyInput", name: "DeleteAutomaticTapeCreationPolicyInput")
    DeleteAutomaticTapeCreationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteAutomaticTapeCreationPolicyOutput", name: "DeleteAutomaticTapeCreationPolicyOutput")
    DeleteBandwidthRateLimitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteBandwidthRateLimitInput", name: "DeleteBandwidthRateLimitInput")
    DeleteBandwidthRateLimitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteBandwidthRateLimitOutput", name: "DeleteBandwidthRateLimitOutput")
    DeleteCacheReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteCacheReportInput", name: "DeleteCacheReportInput")
    DeleteCacheReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteCacheReportOutput", name: "DeleteCacheReportOutput")
    DeleteChapCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteChapCredentialsInput", name: "DeleteChapCredentialsInput")
    DeleteChapCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteChapCredentialsOutput", name: "DeleteChapCredentialsOutput")
    DeleteFileShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteFileShareInput", name: "DeleteFileShareInput")
    DeleteFileShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteFileShareOutput", name: "DeleteFileShareOutput")
    DeleteGatewayInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteGatewayInput", name: "DeleteGatewayInput")
    DeleteGatewayOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteGatewayOutput", name: "DeleteGatewayOutput")
    DeleteSnapshotScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteSnapshotScheduleInput", name: "DeleteSnapshotScheduleInput")
    DeleteSnapshotScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteSnapshotScheduleOutput", name: "DeleteSnapshotScheduleOutput")
    DeleteTapeArchiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteTapeArchiveInput", name: "DeleteTapeArchiveInput")
    DeleteTapeArchiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteTapeArchiveOutput", name: "DeleteTapeArchiveOutput")
    DeleteTapeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteTapeInput", name: "DeleteTapeInput")
    DeleteTapeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteTapeOutput", name: "DeleteTapeOutput")
    DeleteTapePoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteTapePoolInput", name: "DeleteTapePoolInput")
    DeleteTapePoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteTapePoolOutput", name: "DeleteTapePoolOutput")
    DeleteVolumeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteVolumeInput", name: "DeleteVolumeInput")
    DeleteVolumeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeleteVolumeOutput", name: "DeleteVolumeOutput")
    DeprecationDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DeprecationDate", name: "DeprecationDate", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeAvailabilityMonitorTestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeAvailabilityMonitorTestInput", name: "DescribeAvailabilityMonitorTestInput")
    DescribeAvailabilityMonitorTestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeAvailabilityMonitorTestOutput", name: "DescribeAvailabilityMonitorTestOutput")
    DescribeBandwidthRateLimitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeBandwidthRateLimitInput", name: "DescribeBandwidthRateLimitInput")
    DescribeBandwidthRateLimitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeBandwidthRateLimitOutput", name: "DescribeBandwidthRateLimitOutput")
    DescribeBandwidthRateLimitScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeBandwidthRateLimitScheduleInput", name: "DescribeBandwidthRateLimitScheduleInput")
    DescribeBandwidthRateLimitScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeBandwidthRateLimitScheduleOutput", name: "DescribeBandwidthRateLimitScheduleOutput")
    DescribeCacheInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeCacheInput", name: "DescribeCacheInput")
    DescribeCacheOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeCacheOutput", name: "DescribeCacheOutput")
    DescribeCacheReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeCacheReportInput", name: "DescribeCacheReportInput")
    DescribeCacheReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeCacheReportOutput", name: "DescribeCacheReportOutput")
    DescribeCachediSCSIVolumesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeCachediSCSIVolumesInput", name: "DescribeCachediSCSIVolumesInput")
    DescribeCachediSCSIVolumesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeCachediSCSIVolumesOutput", name: "DescribeCachediSCSIVolumesOutput")
    DescribeChapCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeChapCredentialsInput", name: "DescribeChapCredentialsInput")
    DescribeChapCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeChapCredentialsOutput", name: "DescribeChapCredentialsOutput")
    DescribeFileSystemAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeFileSystemAssociationsInput", name: "DescribeFileSystemAssociationsInput")
    DescribeFileSystemAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeFileSystemAssociationsOutput", name: "DescribeFileSystemAssociationsOutput")
    DescribeGatewayInformationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeGatewayInformationInput", name: "DescribeGatewayInformationInput")
    DescribeGatewayInformationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeGatewayInformationOutput", name: "DescribeGatewayInformationOutput")
    DescribeMaintenanceStartTimeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeMaintenanceStartTimeInput", name: "DescribeMaintenanceStartTimeInput")
    DescribeMaintenanceStartTimeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeMaintenanceStartTimeOutput", name: "DescribeMaintenanceStartTimeOutput")
    DescribeNFSFileSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeNFSFileSharesInput", name: "DescribeNFSFileSharesInput")
    DescribeNFSFileSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeNFSFileSharesOutput", name: "DescribeNFSFileSharesOutput")
    DescribeSMBFileSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeSMBFileSharesInput", name: "DescribeSMBFileSharesInput")
    DescribeSMBFileSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeSMBFileSharesOutput", name: "DescribeSMBFileSharesOutput")
    DescribeSMBSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeSMBSettingsInput", name: "DescribeSMBSettingsInput")
    DescribeSMBSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeSMBSettingsOutput", name: "DescribeSMBSettingsOutput")
    DescribeSnapshotScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeSnapshotScheduleInput", name: "DescribeSnapshotScheduleInput")
    DescribeSnapshotScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeSnapshotScheduleOutput", name: "DescribeSnapshotScheduleOutput")
    DescribeStorediSCSIVolumesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeStorediSCSIVolumesInput", name: "DescribeStorediSCSIVolumesInput")
    DescribeStorediSCSIVolumesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeStorediSCSIVolumesOutput", name: "DescribeStorediSCSIVolumesOutput")
    DescribeTapeArchivesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeTapeArchivesInput", name: "DescribeTapeArchivesInput")
    DescribeTapeArchivesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeTapeArchivesOutput", name: "DescribeTapeArchivesOutput")
    DescribeTapeRecoveryPointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeTapeRecoveryPointsInput", name: "DescribeTapeRecoveryPointsInput")
    DescribeTapeRecoveryPointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeTapeRecoveryPointsOutput", name: "DescribeTapeRecoveryPointsOutput")
    DescribeTapesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeTapesInput", name: "DescribeTapesInput")
    DescribeTapesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeTapesOutput", name: "DescribeTapesOutput")
    DescribeUploadBufferInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeUploadBufferInput", name: "DescribeUploadBufferInput")
    DescribeUploadBufferOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeUploadBufferOutput", name: "DescribeUploadBufferOutput")
    DescribeVTLDevicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeVTLDevicesInput", name: "DescribeVTLDevicesInput")
    DescribeVTLDevicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeVTLDevicesOutput", name: "DescribeVTLDevicesOutput")
    DescribeWorkingStorageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeWorkingStorageInput", name: "DescribeWorkingStorageInput")
    DescribeWorkingStorageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DescribeWorkingStorageOutput", name: "DescribeWorkingStorageOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DetachVolumeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DetachVolumeInput", name: "DetachVolumeInput")
    DetachVolumeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DetachVolumeOutput", name: "DetachVolumeOutput")
    DeviceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DeviceType", name: "DeviceType", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}})
    DeviceiSCSIAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DeviceiSCSIAttributes", name: "DeviceiSCSIAttributes")
    DisableGatewayInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DisableGatewayInput", name: "DisableGatewayInput")
    DisableGatewayOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DisableGatewayOutput", name: "DisableGatewayOutput")
    DisassociateFileSystemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DisassociateFileSystemInput", name: "DisassociateFileSystemInput")
    DisassociateFileSystemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#DisassociateFileSystemOutput", name: "DisassociateFileSystemOutput")
    Disk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#Disk", name: "Disk")
    DiskAllocationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DiskAllocationType", name: "DiskAllocationType", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    DiskAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DiskAttribute", name: "DiskAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DiskAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#DiskAttributeList", name: "DiskAttributeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    DiskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DiskId", name: "DiskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    DiskIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#DiskIds", name: "DiskIds")
    Disks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#Disks", name: "Disks")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"})
    DomainUserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DomainUserName", name: "DomainUserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\w[\\w\\.\\- ]*$"})
    DomainUserPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#DomainUserPassword", name: "DomainUserPassword", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    DoubleObject = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.storagegateway#DoubleObject", name: "DoubleObject")
    Ec2InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Ec2InstanceId", name: "Ec2InstanceId")
    Ec2InstanceRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Ec2InstanceRegion", name: "Ec2InstanceRegion")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#EncryptionType", name: "EncryptionType")
    EndpointNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#EndpointNetworkConfiguration", name: "EndpointNetworkConfiguration")
    EndpointType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#EndpointType", name: "EndpointType", traits: {"smithy.api#length" => {"min" => 4, "max" => 8}})
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#ErrorCode", name: "ErrorCode")
    EvictFilesFailingUploadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#EvictFilesFailingUploadInput", name: "EvictFilesFailingUploadInput")
    EvictFilesFailingUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#EvictFilesFailingUploadOutput", name: "EvictFilesFailingUploadOutput")
    FileShareARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileShareARN", name: "FileShareARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    FileShareARNList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FileShareARNList", name: "FileShareARNList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FileShareClientList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FileShareClientList", name: "FileShareClientList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FileShareId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileShareId", name: "FileShareId", traits: {"smithy.api#length" => {"min" => 12, "max" => 30}})
    FileShareInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#FileShareInfo", name: "FileShareInfo")
    FileShareInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FileShareInfoList", name: "FileShareInfoList")
    FileShareName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileShareName", name: "FileShareName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FileShareStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileShareStatus", name: "FileShareStatus", traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    FileShareType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#FileShareType", name: "FileShareType")
    FileSystemAssociationARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationARN", name: "FileSystemAssociationARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    FileSystemAssociationARNList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationARNList", name: "FileSystemAssociationARNList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FileSystemAssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationId", name: "FileSystemAssociationId", traits: {"smithy.api#length" => {"min" => 10, "max" => 30}})
    FileSystemAssociationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationInfo", name: "FileSystemAssociationInfo")
    FileSystemAssociationInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationInfoList", name: "FileSystemAssociationInfoList")
    FileSystemAssociationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationStatus", name: "FileSystemAssociationStatus", traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    FileSystemAssociationStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationStatusDetail", name: "FileSystemAssociationStatusDetail")
    FileSystemAssociationStatusDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationStatusDetails", name: "FileSystemAssociationStatusDetails")
    FileSystemAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationSummary", name: "FileSystemAssociationSummary")
    FileSystemAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationSummaryList", name: "FileSystemAssociationSummaryList")
    FileSystemAssociationSyncErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileSystemAssociationSyncErrorCode", name: "FileSystemAssociationSyncErrorCode")
    FileSystemLocationARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#FileSystemLocationARN", name: "FileSystemLocationARN", traits: {"smithy.api#length" => {"min" => 8, "max" => 512}})
    Folder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Folder", name: "Folder", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FolderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#FolderList", name: "FolderList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    GatewayARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#GatewayARN", name: "GatewayARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    GatewayCapacity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#GatewayCapacity", name: "GatewayCapacity")
    GatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#GatewayId", name: "GatewayId", traits: {"smithy.api#length" => {"min" => 12, "max" => 30}})
    GatewayInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#GatewayInfo", name: "GatewayInfo")
    GatewayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#GatewayName", name: "GatewayName", traits: {"smithy.api#length" => {"min" => 2, "max" => 255}, "smithy.api#pattern" => "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$"})
    GatewayNetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#GatewayNetworkInterfaces", name: "GatewayNetworkInterfaces")
    GatewayOperationalState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#GatewayOperationalState", name: "GatewayOperationalState", traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    GatewayState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#GatewayState", name: "GatewayState", traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    GatewayTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#GatewayTimezone", name: "GatewayTimezone", traits: {"smithy.api#length" => {"min" => 3, "max" => 10}})
    GatewayType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#GatewayType", name: "GatewayType", traits: {"smithy.api#length" => {"min" => 2, "max" => 20}})
    Gateways = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#Gateways", name: "Gateways")
    Host = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Host", name: "Host", traits: {"smithy.api#length" => {"min" => 2, "max" => 1024}, "smithy.api#pattern" => "^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])(:(\\d+))?$|^(?:\\[(?:(?:(?:[A-Fa-f0-9]{1,4}:){6}|(?=(?:[A-Fa-f0-9]{0,4}:){0,6}(?:[0-9]{1,3}\\.){3}[0-9]{1,3}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){0,5}|:)(?:(?::[0-9A-Fa-f]{1,4}){1,5}:|:)|::(?:[A-Fa-f0-9]{1,4}:){5})(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}|(?=(?:[A-Fa-f0-9]{0,4}:){0,7}[A-Fa-f0-9]{0,4}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){1,7}|:)(?:(:[0-9A-Fa-f]{1,4}){1,7}|:)|(?:[A-Fa-f0-9]{1,4}:){7}:|:(:[A-Fa-f0-9]{1,4}){7})\\]:\\d+$|^(?:(?:(?:[A-Fa-f0-9]{1,4}:){6}|(?=(?:[A-Fa-f0-9]{0,4}:){0,6}(?:[0-9]{1,3}\\.){3}[0-9]{1,3}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){0,5}|:)(?:(?::[0-9A-Fa-f]{1,4}){1,5}:|:)|::(?:[A-Fa-f0-9]{1,4}:){5})(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}|(?=(?:[A-Fa-f0-9]{0,4}:){0,7}[A-Fa-f0-9]{0,4}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){1,7}|:)(?:(:[0-9A-Fa-f]{1,4}){1,7}|:)|(?:[A-Fa-f0-9]{1,4}:){7}:|:(:[A-Fa-f0-9]{1,4}){7})$)$"})
    HostEnvironment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#HostEnvironment", name: "HostEnvironment")
    HostEnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#HostEnvironmentId", name: "HostEnvironmentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Hosts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#Hosts", name: "Hosts")
    HourOfDay = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#HourOfDay", name: "HourOfDay", traits: {"smithy.api#range" => {"min" => 0, "max" => 23}})
    IPV4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#IPV4Address", name: "IPV4Address", traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^((25[0-5]|(2[0-4]|1[0-9]|[1-9]|)[0-9])(\\.(?!$)|$)){4}$"})
    Initiator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Initiator", name: "Initiator", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Initiators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#Initiators", name: "Initiators")
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidGatewayRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#InvalidGatewayRequestException", name: "InvalidGatewayRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#IpAddressList", name: "IpAddressList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Ipv4OrIpv6AddressCIDR = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Ipv4OrIpv6AddressCIDR", name: "Ipv4OrIpv6AddressCIDR", traits: {"smithy.api#pattern" => "^(?:(?:[0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}(?:[0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(?:\\/(?:[0-9]|[1-2][0-9]|3[0-2]))?$|^(?:(?:(?:[A-Fa-f0-9]{1,4}:){6}|(?=(?:[A-Fa-f0-9]{0,4}:){0,6}(?:[0-9]{1,3}\\.){3}[0-9]{1,3}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){0,5}|:)(?:(?::[0-9A-Fa-f]{1,4}){1,5}:|:)|::(?:[A-Fa-f0-9]{1,4}:){5})(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}|(?=(?:[A-Fa-f0-9]{0,4}:){0,7}[A-Fa-f0-9]{0,4}(?![:.\\w]))(?:(?:[0-9A-Fa-f]{1,4}:){1,7}|:)(?:(:[0-9A-Fa-f]{1,4}){1,7}|:)|(?:[A-Fa-f0-9]{1,4}:){7}:|:(:[A-Fa-f0-9]{1,4}){7})(?:\\/(?:12[0-8]|1[01][0-9]|[1-9]?[0-9]))?$"})
    IqnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#IqnName", name: "IqnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z:.-]+$"})
    JoinDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#JoinDomainInput", name: "JoinDomainInput")
    JoinDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#JoinDomainOutput", name: "JoinDomainOutput")
    KMSKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#KMSKey", name: "KMSKey", traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}, "smithy.api#pattern" => "^(^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):kms:([a-zA-Z0-9-]+):([0-9]+):(key|alias)/(\\S+)$)|(^alias/(\\S+)$)$"})
    LastSoftwareUpdate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#LastSoftwareUpdate", name: "LastSoftwareUpdate", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ListAutomaticTapeCreationPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListAutomaticTapeCreationPoliciesInput", name: "ListAutomaticTapeCreationPoliciesInput")
    ListAutomaticTapeCreationPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListAutomaticTapeCreationPoliciesOutput", name: "ListAutomaticTapeCreationPoliciesOutput")
    ListCacheReportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListCacheReportsInput", name: "ListCacheReportsInput")
    ListCacheReportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListCacheReportsOutput", name: "ListCacheReportsOutput")
    ListFileSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListFileSharesInput", name: "ListFileSharesInput")
    ListFileSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListFileSharesOutput", name: "ListFileSharesOutput")
    ListFileSystemAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListFileSystemAssociationsInput", name: "ListFileSystemAssociationsInput")
    ListFileSystemAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListFileSystemAssociationsOutput", name: "ListFileSystemAssociationsOutput")
    ListGatewaysInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListGatewaysInput", name: "ListGatewaysInput")
    ListGatewaysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListGatewaysOutput", name: "ListGatewaysOutput")
    ListLocalDisksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListLocalDisksInput", name: "ListLocalDisksInput")
    ListLocalDisksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListLocalDisksOutput", name: "ListLocalDisksOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTapePoolsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListTapePoolsInput", name: "ListTapePoolsInput")
    ListTapePoolsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListTapePoolsOutput", name: "ListTapePoolsOutput")
    ListTapesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListTapesInput", name: "ListTapesInput")
    ListTapesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListTapesOutput", name: "ListTapesOutput")
    ListVolumeInitiatorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListVolumeInitiatorsInput", name: "ListVolumeInitiatorsInput")
    ListVolumeInitiatorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListVolumeInitiatorsOutput", name: "ListVolumeInitiatorsOutput")
    ListVolumeRecoveryPointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListVolumeRecoveryPointsInput", name: "ListVolumeRecoveryPointsInput")
    ListVolumeRecoveryPointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListVolumeRecoveryPointsOutput", name: "ListVolumeRecoveryPointsOutput")
    ListVolumesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListVolumesInput", name: "ListVolumesInput")
    ListVolumesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ListVolumesOutput", name: "ListVolumesOutput")
    LocalConsolePassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#LocalConsolePassword", name: "LocalConsolePassword", traits: {"smithy.api#length" => {"min" => 6, "max" => 512}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    LocationARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#LocationARN", name: "LocationARN", traits: {"smithy.api#length" => {"min" => 16, "max" => 1400}})
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Marker", name: "Marker", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MediumChangerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#MediumChangerType", name: "MediumChangerType", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}})
    MinimumNumTapes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#MinimumNumTapes", name: "MinimumNumTapes", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MinuteOfHour = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#MinuteOfHour", name: "MinuteOfHour", traits: {"smithy.api#range" => {"min" => 0, "max" => 59}})
    NFSFileShareDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#NFSFileShareDefaults", name: "NFSFileShareDefaults")
    NFSFileShareInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#NFSFileShareInfo", name: "NFSFileShareInfo")
    NFSFileShareInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#NFSFileShareInfoList", name: "NFSFileShareInfoList")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#NetworkInterface", name: "NetworkInterface", traits: {"smithy.api#sensitive" => {}})
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#NetworkInterfaceId", name: "NetworkInterfaceId")
    NextUpdateAvailabilityDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#NextUpdateAvailabilityDate", name: "NextUpdateAvailabilityDate", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    NotificationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#NotificationId", name: "NotificationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NotificationPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#NotificationPolicy", name: "NotificationPolicy", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^\\{[\\w\\s:\\{\\}\\[\\]\"]*}$"})
    NotifyWhenUploadedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#NotifyWhenUploadedInput", name: "NotifyWhenUploadedInput")
    NotifyWhenUploadedOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#NotifyWhenUploadedOutput", name: "NotifyWhenUploadedOutput")
    NumTapesToCreate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#NumTapesToCreate", name: "NumTapesToCreate", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ObjectACL = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#ObjectACL", name: "ObjectACL")
    OrganizationalUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#OrganizationalUnit", name: "OrganizationalUnit", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Path", name: "Path")
    PermissionId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#PermissionId", name: "PermissionId", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967294}})
    PermissionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#PermissionMode", name: "PermissionMode", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^[0-7]{4}$"})
    PoolARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#PoolARN", name: "PoolARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    PoolARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#PoolARNs", name: "PoolARNs")
    PoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#PoolId", name: "PoolId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PoolInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#PoolInfo", name: "PoolInfo")
    PoolInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#PoolInfos", name: "PoolInfos")
    PoolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#PoolName", name: "PoolName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$"})
    PoolStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#PoolStatus", name: "PoolStatus")
    PositiveIntObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#PositiveIntObject", name: "PositiveIntObject", traits: {"smithy.api#range" => {"min" => 1}})
    RecurrenceInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#RecurrenceInHours", name: "RecurrenceInHours", traits: {"smithy.api#range" => {"min" => 1, "max" => 24}})
    RefreshCacheInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RefreshCacheInput", name: "RefreshCacheInput")
    RefreshCacheOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RefreshCacheOutput", name: "RefreshCacheOutput")
    RegionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#RegionId", name: "RegionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    RemoveTagsFromResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RemoveTagsFromResourceInput", name: "RemoveTagsFromResourceInput")
    RemoveTagsFromResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RemoveTagsFromResourceOutput", name: "RemoveTagsFromResourceOutput")
    ReportCompletionPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#ReportCompletionPercent", name: "ReportCompletionPercent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ResetCacheInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ResetCacheInput", name: "ResetCacheInput")
    ResetCacheOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ResetCacheOutput", name: "ResetCacheOutput")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    RetentionLockTimeInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#RetentionLockTimeInDays", name: "RetentionLockTimeInDays", traits: {"smithy.api#range" => {"min" => 0, "max" => 36500}})
    RetentionLockType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#RetentionLockType", name: "RetentionLockType")
    RetrieveTapeArchiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RetrieveTapeArchiveInput", name: "RetrieveTapeArchiveInput")
    RetrieveTapeArchiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RetrieveTapeArchiveOutput", name: "RetrieveTapeArchiveOutput")
    RetrieveTapeRecoveryPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RetrieveTapeRecoveryPointInput", name: "RetrieveTapeRecoveryPointInput")
    RetrieveTapeRecoveryPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#RetrieveTapeRecoveryPointOutput", name: "RetrieveTapeRecoveryPointOutput")
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Role", name: "Role", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):iam::([0-9]+):role/(\\S+)$"})
    SMBFileShareInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#SMBFileShareInfo", name: "SMBFileShareInfo")
    SMBFileShareInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#SMBFileShareInfoList", name: "SMBFileShareInfoList")
    SMBGuestPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#SMBGuestPassword", name: "SMBGuestPassword", traits: {"smithy.api#length" => {"min" => 6, "max" => 512}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    SMBLocalGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#SMBLocalGroups", name: "SMBLocalGroups")
    SMBSecurityStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#SMBSecurityStrategy", name: "SMBSecurityStrategy")
    ServiceUnavailableError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ServiceUnavailableError", name: "ServiceUnavailableError", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetLocalConsolePasswordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#SetLocalConsolePasswordInput", name: "SetLocalConsolePasswordInput")
    SetLocalConsolePasswordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#SetLocalConsolePasswordOutput", name: "SetLocalConsolePasswordOutput")
    SetSMBGuestPasswordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#SetSMBGuestPasswordInput", name: "SetSMBGuestPasswordInput")
    SetSMBGuestPasswordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#SetSMBGuestPasswordOutput", name: "SetSMBGuestPasswordOutput")
    ShutdownGatewayInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ShutdownGatewayInput", name: "ShutdownGatewayInput")
    ShutdownGatewayOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#ShutdownGatewayOutput", name: "ShutdownGatewayOutput")
    SnapshotDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#SnapshotDescription", name: "SnapshotDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#SnapshotId", name: "SnapshotId", traits: {"smithy.api#pattern" => "^\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z$"})
    SoftwareUpdatePreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#SoftwareUpdatePreferences", name: "SoftwareUpdatePreferences")
    SoftwareUpdatesEndDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#SoftwareUpdatesEndDate", name: "SoftwareUpdatesEndDate", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    SoftwareVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#SoftwareVersion", name: "SoftwareVersion")
    Squash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#Squash", name: "Squash", traits: {"smithy.api#length" => {"min" => 5, "max" => 15}})
    StartAvailabilityMonitorTestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StartAvailabilityMonitorTestInput", name: "StartAvailabilityMonitorTestInput")
    StartAvailabilityMonitorTestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StartAvailabilityMonitorTestOutput", name: "StartAvailabilityMonitorTestOutput")
    StartCacheReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StartCacheReportInput", name: "StartCacheReportInput")
    StartCacheReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StartCacheReportOutput", name: "StartCacheReportOutput")
    StartGatewayInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StartGatewayInput", name: "StartGatewayInput")
    StartGatewayOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StartGatewayOutput", name: "StartGatewayOutput")
    StorageClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#StorageClass", name: "StorageClass", traits: {"smithy.api#length" => {"min" => 5, "max" => 50}})
    StorageGatewayError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StorageGatewayError", name: "StorageGatewayError")
    StorediSCSIVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#StorediSCSIVolume", name: "StorediSCSIVolume")
    StorediSCSIVolumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#StorediSCSIVolumes", name: "StorediSCSIVolumes")
    SupportedGatewayCapacities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#SupportedGatewayCapacities", name: "SupportedGatewayCapacities")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#TagKeys", name: "TagKeys")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#Tags", name: "Tags")
    Tape = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#Tape", name: "Tape")
    TapeARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TapeARN", name: "TapeARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{5,16}$"})
    TapeARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#TapeARNs", name: "TapeARNs")
    TapeArchive = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#TapeArchive", name: "TapeArchive")
    TapeArchiveStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TapeArchiveStatus", name: "TapeArchiveStatus")
    TapeArchives = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#TapeArchives", name: "TapeArchives")
    TapeBarcode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TapeBarcode", name: "TapeBarcode", traits: {"smithy.api#length" => {"min" => 5, "max" => 16}, "smithy.api#pattern" => "^[A-Z0-9]*$"})
    TapeBarcodePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TapeBarcodePrefix", name: "TapeBarcodePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^[A-Z]*$"})
    TapeDriveType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TapeDriveType", name: "TapeDriveType", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}})
    TapeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#TapeInfo", name: "TapeInfo")
    TapeInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#TapeInfos", name: "TapeInfos")
    TapeRecoveryPointInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#TapeRecoveryPointInfo", name: "TapeRecoveryPointInfo")
    TapeRecoveryPointInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#TapeRecoveryPointInfos", name: "TapeRecoveryPointInfos")
    TapeRecoveryPointStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TapeRecoveryPointStatus", name: "TapeRecoveryPointStatus")
    TapeSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#TapeSize", name: "TapeSize")
    TapeStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TapeStatus", name: "TapeStatus")
    TapeStorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.storagegateway#TapeStorageClass", name: "TapeStorageClass")
    TapeUsage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#TapeUsage", name: "TapeUsage")
    Tapes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#Tapes", name: "Tapes")
    TargetARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TargetARN", name: "TargetARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 800}})
    TargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#TargetName", name: "TargetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[-\\.;a-z0-9]+$"})
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.storagegateway#Time", name: "Time")
    TimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#TimeoutInSeconds", name: "TimeoutInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}})
    UpdateAutomaticTapeCreationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateAutomaticTapeCreationPolicyInput", name: "UpdateAutomaticTapeCreationPolicyInput")
    UpdateAutomaticTapeCreationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateAutomaticTapeCreationPolicyOutput", name: "UpdateAutomaticTapeCreationPolicyOutput")
    UpdateBandwidthRateLimitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateBandwidthRateLimitInput", name: "UpdateBandwidthRateLimitInput")
    UpdateBandwidthRateLimitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateBandwidthRateLimitOutput", name: "UpdateBandwidthRateLimitOutput")
    UpdateBandwidthRateLimitScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateBandwidthRateLimitScheduleInput", name: "UpdateBandwidthRateLimitScheduleInput")
    UpdateBandwidthRateLimitScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateBandwidthRateLimitScheduleOutput", name: "UpdateBandwidthRateLimitScheduleOutput")
    UpdateChapCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateChapCredentialsInput", name: "UpdateChapCredentialsInput")
    UpdateChapCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateChapCredentialsOutput", name: "UpdateChapCredentialsOutput")
    UpdateFileSystemAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateFileSystemAssociationInput", name: "UpdateFileSystemAssociationInput")
    UpdateFileSystemAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateFileSystemAssociationOutput", name: "UpdateFileSystemAssociationOutput")
    UpdateGatewayInformationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateGatewayInformationInput", name: "UpdateGatewayInformationInput")
    UpdateGatewayInformationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateGatewayInformationOutput", name: "UpdateGatewayInformationOutput")
    UpdateGatewaySoftwareNowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateGatewaySoftwareNowInput", name: "UpdateGatewaySoftwareNowInput")
    UpdateGatewaySoftwareNowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateGatewaySoftwareNowOutput", name: "UpdateGatewaySoftwareNowOutput")
    UpdateMaintenanceStartTimeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateMaintenanceStartTimeInput", name: "UpdateMaintenanceStartTimeInput")
    UpdateMaintenanceStartTimeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateMaintenanceStartTimeOutput", name: "UpdateMaintenanceStartTimeOutput")
    UpdateNFSFileShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateNFSFileShareInput", name: "UpdateNFSFileShareInput")
    UpdateNFSFileShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateNFSFileShareOutput", name: "UpdateNFSFileShareOutput")
    UpdateSMBFileShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBFileShareInput", name: "UpdateSMBFileShareInput")
    UpdateSMBFileShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBFileShareOutput", name: "UpdateSMBFileShareOutput")
    UpdateSMBFileShareVisibilityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBFileShareVisibilityInput", name: "UpdateSMBFileShareVisibilityInput")
    UpdateSMBFileShareVisibilityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBFileShareVisibilityOutput", name: "UpdateSMBFileShareVisibilityOutput")
    UpdateSMBLocalGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBLocalGroupsInput", name: "UpdateSMBLocalGroupsInput")
    UpdateSMBLocalGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBLocalGroupsOutput", name: "UpdateSMBLocalGroupsOutput")
    UpdateSMBSecurityStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBSecurityStrategyInput", name: "UpdateSMBSecurityStrategyInput")
    UpdateSMBSecurityStrategyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSMBSecurityStrategyOutput", name: "UpdateSMBSecurityStrategyOutput")
    UpdateSnapshotScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSnapshotScheduleInput", name: "UpdateSnapshotScheduleInput")
    UpdateSnapshotScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateSnapshotScheduleOutput", name: "UpdateSnapshotScheduleOutput")
    UpdateVTLDeviceTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateVTLDeviceTypeInput", name: "UpdateVTLDeviceTypeInput")
    UpdateVTLDeviceTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#UpdateVTLDeviceTypeOutput", name: "UpdateVTLDeviceTypeOutput")
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#UserList", name: "UserList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    UserListUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#UserListUser", name: "UserListUser", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    VTLDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#VTLDevice", name: "VTLDevice")
    VTLDeviceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VTLDeviceARN", name: "VTLDeviceARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}})
    VTLDeviceARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#VTLDeviceARNs", name: "VTLDeviceARNs")
    VTLDeviceProductIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VTLDeviceProductIdentifier", name: "VTLDeviceProductIdentifier")
    VTLDeviceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VTLDeviceType", name: "VTLDeviceType")
    VTLDeviceVendor = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VTLDeviceVendor", name: "VTLDeviceVendor")
    VTLDevices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#VTLDevices", name: "VTLDevices")
    VolumeARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VolumeARN", name: "VolumeARN", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws(|-cn|-us-gov|-iso[A-Za-z0-9_-]*)):storagegateway:[a-z\\-0-9]+:[0-9]+:gateway\\/(.+)\\/volume\\/vol-(\\S+)$"})
    VolumeARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#VolumeARNs", name: "VolumeARNs")
    VolumeAttachmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VolumeAttachmentStatus", name: "VolumeAttachmentStatus", traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    VolumeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VolumeId", name: "VolumeId", traits: {"smithy.api#length" => {"min" => 12, "max" => 30}})
    VolumeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#VolumeInfo", name: "VolumeInfo")
    VolumeInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#VolumeInfos", name: "VolumeInfos")
    VolumeRecoveryPointInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#VolumeRecoveryPointInfo", name: "VolumeRecoveryPointInfo")
    VolumeRecoveryPointInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.storagegateway#VolumeRecoveryPointInfos", name: "VolumeRecoveryPointInfos")
    VolumeStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VolumeStatus", name: "VolumeStatus", traits: {"smithy.api#length" => {"min" => 3, "max" => 50}})
    VolumeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#VolumeType", name: "VolumeType", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}})
    VolumeUsedInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#VolumeUsedInBytes", name: "VolumeUsedInBytes")
    VolumeiSCSIAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.storagegateway#VolumeiSCSIAttributes", name: "VolumeiSCSIAttributes")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.storagegateway#double", name: "Double", traits: {"smithy.api#default" => 0})
    ErrorDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.storagegateway#errorDetails", name: "ErrorDetails")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#integer", name: "Integer", traits: {"smithy.api#default" => 0})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.storagegateway#long", name: "Long", traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.storagegateway#string", name: "String")

    ActivateGatewayInput.add_member(:activation_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationKey, name: "ActivationKey", traits: {"smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayName, name: "GatewayName", traits: {"smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayTimezone, name: "GatewayTimezone", traits: {"smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionId, name: "GatewayRegion", traits: {"smithy.api#required" => {}}))
    ActivateGatewayInput.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "GatewayType"))
    ActivateGatewayInput.add_member(:tape_drive_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeDriveType, name: "TapeDriveType"))
    ActivateGatewayInput.add_member(:medium_changer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediumChangerType, name: "MediumChangerType"))
    ActivateGatewayInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ActivateGatewayInput.type = Types::ActivateGatewayInput
    ActivateGatewayOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ActivateGatewayOutput.type = Types::ActivateGatewayOutput
    ActiveDirectoryStatus.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ActiveDirectoryStatus.add_member(:detached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHED", traits: {"smithy.api#enumValue" => "DETACHED"}))
    ActiveDirectoryStatus.add_member(:joined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOINED", traits: {"smithy.api#enumValue" => "JOINED"}))
    ActiveDirectoryStatus.add_member(:joining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOINING", traits: {"smithy.api#enumValue" => "JOINING"}))
    ActiveDirectoryStatus.add_member(:network_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_ERROR", traits: {"smithy.api#enumValue" => "NETWORK_ERROR"}))
    ActiveDirectoryStatus.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    ActiveDirectoryStatus.add_member(:unknown_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    ActiveDirectoryStatus.add_member(:insufficient_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_PERMISSIONS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSIONS"}))
    AddCacheInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    AddCacheInput.add_member(:disk_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIds, name: "DiskIds", traits: {"smithy.api#required" => {}}))
    AddCacheInput.type = Types::AddCacheInput
    AddCacheOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    AddCacheOutput.type = Types::AddCacheOutput
    AddTagsToResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToResourceInput.type = Types::AddTagsToResourceInput
    AddTagsToResourceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    AddTagsToResourceOutput.type = Types::AddTagsToResourceOutput
    AddUploadBufferInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    AddUploadBufferInput.add_member(:disk_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIds, name: "DiskIds", traits: {"smithy.api#required" => {}}))
    AddUploadBufferInput.type = Types::AddUploadBufferInput
    AddUploadBufferOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    AddUploadBufferOutput.type = Types::AddUploadBufferOutput
    AddWorkingStorageInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    AddWorkingStorageInput.add_member(:disk_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIds, name: "DiskIds", traits: {"smithy.api#required" => {}}))
    AddWorkingStorageInput.type = Types::AddWorkingStorageInput
    AddWorkingStorageOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    AddWorkingStorageOutput.type = Types::AddWorkingStorageOutput
    AssignTapePoolInput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN", traits: {"smithy.api#required" => {}}))
    AssignTapePoolInput.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolId, name: "PoolId", traits: {"smithy.api#required" => {}}))
    AssignTapePoolInput.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "BypassGovernanceRetention", traits: {"smithy.api#default" => false}))
    AssignTapePoolInput.type = Types::AssignTapePoolInput
    AssignTapePoolOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    AssignTapePoolOutput.type = Types::AssignTapePoolOutput
    AssociateFileSystemInput.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainUserName, name: "UserName", traits: {"smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainUserPassword, name: "Password", traits: {"smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationARN, name: "LocationARN", traits: {"smithy.api#required" => {}}))
    AssociateFileSystemInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    AssociateFileSystemInput.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    AssociateFileSystemInput.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    AssociateFileSystemInput.add_member(:endpoint_network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointNetworkConfiguration, name: "EndpointNetworkConfiguration"))
    AssociateFileSystemInput.type = Types::AssociateFileSystemInput
    AssociateFileSystemOutput.add_member(:file_system_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "FileSystemAssociationARN"))
    AssociateFileSystemOutput.type = Types::AssociateFileSystemOutput
    AttachVolumeInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    AttachVolumeInput.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "TargetName"))
    AttachVolumeInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    AttachVolumeInput.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId", traits: {"smithy.api#required" => {}}))
    AttachVolumeInput.add_member(:disk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskId, name: "DiskId"))
    AttachVolumeInput.type = Types::AttachVolumeInput
    AttachVolumeOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    AttachVolumeOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    AttachVolumeOutput.type = Types::AttachVolumeOutput
    AutomaticTapeCreationPolicyInfo.add_member(:automatic_tape_creation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticTapeCreationRules, name: "AutomaticTapeCreationRules"))
    AutomaticTapeCreationPolicyInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    AutomaticTapeCreationPolicyInfo.type = Types::AutomaticTapeCreationPolicyInfo
    AutomaticTapeCreationPolicyInfos.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticTapeCreationPolicyInfo, name: "member")
    AutomaticTapeCreationRule.add_member(:tape_barcode_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeBarcodePrefix, name: "TapeBarcodePrefix", traits: {"smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolId, name: "PoolId", traits: {"smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:tape_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeSize, name: "TapeSizeInBytes", traits: {"smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:minimum_num_tapes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNumTapes, name: "MinimumNumTapes", traits: {"smithy.api#required" => {}}))
    AutomaticTapeCreationRule.add_member(:worm, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "Worm", traits: {"smithy.api#default" => false}))
    AutomaticTapeCreationRule.type = Types::AutomaticTapeCreationRule
    AutomaticTapeCreationRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticTapeCreationRule, name: "member")
    AutomaticUpdatePolicy.add_member(:all_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_VERSIONS", traits: {"smithy.api#enumValue" => "ALL_VERSIONS"}))
    AutomaticUpdatePolicy.add_member(:emergency_versions_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMERGENCY_VERSIONS_ONLY", traits: {"smithy.api#enumValue" => "EMERGENCY_VERSIONS_ONLY"}))
    AvailabilityMonitorTestStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    AvailabilityMonitorTestStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AvailabilityMonitorTestStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BandwidthRateLimitInterval.add_member(:start_hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "StartHourOfDay", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:start_minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "StartMinuteOfHour", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "EndHourOfDay", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "EndMinuteOfHour", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:days_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DaysOfWeek, name: "DaysOfWeek", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:average_upload_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthUploadRateLimit, name: "AverageUploadRateLimitInBitsPerSec"))
    BandwidthRateLimitInterval.add_member(:average_download_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthDownloadRateLimit, name: "AverageDownloadRateLimitInBitsPerSec"))
    BandwidthRateLimitInterval.type = Types::BandwidthRateLimitInterval
    BandwidthRateLimitIntervals.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthRateLimitInterval, name: "member")
    CacheAttributes.add_member(:cache_stale_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheStaleTimeoutInSeconds, name: "CacheStaleTimeoutInSeconds"))
    CacheAttributes.type = Types::CacheAttributes
    CacheReportFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    CacheReportFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    CacheReportFilter.type = Types::CacheReportFilter
    CacheReportFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilter, name: "member")
    CacheReportFilterName.add_member(:upload_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UploadState", traits: {"smithy.api#enumValue" => "UploadState"}))
    CacheReportFilterName.add_member(:upload_failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UploadFailureReason", traits: {"smithy.api#enumValue" => "UploadFailureReason"}))
    CacheReportFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilterValue, name: "member")
    CacheReportInfo.add_member(:cache_report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportARN, name: "CacheReportARN"))
    CacheReportInfo.add_member(:cache_report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportStatus, name: "CacheReportStatus"))
    CacheReportInfo.add_member(:report_completion_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportCompletionPercent, name: "ReportCompletionPercent"))
    CacheReportInfo.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "EndTime"))
    CacheReportInfo.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role"))
    CacheReportInfo.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    CacheReportInfo.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationARN, name: "LocationARN"))
    CacheReportInfo.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "StartTime"))
    CacheReportInfo.add_member(:inclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilterList, name: "InclusionFilters"))
    CacheReportInfo.add_member(:exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilterList, name: "ExclusionFilters"))
    CacheReportInfo.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportName, name: "ReportName"))
    CacheReportInfo.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CacheReportInfo.type = Types::CacheReportInfo
    CacheReportList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportInfo, name: "member")
    CacheReportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CacheReportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CacheReportStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    CacheReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CacheReportStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    CachediSCSIVolume.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    CachediSCSIVolume.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    CachediSCSIVolume.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeType, name: "VolumeType"))
    CachediSCSIVolume.add_member(:volume_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatus, name: "VolumeStatus"))
    CachediSCSIVolume.add_member(:volume_attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeAttachmentStatus, name: "VolumeAttachmentStatus"))
    CachediSCSIVolume.add_member(:volume_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VolumeSizeInBytes", traits: {"smithy.api#default" => 0}))
    CachediSCSIVolume.add_member(:volume_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject, name: "VolumeProgress"))
    CachediSCSIVolume.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SourceSnapshotId"))
    CachediSCSIVolume.add_member(:volumei_scsi_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeiSCSIAttributes, name: "VolumeiSCSIAttributes"))
    CachediSCSIVolume.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, name: "CreatedDate"))
    CachediSCSIVolume.add_member(:volume_used_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeUsedInBytes, name: "VolumeUsedInBytes"))
    CachediSCSIVolume.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    CachediSCSIVolume.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "TargetName"))
    CachediSCSIVolume.type = Types::CachediSCSIVolume
    CachediSCSIVolumes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CachediSCSIVolume, name: "member")
    CancelArchivalInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CancelArchivalInput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN", traits: {"smithy.api#required" => {}}))
    CancelArchivalInput.type = Types::CancelArchivalInput
    CancelArchivalOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    CancelArchivalOutput.type = Types::CancelArchivalOutput
    CancelCacheReportInput.add_member(:cache_report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportARN, name: "CacheReportARN", traits: {"smithy.api#required" => {}}))
    CancelCacheReportInput.type = Types::CancelCacheReportInput
    CancelCacheReportOutput.add_member(:cache_report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportARN, name: "CacheReportARN"))
    CancelCacheReportOutput.type = Types::CancelCacheReportOutput
    CancelRetrievalInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CancelRetrievalInput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN", traits: {"smithy.api#required" => {}}))
    CancelRetrievalInput.type = Types::CancelRetrievalInput
    CancelRetrievalOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    CancelRetrievalOutput.type = Types::CancelRetrievalOutput
    CaseSensitivity.add_member(:client_specified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClientSpecified", traits: {"smithy.api#enumValue" => "ClientSpecified"}))
    CaseSensitivity.add_member(:case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CaseSensitive", traits: {"smithy.api#enumValue" => "CaseSensitive"}))
    ChapCredentials.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChapInfo, name: "member")
    ChapInfo.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    ChapInfo.add_member(:secret_to_authenticate_initiator, ::Smithy::Schema::Shapes::MemberShape.new(target: ChapSecret, name: "SecretToAuthenticateInitiator"))
    ChapInfo.add_member(:initiator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IqnName, name: "InitiatorName"))
    ChapInfo.add_member(:secret_to_authenticate_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ChapSecret, name: "SecretToAuthenticateTarget"))
    ChapInfo.type = Types::ChapInfo
    CreateCachediSCSIVolumeInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:volume_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VolumeSizeInBytes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    CreateCachediSCSIVolumeInput.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "TargetName", traits: {"smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:source_volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "SourceVolumeARN"))
    CreateCachediSCSIVolumeInput.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId", traits: {"smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateCachediSCSIVolumeInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted"))
    CreateCachediSCSIVolumeInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    CreateCachediSCSIVolumeInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateCachediSCSIVolumeInput.type = Types::CreateCachediSCSIVolumeInput
    CreateCachediSCSIVolumeOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    CreateCachediSCSIVolumeOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    CreateCachediSCSIVolumeOutput.type = Types::CreateCachediSCSIVolumeOutput
    CreateNFSFileShareInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:nfs_file_share_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: NFSFileShareDefaults, name: "NFSFileShareDefaults"))
    CreateNFSFileShareInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    CreateNFSFileShareInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted", traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}}))
    CreateNFSFileShareInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    CreateNFSFileShareInput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role", traits: {"smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationARN, name: "LocationARN", traits: {"smithy.api#required" => {}}))
    CreateNFSFileShareInput.add_member(:default_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "DefaultStorageClass"))
    CreateNFSFileShareInput.add_member(:object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectACL, name: "ObjectACL"))
    CreateNFSFileShareInput.add_member(:client_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareClientList, name: "ClientList"))
    CreateNFSFileShareInput.add_member(:squash, ::Smithy::Schema::Shapes::MemberShape.new(target: Squash, name: "Squash"))
    CreateNFSFileShareInput.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReadOnly"))
    CreateNFSFileShareInput.add_member(:guess_mime_type_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "GuessMIMETypeEnabled"))
    CreateNFSFileShareInput.add_member(:requester_pays, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterPays"))
    CreateNFSFileShareInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateNFSFileShareInput.add_member(:file_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareName, name: "FileShareName"))
    CreateNFSFileShareInput.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    CreateNFSFileShareInput.add_member(:notification_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationPolicy, name: "NotificationPolicy"))
    CreateNFSFileShareInput.add_member(:vpc_endpoint_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSHostName, name: "VPCEndpointDNSName"))
    CreateNFSFileShareInput.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionId, name: "BucketRegion"))
    CreateNFSFileShareInput.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    CreateNFSFileShareInput.type = Types::CreateNFSFileShareInput
    CreateNFSFileShareOutput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    CreateNFSFileShareOutput.type = Types::CreateNFSFileShareOutput
    CreateSMBFileShareInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    CreateSMBFileShareInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted", traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}}))
    CreateSMBFileShareInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    CreateSMBFileShareInput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role", traits: {"smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationARN, name: "LocationARN", traits: {"smithy.api#required" => {}}))
    CreateSMBFileShareInput.add_member(:default_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "DefaultStorageClass"))
    CreateSMBFileShareInput.add_member(:object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectACL, name: "ObjectACL"))
    CreateSMBFileShareInput.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReadOnly"))
    CreateSMBFileShareInput.add_member(:guess_mime_type_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "GuessMIMETypeEnabled"))
    CreateSMBFileShareInput.add_member(:requester_pays, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterPays"))
    CreateSMBFileShareInput.add_member(:smbacl_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SMBACLEnabled"))
    CreateSMBFileShareInput.add_member(:access_based_enumeration, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AccessBasedEnumeration"))
    CreateSMBFileShareInput.add_member(:admin_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "AdminUserList"))
    CreateSMBFileShareInput.add_member(:valid_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "ValidUserList"))
    CreateSMBFileShareInput.add_member(:invalid_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "InvalidUserList"))
    CreateSMBFileShareInput.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    CreateSMBFileShareInput.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, name: "Authentication"))
    CreateSMBFileShareInput.add_member(:case_sensitivity, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseSensitivity, name: "CaseSensitivity"))
    CreateSMBFileShareInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateSMBFileShareInput.add_member(:file_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareName, name: "FileShareName"))
    CreateSMBFileShareInput.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    CreateSMBFileShareInput.add_member(:notification_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationPolicy, name: "NotificationPolicy"))
    CreateSMBFileShareInput.add_member(:vpc_endpoint_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSHostName, name: "VPCEndpointDNSName"))
    CreateSMBFileShareInput.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionId, name: "BucketRegion"))
    CreateSMBFileShareInput.add_member(:oplocks_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OplocksEnabled"))
    CreateSMBFileShareInput.type = Types::CreateSMBFileShareInput
    CreateSMBFileShareOutput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    CreateSMBFileShareOutput.type = Types::CreateSMBFileShareOutput
    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:snapshot_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotDescription, name: "SnapshotDescription", traits: {"smithy.api#required" => {}}))
    CreateSnapshotFromVolumeRecoveryPointInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateSnapshotFromVolumeRecoveryPointInput.type = Types::CreateSnapshotFromVolumeRecoveryPointInput
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    CreateSnapshotFromVolumeRecoveryPointOutput.add_member(:volume_recovery_point_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VolumeRecoveryPointTime"))
    CreateSnapshotFromVolumeRecoveryPointOutput.type = Types::CreateSnapshotFromVolumeRecoveryPointOutput
    CreateSnapshotInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    CreateSnapshotInput.add_member(:snapshot_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotDescription, name: "SnapshotDescription", traits: {"smithy.api#required" => {}}))
    CreateSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateSnapshotInput.type = Types::CreateSnapshotInput
    CreateSnapshotOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    CreateSnapshotOutput.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    CreateSnapshotOutput.type = Types::CreateSnapshotOutput
    CreateStorediSCSIVolumeInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:disk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskId, name: "DiskId", traits: {"smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SnapshotId"))
    CreateStorediSCSIVolumeInput.add_member(:preserve_existing_data, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "PreserveExistingData", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "TargetName", traits: {"smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId", traits: {"smithy.api#required" => {}}))
    CreateStorediSCSIVolumeInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted"))
    CreateStorediSCSIVolumeInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    CreateStorediSCSIVolumeInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateStorediSCSIVolumeInput.type = Types::CreateStorediSCSIVolumeInput
    CreateStorediSCSIVolumeOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    CreateStorediSCSIVolumeOutput.add_member(:volume_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VolumeSizeInBytes", traits: {"smithy.api#default" => 0}))
    CreateStorediSCSIVolumeOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    CreateStorediSCSIVolumeOutput.type = Types::CreateStorediSCSIVolumeOutput
    CreateTapePoolInput.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#required" => {}}))
    CreateTapePoolInput.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeStorageClass, name: "StorageClass", traits: {"smithy.api#required" => {}}))
    CreateTapePoolInput.add_member(:retention_lock_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionLockType, name: "RetentionLockType"))
    CreateTapePoolInput.add_member(:retention_lock_time_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionLockTimeInDays, name: "RetentionLockTimeInDays"))
    CreateTapePoolInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateTapePoolInput.type = Types::CreateTapePoolInput
    CreateTapePoolOutput.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolARN, name: "PoolARN"))
    CreateTapePoolOutput.type = Types::CreateTapePoolOutput
    CreateTapeWithBarcodeInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CreateTapeWithBarcodeInput.add_member(:tape_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeSize, name: "TapeSizeInBytes", traits: {"smithy.api#required" => {}}))
    CreateTapeWithBarcodeInput.add_member(:tape_barcode, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeBarcode, name: "TapeBarcode", traits: {"smithy.api#required" => {}}))
    CreateTapeWithBarcodeInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted"))
    CreateTapeWithBarcodeInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    CreateTapeWithBarcodeInput.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolId, name: "PoolId"))
    CreateTapeWithBarcodeInput.add_member(:worm, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "Worm", traits: {"smithy.api#default" => false}))
    CreateTapeWithBarcodeInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateTapeWithBarcodeInput.type = Types::CreateTapeWithBarcodeInput
    CreateTapeWithBarcodeOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    CreateTapeWithBarcodeOutput.type = Types::CreateTapeWithBarcodeOutput
    CreateTapesInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    CreateTapesInput.add_member(:tape_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeSize, name: "TapeSizeInBytes", traits: {"smithy.api#required" => {}}))
    CreateTapesInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateTapesInput.add_member(:num_tapes_to_create, ::Smithy::Schema::Shapes::MemberShape.new(target: NumTapesToCreate, name: "NumTapesToCreate", traits: {"smithy.api#required" => {}}))
    CreateTapesInput.add_member(:tape_barcode_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeBarcodePrefix, name: "TapeBarcodePrefix", traits: {"smithy.api#required" => {}}))
    CreateTapesInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted"))
    CreateTapesInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    CreateTapesInput.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolId, name: "PoolId"))
    CreateTapesInput.add_member(:worm, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "Worm", traits: {"smithy.api#default" => false}))
    CreateTapesInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateTapesInput.type = Types::CreateTapesInput
    CreateTapesOutput.add_member(:tape_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARNs, name: "TapeARNs"))
    CreateTapesOutput.type = Types::CreateTapesOutput
    DaysOfWeek.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "member")
    DeleteAutomaticTapeCreationPolicyInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DeleteAutomaticTapeCreationPolicyInput.type = Types::DeleteAutomaticTapeCreationPolicyInput
    DeleteAutomaticTapeCreationPolicyOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DeleteAutomaticTapeCreationPolicyOutput.type = Types::DeleteAutomaticTapeCreationPolicyOutput
    DeleteBandwidthRateLimitInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DeleteBandwidthRateLimitInput.add_member(:bandwidth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthType, name: "BandwidthType", traits: {"smithy.api#required" => {}}))
    DeleteBandwidthRateLimitInput.type = Types::DeleteBandwidthRateLimitInput
    DeleteBandwidthRateLimitOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DeleteBandwidthRateLimitOutput.type = Types::DeleteBandwidthRateLimitOutput
    DeleteCacheReportInput.add_member(:cache_report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportARN, name: "CacheReportARN", traits: {"smithy.api#required" => {}}))
    DeleteCacheReportInput.type = Types::DeleteCacheReportInput
    DeleteCacheReportOutput.add_member(:cache_report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportARN, name: "CacheReportARN"))
    DeleteCacheReportOutput.type = Types::DeleteCacheReportOutput
    DeleteChapCredentialsInput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN", traits: {"smithy.api#required" => {}}))
    DeleteChapCredentialsInput.add_member(:initiator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IqnName, name: "InitiatorName", traits: {"smithy.api#required" => {}}))
    DeleteChapCredentialsInput.type = Types::DeleteChapCredentialsInput
    DeleteChapCredentialsOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    DeleteChapCredentialsOutput.add_member(:initiator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IqnName, name: "InitiatorName"))
    DeleteChapCredentialsOutput.type = Types::DeleteChapCredentialsOutput
    DeleteFileShareInput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN", traits: {"smithy.api#required" => {}}))
    DeleteFileShareInput.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "ForceDelete", traits: {"smithy.api#default" => false}))
    DeleteFileShareInput.type = Types::DeleteFileShareInput
    DeleteFileShareOutput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    DeleteFileShareOutput.type = Types::DeleteFileShareOutput
    DeleteGatewayInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DeleteGatewayInput.type = Types::DeleteGatewayInput
    DeleteGatewayOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DeleteGatewayOutput.type = Types::DeleteGatewayOutput
    DeleteSnapshotScheduleInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    DeleteSnapshotScheduleInput.type = Types::DeleteSnapshotScheduleInput
    DeleteSnapshotScheduleOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    DeleteSnapshotScheduleOutput.type = Types::DeleteSnapshotScheduleOutput
    DeleteTapeArchiveInput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN", traits: {"smithy.api#required" => {}}))
    DeleteTapeArchiveInput.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "BypassGovernanceRetention", traits: {"smithy.api#default" => false}))
    DeleteTapeArchiveInput.type = Types::DeleteTapeArchiveInput
    DeleteTapeArchiveOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    DeleteTapeArchiveOutput.type = Types::DeleteTapeArchiveOutput
    DeleteTapeInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DeleteTapeInput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN", traits: {"smithy.api#required" => {}}))
    DeleteTapeInput.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "BypassGovernanceRetention", traits: {"smithy.api#default" => false}))
    DeleteTapeInput.type = Types::DeleteTapeInput
    DeleteTapeOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    DeleteTapeOutput.type = Types::DeleteTapeOutput
    DeleteTapePoolInput.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolARN, name: "PoolARN", traits: {"smithy.api#required" => {}}))
    DeleteTapePoolInput.type = Types::DeleteTapePoolInput
    DeleteTapePoolOutput.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolARN, name: "PoolARN"))
    DeleteTapePoolOutput.type = Types::DeleteTapePoolOutput
    DeleteVolumeInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    DeleteVolumeInput.type = Types::DeleteVolumeInput
    DeleteVolumeOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    DeleteVolumeOutput.type = Types::DeleteVolumeOutput
    DescribeAvailabilityMonitorTestInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeAvailabilityMonitorTestInput.type = Types::DescribeAvailabilityMonitorTestInput
    DescribeAvailabilityMonitorTestOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeAvailabilityMonitorTestOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityMonitorTestStatus, name: "Status"))
    DescribeAvailabilityMonitorTestOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "StartTime"))
    DescribeAvailabilityMonitorTestOutput.type = Types::DescribeAvailabilityMonitorTestOutput
    DescribeBandwidthRateLimitInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeBandwidthRateLimitInput.type = Types::DescribeBandwidthRateLimitInput
    DescribeBandwidthRateLimitOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeBandwidthRateLimitOutput.add_member(:average_upload_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthUploadRateLimit, name: "AverageUploadRateLimitInBitsPerSec"))
    DescribeBandwidthRateLimitOutput.add_member(:average_download_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthDownloadRateLimit, name: "AverageDownloadRateLimitInBitsPerSec"))
    DescribeBandwidthRateLimitOutput.type = Types::DescribeBandwidthRateLimitOutput
    DescribeBandwidthRateLimitScheduleInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeBandwidthRateLimitScheduleInput.type = Types::DescribeBandwidthRateLimitScheduleInput
    DescribeBandwidthRateLimitScheduleOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeBandwidthRateLimitScheduleOutput.add_member(:bandwidth_rate_limit_intervals, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthRateLimitIntervals, name: "BandwidthRateLimitIntervals"))
    DescribeBandwidthRateLimitScheduleOutput.type = Types::DescribeBandwidthRateLimitScheduleOutput
    DescribeCacheInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeCacheInput.type = Types::DescribeCacheInput
    DescribeCacheOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeCacheOutput.add_member(:disk_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIds, name: "DiskIds"))
    DescribeCacheOutput.add_member(:cache_allocated_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CacheAllocatedInBytes", traits: {"smithy.api#default" => 0}))
    DescribeCacheOutput.add_member(:cache_used_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "CacheUsedPercentage", traits: {"smithy.api#default" => 0}))
    DescribeCacheOutput.add_member(:cache_dirty_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "CacheDirtyPercentage", traits: {"smithy.api#default" => 0}))
    DescribeCacheOutput.add_member(:cache_hit_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "CacheHitPercentage", traits: {"smithy.api#default" => 0}))
    DescribeCacheOutput.add_member(:cache_miss_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "CacheMissPercentage", traits: {"smithy.api#default" => 0}))
    DescribeCacheOutput.type = Types::DescribeCacheOutput
    DescribeCacheReportInput.add_member(:cache_report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportARN, name: "CacheReportARN", traits: {"smithy.api#required" => {}}))
    DescribeCacheReportInput.type = Types::DescribeCacheReportInput
    DescribeCacheReportOutput.add_member(:cache_report_info, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportInfo, name: "CacheReportInfo"))
    DescribeCacheReportOutput.type = Types::DescribeCacheReportOutput
    DescribeCachediSCSIVolumesInput.add_member(:volume_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARNs, name: "VolumeARNs", traits: {"smithy.api#required" => {}}))
    DescribeCachediSCSIVolumesInput.type = Types::DescribeCachediSCSIVolumesInput
    DescribeCachediSCSIVolumesOutput.add_member(:cachedi_scsi_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: CachediSCSIVolumes, name: "CachediSCSIVolumes"))
    DescribeCachediSCSIVolumesOutput.type = Types::DescribeCachediSCSIVolumesOutput
    DescribeChapCredentialsInput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN", traits: {"smithy.api#required" => {}}))
    DescribeChapCredentialsInput.type = Types::DescribeChapCredentialsInput
    DescribeChapCredentialsOutput.add_member(:chap_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ChapCredentials, name: "ChapCredentials"))
    DescribeChapCredentialsOutput.type = Types::DescribeChapCredentialsOutput
    DescribeFileSystemAssociationsInput.add_member(:file_system_association_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARNList, name: "FileSystemAssociationARNList", traits: {"smithy.api#required" => {}}))
    DescribeFileSystemAssociationsInput.type = Types::DescribeFileSystemAssociationsInput
    DescribeFileSystemAssociationsOutput.add_member(:file_system_association_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationInfoList, name: "FileSystemAssociationInfoList"))
    DescribeFileSystemAssociationsOutput.type = Types::DescribeFileSystemAssociationsOutput
    DescribeGatewayInformationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeGatewayInformationInput.type = Types::DescribeGatewayInformationInput
    DescribeGatewayInformationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeGatewayInformationOutput.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "GatewayId"))
    DescribeGatewayInformationOutput.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GatewayName"))
    DescribeGatewayInformationOutput.add_member(:gateway_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayTimezone, name: "GatewayTimezone"))
    DescribeGatewayInformationOutput.add_member(:gateway_state, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayState, name: "GatewayState"))
    DescribeGatewayInformationOutput.add_member(:gateway_network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayNetworkInterfaces, name: "GatewayNetworkInterfaces"))
    DescribeGatewayInformationOutput.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "GatewayType"))
    DescribeGatewayInformationOutput.add_member(:next_update_availability_date, ::Smithy::Schema::Shapes::MemberShape.new(target: NextUpdateAvailabilityDate, name: "NextUpdateAvailabilityDate"))
    DescribeGatewayInformationOutput.add_member(:last_software_update, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSoftwareUpdate, name: "LastSoftwareUpdate"))
    DescribeGatewayInformationOutput.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceId, name: "Ec2InstanceId"))
    DescribeGatewayInformationOutput.add_member(:ec2_instance_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceRegion, name: "Ec2InstanceRegion"))
    DescribeGatewayInformationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DescribeGatewayInformationOutput.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VPCEndpoint"))
    DescribeGatewayInformationOutput.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupARN, name: "CloudWatchLogGroupARN"))
    DescribeGatewayInformationOutput.add_member(:host_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: HostEnvironment, name: "HostEnvironment"))
    DescribeGatewayInformationOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "EndpointType"))
    DescribeGatewayInformationOutput.add_member(:software_updates_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareUpdatesEndDate, name: "SoftwareUpdatesEndDate"))
    DescribeGatewayInformationOutput.add_member(:deprecation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecationDate, name: "DeprecationDate"))
    DescribeGatewayInformationOutput.add_member(:gateway_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayCapacity, name: "GatewayCapacity"))
    DescribeGatewayInformationOutput.add_member(:supported_gateway_capacities, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedGatewayCapacities, name: "SupportedGatewayCapacities"))
    DescribeGatewayInformationOutput.add_member(:host_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostEnvironmentId, name: "HostEnvironmentId"))
    DescribeGatewayInformationOutput.add_member(:software_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareVersion, name: "SoftwareVersion"))
    DescribeGatewayInformationOutput.type = Types::DescribeGatewayInformationOutput
    DescribeMaintenanceStartTimeInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeMaintenanceStartTimeInput.type = Types::DescribeMaintenanceStartTimeInput
    DescribeMaintenanceStartTimeOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeMaintenanceStartTimeOutput.add_member(:hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "HourOfDay"))
    DescribeMaintenanceStartTimeOutput.add_member(:minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "MinuteOfHour"))
    DescribeMaintenanceStartTimeOutput.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "DayOfWeek"))
    DescribeMaintenanceStartTimeOutput.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfMonth, name: "DayOfMonth"))
    DescribeMaintenanceStartTimeOutput.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayTimezone, name: "Timezone"))
    DescribeMaintenanceStartTimeOutput.add_member(:software_update_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareUpdatePreferences, name: "SoftwareUpdatePreferences"))
    DescribeMaintenanceStartTimeOutput.type = Types::DescribeMaintenanceStartTimeOutput
    DescribeNFSFileSharesInput.add_member(:file_share_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARNList, name: "FileShareARNList", traits: {"smithy.api#required" => {}}))
    DescribeNFSFileSharesInput.type = Types::DescribeNFSFileSharesInput
    DescribeNFSFileSharesOutput.add_member(:nfs_file_share_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: NFSFileShareInfoList, name: "NFSFileShareInfoList"))
    DescribeNFSFileSharesOutput.type = Types::DescribeNFSFileSharesOutput
    DescribeSMBFileSharesInput.add_member(:file_share_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARNList, name: "FileShareARNList", traits: {"smithy.api#required" => {}}))
    DescribeSMBFileSharesInput.type = Types::DescribeSMBFileSharesInput
    DescribeSMBFileSharesOutput.add_member(:smb_file_share_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SMBFileShareInfoList, name: "SMBFileShareInfoList"))
    DescribeSMBFileSharesOutput.type = Types::DescribeSMBFileSharesOutput
    DescribeSMBSettingsInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeSMBSettingsInput.type = Types::DescribeSMBSettingsInput
    DescribeSMBSettingsOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeSMBSettingsOutput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName"))
    DescribeSMBSettingsOutput.add_member(:active_directory_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryStatus, name: "ActiveDirectoryStatus"))
    DescribeSMBSettingsOutput.add_member(:smb_guest_password_set, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SMBGuestPasswordSet"))
    DescribeSMBSettingsOutput.add_member(:smb_security_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SMBSecurityStrategy, name: "SMBSecurityStrategy"))
    DescribeSMBSettingsOutput.add_member(:file_shares_visible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FileSharesVisible"))
    DescribeSMBSettingsOutput.add_member(:smb_local_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SMBLocalGroups, name: "SMBLocalGroups"))
    DescribeSMBSettingsOutput.type = Types::DescribeSMBSettingsOutput
    DescribeSnapshotScheduleInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    DescribeSnapshotScheduleInput.type = Types::DescribeSnapshotScheduleInput
    DescribeSnapshotScheduleOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    DescribeSnapshotScheduleOutput.add_member(:start_at, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "StartAt"))
    DescribeSnapshotScheduleOutput.add_member(:recurrence_in_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurrenceInHours, name: "RecurrenceInHours"))
    DescribeSnapshotScheduleOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeSnapshotScheduleOutput.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayTimezone, name: "Timezone"))
    DescribeSnapshotScheduleOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DescribeSnapshotScheduleOutput.type = Types::DescribeSnapshotScheduleOutput
    DescribeStorediSCSIVolumesInput.add_member(:volume_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARNs, name: "VolumeARNs", traits: {"smithy.api#required" => {}}))
    DescribeStorediSCSIVolumesInput.type = Types::DescribeStorediSCSIVolumesInput
    DescribeStorediSCSIVolumesOutput.add_member(:storedi_scsi_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: StorediSCSIVolumes, name: "StorediSCSIVolumes"))
    DescribeStorediSCSIVolumesOutput.type = Types::DescribeStorediSCSIVolumesOutput
    DescribeTapeArchivesInput.add_member(:tape_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARNs, name: "TapeARNs"))
    DescribeTapeArchivesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeTapeArchivesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    DescribeTapeArchivesInput.type = Types::DescribeTapeArchivesInput
    DescribeTapeArchivesOutput.add_member(:tape_archives, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeArchives, name: "TapeArchives"))
    DescribeTapeArchivesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeTapeArchivesOutput.type = Types::DescribeTapeArchivesOutput
    DescribeTapeRecoveryPointsInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeTapeRecoveryPointsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeTapeRecoveryPointsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    DescribeTapeRecoveryPointsInput.type = Types::DescribeTapeRecoveryPointsInput
    DescribeTapeRecoveryPointsOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeTapeRecoveryPointsOutput.add_member(:tape_recovery_point_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeRecoveryPointInfos, name: "TapeRecoveryPointInfos"))
    DescribeTapeRecoveryPointsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeTapeRecoveryPointsOutput.type = Types::DescribeTapeRecoveryPointsOutput
    DescribeTapesInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeTapesInput.add_member(:tape_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARNs, name: "TapeARNs"))
    DescribeTapesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeTapesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    DescribeTapesInput.type = Types::DescribeTapesInput
    DescribeTapesOutput.add_member(:tapes, ::Smithy::Schema::Shapes::MemberShape.new(target: Tapes, name: "Tapes"))
    DescribeTapesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeTapesOutput.type = Types::DescribeTapesOutput
    DescribeUploadBufferInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeUploadBufferInput.type = Types::DescribeUploadBufferInput
    DescribeUploadBufferOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeUploadBufferOutput.add_member(:disk_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIds, name: "DiskIds"))
    DescribeUploadBufferOutput.add_member(:upload_buffer_used_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "UploadBufferUsedInBytes", traits: {"smithy.api#default" => 0}))
    DescribeUploadBufferOutput.add_member(:upload_buffer_allocated_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "UploadBufferAllocatedInBytes", traits: {"smithy.api#default" => 0}))
    DescribeUploadBufferOutput.type = Types::DescribeUploadBufferOutput
    DescribeVTLDevicesInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeVTLDevicesInput.add_member(:vtl_device_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceARNs, name: "VTLDeviceARNs"))
    DescribeVTLDevicesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeVTLDevicesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    DescribeVTLDevicesInput.type = Types::DescribeVTLDevicesInput
    DescribeVTLDevicesOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeVTLDevicesOutput.add_member(:vtl_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDevices, name: "VTLDevices"))
    DescribeVTLDevicesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeVTLDevicesOutput.type = Types::DescribeVTLDevicesOutput
    DescribeWorkingStorageInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DescribeWorkingStorageInput.type = Types::DescribeWorkingStorageInput
    DescribeWorkingStorageOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DescribeWorkingStorageOutput.add_member(:disk_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskIds, name: "DiskIds"))
    DescribeWorkingStorageOutput.add_member(:working_storage_used_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "WorkingStorageUsedInBytes", traits: {"smithy.api#default" => 0}))
    DescribeWorkingStorageOutput.add_member(:working_storage_allocated_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "WorkingStorageAllocatedInBytes", traits: {"smithy.api#default" => 0}))
    DescribeWorkingStorageOutput.type = Types::DescribeWorkingStorageOutput
    DetachVolumeInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    DetachVolumeInput.add_member(:force_detach, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ForceDetach"))
    DetachVolumeInput.type = Types::DetachVolumeInput
    DetachVolumeOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    DetachVolumeOutput.type = Types::DetachVolumeOutput
    DeviceiSCSIAttributes.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    DeviceiSCSIAttributes.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId"))
    DeviceiSCSIAttributes.add_member(:network_interface_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NetworkInterfacePort", traits: {"smithy.api#default" => 0}))
    DeviceiSCSIAttributes.add_member(:chap_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "ChapEnabled", traits: {"smithy.api#default" => false}))
    DeviceiSCSIAttributes.type = Types::DeviceiSCSIAttributes
    DisableGatewayInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    DisableGatewayInput.type = Types::DisableGatewayInput
    DisableGatewayOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    DisableGatewayOutput.type = Types::DisableGatewayOutput
    DisassociateFileSystemInput.add_member(:file_system_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "FileSystemAssociationARN", traits: {"smithy.api#required" => {}}))
    DisassociateFileSystemInput.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "ForceDelete", traits: {"smithy.api#default" => false}))
    DisassociateFileSystemInput.type = Types::DisassociateFileSystemInput
    DisassociateFileSystemOutput.add_member(:file_system_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "FileSystemAssociationARN"))
    DisassociateFileSystemOutput.type = Types::DisassociateFileSystemOutput
    Disk.add_member(:disk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskId, name: "DiskId"))
    Disk.add_member(:disk_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiskPath"))
    Disk.add_member(:disk_node, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiskNode"))
    Disk.add_member(:disk_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiskStatus"))
    Disk.add_member(:disk_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DiskSizeInBytes", traits: {"smithy.api#default" => 0}))
    Disk.add_member(:disk_allocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskAllocationType, name: "DiskAllocationType"))
    Disk.add_member(:disk_allocation_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiskAllocationResource"))
    Disk.add_member(:disk_attribute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskAttributeList, name: "DiskAttributeList"))
    Disk.type = Types::Disk
    DiskAttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiskAttribute, name: "member")
    DiskIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiskId, name: "member")
    Disks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Disk, name: "member")
    EncryptionType.add_member(:sse_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SseS3", traits: {"smithy.api#enumValue" => "SseS3"}))
    EncryptionType.add_member(:sse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SseKms", traits: {"smithy.api#enumValue" => "SseKms"}))
    EncryptionType.add_member(:dsse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DsseKms", traits: {"smithy.api#enumValue" => "DsseKms"}))
    EndpointNetworkConfiguration.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressList, name: "IpAddresses"))
    EndpointNetworkConfiguration.type = Types::EndpointNetworkConfiguration
    ErrorCode.add_member(:activation_key_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivationKeyExpired", traits: {"smithy.api#enumValue" => "ActivationKeyExpired"}))
    ErrorCode.add_member(:activation_key_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivationKeyInvalid", traits: {"smithy.api#enumValue" => "ActivationKeyInvalid"}))
    ErrorCode.add_member(:activation_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActivationKeyNotFound", traits: {"smithy.api#enumValue" => "ActivationKeyNotFound"}))
    ErrorCode.add_member(:gateway_internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayInternalError", traits: {"smithy.api#enumValue" => "GatewayInternalError"}))
    ErrorCode.add_member(:gateway_not_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayNotConnected", traits: {"smithy.api#enumValue" => "GatewayNotConnected"}))
    ErrorCode.add_member(:gateway_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayNotFound", traits: {"smithy.api#enumValue" => "GatewayNotFound"}))
    ErrorCode.add_member(:gateway_proxy_network_connection_busy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayProxyNetworkConnectionBusy", traits: {"smithy.api#enumValue" => "GatewayProxyNetworkConnectionBusy"}))
    ErrorCode.add_member(:authentication_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AuthenticationFailure", traits: {"smithy.api#enumValue" => "AuthenticationFailure"}))
    ErrorCode.add_member(:bandwidth_throttle_schedule_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BandwidthThrottleScheduleNotFound", traits: {"smithy.api#enumValue" => "BandwidthThrottleScheduleNotFound"}))
    ErrorCode.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Blocked", traits: {"smithy.api#enumValue" => "Blocked"}))
    ErrorCode.add_member(:cannot_export_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CannotExportSnapshot", traits: {"smithy.api#enumValue" => "CannotExportSnapshot"}))
    ErrorCode.add_member(:chap_credential_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChapCredentialNotFound", traits: {"smithy.api#enumValue" => "ChapCredentialNotFound"}))
    ErrorCode.add_member(:disk_already_allocated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskAlreadyAllocated", traits: {"smithy.api#enumValue" => "DiskAlreadyAllocated"}))
    ErrorCode.add_member(:disk_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskDoesNotExist", traits: {"smithy.api#enumValue" => "DiskDoesNotExist"}))
    ErrorCode.add_member(:disk_size_greater_than_volume_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskSizeGreaterThanVolumeMaxSize", traits: {"smithy.api#enumValue" => "DiskSizeGreaterThanVolumeMaxSize"}))
    ErrorCode.add_member(:disk_size_less_than_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskSizeLessThanVolumeSize", traits: {"smithy.api#enumValue" => "DiskSizeLessThanVolumeSize"}))
    ErrorCode.add_member(:disk_size_not_gig_aligned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiskSizeNotGigAligned", traits: {"smithy.api#enumValue" => "DiskSizeNotGigAligned"}))
    ErrorCode.add_member(:duplicate_certificate_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DuplicateCertificateInfo", traits: {"smithy.api#enumValue" => "DuplicateCertificateInfo"}))
    ErrorCode.add_member(:duplicate_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DuplicateSchedule", traits: {"smithy.api#enumValue" => "DuplicateSchedule"}))
    ErrorCode.add_member(:endpoint_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EndpointNotFound", traits: {"smithy.api#enumValue" => "EndpointNotFound"}))
    ErrorCode.add_member(:iam_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAMNotSupported", traits: {"smithy.api#enumValue" => "IAMNotSupported"}))
    ErrorCode.add_member(:initiator_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InitiatorInvalid", traits: {"smithy.api#enumValue" => "InitiatorInvalid"}))
    ErrorCode.add_member(:initiator_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InitiatorNotFound", traits: {"smithy.api#enumValue" => "InitiatorNotFound"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "InternalError"}))
    ErrorCode.add_member(:invalid_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidGateway", traits: {"smithy.api#enumValue" => "InvalidGateway"}))
    ErrorCode.add_member(:invalid_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidEndpoint", traits: {"smithy.api#enumValue" => "InvalidEndpoint"}))
    ErrorCode.add_member(:invalid_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidParameters", traits: {"smithy.api#enumValue" => "InvalidParameters"}))
    ErrorCode.add_member(:invalid_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSchedule", traits: {"smithy.api#enumValue" => "InvalidSchedule"}))
    ErrorCode.add_member(:local_storage_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocalStorageLimitExceeded", traits: {"smithy.api#enumValue" => "LocalStorageLimitExceeded"}))
    ErrorCode.add_member(:lun_already_allocated_, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LunAlreadyAllocated_", traits: {"smithy.api#enumValue" => "LunAlreadyAllocated "}))
    ErrorCode.add_member(:lun_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LunInvalid", traits: {"smithy.api#enumValue" => "LunInvalid"}))
    ErrorCode.add_member(:join_domain_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JoinDomainInProgress", traits: {"smithy.api#enumValue" => "JoinDomainInProgress"}))
    ErrorCode.add_member(:maximum_content_length_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MaximumContentLengthExceeded", traits: {"smithy.api#enumValue" => "MaximumContentLengthExceeded"}))
    ErrorCode.add_member(:maximum_tape_cartridge_count_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MaximumTapeCartridgeCountExceeded", traits: {"smithy.api#enumValue" => "MaximumTapeCartridgeCountExceeded"}))
    ErrorCode.add_member(:maximum_volume_count_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MaximumVolumeCountExceeded", traits: {"smithy.api#enumValue" => "MaximumVolumeCountExceeded"}))
    ErrorCode.add_member(:network_configuration_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkConfigurationChanged", traits: {"smithy.api#enumValue" => "NetworkConfigurationChanged"}))
    ErrorCode.add_member(:no_disks_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoDisksAvailable", traits: {"smithy.api#enumValue" => "NoDisksAvailable"}))
    ErrorCode.add_member(:not_implemented, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotImplemented", traits: {"smithy.api#enumValue" => "NotImplemented"}))
    ErrorCode.add_member(:not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotSupported", traits: {"smithy.api#enumValue" => "NotSupported"}))
    ErrorCode.add_member(:operation_aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OperationAborted", traits: {"smithy.api#enumValue" => "OperationAborted"}))
    ErrorCode.add_member(:outdated_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OutdatedGateway", traits: {"smithy.api#enumValue" => "OutdatedGateway"}))
    ErrorCode.add_member(:parameters_not_implemented, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ParametersNotImplemented", traits: {"smithy.api#enumValue" => "ParametersNotImplemented"}))
    ErrorCode.add_member(:region_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegionInvalid", traits: {"smithy.api#enumValue" => "RegionInvalid"}))
    ErrorCode.add_member(:request_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestTimeout", traits: {"smithy.api#enumValue" => "RequestTimeout"}))
    ErrorCode.add_member(:service_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceUnavailable", traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:snapshot_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SnapshotDeleted", traits: {"smithy.api#enumValue" => "SnapshotDeleted"}))
    ErrorCode.add_member(:snapshot_id_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SnapshotIdInvalid", traits: {"smithy.api#enumValue" => "SnapshotIdInvalid"}))
    ErrorCode.add_member(:snapshot_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SnapshotInProgress", traits: {"smithy.api#enumValue" => "SnapshotInProgress"}))
    ErrorCode.add_member(:snapshot_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SnapshotNotFound", traits: {"smithy.api#enumValue" => "SnapshotNotFound"}))
    ErrorCode.add_member(:snapshot_schedule_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SnapshotScheduleNotFound", traits: {"smithy.api#enumValue" => "SnapshotScheduleNotFound"}))
    ErrorCode.add_member(:staging_area_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StagingAreaFull", traits: {"smithy.api#enumValue" => "StagingAreaFull"}))
    ErrorCode.add_member(:storage_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StorageFailure", traits: {"smithy.api#enumValue" => "StorageFailure"}))
    ErrorCode.add_member(:tape_cartridge_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TapeCartridgeNotFound", traits: {"smithy.api#enumValue" => "TapeCartridgeNotFound"}))
    ErrorCode.add_member(:target_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TargetAlreadyExists", traits: {"smithy.api#enumValue" => "TargetAlreadyExists"}))
    ErrorCode.add_member(:target_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TargetInvalid", traits: {"smithy.api#enumValue" => "TargetInvalid"}))
    ErrorCode.add_member(:target_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TargetNotFound", traits: {"smithy.api#enumValue" => "TargetNotFound"}))
    ErrorCode.add_member(:unauthorized_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnauthorizedOperation", traits: {"smithy.api#enumValue" => "UnauthorizedOperation"}))
    ErrorCode.add_member(:volume_already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VolumeAlreadyExists", traits: {"smithy.api#enumValue" => "VolumeAlreadyExists"}))
    ErrorCode.add_member(:volume_id_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VolumeIdInvalid", traits: {"smithy.api#enumValue" => "VolumeIdInvalid"}))
    ErrorCode.add_member(:volume_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VolumeInUse", traits: {"smithy.api#enumValue" => "VolumeInUse"}))
    ErrorCode.add_member(:volume_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VolumeNotFound", traits: {"smithy.api#enumValue" => "VolumeNotFound"}))
    ErrorCode.add_member(:volume_not_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VolumeNotReady", traits: {"smithy.api#enumValue" => "VolumeNotReady"}))
    EvictFilesFailingUploadInput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN", traits: {"smithy.api#required" => {}}))
    EvictFilesFailingUploadInput.add_member(:force_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "ForceRemove", traits: {"smithy.api#default" => false}))
    EvictFilesFailingUploadInput.type = Types::EvictFilesFailingUploadInput
    EvictFilesFailingUploadOutput.add_member(:notification_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationId"))
    EvictFilesFailingUploadOutput.type = Types::EvictFilesFailingUploadOutput
    FileShareARNList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "member")
    FileShareClientList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4OrIpv6AddressCIDR, name: "member")
    FileShareInfo.add_member(:file_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareType, name: "FileShareType"))
    FileShareInfo.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    FileShareInfo.add_member(:file_share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareId, name: "FileShareId"))
    FileShareInfo.add_member(:file_share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareStatus, name: "FileShareStatus"))
    FileShareInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    FileShareInfo.type = Types::FileShareInfo
    FileShareInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareInfo, name: "member")
    FileShareType.add_member(:nfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NFS", traits: {"smithy.api#enumValue" => "NFS"}))
    FileShareType.add_member(:smb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMB", traits: {"smithy.api#enumValue" => "SMB"}))
    FileSystemAssociationARNList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "member")
    FileSystemAssociationInfo.add_member(:file_system_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "FileSystemAssociationARN"))
    FileSystemAssociationInfo.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemLocationARN, name: "LocationARN"))
    FileSystemAssociationInfo.add_member(:file_system_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationStatus, name: "FileSystemAssociationStatus"))
    FileSystemAssociationInfo.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    FileSystemAssociationInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    FileSystemAssociationInfo.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    FileSystemAssociationInfo.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    FileSystemAssociationInfo.add_member(:endpoint_network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointNetworkConfiguration, name: "EndpointNetworkConfiguration"))
    FileSystemAssociationInfo.add_member(:file_system_association_status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationStatusDetails, name: "FileSystemAssociationStatusDetails"))
    FileSystemAssociationInfo.type = Types::FileSystemAssociationInfo
    FileSystemAssociationInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationInfo, name: "member")
    FileSystemAssociationStatusDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationSyncErrorCode, name: "ErrorCode"))
    FileSystemAssociationStatusDetail.type = Types::FileSystemAssociationStatusDetail
    FileSystemAssociationStatusDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationStatusDetail, name: "member")
    FileSystemAssociationSummary.add_member(:file_system_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationId, name: "FileSystemAssociationId"))
    FileSystemAssociationSummary.add_member(:file_system_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "FileSystemAssociationARN"))
    FileSystemAssociationSummary.add_member(:file_system_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationStatus, name: "FileSystemAssociationStatus"))
    FileSystemAssociationSummary.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    FileSystemAssociationSummary.type = Types::FileSystemAssociationSummary
    FileSystemAssociationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationSummary, name: "member")
    FolderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Folder, name: "member")
    GatewayCapacity.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Small", traits: {"smithy.api#enumValue" => "Small"}))
    GatewayCapacity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Medium", traits: {"smithy.api#enumValue" => "Medium"}))
    GatewayCapacity.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Large", traits: {"smithy.api#enumValue" => "Large"}))
    GatewayInfo.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "GatewayId"))
    GatewayInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    GatewayInfo.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "GatewayType"))
    GatewayInfo.add_member(:gateway_operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayOperationalState, name: "GatewayOperationalState"))
    GatewayInfo.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GatewayName"))
    GatewayInfo.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceId, name: "Ec2InstanceId"))
    GatewayInfo.add_member(:ec2_instance_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceRegion, name: "Ec2InstanceRegion"))
    GatewayInfo.add_member(:host_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: HostEnvironment, name: "HostEnvironment"))
    GatewayInfo.add_member(:host_environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostEnvironmentId, name: "HostEnvironmentId"))
    GatewayInfo.add_member(:deprecation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecationDate, name: "DeprecationDate"))
    GatewayInfo.add_member(:software_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareVersion, name: "SoftwareVersion"))
    GatewayInfo.type = Types::GatewayInfo
    GatewayNetworkInterfaces.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member")
    Gateways.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInfo, name: "member")
    HostEnvironment.add_member(:vmware, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VMWARE", traits: {"smithy.api#enumValue" => "VMWARE"}))
    HostEnvironment.add_member(:hyper_v, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HYPER_V", traits: {"smithy.api#enumValue" => "HYPER-V"}))
    HostEnvironment.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    HostEnvironment.add_member(:kvm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KVM", traits: {"smithy.api#enumValue" => "KVM"}))
    HostEnvironment.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    HostEnvironment.add_member(:snowball, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNOWBALL", traits: {"smithy.api#enumValue" => "SNOWBALL"}))
    Hosts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "member")
    Initiators.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Initiator, name: "member")
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InternalServerError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageGatewayError, name: "error"))
    InternalServerError.type = Types::InternalServerError
    InvalidGatewayRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidGatewayRequestException.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageGatewayError, name: "error"))
    InvalidGatewayRequestException.type = Types::InvalidGatewayRequestException
    IpAddressList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IPV4Address, name: "member")
    JoinDomainInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    JoinDomainInput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName", traits: {"smithy.api#required" => {}}))
    JoinDomainInput.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnit, name: "OrganizationalUnit"))
    JoinDomainInput.add_member(:domain_controllers, ::Smithy::Schema::Shapes::MemberShape.new(target: Hosts, name: "DomainControllers"))
    JoinDomainInput.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutInSeconds, name: "TimeoutInSeconds"))
    JoinDomainInput.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainUserName, name: "UserName", traits: {"smithy.api#required" => {}}))
    JoinDomainInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainUserPassword, name: "Password", traits: {"smithy.api#required" => {}}))
    JoinDomainInput.type = Types::JoinDomainInput
    JoinDomainOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    JoinDomainOutput.add_member(:active_directory_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryStatus, name: "ActiveDirectoryStatus"))
    JoinDomainOutput.type = Types::JoinDomainOutput
    ListAutomaticTapeCreationPoliciesInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ListAutomaticTapeCreationPoliciesInput.type = Types::ListAutomaticTapeCreationPoliciesInput
    ListAutomaticTapeCreationPoliciesOutput.add_member(:automatic_tape_creation_policy_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticTapeCreationPolicyInfos, name: "AutomaticTapeCreationPolicyInfos"))
    ListAutomaticTapeCreationPoliciesOutput.type = Types::ListAutomaticTapeCreationPoliciesOutput
    ListCacheReportsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListCacheReportsInput.type = Types::ListCacheReportsInput
    ListCacheReportsOutput.add_member(:cache_report_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportList, name: "CacheReportList"))
    ListCacheReportsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListCacheReportsOutput.type = Types::ListCacheReportsOutput
    ListFileSharesInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ListFileSharesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    ListFileSharesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListFileSharesInput.type = Types::ListFileSharesInput
    ListFileSharesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListFileSharesOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "NextMarker"))
    ListFileSharesOutput.add_member(:file_share_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareInfoList, name: "FileShareInfoList"))
    ListFileSharesOutput.type = Types::ListFileSharesOutput
    ListFileSystemAssociationsInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ListFileSystemAssociationsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    ListFileSystemAssociationsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListFileSystemAssociationsInput.type = Types::ListFileSystemAssociationsInput
    ListFileSystemAssociationsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListFileSystemAssociationsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "NextMarker"))
    ListFileSystemAssociationsOutput.add_member(:file_system_association_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationSummaryList, name: "FileSystemAssociationSummaryList"))
    ListFileSystemAssociationsOutput.type = Types::ListFileSystemAssociationsOutput
    ListGatewaysInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListGatewaysInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    ListGatewaysInput.type = Types::ListGatewaysInput
    ListGatewaysOutput.add_member(:gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: Gateways, name: "Gateways"))
    ListGatewaysOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListGatewaysOutput.type = Types::ListGatewaysOutput
    ListLocalDisksInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    ListLocalDisksInput.type = Types::ListLocalDisksInput
    ListLocalDisksOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ListLocalDisksOutput.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: Disks, name: "Disks"))
    ListLocalDisksOutput.type = Types::ListLocalDisksOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListTagsForResourceInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    ListTagsForResourceOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTapePoolsInput.add_member(:pool_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolARNs, name: "PoolARNs"))
    ListTapePoolsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListTapePoolsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    ListTapePoolsInput.type = Types::ListTapePoolsInput
    ListTapePoolsOutput.add_member(:pool_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolInfos, name: "PoolInfos"))
    ListTapePoolsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListTapePoolsOutput.type = Types::ListTapePoolsOutput
    ListTapesInput.add_member(:tape_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARNs, name: "TapeARNs"))
    ListTapesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListTapesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    ListTapesInput.type = Types::ListTapesInput
    ListTapesOutput.add_member(:tape_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeInfos, name: "TapeInfos"))
    ListTapesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListTapesOutput.type = Types::ListTapesOutput
    ListVolumeInitiatorsInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    ListVolumeInitiatorsInput.type = Types::ListVolumeInitiatorsInput
    ListVolumeInitiatorsOutput.add_member(:initiators, ::Smithy::Schema::Shapes::MemberShape.new(target: Initiators, name: "Initiators"))
    ListVolumeInitiatorsOutput.type = Types::ListVolumeInitiatorsOutput
    ListVolumeRecoveryPointsInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    ListVolumeRecoveryPointsInput.type = Types::ListVolumeRecoveryPointsInput
    ListVolumeRecoveryPointsOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ListVolumeRecoveryPointsOutput.add_member(:volume_recovery_point_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeRecoveryPointInfos, name: "VolumeRecoveryPointInfos"))
    ListVolumeRecoveryPointsOutput.type = Types::ListVolumeRecoveryPointsOutput
    ListVolumesInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ListVolumesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListVolumesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "Limit"))
    ListVolumesInput.type = Types::ListVolumesInput
    ListVolumesOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ListVolumesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListVolumesOutput.add_member(:volume_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeInfos, name: "VolumeInfos"))
    ListVolumesOutput.type = Types::ListVolumesOutput
    NFSFileShareDefaults.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionMode, name: "FileMode"))
    NFSFileShareDefaults.add_member(:directory_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionMode, name: "DirectoryMode"))
    NFSFileShareDefaults.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionId, name: "GroupId"))
    NFSFileShareDefaults.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionId, name: "OwnerId"))
    NFSFileShareDefaults.type = Types::NFSFileShareDefaults
    NFSFileShareInfo.add_member(:nfs_file_share_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: NFSFileShareDefaults, name: "NFSFileShareDefaults"))
    NFSFileShareInfo.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    NFSFileShareInfo.add_member(:file_share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareId, name: "FileShareId"))
    NFSFileShareInfo.add_member(:file_share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareStatus, name: "FileShareStatus"))
    NFSFileShareInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    NFSFileShareInfo.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    NFSFileShareInfo.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "KMSEncrypted", traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}}))
    NFSFileShareInfo.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    NFSFileShareInfo.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "Path"))
    NFSFileShareInfo.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role"))
    NFSFileShareInfo.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationARN, name: "LocationARN"))
    NFSFileShareInfo.add_member(:default_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "DefaultStorageClass"))
    NFSFileShareInfo.add_member(:object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectACL, name: "ObjectACL"))
    NFSFileShareInfo.add_member(:client_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareClientList, name: "ClientList"))
    NFSFileShareInfo.add_member(:squash, ::Smithy::Schema::Shapes::MemberShape.new(target: Squash, name: "Squash"))
    NFSFileShareInfo.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReadOnly"))
    NFSFileShareInfo.add_member(:guess_mime_type_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "GuessMIMETypeEnabled"))
    NFSFileShareInfo.add_member(:requester_pays, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterPays"))
    NFSFileShareInfo.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    NFSFileShareInfo.add_member(:file_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareName, name: "FileShareName"))
    NFSFileShareInfo.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    NFSFileShareInfo.add_member(:notification_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationPolicy, name: "NotificationPolicy"))
    NFSFileShareInfo.add_member(:vpc_endpoint_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSHostName, name: "VPCEndpointDNSName"))
    NFSFileShareInfo.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionId, name: "BucketRegion"))
    NFSFileShareInfo.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    NFSFileShareInfo.type = Types::NFSFileShareInfo
    NFSFileShareInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NFSFileShareInfo, name: "member")
    NetworkInterface.add_member(:ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ipv4Address"))
    NetworkInterface.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MacAddress"))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ipv6Address"))
    NetworkInterface.type = Types::NetworkInterface
    NotifyWhenUploadedInput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN", traits: {"smithy.api#required" => {}}))
    NotifyWhenUploadedInput.type = Types::NotifyWhenUploadedInput
    NotifyWhenUploadedOutput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    NotifyWhenUploadedOutput.add_member(:notification_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationId, name: "NotificationId"))
    NotifyWhenUploadedOutput.type = Types::NotifyWhenUploadedOutput
    ObjectACL.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "private", traits: {"smithy.api#enumValue" => "private"}))
    ObjectACL.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read", traits: {"smithy.api#enumValue" => "public-read"}))
    ObjectACL.add_member(:public_read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read_write", traits: {"smithy.api#enumValue" => "public-read-write"}))
    ObjectACL.add_member(:authenticated_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "authenticated_read", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    ObjectACL.add_member(:bucket_owner_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "bucket_owner_read", traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    ObjectACL.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "bucket_owner_full_control", traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    ObjectACL.add_member(:aws_exec_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aws_exec_read", traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    PoolARNs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PoolARN, name: "member")
    PoolInfo.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolARN, name: "PoolARN"))
    PoolInfo.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName"))
    PoolInfo.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeStorageClass, name: "StorageClass"))
    PoolInfo.add_member(:retention_lock_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionLockType, name: "RetentionLockType"))
    PoolInfo.add_member(:retention_lock_time_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionLockTimeInDays, name: "RetentionLockTimeInDays"))
    PoolInfo.add_member(:pool_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolStatus, name: "PoolStatus"))
    PoolInfo.type = Types::PoolInfo
    PoolInfos.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PoolInfo, name: "member")
    PoolStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PoolStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    RefreshCacheInput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN", traits: {"smithy.api#required" => {}}))
    RefreshCacheInput.add_member(:folder_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderList, name: "FolderList"))
    RefreshCacheInput.add_member(:recursive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Recursive"))
    RefreshCacheInput.type = Types::RefreshCacheInput
    RefreshCacheOutput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    RefreshCacheOutput.add_member(:notification_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationId, name: "NotificationId"))
    RefreshCacheOutput.type = Types::RefreshCacheOutput
    RemoveTagsFromResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromResourceInput.type = Types::RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN"))
    RemoveTagsFromResourceOutput.type = Types::RemoveTagsFromResourceOutput
    ResetCacheInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    ResetCacheInput.type = Types::ResetCacheInput
    ResetCacheOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ResetCacheOutput.type = Types::ResetCacheOutput
    RetentionLockType.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    RetentionLockType.add_member(:governance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNANCE", traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    RetentionLockType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    RetrieveTapeArchiveInput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN", traits: {"smithy.api#required" => {}}))
    RetrieveTapeArchiveInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    RetrieveTapeArchiveInput.type = Types::RetrieveTapeArchiveInput
    RetrieveTapeArchiveOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    RetrieveTapeArchiveOutput.type = Types::RetrieveTapeArchiveOutput
    RetrieveTapeRecoveryPointInput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN", traits: {"smithy.api#required" => {}}))
    RetrieveTapeRecoveryPointInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    RetrieveTapeRecoveryPointInput.type = Types::RetrieveTapeRecoveryPointInput
    RetrieveTapeRecoveryPointOutput.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    RetrieveTapeRecoveryPointOutput.type = Types::RetrieveTapeRecoveryPointOutput
    SMBFileShareInfo.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    SMBFileShareInfo.add_member(:file_share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareId, name: "FileShareId"))
    SMBFileShareInfo.add_member(:file_share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareStatus, name: "FileShareStatus"))
    SMBFileShareInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    SMBFileShareInfo.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    SMBFileShareInfo.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "KMSEncrypted", traits: {"smithy.api#default" => false, "smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}}))
    SMBFileShareInfo.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    SMBFileShareInfo.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "Path"))
    SMBFileShareInfo.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role"))
    SMBFileShareInfo.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationARN, name: "LocationARN"))
    SMBFileShareInfo.add_member(:default_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "DefaultStorageClass"))
    SMBFileShareInfo.add_member(:object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectACL, name: "ObjectACL"))
    SMBFileShareInfo.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReadOnly"))
    SMBFileShareInfo.add_member(:guess_mime_type_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "GuessMIMETypeEnabled"))
    SMBFileShareInfo.add_member(:requester_pays, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterPays"))
    SMBFileShareInfo.add_member(:smbacl_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SMBACLEnabled"))
    SMBFileShareInfo.add_member(:access_based_enumeration, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AccessBasedEnumeration"))
    SMBFileShareInfo.add_member(:admin_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "AdminUserList"))
    SMBFileShareInfo.add_member(:valid_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "ValidUserList"))
    SMBFileShareInfo.add_member(:invalid_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "InvalidUserList"))
    SMBFileShareInfo.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    SMBFileShareInfo.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, name: "Authentication"))
    SMBFileShareInfo.add_member(:case_sensitivity, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseSensitivity, name: "CaseSensitivity"))
    SMBFileShareInfo.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    SMBFileShareInfo.add_member(:file_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareName, name: "FileShareName"))
    SMBFileShareInfo.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    SMBFileShareInfo.add_member(:notification_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationPolicy, name: "NotificationPolicy"))
    SMBFileShareInfo.add_member(:vpc_endpoint_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSHostName, name: "VPCEndpointDNSName"))
    SMBFileShareInfo.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionId, name: "BucketRegion"))
    SMBFileShareInfo.add_member(:oplocks_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OplocksEnabled"))
    SMBFileShareInfo.type = Types::SMBFileShareInfo
    SMBFileShareInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SMBFileShareInfo, name: "member")
    SMBLocalGroups.add_member(:gateway_admins, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "GatewayAdmins"))
    SMBLocalGroups.type = Types::SMBLocalGroups
    SMBSecurityStrategy.add_member(:client_specified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClientSpecified", traits: {"smithy.api#enumValue" => "ClientSpecified"}))
    SMBSecurityStrategy.add_member(:mandatory_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MandatorySigning", traits: {"smithy.api#enumValue" => "MandatorySigning"}))
    SMBSecurityStrategy.add_member(:mandatory_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MandatoryEncryption", traits: {"smithy.api#enumValue" => "MandatoryEncryption"}))
    SMBSecurityStrategy.add_member(:mandatory_encryption_no_aes128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MandatoryEncryptionNoAes128", traits: {"smithy.api#enumValue" => "MandatoryEncryptionNoAes128"}))
    ServiceUnavailableError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceUnavailableError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageGatewayError, name: "error"))
    ServiceUnavailableError.type = Types::ServiceUnavailableError
    SetLocalConsolePasswordInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    SetLocalConsolePasswordInput.add_member(:local_console_password, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalConsolePassword, name: "LocalConsolePassword", traits: {"smithy.api#required" => {}}))
    SetLocalConsolePasswordInput.type = Types::SetLocalConsolePasswordInput
    SetLocalConsolePasswordOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    SetLocalConsolePasswordOutput.type = Types::SetLocalConsolePasswordOutput
    SetSMBGuestPasswordInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    SetSMBGuestPasswordInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SMBGuestPassword, name: "Password", traits: {"smithy.api#required" => {}}))
    SetSMBGuestPasswordInput.type = Types::SetSMBGuestPasswordInput
    SetSMBGuestPasswordOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    SetSMBGuestPasswordOutput.type = Types::SetSMBGuestPasswordOutput
    ShutdownGatewayInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    ShutdownGatewayInput.type = Types::ShutdownGatewayInput
    ShutdownGatewayOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    ShutdownGatewayOutput.type = Types::ShutdownGatewayOutput
    SoftwareUpdatePreferences.add_member(:automatic_update_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticUpdatePolicy, name: "AutomaticUpdatePolicy"))
    SoftwareUpdatePreferences.type = Types::SoftwareUpdatePreferences
    StartAvailabilityMonitorTestInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    StartAvailabilityMonitorTestInput.type = Types::StartAvailabilityMonitorTestInput
    StartAvailabilityMonitorTestOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    StartAvailabilityMonitorTestOutput.type = Types::StartAvailabilityMonitorTestOutput
    StartCacheReportInput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN", traits: {"smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role", traits: {"smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationARN, name: "LocationARN", traits: {"smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionId, name: "BucketRegion", traits: {"smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:vpc_endpoint_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSHostName, name: "VPCEndpointDNSName"))
    StartCacheReportInput.add_member(:inclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilterList, name: "InclusionFilters"))
    StartCacheReportInput.add_member(:exclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportFilterList, name: "ExclusionFilters"))
    StartCacheReportInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    StartCacheReportInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    StartCacheReportInput.type = Types::StartCacheReportInput
    StartCacheReportOutput.add_member(:cache_report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheReportARN, name: "CacheReportARN"))
    StartCacheReportOutput.type = Types::StartCacheReportOutput
    StartGatewayInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    StartGatewayInput.type = Types::StartGatewayInput
    StartGatewayOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    StartGatewayOutput.type = Types::StartGatewayOutput
    StorageGatewayError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    StorageGatewayError.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "errorDetails"))
    StorageGatewayError.type = Types::StorageGatewayError
    StorediSCSIVolume.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    StorediSCSIVolume.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    StorediSCSIVolume.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeType, name: "VolumeType"))
    StorediSCSIVolume.add_member(:volume_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatus, name: "VolumeStatus"))
    StorediSCSIVolume.add_member(:volume_attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeAttachmentStatus, name: "VolumeAttachmentStatus"))
    StorediSCSIVolume.add_member(:volume_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VolumeSizeInBytes", traits: {"smithy.api#default" => 0}))
    StorediSCSIVolume.add_member(:volume_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject, name: "VolumeProgress"))
    StorediSCSIVolume.add_member(:volume_disk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskId, name: "VolumeDiskId"))
    StorediSCSIVolume.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotId, name: "SourceSnapshotId"))
    StorediSCSIVolume.add_member(:preserved_existing_data, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "PreservedExistingData", traits: {"smithy.api#default" => false}))
    StorediSCSIVolume.add_member(:volumei_scsi_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeiSCSIAttributes, name: "VolumeiSCSIAttributes"))
    StorediSCSIVolume.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedDate, name: "CreatedDate"))
    StorediSCSIVolume.add_member(:volume_used_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeUsedInBytes, name: "VolumeUsedInBytes"))
    StorediSCSIVolume.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    StorediSCSIVolume.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "TargetName"))
    StorediSCSIVolume.type = Types::StorediSCSIVolume
    StorediSCSIVolumes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorediSCSIVolume, name: "member")
    SupportedGatewayCapacities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayCapacity, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    Tape.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    Tape.add_member(:tape_barcode, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeBarcode, name: "TapeBarcode"))
    Tape.add_member(:tape_created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "TapeCreatedDate"))
    Tape.add_member(:tape_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeSize, name: "TapeSizeInBytes"))
    Tape.add_member(:tape_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeStatus, name: "TapeStatus"))
    Tape.add_member(:vtl_device, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceARN, name: "VTLDevice"))
    Tape.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject, name: "Progress"))
    Tape.add_member(:tape_used_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeUsage, name: "TapeUsedInBytes"))
    Tape.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    Tape.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolId, name: "PoolId"))
    Tape.add_member(:worm, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "Worm", traits: {"smithy.api#default" => false}))
    Tape.add_member(:retention_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "RetentionStartDate"))
    Tape.add_member(:pool_entry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "PoolEntryDate"))
    Tape.type = Types::Tape
    TapeARNs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "member")
    TapeArchive.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    TapeArchive.add_member(:tape_barcode, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeBarcode, name: "TapeBarcode"))
    TapeArchive.add_member(:tape_created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "TapeCreatedDate"))
    TapeArchive.add_member(:tape_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeSize, name: "TapeSizeInBytes"))
    TapeArchive.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CompletionTime"))
    TapeArchive.add_member(:retrieved_to, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "RetrievedTo"))
    TapeArchive.add_member(:tape_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeArchiveStatus, name: "TapeStatus"))
    TapeArchive.add_member(:tape_used_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeUsage, name: "TapeUsedInBytes"))
    TapeArchive.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    TapeArchive.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolId, name: "PoolId"))
    TapeArchive.add_member(:worm, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "Worm", traits: {"smithy.api#default" => false}))
    TapeArchive.add_member(:retention_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "RetentionStartDate"))
    TapeArchive.add_member(:pool_entry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "PoolEntryDate"))
    TapeArchive.type = Types::TapeArchive
    TapeArchives.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TapeArchive, name: "member")
    TapeInfo.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    TapeInfo.add_member(:tape_barcode, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeBarcode, name: "TapeBarcode"))
    TapeInfo.add_member(:tape_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeSize, name: "TapeSizeInBytes"))
    TapeInfo.add_member(:tape_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeStatus, name: "TapeStatus"))
    TapeInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    TapeInfo.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolId, name: "PoolId"))
    TapeInfo.add_member(:retention_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "RetentionStartDate"))
    TapeInfo.add_member(:pool_entry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "PoolEntryDate"))
    TapeInfo.type = Types::TapeInfo
    TapeInfos.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TapeInfo, name: "member")
    TapeRecoveryPointInfo.add_member(:tape_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeARN, name: "TapeARN"))
    TapeRecoveryPointInfo.add_member(:tape_recovery_point_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "TapeRecoveryPointTime"))
    TapeRecoveryPointInfo.add_member(:tape_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeSize, name: "TapeSizeInBytes"))
    TapeRecoveryPointInfo.add_member(:tape_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TapeRecoveryPointStatus, name: "TapeStatus"))
    TapeRecoveryPointInfo.type = Types::TapeRecoveryPointInfo
    TapeRecoveryPointInfos.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TapeRecoveryPointInfo, name: "member")
    TapeStorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    TapeStorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    Tapes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tape, name: "member")
    UpdateAutomaticTapeCreationPolicyInput.add_member(:automatic_tape_creation_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticTapeCreationRules, name: "AutomaticTapeCreationRules", traits: {"smithy.api#required" => {}}))
    UpdateAutomaticTapeCreationPolicyInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateAutomaticTapeCreationPolicyInput.type = Types::UpdateAutomaticTapeCreationPolicyInput
    UpdateAutomaticTapeCreationPolicyOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateAutomaticTapeCreationPolicyOutput.type = Types::UpdateAutomaticTapeCreationPolicyOutput
    UpdateBandwidthRateLimitInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateBandwidthRateLimitInput.add_member(:average_upload_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthUploadRateLimit, name: "AverageUploadRateLimitInBitsPerSec"))
    UpdateBandwidthRateLimitInput.add_member(:average_download_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthDownloadRateLimit, name: "AverageDownloadRateLimitInBitsPerSec"))
    UpdateBandwidthRateLimitInput.type = Types::UpdateBandwidthRateLimitInput
    UpdateBandwidthRateLimitOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateBandwidthRateLimitOutput.type = Types::UpdateBandwidthRateLimitOutput
    UpdateBandwidthRateLimitScheduleInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateBandwidthRateLimitScheduleInput.add_member(:bandwidth_rate_limit_intervals, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthRateLimitIntervals, name: "BandwidthRateLimitIntervals", traits: {"smithy.api#required" => {}}))
    UpdateBandwidthRateLimitScheduleInput.type = Types::UpdateBandwidthRateLimitScheduleInput
    UpdateBandwidthRateLimitScheduleOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateBandwidthRateLimitScheduleOutput.type = Types::UpdateBandwidthRateLimitScheduleOutput
    UpdateChapCredentialsInput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN", traits: {"smithy.api#required" => {}}))
    UpdateChapCredentialsInput.add_member(:secret_to_authenticate_initiator, ::Smithy::Schema::Shapes::MemberShape.new(target: ChapSecret, name: "SecretToAuthenticateInitiator", traits: {"smithy.api#required" => {}}))
    UpdateChapCredentialsInput.add_member(:initiator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IqnName, name: "InitiatorName", traits: {"smithy.api#required" => {}}))
    UpdateChapCredentialsInput.add_member(:secret_to_authenticate_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ChapSecret, name: "SecretToAuthenticateTarget"))
    UpdateChapCredentialsInput.type = Types::UpdateChapCredentialsInput
    UpdateChapCredentialsOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    UpdateChapCredentialsOutput.add_member(:initiator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IqnName, name: "InitiatorName"))
    UpdateChapCredentialsOutput.type = Types::UpdateChapCredentialsOutput
    UpdateFileSystemAssociationInput.add_member(:file_system_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "FileSystemAssociationARN", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemAssociationInput.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainUserName, name: "UserName"))
    UpdateFileSystemAssociationInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainUserPassword, name: "Password"))
    UpdateFileSystemAssociationInput.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    UpdateFileSystemAssociationInput.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    UpdateFileSystemAssociationInput.type = Types::UpdateFileSystemAssociationInput
    UpdateFileSystemAssociationOutput.add_member(:file_system_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemAssociationARN, name: "FileSystemAssociationARN"))
    UpdateFileSystemAssociationOutput.type = Types::UpdateFileSystemAssociationOutput
    UpdateGatewayInformationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateGatewayInformationInput.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayName, name: "GatewayName"))
    UpdateGatewayInformationInput.add_member(:gateway_timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayTimezone, name: "GatewayTimezone"))
    UpdateGatewayInformationInput.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupARN, name: "CloudWatchLogGroupARN"))
    UpdateGatewayInformationInput.add_member(:gateway_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayCapacity, name: "GatewayCapacity"))
    UpdateGatewayInformationInput.type = Types::UpdateGatewayInformationInput
    UpdateGatewayInformationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateGatewayInformationOutput.add_member(:gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GatewayName"))
    UpdateGatewayInformationOutput.type = Types::UpdateGatewayInformationOutput
    UpdateGatewaySoftwareNowInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateGatewaySoftwareNowInput.type = Types::UpdateGatewaySoftwareNowInput
    UpdateGatewaySoftwareNowOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateGatewaySoftwareNowOutput.type = Types::UpdateGatewaySoftwareNowOutput
    UpdateMaintenanceStartTimeInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateMaintenanceStartTimeInput.add_member(:hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "HourOfDay"))
    UpdateMaintenanceStartTimeInput.add_member(:minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "MinuteOfHour"))
    UpdateMaintenanceStartTimeInput.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "DayOfWeek"))
    UpdateMaintenanceStartTimeInput.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfMonth, name: "DayOfMonth"))
    UpdateMaintenanceStartTimeInput.add_member(:software_update_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareUpdatePreferences, name: "SoftwareUpdatePreferences"))
    UpdateMaintenanceStartTimeInput.type = Types::UpdateMaintenanceStartTimeInput
    UpdateMaintenanceStartTimeOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateMaintenanceStartTimeOutput.type = Types::UpdateMaintenanceStartTimeOutput
    UpdateNFSFileShareInput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN", traits: {"smithy.api#required" => {}}))
    UpdateNFSFileShareInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    UpdateNFSFileShareInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted", traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}}))
    UpdateNFSFileShareInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    UpdateNFSFileShareInput.add_member(:nfs_file_share_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: NFSFileShareDefaults, name: "NFSFileShareDefaults"))
    UpdateNFSFileShareInput.add_member(:default_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "DefaultStorageClass"))
    UpdateNFSFileShareInput.add_member(:object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectACL, name: "ObjectACL"))
    UpdateNFSFileShareInput.add_member(:client_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareClientList, name: "ClientList"))
    UpdateNFSFileShareInput.add_member(:squash, ::Smithy::Schema::Shapes::MemberShape.new(target: Squash, name: "Squash"))
    UpdateNFSFileShareInput.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReadOnly"))
    UpdateNFSFileShareInput.add_member(:guess_mime_type_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "GuessMIMETypeEnabled"))
    UpdateNFSFileShareInput.add_member(:requester_pays, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterPays"))
    UpdateNFSFileShareInput.add_member(:file_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareName, name: "FileShareName"))
    UpdateNFSFileShareInput.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    UpdateNFSFileShareInput.add_member(:notification_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationPolicy, name: "NotificationPolicy"))
    UpdateNFSFileShareInput.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    UpdateNFSFileShareInput.type = Types::UpdateNFSFileShareInput
    UpdateNFSFileShareOutput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    UpdateNFSFileShareOutput.type = Types::UpdateNFSFileShareOutput
    UpdateSMBFileShareInput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN", traits: {"smithy.api#required" => {}}))
    UpdateSMBFileShareInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    UpdateSMBFileShareInput.add_member(:kms_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KMSEncrypted", traits: {"smithy.api#deprecated" => {"message" => "KMSEncrypted is deprecated, use EncryptionType instead."}}))
    UpdateSMBFileShareInput.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKey, name: "KMSKey"))
    UpdateSMBFileShareInput.add_member(:default_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "DefaultStorageClass"))
    UpdateSMBFileShareInput.add_member(:object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectACL, name: "ObjectACL"))
    UpdateSMBFileShareInput.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReadOnly"))
    UpdateSMBFileShareInput.add_member(:guess_mime_type_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "GuessMIMETypeEnabled"))
    UpdateSMBFileShareInput.add_member(:requester_pays, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterPays"))
    UpdateSMBFileShareInput.add_member(:smbacl_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SMBACLEnabled"))
    UpdateSMBFileShareInput.add_member(:access_based_enumeration, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AccessBasedEnumeration"))
    UpdateSMBFileShareInput.add_member(:admin_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "AdminUserList"))
    UpdateSMBFileShareInput.add_member(:valid_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "ValidUserList"))
    UpdateSMBFileShareInput.add_member(:invalid_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "InvalidUserList"))
    UpdateSMBFileShareInput.add_member(:audit_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditDestinationARN, name: "AuditDestinationARN"))
    UpdateSMBFileShareInput.add_member(:case_sensitivity, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseSensitivity, name: "CaseSensitivity"))
    UpdateSMBFileShareInput.add_member(:file_share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareName, name: "FileShareName"))
    UpdateSMBFileShareInput.add_member(:cache_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheAttributes, name: "CacheAttributes"))
    UpdateSMBFileShareInput.add_member(:notification_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationPolicy, name: "NotificationPolicy"))
    UpdateSMBFileShareInput.add_member(:oplocks_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OplocksEnabled"))
    UpdateSMBFileShareInput.type = Types::UpdateSMBFileShareInput
    UpdateSMBFileShareOutput.add_member(:file_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileShareARN, name: "FileShareARN"))
    UpdateSMBFileShareOutput.type = Types::UpdateSMBFileShareOutput
    UpdateSMBFileShareVisibilityInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateSMBFileShareVisibilityInput.add_member(:file_shares_visible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FileSharesVisible", traits: {"smithy.api#required" => {}}))
    UpdateSMBFileShareVisibilityInput.type = Types::UpdateSMBFileShareVisibilityInput
    UpdateSMBFileShareVisibilityOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateSMBFileShareVisibilityOutput.type = Types::UpdateSMBFileShareVisibilityOutput
    UpdateSMBLocalGroupsInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateSMBLocalGroupsInput.add_member(:smb_local_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SMBLocalGroups, name: "SMBLocalGroups", traits: {"smithy.api#required" => {}}))
    UpdateSMBLocalGroupsInput.type = Types::UpdateSMBLocalGroupsInput
    UpdateSMBLocalGroupsOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateSMBLocalGroupsOutput.type = Types::UpdateSMBLocalGroupsOutput
    UpdateSMBSecurityStrategyInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN", traits: {"smithy.api#required" => {}}))
    UpdateSMBSecurityStrategyInput.add_member(:smb_security_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SMBSecurityStrategy, name: "SMBSecurityStrategy", traits: {"smithy.api#required" => {}}))
    UpdateSMBSecurityStrategyInput.type = Types::UpdateSMBSecurityStrategyInput
    UpdateSMBSecurityStrategyOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    UpdateSMBSecurityStrategyOutput.type = Types::UpdateSMBSecurityStrategyOutput
    UpdateSnapshotScheduleInput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN", traits: {"smithy.api#required" => {}}))
    UpdateSnapshotScheduleInput.add_member(:start_at, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "StartAt", traits: {"smithy.api#required" => {}}))
    UpdateSnapshotScheduleInput.add_member(:recurrence_in_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurrenceInHours, name: "RecurrenceInHours", traits: {"smithy.api#required" => {}}))
    UpdateSnapshotScheduleInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateSnapshotScheduleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    UpdateSnapshotScheduleInput.type = Types::UpdateSnapshotScheduleInput
    UpdateSnapshotScheduleOutput.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    UpdateSnapshotScheduleOutput.type = Types::UpdateSnapshotScheduleOutput
    UpdateVTLDeviceTypeInput.add_member(:vtl_device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceARN, name: "VTLDeviceARN", traits: {"smithy.api#required" => {}}))
    UpdateVTLDeviceTypeInput.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "DeviceType", traits: {"smithy.api#required" => {}}))
    UpdateVTLDeviceTypeInput.type = Types::UpdateVTLDeviceTypeInput
    UpdateVTLDeviceTypeOutput.add_member(:vtl_device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceARN, name: "VTLDeviceARN"))
    UpdateVTLDeviceTypeOutput.type = Types::UpdateVTLDeviceTypeOutput
    UserList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserListUser, name: "member")
    VTLDevice.add_member(:vtl_device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceARN, name: "VTLDeviceARN"))
    VTLDevice.add_member(:vtl_device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceType, name: "VTLDeviceType"))
    VTLDevice.add_member(:vtl_device_vendor, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceVendor, name: "VTLDeviceVendor"))
    VTLDevice.add_member(:vtl_device_product_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceProductIdentifier, name: "VTLDeviceProductIdentifier"))
    VTLDevice.add_member(:devicei_scsi_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceiSCSIAttributes, name: "DeviceiSCSIAttributes"))
    VTLDevice.type = Types::VTLDevice
    VTLDeviceARNs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDeviceARN, name: "member")
    VTLDevices.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VTLDevice, name: "member")
    VolumeARNs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "member")
    VolumeInfo.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    VolumeInfo.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeId, name: "VolumeId"))
    VolumeInfo.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayARN, name: "GatewayARN"))
    VolumeInfo.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "GatewayId"))
    VolumeInfo.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeType, name: "VolumeType"))
    VolumeInfo.add_member(:volume_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VolumeSizeInBytes", traits: {"smithy.api#default" => 0}))
    VolumeInfo.add_member(:volume_attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeAttachmentStatus, name: "VolumeAttachmentStatus"))
    VolumeInfo.type = Types::VolumeInfo
    VolumeInfos.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeInfo, name: "member")
    VolumeRecoveryPointInfo.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeARN, name: "VolumeARN"))
    VolumeRecoveryPointInfo.add_member(:volume_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VolumeSizeInBytes", traits: {"smithy.api#default" => 0}))
    VolumeRecoveryPointInfo.add_member(:volume_usage_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VolumeUsageInBytes", traits: {"smithy.api#default" => 0}))
    VolumeRecoveryPointInfo.add_member(:volume_recovery_point_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VolumeRecoveryPointTime"))
    VolumeRecoveryPointInfo.type = Types::VolumeRecoveryPointInfo
    VolumeRecoveryPointInfos.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeRecoveryPointInfo, name: "member")
    VolumeiSCSIAttributes.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetARN, name: "TargetARN"))
    VolumeiSCSIAttributes.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId"))
    VolumeiSCSIAttributes.add_member(:network_interface_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NetworkInterfacePort", traits: {"smithy.api#default" => 0}))
    VolumeiSCSIAttributes.add_member(:lun_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntObject, name: "LunNumber"))
    VolumeiSCSIAttributes.add_member(:chap_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean2, name: "ChapEnabled", traits: {"smithy.api#default" => false}))
    VolumeiSCSIAttributes.type = Types::VolumeiSCSIAttributes
    ErrorDetails.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    ErrorDetails.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")

    StorageGateway20130630 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.storagegateway#StorageGateway_20130630"
      service.name = "StorageGateway20130630"
      service.version = "2013-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Storage Gateway", "arnNamespace" => "storagegateway", "cloudFormationName" => "StorageGateway", "cloudTrailEventSource" => "storagegateway.amazonaws.com", "docId" => "storagegateway-2013-06-30", "endpointPrefix" => "storagegateway"}, "aws.auth#sigv4" => {"name" => "storagegateway"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Storage Gateway", "smithy.api#xmlNamespace" => {"uri" => "http://storagegateway.amazonaws.com/doc/2013-06-30"}}
      service.add_operation(:activate_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ActivateGateway"
        operation.name = "ActivateGateway"
        operation.input = ActivateGatewayInput
        operation.output = ActivateGatewayOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:add_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddCache"
        operation.name = "AddCache"
        operation.input = AddCacheInput
        operation.output = AddCacheOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = AddTagsToResourceInput
        operation.output = AddTagsToResourceOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:add_upload_buffer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddUploadBuffer"
        operation.name = "AddUploadBuffer"
        operation.input = AddUploadBufferInput
        operation.output = AddUploadBufferOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:add_working_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AddWorkingStorage"
        operation.name = "AddWorkingStorage"
        operation.input = AddWorkingStorageInput
        operation.output = AddWorkingStorageOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:assign_tape_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AssignTapePool"
        operation.name = "AssignTapePool"
        operation.input = AssignTapePoolInput
        operation.output = AssignTapePoolOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:associate_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AssociateFileSystem"
        operation.name = "AssociateFileSystem"
        operation.input = AssociateFileSystemInput
        operation.output = AssociateFileSystemOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:attach_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#AttachVolume"
        operation.name = "AttachVolume"
        operation.input = AttachVolumeInput
        operation.output = AttachVolumeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:cancel_archival, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CancelArchival"
        operation.name = "CancelArchival"
        operation.input = CancelArchivalInput
        operation.output = CancelArchivalOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:cancel_cache_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CancelCacheReport"
        operation.name = "CancelCacheReport"
        operation.input = CancelCacheReportInput
        operation.output = CancelCacheReportOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:cancel_retrieval, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CancelRetrieval"
        operation.name = "CancelRetrieval"
        operation.input = CancelRetrievalInput
        operation.output = CancelRetrievalOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_cachedi_scsi_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateCachediSCSIVolume"
        operation.name = "CreateCachediSCSIVolume"
        operation.input = CreateCachediSCSIVolumeInput
        operation.output = CreateCachediSCSIVolumeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_nfs_file_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateNFSFileShare"
        operation.name = "CreateNFSFileShare"
        operation.input = CreateNFSFileShareInput
        operation.output = CreateNFSFileShareOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_smb_file_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateSMBFileShare"
        operation.name = "CreateSMBFileShare"
        operation.input = CreateSMBFileShareInput
        operation.output = CreateSMBFileShareOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = CreateSnapshotInput
        operation.output = CreateSnapshotOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.errors << ServiceUnavailableError
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_from_volume_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateSnapshotFromVolumeRecoveryPoint"
        operation.name = "CreateSnapshotFromVolumeRecoveryPoint"
        operation.input = CreateSnapshotFromVolumeRecoveryPointInput
        operation.output = CreateSnapshotFromVolumeRecoveryPointOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.errors << ServiceUnavailableError
        operation.traits = {}
      end)
      service.add_operation(:create_storedi_scsi_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateStorediSCSIVolume"
        operation.name = "CreateStorediSCSIVolume"
        operation.input = CreateStorediSCSIVolumeInput
        operation.output = CreateStorediSCSIVolumeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_tape_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateTapePool"
        operation.name = "CreateTapePool"
        operation.input = CreateTapePoolInput
        operation.output = CreateTapePoolOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_tape_with_barcode, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateTapeWithBarcode"
        operation.name = "CreateTapeWithBarcode"
        operation.input = CreateTapeWithBarcodeInput
        operation.output = CreateTapeWithBarcodeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_tapes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#CreateTapes"
        operation.name = "CreateTapes"
        operation.input = CreateTapesInput
        operation.output = CreateTapesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_automatic_tape_creation_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteAutomaticTapeCreationPolicy"
        operation.name = "DeleteAutomaticTapeCreationPolicy"
        operation.input = DeleteAutomaticTapeCreationPolicyInput
        operation.output = DeleteAutomaticTapeCreationPolicyOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_bandwidth_rate_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteBandwidthRateLimit"
        operation.name = "DeleteBandwidthRateLimit"
        operation.input = DeleteBandwidthRateLimitInput
        operation.output = DeleteBandwidthRateLimitOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteCacheReport"
        operation.name = "DeleteCacheReport"
        operation.input = DeleteCacheReportInput
        operation.output = DeleteCacheReportOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_chap_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteChapCredentials"
        operation.name = "DeleteChapCredentials"
        operation.input = DeleteChapCredentialsInput
        operation.output = DeleteChapCredentialsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_file_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteFileShare"
        operation.name = "DeleteFileShare"
        operation.input = DeleteFileShareInput
        operation.output = DeleteFileShareOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = DeleteGatewayInput
        operation.output = DeleteGatewayOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteSnapshotSchedule"
        operation.name = "DeleteSnapshotSchedule"
        operation.input = DeleteSnapshotScheduleInput
        operation.output = DeleteSnapshotScheduleOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_tape, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteTape"
        operation.name = "DeleteTape"
        operation.input = DeleteTapeInput
        operation.output = DeleteTapeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_tape_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteTapeArchive"
        operation.name = "DeleteTapeArchive"
        operation.input = DeleteTapeArchiveInput
        operation.output = DeleteTapeArchiveOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_tape_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteTapePool"
        operation.name = "DeleteTapePool"
        operation.input = DeleteTapePoolInput
        operation.output = DeleteTapePoolOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DeleteVolume"
        operation.name = "DeleteVolume"
        operation.input = DeleteVolumeInput
        operation.output = DeleteVolumeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_availability_monitor_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeAvailabilityMonitorTest"
        operation.name = "DescribeAvailabilityMonitorTest"
        operation.input = DescribeAvailabilityMonitorTestInput
        operation.output = DescribeAvailabilityMonitorTestOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_bandwidth_rate_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeBandwidthRateLimit"
        operation.name = "DescribeBandwidthRateLimit"
        operation.input = DescribeBandwidthRateLimitInput
        operation.output = DescribeBandwidthRateLimitOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_bandwidth_rate_limit_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeBandwidthRateLimitSchedule"
        operation.name = "DescribeBandwidthRateLimitSchedule"
        operation.input = DescribeBandwidthRateLimitScheduleInput
        operation.output = DescribeBandwidthRateLimitScheduleOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeCache"
        operation.name = "DescribeCache"
        operation.input = DescribeCacheInput
        operation.output = DescribeCacheOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_cache_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeCacheReport"
        operation.name = "DescribeCacheReport"
        operation.input = DescribeCacheReportInput
        operation.output = DescribeCacheReportOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_cachedi_scsi_volumes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeCachediSCSIVolumes"
        operation.name = "DescribeCachediSCSIVolumes"
        operation.input = DescribeCachediSCSIVolumesInput
        operation.output = DescribeCachediSCSIVolumesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_chap_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeChapCredentials"
        operation.name = "DescribeChapCredentials"
        operation.input = DescribeChapCredentialsInput
        operation.output = DescribeChapCredentialsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_file_system_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeFileSystemAssociations"
        operation.name = "DescribeFileSystemAssociations"
        operation.input = DescribeFileSystemAssociationsInput
        operation.output = DescribeFileSystemAssociationsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_gateway_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeGatewayInformation"
        operation.name = "DescribeGatewayInformation"
        operation.input = DescribeGatewayInformationInput
        operation.output = DescribeGatewayInformationOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_maintenance_start_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeMaintenanceStartTime"
        operation.name = "DescribeMaintenanceStartTime"
        operation.input = DescribeMaintenanceStartTimeInput
        operation.output = DescribeMaintenanceStartTimeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_nfs_file_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeNFSFileShares"
        operation.name = "DescribeNFSFileShares"
        operation.input = DescribeNFSFileSharesInput
        operation.output = DescribeNFSFileSharesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_smb_file_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeSMBFileShares"
        operation.name = "DescribeSMBFileShares"
        operation.input = DescribeSMBFileSharesInput
        operation.output = DescribeSMBFileSharesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_smb_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeSMBSettings"
        operation.name = "DescribeSMBSettings"
        operation.input = DescribeSMBSettingsInput
        operation.output = DescribeSMBSettingsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeSnapshotSchedule"
        operation.name = "DescribeSnapshotSchedule"
        operation.input = DescribeSnapshotScheduleInput
        operation.output = DescribeSnapshotScheduleOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_storedi_scsi_volumes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeStorediSCSIVolumes"
        operation.name = "DescribeStorediSCSIVolumes"
        operation.input = DescribeStorediSCSIVolumesInput
        operation.output = DescribeStorediSCSIVolumesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_tape_archives, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeTapeArchives"
        operation.name = "DescribeTapeArchives"
        operation.input = DescribeTapeArchivesInput
        operation.output = DescribeTapeArchivesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTapeArchives.new
      end)
      service.add_operation(:describe_tape_recovery_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeTapeRecoveryPoints"
        operation.name = "DescribeTapeRecoveryPoints"
        operation.input = DescribeTapeRecoveryPointsInput
        operation.output = DescribeTapeRecoveryPointsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTapeRecoveryPoints.new
      end)
      service.add_operation(:describe_tapes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeTapes"
        operation.name = "DescribeTapes"
        operation.input = DescribeTapesInput
        operation.output = DescribeTapesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTapes.new
      end)
      service.add_operation(:describe_upload_buffer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeUploadBuffer"
        operation.name = "DescribeUploadBuffer"
        operation.input = DescribeUploadBufferInput
        operation.output = DescribeUploadBufferOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_vtl_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeVTLDevices"
        operation.name = "DescribeVTLDevices"
        operation.input = DescribeVTLDevicesInput
        operation.output = DescribeVTLDevicesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeVTLDevices.new
      end)
      service.add_operation(:describe_working_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DescribeWorkingStorage"
        operation.name = "DescribeWorkingStorage"
        operation.input = DescribeWorkingStorageInput
        operation.output = DescribeWorkingStorageOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:detach_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DetachVolume"
        operation.name = "DetachVolume"
        operation.input = DetachVolumeInput
        operation.output = DetachVolumeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:disable_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DisableGateway"
        operation.name = "DisableGateway"
        operation.input = DisableGatewayInput
        operation.output = DisableGatewayOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#DisassociateFileSystem"
        operation.name = "DisassociateFileSystem"
        operation.input = DisassociateFileSystemInput
        operation.output = DisassociateFileSystemOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:evict_files_failing_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#EvictFilesFailingUpload"
        operation.name = "EvictFilesFailingUpload"
        operation.input = EvictFilesFailingUploadInput
        operation.output = EvictFilesFailingUploadOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:join_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#JoinDomain"
        operation.name = "JoinDomain"
        operation.input = JoinDomainInput
        operation.output = JoinDomainOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_automatic_tape_creation_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListAutomaticTapeCreationPolicies"
        operation.name = "ListAutomaticTapeCreationPolicies"
        operation.input = ListAutomaticTapeCreationPoliciesInput
        operation.output = ListAutomaticTapeCreationPoliciesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_cache_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListCacheReports"
        operation.name = "ListCacheReports"
        operation.input = ListCacheReportsInput
        operation.output = ListCacheReportsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCacheReports.new
      end)
      service.add_operation(:list_file_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListFileShares"
        operation.name = "ListFileShares"
        operation.input = ListFileSharesInput
        operation.output = ListFileSharesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFileShares.new
      end)
      service.add_operation(:list_file_system_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListFileSystemAssociations"
        operation.name = "ListFileSystemAssociations"
        operation.input = ListFileSystemAssociationsInput
        operation.output = ListFileSystemAssociationsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFileSystemAssociations.new
      end)
      service.add_operation(:list_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListGateways"
        operation.name = "ListGateways"
        operation.input = ListGatewaysInput
        operation.output = ListGatewaysOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_local_disks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListLocalDisks"
        operation.name = "ListLocalDisks"
        operation.input = ListLocalDisksInput
        operation.output = ListLocalDisksOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_tape_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListTapePools"
        operation.name = "ListTapePools"
        operation.input = ListTapePoolsInput
        operation.output = ListTapePoolsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTapePools.new
      end)
      service.add_operation(:list_tapes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListTapes"
        operation.name = "ListTapes"
        operation.input = ListTapesInput
        operation.output = ListTapesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTapes.new
      end)
      service.add_operation(:list_volume_initiators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListVolumeInitiators"
        operation.name = "ListVolumeInitiators"
        operation.input = ListVolumeInitiatorsInput
        operation.output = ListVolumeInitiatorsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_volume_recovery_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListVolumeRecoveryPoints"
        operation.name = "ListVolumeRecoveryPoints"
        operation.input = ListVolumeRecoveryPointsInput
        operation.output = ListVolumeRecoveryPointsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_volumes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ListVolumes"
        operation.name = "ListVolumes"
        operation.input = ListVolumesInput
        operation.output = ListVolumesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListVolumes.new
      end)
      service.add_operation(:notify_when_uploaded, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#NotifyWhenUploaded"
        operation.name = "NotifyWhenUploaded"
        operation.input = NotifyWhenUploadedInput
        operation.output = NotifyWhenUploadedOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:refresh_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RefreshCache"
        operation.name = "RefreshCache"
        operation.input = RefreshCacheInput
        operation.output = RefreshCacheOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = RemoveTagsFromResourceInput
        operation.output = RemoveTagsFromResourceOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:reset_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ResetCache"
        operation.name = "ResetCache"
        operation.input = ResetCacheInput
        operation.output = ResetCacheOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:retrieve_tape_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RetrieveTapeArchive"
        operation.name = "RetrieveTapeArchive"
        operation.input = RetrieveTapeArchiveInput
        operation.output = RetrieveTapeArchiveOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:retrieve_tape_recovery_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#RetrieveTapeRecoveryPoint"
        operation.name = "RetrieveTapeRecoveryPoint"
        operation.input = RetrieveTapeRecoveryPointInput
        operation.output = RetrieveTapeRecoveryPointOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:set_local_console_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#SetLocalConsolePassword"
        operation.name = "SetLocalConsolePassword"
        operation.input = SetLocalConsolePasswordInput
        operation.output = SetLocalConsolePasswordOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:set_smb_guest_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#SetSMBGuestPassword"
        operation.name = "SetSMBGuestPassword"
        operation.input = SetSMBGuestPasswordInput
        operation.output = SetSMBGuestPasswordOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:shutdown_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#ShutdownGateway"
        operation.name = "ShutdownGateway"
        operation.input = ShutdownGatewayInput
        operation.output = ShutdownGatewayOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:start_availability_monitor_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#StartAvailabilityMonitorTest"
        operation.name = "StartAvailabilityMonitorTest"
        operation.input = StartAvailabilityMonitorTestInput
        operation.output = StartAvailabilityMonitorTestOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:start_cache_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#StartCacheReport"
        operation.name = "StartCacheReport"
        operation.input = StartCacheReportInput
        operation.output = StartCacheReportOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:start_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#StartGateway"
        operation.name = "StartGateway"
        operation.input = StartGatewayInput
        operation.output = StartGatewayOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_automatic_tape_creation_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateAutomaticTapeCreationPolicy"
        operation.name = "UpdateAutomaticTapeCreationPolicy"
        operation.input = UpdateAutomaticTapeCreationPolicyInput
        operation.output = UpdateAutomaticTapeCreationPolicyOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_bandwidth_rate_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateBandwidthRateLimit"
        operation.name = "UpdateBandwidthRateLimit"
        operation.input = UpdateBandwidthRateLimitInput
        operation.output = UpdateBandwidthRateLimitOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_bandwidth_rate_limit_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateBandwidthRateLimitSchedule"
        operation.name = "UpdateBandwidthRateLimitSchedule"
        operation.input = UpdateBandwidthRateLimitScheduleInput
        operation.output = UpdateBandwidthRateLimitScheduleOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_chap_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateChapCredentials"
        operation.name = "UpdateChapCredentials"
        operation.input = UpdateChapCredentialsInput
        operation.output = UpdateChapCredentialsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_file_system_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateFileSystemAssociation"
        operation.name = "UpdateFileSystemAssociation"
        operation.input = UpdateFileSystemAssociationInput
        operation.output = UpdateFileSystemAssociationOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateGatewayInformation"
        operation.name = "UpdateGatewayInformation"
        operation.input = UpdateGatewayInformationInput
        operation.output = UpdateGatewayInformationOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_software_now, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateGatewaySoftwareNow"
        operation.name = "UpdateGatewaySoftwareNow"
        operation.input = UpdateGatewaySoftwareNowInput
        operation.output = UpdateGatewaySoftwareNowOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_maintenance_start_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateMaintenanceStartTime"
        operation.name = "UpdateMaintenanceStartTime"
        operation.input = UpdateMaintenanceStartTimeInput
        operation.output = UpdateMaintenanceStartTimeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_nfs_file_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateNFSFileShare"
        operation.name = "UpdateNFSFileShare"
        operation.input = UpdateNFSFileShareInput
        operation.output = UpdateNFSFileShareOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_smb_file_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBFileShare"
        operation.name = "UpdateSMBFileShare"
        operation.input = UpdateSMBFileShareInput
        operation.output = UpdateSMBFileShareOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_smb_file_share_visibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBFileShareVisibility"
        operation.name = "UpdateSMBFileShareVisibility"
        operation.input = UpdateSMBFileShareVisibilityInput
        operation.output = UpdateSMBFileShareVisibilityOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_smb_local_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBLocalGroups"
        operation.name = "UpdateSMBLocalGroups"
        operation.input = UpdateSMBLocalGroupsInput
        operation.output = UpdateSMBLocalGroupsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_smb_security_strategy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSMBSecurityStrategy"
        operation.name = "UpdateSMBSecurityStrategy"
        operation.input = UpdateSMBSecurityStrategyInput
        operation.output = UpdateSMBSecurityStrategyOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateSnapshotSchedule"
        operation.name = "UpdateSnapshotSchedule"
        operation.input = UpdateSnapshotScheduleInput
        operation.output = UpdateSnapshotScheduleOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_vtl_device_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.storagegateway#UpdateVTLDeviceType"
        operation.name = "UpdateVTLDeviceType"
        operation.input = UpdateVTLDeviceTypeInput
        operation.output = UpdateVTLDeviceTypeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidGatewayRequestException
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

# frozen_string_literal: true

# This is generated code!

module Aws::CloudHSMV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Backup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#Backup', name: 'Backup')
    BackupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#BackupArn', name: 'BackupArn', traits: {"smithy.api#pattern" => "^(arn:aws(-(us-gov))?:cloudhsm:([a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-[0-9]{1}):[0-9]{12}:backup/)?backup-[2-7a-zA-Z]{11,16}$"})
    BackupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#BackupId', name: 'BackupId', traits: {"smithy.api#pattern" => "^backup-[2-7a-zA-Z]{11,16}$"})
    BackupPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsmv2#BackupPolicy', name: 'BackupPolicy')
    BackupRetentionPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#BackupRetentionPolicy', name: 'BackupRetentionPolicy')
    BackupRetentionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsmv2#BackupRetentionType', name: 'BackupRetentionType')
    BackupRetentionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#BackupRetentionValue', name: 'BackupRetentionValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}, "smithy.api#pattern" => "^[0-9]+$"})
    BackupState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsmv2#BackupState', name: 'BackupState')
    Backups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsmv2#Backups', name: 'Backups')
    BackupsMaxSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudhsmv2#BackupsMaxSize', name: 'BackupsMaxSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudhsmv2#Boolean', name: 'Boolean')
    Cert = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#Cert', name: 'Cert', traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}, "smithy.api#pattern" => "^[a-zA-Z0-9+-/=\\s]*$"})
    Certificates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#Certificates', name: 'Certificates')
    CloudHsmAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmAccessDeniedException', name: 'CloudHsmAccessDeniedException', traits: {"smithy.api#error" => "client"})
    CloudHsmArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmArn', name: 'CloudHsmArn', traits: {"smithy.api#pattern" => "^arn:aws(-(us-gov))?:cloudhsm:([a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-[0-9]{1}):[0-9]{12}:(backup/backup|cluster/cluster|hsm/hsm)-[2-7a-zA-Z]{11,16}$"})
    CloudHsmInternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmInternalFailureException', name: 'CloudHsmInternalFailureException', traits: {"smithy.api#error" => "server"})
    CloudHsmInvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmInvalidRequestException', name: 'CloudHsmInvalidRequestException', traits: {"smithy.api#error" => "client"})
    CloudHsmResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmResourceLimitExceededException', name: 'CloudHsmResourceLimitExceededException', traits: {"smithy.api#error" => "client"})
    CloudHsmResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmResourceNotFoundException', name: 'CloudHsmResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    CloudHsmServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmServiceException', name: 'CloudHsmServiceException', traits: {"smithy.api#error" => "client"})
    CloudHsmTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CloudHsmTagException', name: 'CloudHsmTagException', traits: {"smithy.api#error" => "client"})
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#Cluster', name: 'Cluster')
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#ClusterId', name: 'ClusterId', traits: {"smithy.api#pattern" => "^cluster-[2-7a-zA-Z]{11,16}$"})
    ClusterMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsmv2#ClusterMode', name: 'ClusterMode')
    ClusterState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsmv2#ClusterState', name: 'ClusterState')
    Clusters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsmv2#Clusters', name: 'Clusters')
    ClustersMaxSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudhsmv2#ClustersMaxSize', name: 'ClustersMaxSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    CopyBackupToRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CopyBackupToRegionRequest', name: 'CopyBackupToRegionRequest')
    CopyBackupToRegionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CopyBackupToRegionResponse', name: 'CopyBackupToRegionResponse')
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateHsmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CreateHsmRequest', name: 'CreateHsmRequest')
    CreateHsmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#CreateHsmResponse', name: 'CreateHsmResponse')
    DeleteBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteBackupRequest', name: 'DeleteBackupRequest')
    DeleteBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteBackupResponse', name: 'DeleteBackupResponse')
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteHsmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteHsmRequest', name: 'DeleteHsmRequest')
    DeleteHsmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteHsmResponse', name: 'DeleteHsmResponse')
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteResourcePolicyRequest', name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DeleteResourcePolicyResponse', name: 'DeleteResourcePolicyResponse')
    DescribeBackupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DescribeBackupsRequest', name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DescribeBackupsResponse', name: 'DescribeBackupsResponse')
    DescribeClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DescribeClustersRequest', name: 'DescribeClustersRequest')
    DescribeClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DescribeClustersResponse', name: 'DescribeClustersResponse')
    DestinationBackup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#DestinationBackup', name: 'DestinationBackup')
    EniId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#EniId', name: 'EniId', traits: {"smithy.api#pattern" => "^eni-[0-9a-fA-F]{8,17}$"})
    ExternalAz = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#ExternalAz', name: 'ExternalAz', traits: {"smithy.api#pattern" => "^[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]$"})
    ExternalSubnetMapping = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudhsmv2#ExternalSubnetMapping', name: 'ExternalSubnetMapping')
    Field = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#Field', name: 'Field', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    Filters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudhsmv2#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    Hsm = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#Hsm', name: 'Hsm')
    HsmId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#HsmId', name: 'HsmId', traits: {"smithy.api#pattern" => "^hsm-[2-7a-zA-Z]{11,16}$"})
    HsmState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsmv2#HsmState', name: 'HsmState')
    HsmType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#HsmType', name: 'HsmType', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^((p|)hsm[0-9][a-z.]*\\.[a-zA-Z]+)$"})
    Hsms = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsmv2#Hsms', name: 'Hsms')
    InitializeClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#InitializeClusterRequest', name: 'InitializeClusterRequest')
    InitializeClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#InitializeClusterResponse', name: 'InitializeClusterResponse')
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#IpAddress', name: 'IpAddress', traits: {"smithy.api#pattern" => "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"})
    IpV6Address = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#IpV6Address', name: 'IpV6Address', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#ListTagsResponse', name: 'ListTagsResponse')
    MaxSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudhsmv2#MaxSize', name: 'MaxSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ModifyBackupAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#ModifyBackupAttributesRequest', name: 'ModifyBackupAttributesRequest')
    ModifyBackupAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#ModifyBackupAttributesResponse', name: 'ModifyBackupAttributesResponse')
    ModifyClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#ModifyClusterRequest', name: 'ModifyClusterRequest')
    ModifyClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#ModifyClusterResponse', name: 'ModifyClusterResponse')
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsmv2#NetworkType', name: 'NetworkType')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    PreCoPassword = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#PreCoPassword', name: 'PreCoPassword', traits: {"smithy.api#length" => {"min" => 7, "max" => 32}})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#PutResourcePolicyRequest', name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#PutResourcePolicyResponse', name: 'PutResourcePolicyResponse')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#Region', name: 'Region', traits: {"smithy.api#pattern" => "^[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#ResourceId', name: 'ResourceId', traits: {"smithy.api#pattern" => "^(?:cluster|backup)-[2-7a-zA-Z]{11,16}$"})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#ResourcePolicy', name: 'ResourcePolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}})
    RestoreBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#RestoreBackupRequest', name: 'RestoreBackupRequest')
    RestoreBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#RestoreBackupResponse', name: 'RestoreBackupResponse')
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#SecurityGroup', name: 'SecurityGroup', traits: {"smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,17}$"})
    StateMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#StateMessage', name: 'StateMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => ".*"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#String', name: 'String')
    Strings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsmv2#Strings', name: 'Strings')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-[0-9a-fA-F]{8,17}$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsmv2#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsmv2#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsmv2#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cloudhsmv2#Timestamp', name: 'Timestamp')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsmv2#UntagResourceResponse', name: 'UntagResourceResponse')
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-[0-9a-fA-F]$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsmv2#errorMessage', name: 'ErrorMessage')

    Backup.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#required" => {}}))
    Backup.add_member(:backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: 'BackupArn'))
    Backup.add_member(:backup_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupState, location_name: 'BackupState'))
    Backup.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId'))
    Backup.add_member(:create_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp'))
    Backup.add_member(:copy_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CopyTimestamp'))
    Backup.add_member(:never_expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'NeverExpires'))
    Backup.add_member(:source_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'SourceRegion'))
    Backup.add_member(:source_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'SourceBackup'))
    Backup.add_member(:source_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'SourceCluster'))
    Backup.add_member(:delete_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeleteTimestamp'))
    Backup.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    Backup.add_member(:hsm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmType, location_name: 'HsmType'))
    Backup.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMode, location_name: 'Mode'))
    Backup.type = Types::Backup
    BackupPolicy.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    BackupRetentionPolicy.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRetentionType, location_name: 'Type'))
    BackupRetentionPolicy.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRetentionValue, location_name: 'Value'))
    BackupRetentionPolicy.type = Types::BackupRetentionPolicy
    BackupRetentionType.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    BackupState.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    BackupState.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    BackupState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    BackupState.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETION', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    Backups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backup)
    Certificates.add_member(:cluster_csr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cert, location_name: 'ClusterCsr'))
    Certificates.add_member(:hsm_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cert, location_name: 'HsmCertificate'))
    Certificates.add_member(:aws_hardware_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cert, location_name: 'AwsHardwareCertificate'))
    Certificates.add_member(:manufacturer_hardware_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cert, location_name: 'ManufacturerHardwareCertificate'))
    Certificates.add_member(:cluster_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cert, location_name: 'ClusterCertificate'))
    Certificates.type = Types::Certificates
    CloudHsmAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CloudHsmAccessDeniedException.type = Types::CloudHsmAccessDeniedException
    CloudHsmInternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CloudHsmInternalFailureException.type = Types::CloudHsmInternalFailureException
    CloudHsmInvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CloudHsmInvalidRequestException.type = Types::CloudHsmInvalidRequestException
    CloudHsmResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CloudHsmResourceLimitExceededException.type = Types::CloudHsmResourceLimitExceededException
    CloudHsmResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CloudHsmResourceNotFoundException.type = Types::CloudHsmResourceNotFoundException
    CloudHsmServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CloudHsmServiceException.type = Types::CloudHsmServiceException
    CloudHsmTagException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CloudHsmTagException.type = Types::CloudHsmTagException
    Cluster.add_member(:backup_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicy, location_name: 'BackupPolicy'))
    Cluster.add_member(:backup_retention_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRetentionPolicy, location_name: 'BackupRetentionPolicy'))
    Cluster.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId'))
    Cluster.add_member(:create_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp'))
    Cluster.add_member(:hsms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hsms, location_name: 'Hsms'))
    Cluster.add_member(:hsm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmType, location_name: 'HsmType'))
    Cluster.add_member(:hsm_type_rollback_expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'HsmTypeRollbackExpiration'))
    Cluster.add_member(:pre_co_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreCoPassword, location_name: 'PreCoPassword'))
    Cluster.add_member(:security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup, location_name: 'SecurityGroup'))
    Cluster.add_member(:source_backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'SourceBackupId'))
    Cluster.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State'))
    Cluster.add_member(:state_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateMessage, location_name: 'StateMessage'))
    Cluster.add_member(:subnet_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSubnetMapping, location_name: 'SubnetMapping'))
    Cluster.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId'))
    Cluster.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType'))
    Cluster.add_member(:certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificates, location_name: 'Certificates'))
    Cluster.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    Cluster.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMode, location_name: 'Mode'))
    Cluster.type = Types::Cluster
    ClusterMode.add_member(:fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIPS', traits: {"smithy.api#enumValue" => "FIPS"}))
    ClusterMode.add_member(:non_fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_FIPS', traits: {"smithy.api#enumValue" => "NON_FIPS"}))
    ClusterState.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    ClusterState.add_member(:uninitialized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNINITIALIZED', traits: {"smithy.api#enumValue" => "UNINITIALIZED"}))
    ClusterState.add_member(:initialize_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "INITIALIZE_IN_PROGRESS"}))
    ClusterState.add_member(:initialized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZED', traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    ClusterState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterState.add_member(:update_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    ClusterState.add_member(:modify_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFY_IN_PROGRESS', traits: {"smithy.api#enumValue" => "MODIFY_IN_PROGRESS"}))
    ClusterState.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    ClusterState.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    ClusterState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ClusterState.add_member(:degraded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    Clusters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster)
    CopyBackupToRegionRequest.add_member(:destination_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'DestinationRegion', traits: {"smithy.api#required" => {}}))
    CopyBackupToRegionRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#required" => {}}))
    CopyBackupToRegionRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    CopyBackupToRegionRequest.type = Types::CopyBackupToRegionRequest
    CopyBackupToRegionResponse.add_member(:destination_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationBackup, location_name: 'DestinationBackup'))
    CopyBackupToRegionResponse.type = Types::CopyBackupToRegionResponse
    CreateClusterRequest.add_member(:backup_retention_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRetentionPolicy, location_name: 'BackupRetentionPolicy'))
    CreateClusterRequest.add_member(:hsm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmType, location_name: 'HsmType', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:source_backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: 'SourceBackupId'))
    CreateClusterRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType'))
    CreateClusterRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    CreateClusterRequest.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMode, location_name: 'Mode'))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateHsmRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#required" => {}}))
    CreateHsmRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalAz, location_name: 'AvailabilityZone', traits: {"smithy.api#required" => {}}))
    CreateHsmRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    CreateHsmRequest.type = Types::CreateHsmRequest
    CreateHsmResponse.add_member(:hsm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hsm, location_name: 'Hsm'))
    CreateHsmResponse.type = Types::CreateHsmResponse
    DeleteBackupRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#required" => {}}))
    DeleteBackupRequest.type = Types::DeleteBackupRequest
    DeleteBackupResponse.add_member(:backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backup, location_name: 'Backup'))
    DeleteBackupResponse.type = Types::DeleteBackupResponse
    DeleteClusterRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteHsmRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#required" => {}}))
    DeleteHsmRequest.add_member(:hsm_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmId, location_name: 'HsmId'))
    DeleteHsmRequest.add_member(:eni_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EniId, location_name: 'EniId'))
    DeleteHsmRequest.add_member(:eni_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'EniIp'))
    DeleteHsmRequest.type = Types::DeleteHsmRequest
    DeleteHsmResponse.add_member(:hsm_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmId, location_name: 'HsmId'))
    DeleteHsmResponse.type = Types::DeleteHsmResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: 'ResourceArn'))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: 'ResourceArn'))
    DeleteResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy'))
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DescribeBackupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeBackupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupsMaxSize, location_name: 'MaxResults'))
    DescribeBackupsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters'))
    DescribeBackupsRequest.add_member(:shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Shared'))
    DescribeBackupsRequest.add_member(:sort_ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SortAscending'))
    DescribeBackupsRequest.type = Types::DescribeBackupsRequest
    DescribeBackupsResponse.add_member(:backups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backups, location_name: 'Backups'))
    DescribeBackupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeBackupsResponse.type = Types::DescribeBackupsResponse
    DescribeClustersRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters'))
    DescribeClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClustersMaxSize, location_name: 'MaxResults'))
    DescribeClustersRequest.type = Types::DescribeClustersRequest
    DescribeClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Clusters, location_name: 'Clusters'))
    DescribeClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeClustersResponse.type = Types::DescribeClustersResponse
    DestinationBackup.add_member(:create_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp'))
    DestinationBackup.add_member(:source_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'SourceRegion'))
    DestinationBackup.add_member(:source_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'SourceBackup'))
    DestinationBackup.add_member(:source_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'SourceCluster'))
    DestinationBackup.type = Types::DestinationBackup
    ExternalSubnetMapping.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalAz)
    ExternalSubnetMapping.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Filters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Field)
    Filters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings)
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: 'ResourceArn'))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy'))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    Hsm.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalAz, location_name: 'AvailabilityZone'))
    Hsm.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId'))
    Hsm.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId'))
    Hsm.add_member(:eni_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EniId, location_name: 'EniId'))
    Hsm.add_member(:eni_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'EniIp'))
    Hsm.add_member(:eni_ip_v6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpV6Address, location_name: 'EniIpV6'))
    Hsm.add_member(:hsm_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmId, location_name: 'HsmId', traits: {"smithy.api#required" => {}}))
    Hsm.add_member(:hsm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmType, location_name: 'HsmType'))
    Hsm.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmState, location_name: 'State'))
    Hsm.add_member(:state_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateMessage'))
    Hsm.type = Types::Hsm
    HsmState.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    HsmState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    HsmState.add_member(:degraded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    HsmState.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    HsmState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    Hsms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hsm)
    InitializeClusterRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#required" => {}}))
    InitializeClusterRequest.add_member(:signed_cert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cert, location_name: 'SignedCert', traits: {"smithy.api#required" => {}}))
    InitializeClusterRequest.add_member(:trust_anchor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cert, location_name: 'TrustAnchor', traits: {"smithy.api#required" => {}}))
    InitializeClusterRequest.type = Types::InitializeClusterRequest
    InitializeClusterResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State'))
    InitializeClusterResponse.add_member(:state_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateMessage, location_name: 'StateMessage'))
    InitializeClusterResponse.type = Types::InitializeClusterResponse
    ListTagsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    ListTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize, location_name: 'MaxResults'))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#required" => {}}))
    ListTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsResponse.type = Types::ListTagsResponse
    ModifyBackupAttributesRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#required" => {}}))
    ModifyBackupAttributesRequest.add_member(:never_expires, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'NeverExpires', traits: {"smithy.api#required" => {}}))
    ModifyBackupAttributesRequest.type = Types::ModifyBackupAttributesRequest
    ModifyBackupAttributesResponse.add_member(:backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backup, location_name: 'Backup'))
    ModifyBackupAttributesResponse.type = Types::ModifyBackupAttributesResponse
    ModifyClusterRequest.add_member(:hsm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmType, location_name: 'HsmType'))
    ModifyClusterRequest.add_member(:backup_retention_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRetentionPolicy, location_name: 'BackupRetentionPolicy'))
    ModifyClusterRequest.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#required" => {}}))
    ModifyClusterRequest.type = Types::ModifyClusterRequest
    ModifyClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterResponse.type = Types::ModifyClusterResponse
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:dualstack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: 'ResourceArn'))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy'))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmArn, location_name: 'ResourceArn'))
    PutResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'Policy'))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RestoreBackupRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#required" => {}}))
    RestoreBackupRequest.type = Types::RestoreBackupRequest
    RestoreBackupResponse.add_member(:backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backup, location_name: 'Backup'))
    RestoreBackupResponse.type = Types::RestoreBackupResponse
    Strings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_key_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeyList', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse

    BaldrApiService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudhsmv2#BaldrApiService"
      service.name = "BaldrApiService"
      service.version = "2017-04-28"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudHSM V2", "arnNamespace" => "cloudhsm", "cloudFormationName" => "CloudHSMV2", "cloudTrailEventSource" => "cloudhsmv2.amazonaws.com", "docId" => "cloudhsmv2-2017-04-28", "endpointPrefix" => "cloudhsmv2"}, "aws.auth#sigv4" => {"name" => "cloudhsm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CloudHSM V2"}
      service.add_operation(:copy_backup_to_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#CopyBackupToRegion"
        operation.name = "CopyBackupToRegion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyBackupToRegionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyBackupToRegionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
        operation.traits = {}
      end)
      service.add_operation(:create_hsm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#CreateHsm"
        operation.name = "CreateHsm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:delete_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#DeleteBackup"
        operation.name = "DeleteBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
        operation.traits = {}
      end)
      service.add_operation(:delete_hsm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#DeleteHsm"
        operation.name = "DeleteHsm"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:describe_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#DescribeBackups"
        operation.name = "DescribeBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBackups.new
      end)
      service.add_operation(:describe_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeClustersSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeClusters.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:initialize_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#InitializeCluster"
        operation.name = "InitializeCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitializeClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitializeClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#ListTags"
        operation.name = "ListTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:modify_backup_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#ModifyBackupAttributes"
        operation.name = "ModifyBackupAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyBackupAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyBackupAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#ModifyCluster"
        operation.name = "ModifyCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:restore_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#RestoreBackup"
        operation.name = "RestoreBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreBackupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreBackupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsmv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmTagException)
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

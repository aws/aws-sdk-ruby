# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudHSMV2
  # @api private
  module ClientApi

    include Seahorse::Model

    Backup = Shapes::StructureShape.new(name: 'Backup')
    BackupId = Shapes::StringShape.new(name: 'BackupId')
    BackupPolicy = Shapes::StringShape.new(name: 'BackupPolicy')
    BackupState = Shapes::StringShape.new(name: 'BackupState')
    Backups = Shapes::ListShape.new(name: 'Backups')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Cert = Shapes::StringShape.new(name: 'Cert')
    Certificates = Shapes::StructureShape.new(name: 'Certificates')
    CloudHsmAccessDeniedException = Shapes::StructureShape.new(name: 'CloudHsmAccessDeniedException')
    CloudHsmInternalFailureException = Shapes::StructureShape.new(name: 'CloudHsmInternalFailureException')
    CloudHsmInvalidRequestException = Shapes::StructureShape.new(name: 'CloudHsmInvalidRequestException')
    CloudHsmResourceNotFoundException = Shapes::StructureShape.new(name: 'CloudHsmResourceNotFoundException')
    CloudHsmServiceException = Shapes::StructureShape.new(name: 'CloudHsmServiceException')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    Clusters = Shapes::ListShape.new(name: 'Clusters')
    CopyBackupToRegionRequest = Shapes::StructureShape.new(name: 'CopyBackupToRegionRequest')
    CopyBackupToRegionResponse = Shapes::StructureShape.new(name: 'CopyBackupToRegionResponse')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateHsmRequest = Shapes::StructureShape.new(name: 'CreateHsmRequest')
    CreateHsmResponse = Shapes::StructureShape.new(name: 'CreateHsmResponse')
    DeleteBackupRequest = Shapes::StructureShape.new(name: 'DeleteBackupRequest')
    DeleteBackupResponse = Shapes::StructureShape.new(name: 'DeleteBackupResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteHsmRequest = Shapes::StructureShape.new(name: 'DeleteHsmRequest')
    DeleteHsmResponse = Shapes::StructureShape.new(name: 'DeleteHsmResponse')
    DescribeBackupsRequest = Shapes::StructureShape.new(name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = Shapes::StructureShape.new(name: 'DescribeBackupsResponse')
    DescribeClustersRequest = Shapes::StructureShape.new(name: 'DescribeClustersRequest')
    DescribeClustersResponse = Shapes::StructureShape.new(name: 'DescribeClustersResponse')
    DestinationBackup = Shapes::StructureShape.new(name: 'DestinationBackup')
    EniId = Shapes::StringShape.new(name: 'EniId')
    ExternalAz = Shapes::StringShape.new(name: 'ExternalAz')
    ExternalSubnetMapping = Shapes::MapShape.new(name: 'ExternalSubnetMapping')
    Field = Shapes::StringShape.new(name: 'Field')
    Filters = Shapes::MapShape.new(name: 'Filters')
    Hsm = Shapes::StructureShape.new(name: 'Hsm')
    HsmId = Shapes::StringShape.new(name: 'HsmId')
    HsmState = Shapes::StringShape.new(name: 'HsmState')
    HsmType = Shapes::StringShape.new(name: 'HsmType')
    Hsms = Shapes::ListShape.new(name: 'Hsms')
    InitializeClusterRequest = Shapes::StructureShape.new(name: 'InitializeClusterRequest')
    InitializeClusterResponse = Shapes::StructureShape.new(name: 'InitializeClusterResponse')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    MaxSize = Shapes::IntegerShape.new(name: 'MaxSize')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PreCoPassword = Shapes::StringShape.new(name: 'PreCoPassword')
    Region = Shapes::StringShape.new(name: 'Region')
    RestoreBackupRequest = Shapes::StructureShape.new(name: 'RestoreBackupRequest')
    RestoreBackupResponse = Shapes::StructureShape.new(name: 'RestoreBackupResponse')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    StateMessage = Shapes::StringShape.new(name: 'StateMessage')
    String = Shapes::StringShape.new(name: 'String')
    Strings = Shapes::ListShape.new(name: 'Strings')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    Backup.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    Backup.add_member(:backup_state, Shapes::ShapeRef.new(shape: BackupState, location_name: "BackupState"))
    Backup.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    Backup.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    Backup.add_member(:copy_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CopyTimestamp"))
    Backup.add_member(:source_region, Shapes::ShapeRef.new(shape: Region, location_name: "SourceRegion"))
    Backup.add_member(:source_backup, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackup"))
    Backup.add_member(:source_cluster, Shapes::ShapeRef.new(shape: ClusterId, location_name: "SourceCluster"))
    Backup.add_member(:delete_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeleteTimestamp"))
    Backup.struct_class = Types::Backup

    Backups.member = Shapes::ShapeRef.new(shape: Backup)

    Certificates.add_member(:cluster_csr, Shapes::ShapeRef.new(shape: Cert, location_name: "ClusterCsr"))
    Certificates.add_member(:hsm_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "HsmCertificate"))
    Certificates.add_member(:aws_hardware_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "AwsHardwareCertificate"))
    Certificates.add_member(:manufacturer_hardware_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "ManufacturerHardwareCertificate"))
    Certificates.add_member(:cluster_certificate, Shapes::ShapeRef.new(shape: Cert, location_name: "ClusterCertificate"))
    Certificates.struct_class = Types::Certificates

    Cluster.add_member(:backup_policy, Shapes::ShapeRef.new(shape: BackupPolicy, location_name: "BackupPolicy"))
    Cluster.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    Cluster.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    Cluster.add_member(:hsms, Shapes::ShapeRef.new(shape: Hsms, location_name: "Hsms"))
    Cluster.add_member(:hsm_type, Shapes::ShapeRef.new(shape: HsmType, location_name: "HsmType"))
    Cluster.add_member(:pre_co_password, Shapes::ShapeRef.new(shape: PreCoPassword, location_name: "PreCoPassword"))
    Cluster.add_member(:security_group, Shapes::ShapeRef.new(shape: SecurityGroup, location_name: "SecurityGroup"))
    Cluster.add_member(:source_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackupId"))
    Cluster.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "State"))
    Cluster.add_member(:state_message, Shapes::ShapeRef.new(shape: StateMessage, location_name: "StateMessage"))
    Cluster.add_member(:subnet_mapping, Shapes::ShapeRef.new(shape: ExternalSubnetMapping, location_name: "SubnetMapping"))
    Cluster.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    Cluster.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "Certificates"))
    Cluster.struct_class = Types::Cluster

    Clusters.member = Shapes::ShapeRef.new(shape: Cluster)

    CopyBackupToRegionRequest.add_member(:destination_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "DestinationRegion"))
    CopyBackupToRegionRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    CopyBackupToRegionRequest.struct_class = Types::CopyBackupToRegionRequest

    CopyBackupToRegionResponse.add_member(:destination_backup, Shapes::ShapeRef.new(shape: DestinationBackup, location_name: "DestinationBackup"))
    CopyBackupToRegionResponse.struct_class = Types::CopyBackupToRegionResponse

    CreateClusterRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    CreateClusterRequest.add_member(:hsm_type, Shapes::ShapeRef.new(shape: HsmType, required: true, location_name: "HsmType"))
    CreateClusterRequest.add_member(:source_backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackupId"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateHsmRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    CreateHsmRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ExternalAz, required: true, location_name: "AvailabilityZone"))
    CreateHsmRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    CreateHsmRequest.struct_class = Types::CreateHsmRequest

    CreateHsmResponse.add_member(:hsm, Shapes::ShapeRef.new(shape: Hsm, location_name: "Hsm"))
    CreateHsmResponse.struct_class = Types::CreateHsmResponse

    DeleteBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    DeleteBackupRequest.struct_class = Types::DeleteBackupRequest

    DeleteBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    DeleteBackupResponse.struct_class = Types::DeleteBackupResponse

    DeleteClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteHsmRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    DeleteHsmRequest.add_member(:hsm_id, Shapes::ShapeRef.new(shape: HsmId, location_name: "HsmId"))
    DeleteHsmRequest.add_member(:eni_id, Shapes::ShapeRef.new(shape: EniId, location_name: "EniId"))
    DeleteHsmRequest.add_member(:eni_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EniIp"))
    DeleteHsmRequest.struct_class = Types::DeleteHsmRequest

    DeleteHsmResponse.add_member(:hsm_id, Shapes::ShapeRef.new(shape: HsmId, location_name: "HsmId"))
    DeleteHsmResponse.struct_class = Types::DeleteHsmResponse

    DescribeBackupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize, location_name: "MaxResults"))
    DescribeBackupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeBackupsRequest.add_member(:sort_ascending, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortAscending"))
    DescribeBackupsRequest.struct_class = Types::DescribeBackupsRequest

    DescribeBackupsResponse.add_member(:backups, Shapes::ShapeRef.new(shape: Backups, location_name: "Backups"))
    DescribeBackupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsResponse.struct_class = Types::DescribeBackupsResponse

    DescribeClustersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize, location_name: "MaxResults"))
    DescribeClustersRequest.struct_class = Types::DescribeClustersRequest

    DescribeClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: Clusters, location_name: "Clusters"))
    DescribeClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeClustersResponse.struct_class = Types::DescribeClustersResponse

    DestinationBackup.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    DestinationBackup.add_member(:source_region, Shapes::ShapeRef.new(shape: Region, location_name: "SourceRegion"))
    DestinationBackup.add_member(:source_backup, Shapes::ShapeRef.new(shape: BackupId, location_name: "SourceBackup"))
    DestinationBackup.add_member(:source_cluster, Shapes::ShapeRef.new(shape: ClusterId, location_name: "SourceCluster"))
    DestinationBackup.struct_class = Types::DestinationBackup

    ExternalSubnetMapping.key = Shapes::ShapeRef.new(shape: ExternalAz)
    ExternalSubnetMapping.value = Shapes::ShapeRef.new(shape: SubnetId)

    Filters.key = Shapes::ShapeRef.new(shape: Field)
    Filters.value = Shapes::ShapeRef.new(shape: Strings)

    Hsm.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ExternalAz, location_name: "AvailabilityZone"))
    Hsm.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    Hsm.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    Hsm.add_member(:eni_id, Shapes::ShapeRef.new(shape: EniId, location_name: "EniId"))
    Hsm.add_member(:eni_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EniIp"))
    Hsm.add_member(:hsm_id, Shapes::ShapeRef.new(shape: HsmId, required: true, location_name: "HsmId"))
    Hsm.add_member(:state, Shapes::ShapeRef.new(shape: HsmState, location_name: "State"))
    Hsm.add_member(:state_message, Shapes::ShapeRef.new(shape: String, location_name: "StateMessage"))
    Hsm.struct_class = Types::Hsm

    Hsms.member = Shapes::ShapeRef.new(shape: Hsm)

    InitializeClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    InitializeClusterRequest.add_member(:signed_cert, Shapes::ShapeRef.new(shape: Cert, required: true, location_name: "SignedCert"))
    InitializeClusterRequest.add_member(:trust_anchor, Shapes::ShapeRef.new(shape: Cert, required: true, location_name: "TrustAnchor"))
    InitializeClusterRequest.struct_class = Types::InitializeClusterRequest

    InitializeClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "State"))
    InitializeClusterResponse.add_member(:state_message, Shapes::ShapeRef.new(shape: StateMessage, location_name: "StateMessage"))
    InitializeClusterResponse.struct_class = Types::InitializeClusterResponse

    ListTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ResourceId"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize, location_name: "MaxResults"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    ListTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    RestoreBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    RestoreBackupRequest.struct_class = Types::RestoreBackupRequest

    RestoreBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    RestoreBackupResponse.struct_class = Types::RestoreBackupResponse

    Strings.member = Shapes::ShapeRef.new(shape: String)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ResourceId"))
    TagResourceRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ResourceId"))
    UntagResourceRequest.add_member(:tag_key_list, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeyList"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-04-28"

      api.metadata = {
        "apiVersion" => "2017-04-28",
        "endpointPrefix" => "cloudhsmv2",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "CloudHSM V2",
        "serviceFullName" => "AWS CloudHSM V2",
        "serviceId" => "CloudHSM V2",
        "signatureVersion" => "v4",
        "signingName" => "cloudhsm",
        "targetPrefix" => "BaldrApiService",
        "uid" => "cloudhsmv2-2017-04-28",
      }

      api.add_operation(:copy_backup_to_region, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyBackupToRegion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyBackupToRegionRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyBackupToRegionResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:create_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:delete_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:delete_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:describe_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:initialize_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitializeCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InitializeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: InitializeClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:restore_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmAccessDeniedException)
      end)
    end

  end
end

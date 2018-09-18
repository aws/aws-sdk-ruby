# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudHSM
  # @api private
  module ClientApi

    include Seahorse::Model

    AZ = Shapes::StringShape.new(name: 'AZ')
    AZList = Shapes::ListShape.new(name: 'AZList')
    AddTagsToResourceRequest = Shapes::StructureShape.new(name: 'AddTagsToResourceRequest')
    AddTagsToResourceResponse = Shapes::StructureShape.new(name: 'AddTagsToResourceResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Certificate = Shapes::StringShape.new(name: 'Certificate')
    CertificateFingerprint = Shapes::StringShape.new(name: 'CertificateFingerprint')
    ClientArn = Shapes::StringShape.new(name: 'ClientArn')
    ClientLabel = Shapes::StringShape.new(name: 'ClientLabel')
    ClientList = Shapes::ListShape.new(name: 'ClientList')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClientVersion = Shapes::StringShape.new(name: 'ClientVersion')
    CloudHsmInternalException = Shapes::StructureShape.new(name: 'CloudHsmInternalException')
    CloudHsmObjectState = Shapes::StringShape.new(name: 'CloudHsmObjectState')
    CloudHsmServiceException = Shapes::StructureShape.new(name: 'CloudHsmServiceException')
    CreateHapgRequest = Shapes::StructureShape.new(name: 'CreateHapgRequest')
    CreateHapgResponse = Shapes::StructureShape.new(name: 'CreateHapgResponse')
    CreateHsmRequest = Shapes::StructureShape.new(name: 'CreateHsmRequest')
    CreateHsmResponse = Shapes::StructureShape.new(name: 'CreateHsmResponse')
    CreateLunaClientRequest = Shapes::StructureShape.new(name: 'CreateLunaClientRequest')
    CreateLunaClientResponse = Shapes::StructureShape.new(name: 'CreateLunaClientResponse')
    DeleteHapgRequest = Shapes::StructureShape.new(name: 'DeleteHapgRequest')
    DeleteHapgResponse = Shapes::StructureShape.new(name: 'DeleteHapgResponse')
    DeleteHsmRequest = Shapes::StructureShape.new(name: 'DeleteHsmRequest')
    DeleteHsmResponse = Shapes::StructureShape.new(name: 'DeleteHsmResponse')
    DeleteLunaClientRequest = Shapes::StructureShape.new(name: 'DeleteLunaClientRequest')
    DeleteLunaClientResponse = Shapes::StructureShape.new(name: 'DeleteLunaClientResponse')
    DescribeHapgRequest = Shapes::StructureShape.new(name: 'DescribeHapgRequest')
    DescribeHapgResponse = Shapes::StructureShape.new(name: 'DescribeHapgResponse')
    DescribeHsmRequest = Shapes::StructureShape.new(name: 'DescribeHsmRequest')
    DescribeHsmResponse = Shapes::StructureShape.new(name: 'DescribeHsmResponse')
    DescribeLunaClientRequest = Shapes::StructureShape.new(name: 'DescribeLunaClientRequest')
    DescribeLunaClientResponse = Shapes::StructureShape.new(name: 'DescribeLunaClientResponse')
    EniId = Shapes::StringShape.new(name: 'EniId')
    ExternalId = Shapes::StringShape.new(name: 'ExternalId')
    GetConfigRequest = Shapes::StructureShape.new(name: 'GetConfigRequest')
    GetConfigResponse = Shapes::StructureShape.new(name: 'GetConfigResponse')
    HapgArn = Shapes::StringShape.new(name: 'HapgArn')
    HapgList = Shapes::ListShape.new(name: 'HapgList')
    HsmArn = Shapes::StringShape.new(name: 'HsmArn')
    HsmList = Shapes::ListShape.new(name: 'HsmList')
    HsmSerialNumber = Shapes::StringShape.new(name: 'HsmSerialNumber')
    HsmStatus = Shapes::StringShape.new(name: 'HsmStatus')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    Label = Shapes::StringShape.new(name: 'Label')
    ListAvailableZonesRequest = Shapes::StructureShape.new(name: 'ListAvailableZonesRequest')
    ListAvailableZonesResponse = Shapes::StructureShape.new(name: 'ListAvailableZonesResponse')
    ListHapgsRequest = Shapes::StructureShape.new(name: 'ListHapgsRequest')
    ListHapgsResponse = Shapes::StructureShape.new(name: 'ListHapgsResponse')
    ListHsmsRequest = Shapes::StructureShape.new(name: 'ListHsmsRequest')
    ListHsmsResponse = Shapes::StructureShape.new(name: 'ListHsmsResponse')
    ListLunaClientsRequest = Shapes::StructureShape.new(name: 'ListLunaClientsRequest')
    ListLunaClientsResponse = Shapes::StructureShape.new(name: 'ListLunaClientsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ModifyHapgRequest = Shapes::StructureShape.new(name: 'ModifyHapgRequest')
    ModifyHapgResponse = Shapes::StructureShape.new(name: 'ModifyHapgResponse')
    ModifyHsmRequest = Shapes::StructureShape.new(name: 'ModifyHsmRequest')
    ModifyHsmResponse = Shapes::StructureShape.new(name: 'ModifyHsmResponse')
    ModifyLunaClientRequest = Shapes::StructureShape.new(name: 'ModifyLunaClientRequest')
    ModifyLunaClientResponse = Shapes::StructureShape.new(name: 'ModifyLunaClientResponse')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartitionArn = Shapes::StringShape.new(name: 'PartitionArn')
    PartitionList = Shapes::ListShape.new(name: 'PartitionList')
    PartitionSerial = Shapes::StringShape.new(name: 'PartitionSerial')
    PartitionSerialList = Shapes::ListShape.new(name: 'PartitionSerialList')
    RemoveTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceRequest')
    RemoveTagsFromResourceResponse = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResponse')
    SshKey = Shapes::StringShape.new(name: 'SshKey')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubscriptionType = Shapes::StringShape.new(name: 'SubscriptionType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::StringShape.new(name: 'Timestamp')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AZList.member = Shapes::ShapeRef.new(shape: AZ)

    AddTagsToResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    AddTagsToResourceRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    AddTagsToResourceRequest.struct_class = Types::AddTagsToResourceRequest

    AddTagsToResourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    AddTagsToResourceResponse.struct_class = Types::AddTagsToResourceResponse

    ClientList.member = Shapes::ShapeRef.new(shape: ClientArn)

    CreateHapgRequest.add_member(:label, Shapes::ShapeRef.new(shape: Label, required: true, location_name: "Label"))
    CreateHapgRequest.struct_class = Types::CreateHapgRequest

    CreateHapgResponse.add_member(:hapg_arn, Shapes::ShapeRef.new(shape: HapgArn, location_name: "HapgArn"))
    CreateHapgResponse.struct_class = Types::CreateHapgResponse

    CreateHsmRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    CreateHsmRequest.add_member(:ssh_key, Shapes::ShapeRef.new(shape: SshKey, required: true, location_name: "SshKey"))
    CreateHsmRequest.add_member(:eni_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EniIp"))
    CreateHsmRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "IamRoleArn"))
    CreateHsmRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    CreateHsmRequest.add_member(:subscription_type, Shapes::ShapeRef.new(shape: SubscriptionType, required: true, location_name: "SubscriptionType"))
    CreateHsmRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateHsmRequest.add_member(:syslog_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "SyslogIp"))
    CreateHsmRequest.struct_class = Types::CreateHsmRequest

    CreateHsmResponse.add_member(:hsm_arn, Shapes::ShapeRef.new(shape: HsmArn, location_name: "HsmArn"))
    CreateHsmResponse.struct_class = Types::CreateHsmResponse

    CreateLunaClientRequest.add_member(:label, Shapes::ShapeRef.new(shape: ClientLabel, location_name: "Label"))
    CreateLunaClientRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, required: true, location_name: "Certificate"))
    CreateLunaClientRequest.struct_class = Types::CreateLunaClientRequest

    CreateLunaClientResponse.add_member(:client_arn, Shapes::ShapeRef.new(shape: ClientArn, location_name: "ClientArn"))
    CreateLunaClientResponse.struct_class = Types::CreateLunaClientResponse

    DeleteHapgRequest.add_member(:hapg_arn, Shapes::ShapeRef.new(shape: HapgArn, required: true, location_name: "HapgArn"))
    DeleteHapgRequest.struct_class = Types::DeleteHapgRequest

    DeleteHapgResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    DeleteHapgResponse.struct_class = Types::DeleteHapgResponse

    DeleteHsmRequest.add_member(:hsm_arn, Shapes::ShapeRef.new(shape: HsmArn, required: true, location_name: "HsmArn"))
    DeleteHsmRequest.struct_class = Types::DeleteHsmRequest

    DeleteHsmResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    DeleteHsmResponse.struct_class = Types::DeleteHsmResponse

    DeleteLunaClientRequest.add_member(:client_arn, Shapes::ShapeRef.new(shape: ClientArn, required: true, location_name: "ClientArn"))
    DeleteLunaClientRequest.struct_class = Types::DeleteLunaClientRequest

    DeleteLunaClientResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    DeleteLunaClientResponse.struct_class = Types::DeleteLunaClientResponse

    DescribeHapgRequest.add_member(:hapg_arn, Shapes::ShapeRef.new(shape: HapgArn, required: true, location_name: "HapgArn"))
    DescribeHapgRequest.struct_class = Types::DescribeHapgRequest

    DescribeHapgResponse.add_member(:hapg_arn, Shapes::ShapeRef.new(shape: HapgArn, location_name: "HapgArn"))
    DescribeHapgResponse.add_member(:hapg_serial, Shapes::ShapeRef.new(shape: String, location_name: "HapgSerial"))
    DescribeHapgResponse.add_member(:hsms_last_action_failed, Shapes::ShapeRef.new(shape: HsmList, location_name: "HsmsLastActionFailed"))
    DescribeHapgResponse.add_member(:hsms_pending_deletion, Shapes::ShapeRef.new(shape: HsmList, location_name: "HsmsPendingDeletion"))
    DescribeHapgResponse.add_member(:hsms_pending_registration, Shapes::ShapeRef.new(shape: HsmList, location_name: "HsmsPendingRegistration"))
    DescribeHapgResponse.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "Label"))
    DescribeHapgResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimestamp"))
    DescribeHapgResponse.add_member(:partition_serial_list, Shapes::ShapeRef.new(shape: PartitionSerialList, location_name: "PartitionSerialList"))
    DescribeHapgResponse.add_member(:state, Shapes::ShapeRef.new(shape: CloudHsmObjectState, location_name: "State"))
    DescribeHapgResponse.struct_class = Types::DescribeHapgResponse

    DescribeHsmRequest.add_member(:hsm_arn, Shapes::ShapeRef.new(shape: HsmArn, location_name: "HsmArn"))
    DescribeHsmRequest.add_member(:hsm_serial_number, Shapes::ShapeRef.new(shape: HsmSerialNumber, location_name: "HsmSerialNumber"))
    DescribeHsmRequest.struct_class = Types::DescribeHsmRequest

    DescribeHsmResponse.add_member(:hsm_arn, Shapes::ShapeRef.new(shape: HsmArn, location_name: "HsmArn"))
    DescribeHsmResponse.add_member(:status, Shapes::ShapeRef.new(shape: HsmStatus, location_name: "Status"))
    DescribeHsmResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: String, location_name: "StatusDetails"))
    DescribeHsmResponse.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AZ, location_name: "AvailabilityZone"))
    DescribeHsmResponse.add_member(:eni_id, Shapes::ShapeRef.new(shape: EniId, location_name: "EniId"))
    DescribeHsmResponse.add_member(:eni_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EniIp"))
    DescribeHsmResponse.add_member(:subscription_type, Shapes::ShapeRef.new(shape: SubscriptionType, location_name: "SubscriptionType"))
    DescribeHsmResponse.add_member(:subscription_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubscriptionStartDate"))
    DescribeHsmResponse.add_member(:subscription_end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubscriptionEndDate"))
    DescribeHsmResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    DescribeHsmResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    DescribeHsmResponse.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "IamRoleArn"))
    DescribeHsmResponse.add_member(:serial_number, Shapes::ShapeRef.new(shape: HsmSerialNumber, location_name: "SerialNumber"))
    DescribeHsmResponse.add_member(:vendor_name, Shapes::ShapeRef.new(shape: String, location_name: "VendorName"))
    DescribeHsmResponse.add_member(:hsm_type, Shapes::ShapeRef.new(shape: String, location_name: "HsmType"))
    DescribeHsmResponse.add_member(:software_version, Shapes::ShapeRef.new(shape: String, location_name: "SoftwareVersion"))
    DescribeHsmResponse.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SshKey, location_name: "SshPublicKey"))
    DescribeHsmResponse.add_member(:ssh_key_last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SshKeyLastUpdated"))
    DescribeHsmResponse.add_member(:server_cert_uri, Shapes::ShapeRef.new(shape: String, location_name: "ServerCertUri"))
    DescribeHsmResponse.add_member(:server_cert_last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ServerCertLastUpdated"))
    DescribeHsmResponse.add_member(:partitions, Shapes::ShapeRef.new(shape: PartitionList, location_name: "Partitions"))
    DescribeHsmResponse.struct_class = Types::DescribeHsmResponse

    DescribeLunaClientRequest.add_member(:client_arn, Shapes::ShapeRef.new(shape: ClientArn, location_name: "ClientArn"))
    DescribeLunaClientRequest.add_member(:certificate_fingerprint, Shapes::ShapeRef.new(shape: CertificateFingerprint, location_name: "CertificateFingerprint"))
    DescribeLunaClientRequest.struct_class = Types::DescribeLunaClientRequest

    DescribeLunaClientResponse.add_member(:client_arn, Shapes::ShapeRef.new(shape: ClientArn, location_name: "ClientArn"))
    DescribeLunaClientResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    DescribeLunaClientResponse.add_member(:certificate_fingerprint, Shapes::ShapeRef.new(shape: CertificateFingerprint, location_name: "CertificateFingerprint"))
    DescribeLunaClientResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTimestamp"))
    DescribeLunaClientResponse.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "Label"))
    DescribeLunaClientResponse.struct_class = Types::DescribeLunaClientResponse

    GetConfigRequest.add_member(:client_arn, Shapes::ShapeRef.new(shape: ClientArn, required: true, location_name: "ClientArn"))
    GetConfigRequest.add_member(:client_version, Shapes::ShapeRef.new(shape: ClientVersion, required: true, location_name: "ClientVersion"))
    GetConfigRequest.add_member(:hapg_list, Shapes::ShapeRef.new(shape: HapgList, required: true, location_name: "HapgList"))
    GetConfigRequest.struct_class = Types::GetConfigRequest

    GetConfigResponse.add_member(:config_type, Shapes::ShapeRef.new(shape: String, location_name: "ConfigType"))
    GetConfigResponse.add_member(:config_file, Shapes::ShapeRef.new(shape: String, location_name: "ConfigFile"))
    GetConfigResponse.add_member(:config_cred, Shapes::ShapeRef.new(shape: String, location_name: "ConfigCred"))
    GetConfigResponse.struct_class = Types::GetConfigResponse

    HapgList.member = Shapes::ShapeRef.new(shape: HapgArn)

    HsmList.member = Shapes::ShapeRef.new(shape: HsmArn)

    ListAvailableZonesRequest.struct_class = Types::ListAvailableZonesRequest

    ListAvailableZonesResponse.add_member(:az_list, Shapes::ShapeRef.new(shape: AZList, location_name: "AZList"))
    ListAvailableZonesResponse.struct_class = Types::ListAvailableZonesResponse

    ListHapgsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHapgsRequest.struct_class = Types::ListHapgsRequest

    ListHapgsResponse.add_member(:hapg_list, Shapes::ShapeRef.new(shape: HapgList, required: true, location_name: "HapgList"))
    ListHapgsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHapgsResponse.struct_class = Types::ListHapgsResponse

    ListHsmsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHsmsRequest.struct_class = Types::ListHsmsRequest

    ListHsmsResponse.add_member(:hsm_list, Shapes::ShapeRef.new(shape: HsmList, location_name: "HsmList"))
    ListHsmsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHsmsResponse.struct_class = Types::ListHsmsResponse

    ListLunaClientsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListLunaClientsRequest.struct_class = Types::ListLunaClientsRequest

    ListLunaClientsResponse.add_member(:client_list, Shapes::ShapeRef.new(shape: ClientList, required: true, location_name: "ClientList"))
    ListLunaClientsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListLunaClientsResponse.struct_class = Types::ListLunaClientsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ModifyHapgRequest.add_member(:hapg_arn, Shapes::ShapeRef.new(shape: HapgArn, required: true, location_name: "HapgArn"))
    ModifyHapgRequest.add_member(:label, Shapes::ShapeRef.new(shape: Label, location_name: "Label"))
    ModifyHapgRequest.add_member(:partition_serial_list, Shapes::ShapeRef.new(shape: PartitionSerialList, location_name: "PartitionSerialList"))
    ModifyHapgRequest.struct_class = Types::ModifyHapgRequest

    ModifyHapgResponse.add_member(:hapg_arn, Shapes::ShapeRef.new(shape: HapgArn, location_name: "HapgArn"))
    ModifyHapgResponse.struct_class = Types::ModifyHapgResponse

    ModifyHsmRequest.add_member(:hsm_arn, Shapes::ShapeRef.new(shape: HsmArn, required: true, location_name: "HsmArn"))
    ModifyHsmRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    ModifyHsmRequest.add_member(:eni_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EniIp"))
    ModifyHsmRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "IamRoleArn"))
    ModifyHsmRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    ModifyHsmRequest.add_member(:syslog_ip, Shapes::ShapeRef.new(shape: IpAddress, location_name: "SyslogIp"))
    ModifyHsmRequest.struct_class = Types::ModifyHsmRequest

    ModifyHsmResponse.add_member(:hsm_arn, Shapes::ShapeRef.new(shape: HsmArn, location_name: "HsmArn"))
    ModifyHsmResponse.struct_class = Types::ModifyHsmResponse

    ModifyLunaClientRequest.add_member(:client_arn, Shapes::ShapeRef.new(shape: ClientArn, required: true, location_name: "ClientArn"))
    ModifyLunaClientRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, required: true, location_name: "Certificate"))
    ModifyLunaClientRequest.struct_class = Types::ModifyLunaClientRequest

    ModifyLunaClientResponse.add_member(:client_arn, Shapes::ShapeRef.new(shape: ClientArn, location_name: "ClientArn"))
    ModifyLunaClientResponse.struct_class = Types::ModifyLunaClientResponse

    PartitionList.member = Shapes::ShapeRef.new(shape: PartitionArn)

    PartitionSerialList.member = Shapes::ShapeRef.new(shape: PartitionSerial)

    RemoveTagsFromResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    RemoveTagsFromResourceRequest.add_member(:tag_key_list, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeyList"))
    RemoveTagsFromResourceRequest.struct_class = Types::RemoveTagsFromResourceRequest

    RemoveTagsFromResourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    RemoveTagsFromResourceResponse.struct_class = Types::RemoveTagsFromResourceResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-05-30"

      api.metadata = {
        "apiVersion" => "2014-05-30",
        "endpointPrefix" => "cloudhsm",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "CloudHSM",
        "serviceFullName" => "Amazon CloudHSM",
        "serviceId" => "CloudHSM",
        "signatureVersion" => "v4",
        "targetPrefix" => "CloudHsmFrontendService",
        "uid" => "cloudhsm-2014-05-30",
      }

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_hapg, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHapg"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHapgRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHapgResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_luna_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLunaClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLunaClientRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLunaClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_hapg, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHapg"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHapgRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHapgResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_luna_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLunaClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLunaClientRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLunaClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_hapg, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHapg"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHapgRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHapgResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_luna_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLunaClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLunaClientRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLunaClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_available_zones, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableZones"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAvailableZonesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAvailableZonesResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_hapgs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHapgs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHapgsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHapgsResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_hsms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHsms"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHsmsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHsmsResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_luna_clients, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLunaClients"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLunaClientsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLunaClientsResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:modify_hapg, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyHapg"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyHapgRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyHapgResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:modify_hsm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyHsm"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyHsmRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyHsmResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:modify_luna_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyLunaClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyLunaClientRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyLunaClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)
    end

  end
end

# frozen_string_literal: true

# This is generated code!

module Aws::CloudHSM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AZ = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#AZ', name: 'AZ', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-]*$"})
    AZList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#AZList', name: 'AZList')
    AddTagsToResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#AddTagsToResourceRequest', name: 'AddTagsToResourceRequest')
    AddTagsToResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#AddTagsToResourceResponse', name: 'AddTagsToResourceResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudhsm#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    Certificate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#Certificate', name: 'Certificate', traits: {"smithy.api#length" => {"min" => 600, "max" => 2400}, "smithy.api#pattern" => "^[\\w :+=./\\n-]*$"})
    CertificateFingerprint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#CertificateFingerprint', name: 'CertificateFingerprint', traits: {"smithy.api#pattern" => "^([0-9a-fA-F][0-9a-fA-F]:){15}[0-9a-fA-F][0-9a-fA-F]$"})
    ClientArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#ClientArn', name: 'ClientArn', traits: {"smithy.api#pattern" => "^arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}$"})
    ClientLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#ClientLabel', name: 'ClientLabel', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_.-]{2,64}$"})
    ClientList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#ClientList', name: 'ClientList')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#ClientToken', name: 'ClientToken', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{1,64}$"})
    ClientVersion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsm#ClientVersion', name: 'ClientVersion')
    CloudHsmInternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CloudHsmInternalException', name: 'CloudHsmInternalException', traits: {"smithy.api#error" => "server"})
    CloudHsmObjectState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsm#CloudHsmObjectState', name: 'CloudHsmObjectState')
    CloudHsmServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CloudHsmServiceException', name: 'CloudHsmServiceException', traits: {"smithy.api#error" => "client"})
    CreateHapgRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CreateHapgRequest', name: 'CreateHapgRequest')
    CreateHapgResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CreateHapgResponse', name: 'CreateHapgResponse')
    CreateHsmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CreateHsmRequest', name: 'CreateHsmRequest', traits: {"smithy.api#xmlName" => "CreateHsmRequest"})
    CreateHsmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CreateHsmResponse', name: 'CreateHsmResponse')
    CreateLunaClientRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CreateLunaClientRequest', name: 'CreateLunaClientRequest')
    CreateLunaClientResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#CreateLunaClientResponse', name: 'CreateLunaClientResponse')
    DeleteHapgRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DeleteHapgRequest', name: 'DeleteHapgRequest')
    DeleteHapgResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DeleteHapgResponse', name: 'DeleteHapgResponse')
    DeleteHsmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DeleteHsmRequest', name: 'DeleteHsmRequest', traits: {"smithy.api#xmlName" => "DeleteHsmRequest"})
    DeleteHsmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DeleteHsmResponse', name: 'DeleteHsmResponse')
    DeleteLunaClientRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DeleteLunaClientRequest', name: 'DeleteLunaClientRequest')
    DeleteLunaClientResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DeleteLunaClientResponse', name: 'DeleteLunaClientResponse')
    DescribeHapgRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DescribeHapgRequest', name: 'DescribeHapgRequest')
    DescribeHapgResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DescribeHapgResponse', name: 'DescribeHapgResponse')
    DescribeHsmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DescribeHsmRequest', name: 'DescribeHsmRequest')
    DescribeHsmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DescribeHsmResponse', name: 'DescribeHsmResponse')
    DescribeLunaClientRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DescribeLunaClientRequest', name: 'DescribeLunaClientRequest')
    DescribeLunaClientResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#DescribeLunaClientResponse', name: 'DescribeLunaClientResponse')
    EniId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#EniId', name: 'EniId', traits: {"smithy.api#pattern" => "^eni-[0-9a-f]{8}$"})
    ExternalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#ExternalId', name: 'ExternalId', traits: {"smithy.api#pattern" => "^[\\w :+=./-]*$"})
    GetConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#GetConfigRequest', name: 'GetConfigRequest')
    GetConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#GetConfigResponse', name: 'GetConfigResponse')
    HapgArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#HapgArn', name: 'HapgArn', traits: {"smithy.api#pattern" => "^arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}$"})
    HapgList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#HapgList', name: 'HapgList')
    HsmArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#HsmArn', name: 'HsmArn', traits: {"smithy.api#pattern" => "^arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}$"})
    HsmList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#HsmList', name: 'HsmList')
    HsmSerialNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#HsmSerialNumber', name: 'HsmSerialNumber', traits: {"smithy.api#pattern" => "^\\d{1,16}$"})
    HsmStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsm#HsmStatus', name: 'HsmStatus')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#pattern" => "^arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_\\+=,\\.\\-@]{1,64}$"})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#IpAddress', name: 'IpAddress', traits: {"smithy.api#pattern" => "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"})
    Label = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#Label', name: 'Label', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_.-]{1,64}$"})
    ListAvailableZonesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListAvailableZonesRequest', name: 'ListAvailableZonesRequest')
    ListAvailableZonesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListAvailableZonesResponse', name: 'ListAvailableZonesResponse')
    ListHapgsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListHapgsRequest', name: 'ListHapgsRequest')
    ListHapgsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListHapgsResponse', name: 'ListHapgsResponse')
    ListHsmsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListHsmsRequest', name: 'ListHsmsRequest')
    ListHsmsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListHsmsResponse', name: 'ListHsmsResponse')
    ListLunaClientsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListLunaClientsRequest', name: 'ListLunaClientsRequest')
    ListLunaClientsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListLunaClientsResponse', name: 'ListLunaClientsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ModifyHapgRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ModifyHapgRequest', name: 'ModifyHapgRequest')
    ModifyHapgResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ModifyHapgResponse', name: 'ModifyHapgResponse')
    ModifyHsmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ModifyHsmRequest', name: 'ModifyHsmRequest', traits: {"smithy.api#xmlName" => "ModifyHsmRequest"})
    ModifyHsmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ModifyHsmResponse', name: 'ModifyHsmResponse')
    ModifyLunaClientRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ModifyLunaClientRequest', name: 'ModifyLunaClientRequest')
    ModifyLunaClientResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#ModifyLunaClientResponse', name: 'ModifyLunaClientResponse')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9+/]*$"})
    PartitionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#PartitionArn', name: 'PartitionArn', traits: {"smithy.api#pattern" => "^arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}/partition-[0-9]{6,12}$"})
    PartitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#PartitionList', name: 'PartitionList')
    PartitionSerial = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#PartitionSerial', name: 'PartitionSerial', traits: {"smithy.api#pattern" => "^\\d{6,12}$"})
    PartitionSerialList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#PartitionSerialList', name: 'PartitionSerialList')
    RemoveTagsFromResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#RemoveTagsFromResourceRequest', name: 'RemoveTagsFromResourceRequest')
    RemoveTagsFromResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#RemoveTagsFromResourceResponse', name: 'RemoveTagsFromResourceResponse')
    SshKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#SshKey', name: 'SshKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9+/= ._:\\\\@-]*$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#String', name: 'String', traits: {"smithy.api#pattern" => "^[\\w :+=./\\\\-]*$"})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-[0-9a-f]{8}$"})
    SubscriptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudhsm#SubscriptionType', name: 'SubscriptionType')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudhsm#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudhsm#TagList', name: 'TagList')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#Timestamp', name: 'Timestamp', traits: {"smithy.api#pattern" => "^\\d*$"})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudhsm#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-[0-9a-f]{8}$"})

    AZList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AZ)
    AddTagsToResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.</p>", "smithy.api#required" => {}}))
    AddTagsToResourceRequest.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>", "smithy.api#required" => {}}))
    AddTagsToResourceRequest.type = Types::AddTagsToResourceRequest
    AddTagsToResourceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the operation.</p>", "smithy.api#required" => {}}))
    AddTagsToResourceResponse.type = Types::AddTagsToResourceResponse
    ClientList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn)
    ClientVersion.add_member(:five_one, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIVE_ONE', traits: {"smithy.api#enumValue" => "5.1"}))
    ClientVersion.add_member(:five_three, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIVE_THREE', traits: {"smithy.api#enumValue" => "5.3"}))
    CloudHsmInternalException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Additional information about the error.</p>"}))
    CloudHsmInternalException.add_member(:retryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'retryable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the action can be retried.</p>"}))
    CloudHsmInternalException.type = Types::CloudHsmInternalException
    CloudHsmObjectState.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    CloudHsmObjectState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    CloudHsmObjectState.add_member(:degraded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    CloudHsmServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Additional information about the error.</p>"}))
    CloudHsmServiceException.add_member(:retryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'retryable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the action can be retried.</p>"}))
    CloudHsmServiceException.type = Types::CloudHsmServiceException
    CreateHapgRequest.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Label, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label of the new high-availability partition group.</p>", "smithy.api#required" => {}}))
    CreateHapgRequest.type = Types::CreateHapgRequest
    CreateHapgResponse.add_member(:hapg_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgArn, location_name: 'HapgArn', traits: {"smithy.api#documentation" => "<p>The ARN of the high-availability partition group.</p>"}))
    CreateHapgResponse.type = Types::CreateHapgResponse
    CreateHsmRequest.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The identifier of the subnet in your VPC in which to place the HSM.</p>", "smithy.api#required" => {}, "smithy.api#xmlName" => "SubnetId"}))
    CreateHsmRequest.add_member(:ssh_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SshKey, location_name: 'SshKey', traits: {"smithy.api#documentation" => "<p>The SSH public key to install on the HSM.</p>", "smithy.api#required" => {}, "smithy.api#xmlName" => "SshKey"}))
    CreateHsmRequest.add_member(:eni_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'EniIp', traits: {"smithy.api#documentation" => "<p>The IP address to assign to the HSM's ENI.</p>\n         <p>If an IP address is not specified, an IP address will be randomly chosen from the CIDR\n      range of the subnet.</p>", "smithy.api#xmlName" => "EniIp"}))
    CreateHsmRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your\n      behalf.</p>", "smithy.api#required" => {}, "smithy.api#xmlName" => "IamRoleArn"}))
    CreateHsmRequest.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#documentation" => "<p>The external ID from <code>IamRoleArn</code>, if present.</p>", "smithy.api#xmlName" => "ExternalId"}))
    CreateHsmRequest.add_member(:subscription_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'SubscriptionType', traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "SubscriptionType"}))
    CreateHsmRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A user-defined token to ensure idempotence. Subsequent calls to this operation with the\n      same token will be ignored.</p>", "smithy.api#xmlName" => "ClientToken"}))
    CreateHsmRequest.add_member(:syslog_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'SyslogIp', traits: {"smithy.api#documentation" => "<p>The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one\n      syslog monitoring server.</p>", "smithy.api#xmlName" => "SyslogIp"}))
    CreateHsmRequest.type = Types::CreateHsmRequest
    CreateHsmResponse.add_member(:hsm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmArn, location_name: 'HsmArn', traits: {"smithy.api#documentation" => "<p>The ARN of the HSM.</p>"}))
    CreateHsmResponse.type = Types::CreateHsmResponse
    CreateLunaClientRequest.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLabel, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label for the client.</p>"}))
    CreateLunaClientRequest.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used\n      by this client.</p>", "smithy.api#required" => {}}))
    CreateLunaClientRequest.type = Types::CreateLunaClientRequest
    CreateLunaClientResponse.add_member(:client_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn, location_name: 'ClientArn', traits: {"smithy.api#documentation" => "<p>The ARN of the client.</p>"}))
    CreateLunaClientResponse.type = Types::CreateLunaClientResponse
    DeleteHapgRequest.add_member(:hapg_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgArn, location_name: 'HapgArn', traits: {"smithy.api#documentation" => "<p>The ARN of the high-availability partition group to delete.</p>", "smithy.api#required" => {}}))
    DeleteHapgRequest.type = Types::DeleteHapgRequest
    DeleteHapgResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the action.</p>", "smithy.api#required" => {}}))
    DeleteHapgResponse.type = Types::DeleteHapgResponse
    DeleteHsmRequest.add_member(:hsm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmArn, location_name: 'HsmArn', traits: {"smithy.api#documentation" => "<p>The ARN of the HSM to delete.</p>", "smithy.api#required" => {}, "smithy.api#xmlName" => "HsmArn"}))
    DeleteHsmRequest.type = Types::DeleteHsmRequest
    DeleteHsmResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the operation.</p>", "smithy.api#required" => {}}))
    DeleteHsmResponse.type = Types::DeleteHsmResponse
    DeleteLunaClientRequest.add_member(:client_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn, location_name: 'ClientArn', traits: {"smithy.api#documentation" => "<p>The ARN of the client to delete.</p>", "smithy.api#required" => {}}))
    DeleteLunaClientRequest.type = Types::DeleteLunaClientRequest
    DeleteLunaClientResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the action.</p>", "smithy.api#required" => {}}))
    DeleteLunaClientResponse.type = Types::DeleteLunaClientResponse
    DescribeHapgRequest.add_member(:hapg_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgArn, location_name: 'HapgArn', traits: {"smithy.api#documentation" => "<p>The ARN of the high-availability partition group to describe.</p>", "smithy.api#required" => {}}))
    DescribeHapgRequest.type = Types::DescribeHapgRequest
    DescribeHapgResponse.add_member(:hapg_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgArn, location_name: 'HapgArn', traits: {"smithy.api#documentation" => "<p>The ARN of the high-availability partition group.</p>"}))
    DescribeHapgResponse.add_member(:hapg_serial, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HapgSerial', traits: {"smithy.api#documentation" => "<p>The serial number of the high-availability partition group.</p>"}))
    DescribeHapgResponse.add_member(:hsms_last_action_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmList, location_name: 'HsmsLastActionFailed', traits: {"smithy.api#documentation" => "<p></p>"}))
    DescribeHapgResponse.add_member(:hsms_pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmList, location_name: 'HsmsPendingDeletion', traits: {"smithy.api#documentation" => "<p></p>"}))
    DescribeHapgResponse.add_member(:hsms_pending_registration, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmList, location_name: 'HsmsPendingRegistration', traits: {"smithy.api#documentation" => "<p></p>"}))
    DescribeHapgResponse.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Label, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label for the high-availability partition group.</p>"}))
    DescribeHapgResponse.add_member(:last_modified_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time the high-availability partition group was last modified.</p>"}))
    DescribeHapgResponse.add_member(:partition_serial_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionSerialList, location_name: 'PartitionSerialList', traits: {"smithy.api#documentation" => "<p>The list of partition serial numbers that belong to the high-availability partition\n      group.</p>"}))
    DescribeHapgResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmObjectState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the high-availability partition group.</p>"}))
    DescribeHapgResponse.type = Types::DescribeHapgResponse
    DescribeHsmRequest.add_member(:hsm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmArn, location_name: 'HsmArn', traits: {"smithy.api#documentation" => "<p>The ARN of the HSM. Either the <code>HsmArn</code> or the <code>SerialNumber</code>\n      parameter must be specified.</p>"}))
    DescribeHsmRequest.add_member(:hsm_serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmSerialNumber, location_name: 'HsmSerialNumber', traits: {"smithy.api#documentation" => "<p>The serial number of the HSM. Either the <code>HsmArn</code> or the\n        <code>HsmSerialNumber</code> parameter must be specified.</p>"}))
    DescribeHsmRequest.type = Types::DescribeHsmRequest
    DescribeHsmResponse.add_member(:hsm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmArn, location_name: 'HsmArn', traits: {"smithy.api#documentation" => "<p>The ARN of the HSM.</p>"}))
    DescribeHsmResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the HSM.</p>"}))
    DescribeHsmResponse.add_member(:status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusDetails', traits: {"smithy.api#documentation" => "<p>Contains additional information about the status of the HSM.</p>"}))
    DescribeHsmResponse.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AZ, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone that the HSM is in.</p>"}))
    DescribeHsmResponse.add_member(:eni_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EniId, location_name: 'EniId', traits: {"smithy.api#documentation" => "<p>The identifier of the elastic network interface (ENI) attached to the HSM.</p>"}))
    DescribeHsmResponse.add_member(:eni_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'EniIp', traits: {"smithy.api#documentation" => "<p>The IP address assigned to the HSM's ENI.</p>"}))
    DescribeHsmResponse.add_member(:subscription_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'SubscriptionType'))
    DescribeHsmResponse.add_member(:subscription_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubscriptionStartDate', traits: {"smithy.api#documentation" => "<p>The subscription start date.</p>"}))
    DescribeHsmResponse.add_member(:subscription_end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubscriptionEndDate', traits: {"smithy.api#documentation" => "<p>The subscription end date.</p>"}))
    DescribeHsmResponse.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC that the HSM is in.</p>"}))
    DescribeHsmResponse.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The identifier of the subnet that the HSM is in.</p>"}))
    DescribeHsmResponse.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role assigned to the HSM.</p>"}))
    DescribeHsmResponse.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmSerialNumber, location_name: 'SerialNumber', traits: {"smithy.api#documentation" => "<p>The serial number of the HSM.</p>"}))
    DescribeHsmResponse.add_member(:vendor_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VendorName', traits: {"smithy.api#documentation" => "<p>The name of the HSM vendor.</p>"}))
    DescribeHsmResponse.add_member(:hsm_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmType', traits: {"smithy.api#documentation" => "<p>The HSM model type.</p>"}))
    DescribeHsmResponse.add_member(:software_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SoftwareVersion', traits: {"smithy.api#documentation" => "<p>The HSM software version.</p>"}))
    DescribeHsmResponse.add_member(:ssh_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SshKey, location_name: 'SshPublicKey', traits: {"smithy.api#documentation" => "<p>The public SSH key.</p>"}))
    DescribeHsmResponse.add_member(:ssh_key_last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SshKeyLastUpdated', traits: {"smithy.api#documentation" => "<p>The date and time that the SSH key was last updated.</p>"}))
    DescribeHsmResponse.add_member(:server_cert_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerCertUri', traits: {"smithy.api#documentation" => "<p>The URI of the certificate server.</p>"}))
    DescribeHsmResponse.add_member(:server_cert_last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ServerCertLastUpdated', traits: {"smithy.api#documentation" => "<p>The date and time that the server certificate was last updated.</p>"}))
    DescribeHsmResponse.add_member(:partitions, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionList, location_name: 'Partitions', traits: {"smithy.api#documentation" => "<p>The list of partitions on the HSM.</p>"}))
    DescribeHsmResponse.type = Types::DescribeHsmResponse
    DescribeLunaClientRequest.add_member(:client_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn, location_name: 'ClientArn', traits: {"smithy.api#documentation" => "<p>The ARN of the client.</p>"}))
    DescribeLunaClientRequest.add_member(:certificate_fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateFingerprint, location_name: 'CertificateFingerprint', traits: {"smithy.api#documentation" => "<p>The certificate fingerprint.</p>"}))
    DescribeLunaClientRequest.type = Types::DescribeLunaClientRequest
    DescribeLunaClientResponse.add_member(:client_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn, location_name: 'ClientArn', traits: {"smithy.api#documentation" => "<p>The ARN of the client.</p>"}))
    DescribeLunaClientResponse.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The certificate installed on the HSMs used by this client.</p>"}))
    DescribeLunaClientResponse.add_member(:certificate_fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateFingerprint, location_name: 'CertificateFingerprint', traits: {"smithy.api#documentation" => "<p>The certificate fingerprint.</p>"}))
    DescribeLunaClientResponse.add_member(:last_modified_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time the client was last modified.</p>"}))
    DescribeLunaClientResponse.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Label, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label of the client.</p>"}))
    DescribeLunaClientResponse.type = Types::DescribeLunaClientResponse
    GetConfigRequest.add_member(:client_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn, location_name: 'ClientArn', traits: {"smithy.api#documentation" => "<p>The ARN of the client.</p>", "smithy.api#required" => {}}))
    GetConfigRequest.add_member(:client_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientVersion, location_name: 'ClientVersion', traits: {"smithy.api#documentation" => "<p>The client version.</p>", "smithy.api#required" => {}}))
    GetConfigRequest.add_member(:hapg_list, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgList, location_name: 'HapgList', traits: {"smithy.api#documentation" => "<p>A list of ARNs that identify the high-availability partition groups that are associated\n      with the client.</p>", "smithy.api#required" => {}}))
    GetConfigRequest.type = Types::GetConfigRequest
    GetConfigResponse.add_member(:config_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigType', traits: {"smithy.api#documentation" => "<p>The type of credentials.</p>"}))
    GetConfigResponse.add_member(:config_file, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigFile', traits: {"smithy.api#documentation" => "<p>The chrystoki.conf configuration file.</p>"}))
    GetConfigResponse.add_member(:config_cred, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigCred', traits: {"smithy.api#documentation" => "<p>The certificate file containing the server.pem files of the HSMs.</p>"}))
    GetConfigResponse.type = Types::GetConfigResponse
    HapgList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HapgArn)
    HsmList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HsmArn)
    HsmStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    HsmStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    HsmStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    HsmStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    HsmStatus.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    HsmStatus.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    HsmStatus.add_member(:degraded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Additional information about the error.</p>"}))
    InvalidRequestException.add_member(:retryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'retryable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates if the action can be retried.</p>"}))
    InvalidRequestException.type = Types::InvalidRequestException
    ListAvailableZonesRequest.type = Types::ListAvailableZonesRequest
    ListAvailableZonesResponse.add_member(:az_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AZList, location_name: 'AZList', traits: {"smithy.api#documentation" => "<p>The list of Availability Zones that have available AWS CloudHSM capacity.</p>"}))
    ListAvailableZonesResponse.type = Types::ListAvailableZonesResponse
    ListHapgsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>NextToken</code> value from a previous call to <code>ListHapgs</code>. Pass\n      null if this is the first call.</p>"}))
    ListHapgsRequest.type = Types::ListHapgsRequest
    ListHapgsResponse.add_member(:hapg_list, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgList, location_name: 'HapgList', traits: {"smithy.api#documentation" => "<p>The list of high-availability partition groups.</p>", "smithy.api#required" => {}}))
    ListHapgsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value to <code>ListHapgs</code> to\n      retrieve the next set of items.</p>"}))
    ListHapgsResponse.type = Types::ListHapgsResponse
    ListHsmsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>NextToken</code> value from a previous call to <code>ListHsms</code>. Pass\n      null if this is the first call.</p>"}))
    ListHsmsRequest.type = Types::ListHsmsRequest
    ListHsmsResponse.add_member(:hsm_list, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmList, location_name: 'HsmList', traits: {"smithy.api#documentation" => "<p>The list of ARNs that identify the HSMs.</p>"}))
    ListHsmsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this value to <code>ListHsms</code> to\n      retrieve the next set of items.</p>"}))
    ListHsmsResponse.type = Types::ListHsmsResponse
    ListLunaClientsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The <code>NextToken</code> value from a previous call to <code>ListLunaClients</code>.\n      Pass null if this is the first call.</p>"}))
    ListLunaClientsRequest.type = Types::ListLunaClientsRequest
    ListLunaClientsResponse.add_member(:client_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientList, location_name: 'ClientList', traits: {"smithy.api#documentation" => "<p>The list of clients.</p>", "smithy.api#required" => {}}))
    ListLunaClientsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If not null, more results are available. Pass this to <code>ListLunaClients</code> to\n      retrieve the next set of items.</p>"}))
    ListLunaClientsResponse.type = Types::ListLunaClientsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModifyHapgRequest.add_member(:hapg_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgArn, location_name: 'HapgArn', traits: {"smithy.api#documentation" => "<p>The ARN of the high-availability partition group to modify.</p>", "smithy.api#required" => {}}))
    ModifyHapgRequest.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Label, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The new label for the high-availability partition group.</p>"}))
    ModifyHapgRequest.add_member(:partition_serial_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionSerialList, location_name: 'PartitionSerialList', traits: {"smithy.api#documentation" => "<p>The list of partition serial numbers to make members of the high-availability partition\n      group.</p>"}))
    ModifyHapgRequest.type = Types::ModifyHapgRequest
    ModifyHapgResponse.add_member(:hapg_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HapgArn, location_name: 'HapgArn', traits: {"smithy.api#documentation" => "<p>The ARN of the high-availability partition group.</p>"}))
    ModifyHapgResponse.type = Types::ModifyHapgResponse
    ModifyHsmRequest.add_member(:hsm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmArn, location_name: 'HsmArn', traits: {"smithy.api#documentation" => "<p>The ARN of the HSM to modify.</p>", "smithy.api#required" => {}, "smithy.api#xmlName" => "HsmArn"}))
    ModifyHsmRequest.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The new identifier of the subnet that the HSM is in. The new subnet must be in the same\n      Availability Zone as the current subnet.</p>", "smithy.api#xmlName" => "SubnetId"}))
    ModifyHsmRequest.add_member(:eni_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'EniIp', traits: {"smithy.api#documentation" => "<p>The new IP address for the elastic network interface (ENI) attached to the\n      HSM.</p>\n         <p>If the HSM is moved to a different subnet, and an IP address is not specified, an IP\n      address will be randomly chosen from the CIDR range of the new subnet.</p>", "smithy.api#xmlName" => "EniIp"}))
    ModifyHsmRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The new IAM role ARN.</p>", "smithy.api#xmlName" => "IamRoleArn"}))
    ModifyHsmRequest.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#documentation" => "<p>The new external ID.</p>", "smithy.api#xmlName" => "ExternalId"}))
    ModifyHsmRequest.add_member(:syslog_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'SyslogIp', traits: {"smithy.api#documentation" => "<p>The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports\n      one syslog monitoring server.</p>", "smithy.api#xmlName" => "SyslogIp"}))
    ModifyHsmRequest.type = Types::ModifyHsmRequest
    ModifyHsmResponse.add_member(:hsm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmArn, location_name: 'HsmArn', traits: {"smithy.api#documentation" => "<p>The ARN of the HSM.</p>"}))
    ModifyHsmResponse.type = Types::ModifyHsmResponse
    ModifyLunaClientRequest.add_member(:client_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn, location_name: 'ClientArn', traits: {"smithy.api#documentation" => "<p>The ARN of the client.</p>", "smithy.api#required" => {}}))
    ModifyLunaClientRequest.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The new certificate for the client.</p>", "smithy.api#required" => {}}))
    ModifyLunaClientRequest.type = Types::ModifyLunaClientRequest
    ModifyLunaClientResponse.add_member(:client_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientArn, location_name: 'ClientArn', traits: {"smithy.api#documentation" => "<p>The ARN of the client.</p>"}))
    ModifyLunaClientResponse.type = Types::ModifyLunaClientResponse
    PartitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionArn)
    PartitionSerialList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionSerial)
    RemoveTagsFromResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.add_member(:tag_key_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeyList', traits: {"smithy.api#documentation" => "<p>The tag key or keys to remove.</p>\n         <p>Specify only the tag key to remove (not the value). To overwrite the value for an\n      existing tag, use <a>AddTagsToResource</a>.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromResourceRequest.type = Types::RemoveTagsFromResourceRequest
    RemoveTagsFromResourceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the operation.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromResourceResponse.type = Types::RemoveTagsFromResourceResponse
    SubscriptionType.add_member(:production, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCTION', traits: {"smithy.api#enumValue" => "PRODUCTION"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)

    CloudHsmFrontendService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudhsm#CloudHsmFrontendService"
      service.name = "CloudHsmFrontendService"
      service.version = "2014-05-30"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudHSM", "arnNamespace" => "cloudhsm", "cloudFormationName" => "CloudHSM", "cloudTrailEventSource" => "cloudhsm.amazonaws.com", "endpointPrefix" => "cloudhsm"}, "aws.auth#sigv4" => {"name" => "cloudhsm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon CloudHSM"}
      service.add_operation(:add_tags_to_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:create_hapg, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#CreateHapg"
        operation.name = "CreateHapg"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHapgRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHapgResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:create_hsm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#CreateHsm"
        operation.name = "CreateHsm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:create_luna_client, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#CreateLunaClient"
        operation.name = "CreateLunaClient"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLunaClientRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLunaClientResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:delete_hapg, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#DeleteHapg"
        operation.name = "DeleteHapg"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHapgRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHapgResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:delete_hsm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#DeleteHsm"
        operation.name = "DeleteHsm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:delete_luna_client, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#DeleteLunaClient"
        operation.name = "DeleteLunaClient"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLunaClientRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLunaClientResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:describe_hapg, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#DescribeHapg"
        operation.name = "DescribeHapg"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHapgRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHapgResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:describe_hsm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#DescribeHsm"
        operation.name = "DescribeHsm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHsmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHsmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:describe_luna_client, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#DescribeLunaClient"
        operation.name = "DescribeLunaClient"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLunaClientRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLunaClientResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:get_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#GetConfig"
        operation.name = "GetConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:list_available_zones, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ListAvailableZones"
        operation.name = "ListAvailableZones"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableZonesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableZonesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:list_hapgs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ListHapgs"
        operation.name = "ListHapgs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHapgsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHapgsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:list_hsms, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ListHsms"
        operation.name = "ListHsms"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHsmsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHsmsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:list_luna_clients, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ListLunaClients"
        operation.name = "ListLunaClients"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLunaClientsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLunaClientsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:modify_hapg, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ModifyHapg"
        operation.name = "ModifyHapg"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyHapgRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyHapgResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:modify_hsm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ModifyHsm"
        operation.name = "ModifyHsm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyHsmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyHsmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:modify_luna_client, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#ModifyLunaClient"
        operation.name = "ModifyLunaClient"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyLunaClientRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyLunaClientResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
      end)
      service.add_operation(:remove_tags_from_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudhsm#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CloudHsmServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API is deprecated."}}
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

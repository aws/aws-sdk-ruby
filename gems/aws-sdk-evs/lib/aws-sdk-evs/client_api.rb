# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Evs
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Check = Shapes::StructureShape.new(name: 'Check')
    CheckResult = Shapes::StringShape.new(name: 'CheckResult')
    CheckType = Shapes::StringShape.new(name: 'CheckType')
    ChecksList = Shapes::ListShape.new(name: 'ChecksList')
    Cidr = Shapes::StringShape.new(name: 'Cidr')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConnectivityInfo = Shapes::StructureShape.new(name: 'ConnectivityInfo')
    CreateEnvironmentHostRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentHostRequest')
    CreateEnvironmentHostResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentHostResponse')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentResponse')
    DedicatedHostId = Shapes::StringShape.new(name: 'DedicatedHostId')
    DeleteEnvironmentHostRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentHostRequest')
    DeleteEnvironmentHostResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentHostResponse')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentResponse')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentState = Shapes::StringShape.new(name: 'EnvironmentState')
    EnvironmentStateList = Shapes::ListShape.new(name: 'EnvironmentStateList')
    EnvironmentSummary = Shapes::StructureShape.new(name: 'EnvironmentSummary')
    EnvironmentSummaryList = Shapes::ListShape.new(name: 'EnvironmentSummaryList')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    Host = Shapes::StructureShape.new(name: 'Host')
    HostInfoForCreate = Shapes::StructureShape.new(name: 'HostInfoForCreate')
    HostInfoForCreateList = Shapes::ListShape.new(name: 'HostInfoForCreateList')
    HostList = Shapes::ListShape.new(name: 'HostList')
    HostName = Shapes::StringShape.new(name: 'HostName')
    HostState = Shapes::StringShape.new(name: 'HostState')
    InitialVlanInfo = Shapes::StructureShape.new(name: 'InitialVlanInfo')
    InitialVlans = Shapes::StructureShape.new(name: 'InitialVlans')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    KeyName = Shapes::StringShape.new(name: 'KeyName')
    LicenseInfo = Shapes::StructureShape.new(name: 'LicenseInfo')
    LicenseInfoList = Shapes::ListShape.new(name: 'LicenseInfoList')
    ListEnvironmentHostsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentHostsRequest')
    ListEnvironmentHostsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentHostsResponse')
    ListEnvironmentVlansRequest = Shapes::StructureShape.new(name: 'ListEnvironmentVlansRequest')
    ListEnvironmentVlansResponse = Shapes::StructureShape.new(name: 'ListEnvironmentVlansResponse')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaceList = Shapes::ListShape.new(name: 'NetworkInterfaceList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PlacementGroupId = Shapes::StringShape.new(name: 'PlacementGroupId')
    RequestTagMap = Shapes::MapShape.new(name: 'RequestTagMap')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseTagMap = Shapes::MapShape.new(name: 'ResponseTagMap')
    RouteServerPeering = Shapes::StringShape.new(name: 'RouteServerPeering')
    RouteServerPeeringList = Shapes::ListShape.new(name: 'RouteServerPeeringList')
    Secret = Shapes::StructureShape.new(name: 'Secret')
    SecretList = Shapes::ListShape.new(name: 'SecretList')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    ServiceAccessSecurityGroups = Shapes::StructureShape.new(name: 'ServiceAccessSecurityGroups')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SolutionKey = Shapes::StringShape.new(name: 'SolutionKey')
    StateDetails = Shapes::StringShape.new(name: 'StateDetails')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagPolicyException = Shapes::StructureShape.new(name: 'TagPolicyException')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    VSanLicenseKey = Shapes::StringShape.new(name: 'VSanLicenseKey')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VcfHostnames = Shapes::StructureShape.new(name: 'VcfHostnames')
    VcfVersion = Shapes::StringShape.new(name: 'VcfVersion')
    Vlan = Shapes::StructureShape.new(name: 'Vlan')
    VlanId = Shapes::IntegerShape.new(name: 'VlanId')
    VlanList = Shapes::ListShape.new(name: 'VlanList')
    VlanState = Shapes::StringShape.new(name: 'VlanState')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    Check.add_member(:type, Shapes::ShapeRef.new(shape: CheckType, location_name: "type"))
    Check.add_member(:result, Shapes::ShapeRef.new(shape: CheckResult, location_name: "result"))
    Check.add_member(:impaired_since, Shapes::ShapeRef.new(shape: Timestamp, location_name: "impairedSince"))
    Check.struct_class = Types::Check

    ChecksList.member = Shapes::ShapeRef.new(shape: Check)

    ConnectivityInfo.add_member(:private_route_server_peerings, Shapes::ShapeRef.new(shape: RouteServerPeeringList, required: true, location_name: "privateRouteServerPeerings"))
    ConnectivityInfo.struct_class = Types::ConnectivityInfo

    CreateEnvironmentHostRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEnvironmentHostRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateEnvironmentHostRequest.add_member(:host, Shapes::ShapeRef.new(shape: HostInfoForCreate, required: true, location_name: "host"))
    CreateEnvironmentHostRequest.struct_class = Types::CreateEnvironmentHostRequest

    CreateEnvironmentHostResponse.add_member(:environment_summary, Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: "environmentSummary"))
    CreateEnvironmentHostResponse.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "host"))
    CreateEnvironmentHostResponse.struct_class = Types::CreateEnvironmentHostResponse

    CreateEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEnvironmentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "environmentName"))
    CreateEnvironmentRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateEnvironmentRequest.add_member(:service_access_security_groups, Shapes::ShapeRef.new(shape: ServiceAccessSecurityGroups, location_name: "serviceAccessSecurityGroups"))
    CreateEnvironmentRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    CreateEnvironmentRequest.add_member(:service_access_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "serviceAccessSubnetId"))
    CreateEnvironmentRequest.add_member(:vcf_version, Shapes::ShapeRef.new(shape: VcfVersion, required: true, location_name: "vcfVersion"))
    CreateEnvironmentRequest.add_member(:terms_accepted, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "termsAccepted"))
    CreateEnvironmentRequest.add_member(:license_info, Shapes::ShapeRef.new(shape: LicenseInfoList, required: true, location_name: "licenseInfo"))
    CreateEnvironmentRequest.add_member(:initial_vlans, Shapes::ShapeRef.new(shape: InitialVlans, required: true, location_name: "initialVlans"))
    CreateEnvironmentRequest.add_member(:hosts, Shapes::ShapeRef.new(shape: HostInfoForCreateList, required: true, location_name: "hosts"))
    CreateEnvironmentRequest.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: ConnectivityInfo, required: true, location_name: "connectivityInfo"))
    CreateEnvironmentRequest.add_member(:vcf_hostnames, Shapes::ShapeRef.new(shape: VcfHostnames, required: true, location_name: "vcfHostnames"))
    CreateEnvironmentRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "siteId"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    CreateEnvironmentResponse.struct_class = Types::CreateEnvironmentResponse

    DeleteEnvironmentHostRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteEnvironmentHostRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DeleteEnvironmentHostRequest.add_member(:host_name, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "hostName"))
    DeleteEnvironmentHostRequest.struct_class = Types::DeleteEnvironmentHostRequest

    DeleteEnvironmentHostResponse.add_member(:environment_summary, Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: "environmentSummary"))
    DeleteEnvironmentHostResponse.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "host"))
    DeleteEnvironmentHostResponse.struct_class = Types::DeleteEnvironmentHostResponse

    DeleteEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    DeleteEnvironmentResponse.struct_class = Types::DeleteEnvironmentResponse

    Environment.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    Environment.add_member(:environment_state, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "environmentState"))
    Environment.add_member(:state_details, Shapes::ShapeRef.new(shape: StateDetails, location_name: "stateDetails"))
    Environment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Environment.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Environment.add_member(:environment_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "environmentArn"))
    Environment.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "environmentName"))
    Environment.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    Environment.add_member(:service_access_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "serviceAccessSubnetId"))
    Environment.add_member(:vcf_version, Shapes::ShapeRef.new(shape: VcfVersion, location_name: "vcfVersion"))
    Environment.add_member(:terms_accepted, Shapes::ShapeRef.new(shape: Boolean, location_name: "termsAccepted"))
    Environment.add_member(:license_info, Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: "licenseInfo"))
    Environment.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location_name: "siteId"))
    Environment.add_member(:environment_status, Shapes::ShapeRef.new(shape: CheckResult, location_name: "environmentStatus"))
    Environment.add_member(:checks, Shapes::ShapeRef.new(shape: ChecksList, location_name: "checks"))
    Environment.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: "connectivityInfo"))
    Environment.add_member(:vcf_hostnames, Shapes::ShapeRef.new(shape: VcfHostnames, location_name: "vcfHostnames"))
    Environment.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    Environment.add_member(:service_access_security_groups, Shapes::ShapeRef.new(shape: ServiceAccessSecurityGroups, location_name: "serviceAccessSecurityGroups"))
    Environment.add_member(:credentials, Shapes::ShapeRef.new(shape: SecretList, location_name: "credentials"))
    Environment.struct_class = Types::Environment

    EnvironmentStateList.member = Shapes::ShapeRef.new(shape: EnvironmentState)

    EnvironmentSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    EnvironmentSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "environmentName"))
    EnvironmentSummary.add_member(:vcf_version, Shapes::ShapeRef.new(shape: VcfVersion, location_name: "vcfVersion"))
    EnvironmentSummary.add_member(:environment_status, Shapes::ShapeRef.new(shape: CheckResult, location_name: "environmentStatus"))
    EnvironmentSummary.add_member(:environment_state, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "environmentState"))
    EnvironmentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EnvironmentSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    EnvironmentSummary.add_member(:environment_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "environmentArn"))
    EnvironmentSummary.struct_class = Types::EnvironmentSummary

    EnvironmentSummaryList.member = Shapes::ShapeRef.new(shape: EnvironmentSummary)

    GetEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    Host.add_member(:host_name, Shapes::ShapeRef.new(shape: HostName, location_name: "hostName"))
    Host.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    Host.add_member(:key_name, Shapes::ShapeRef.new(shape: KeyName, location_name: "keyName"))
    Host.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    Host.add_member(:placement_group_id, Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: "placementGroupId"))
    Host.add_member(:dedicated_host_id, Shapes::ShapeRef.new(shape: DedicatedHostId, location_name: "dedicatedHostId"))
    Host.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Host.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Host.add_member(:host_state, Shapes::ShapeRef.new(shape: HostState, location_name: "hostState"))
    Host.add_member(:state_details, Shapes::ShapeRef.new(shape: StateDetails, location_name: "stateDetails"))
    Host.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "ec2InstanceId"))
    Host.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "networkInterfaces"))
    Host.struct_class = Types::Host

    HostInfoForCreate.add_member(:host_name, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "hostName"))
    HostInfoForCreate.add_member(:key_name, Shapes::ShapeRef.new(shape: KeyName, required: true, location_name: "keyName"))
    HostInfoForCreate.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    HostInfoForCreate.add_member(:placement_group_id, Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: "placementGroupId"))
    HostInfoForCreate.add_member(:dedicated_host_id, Shapes::ShapeRef.new(shape: DedicatedHostId, location_name: "dedicatedHostId"))
    HostInfoForCreate.struct_class = Types::HostInfoForCreate

    HostInfoForCreateList.member = Shapes::ShapeRef.new(shape: HostInfoForCreate)

    HostList.member = Shapes::ShapeRef.new(shape: Host)

    InitialVlanInfo.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, required: true, location_name: "cidr"))
    InitialVlanInfo.struct_class = Types::InitialVlanInfo

    InitialVlans.add_member(:vmk_management, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "vmkManagement"))
    InitialVlans.add_member(:vm_management, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "vmManagement"))
    InitialVlans.add_member(:v_motion, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "vMotion"))
    InitialVlans.add_member(:v_san, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "vSan"))
    InitialVlans.add_member(:v_tep, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "vTep"))
    InitialVlans.add_member(:edge_v_tep, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "edgeVTep"))
    InitialVlans.add_member(:nsx_uplink, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "nsxUplink"))
    InitialVlans.add_member(:hcx, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "hcx"))
    InitialVlans.add_member(:expansion_vlan_1, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "expansionVlan1"))
    InitialVlans.add_member(:expansion_vlan_2, Shapes::ShapeRef.new(shape: InitialVlanInfo, required: true, location_name: "expansionVlan2"))
    InitialVlans.struct_class = Types::InitialVlans

    LicenseInfo.add_member(:solution_key, Shapes::ShapeRef.new(shape: SolutionKey, required: true, location_name: "solutionKey"))
    LicenseInfo.add_member(:vsan_key, Shapes::ShapeRef.new(shape: VSanLicenseKey, required: true, location_name: "vsanKey"))
    LicenseInfo.struct_class = Types::LicenseInfo

    LicenseInfoList.member = Shapes::ShapeRef.new(shape: LicenseInfo)

    ListEnvironmentHostsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentHostsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnvironmentHostsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    ListEnvironmentHostsRequest.struct_class = Types::ListEnvironmentHostsRequest

    ListEnvironmentHostsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentHostsResponse.add_member(:environment_hosts, Shapes::ShapeRef.new(shape: HostList, location_name: "environmentHosts"))
    ListEnvironmentHostsResponse.struct_class = Types::ListEnvironmentHostsResponse

    ListEnvironmentVlansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentVlansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnvironmentVlansRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    ListEnvironmentVlansRequest.struct_class = Types::ListEnvironmentVlansRequest

    ListEnvironmentVlansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentVlansResponse.add_member(:environment_vlans, Shapes::ShapeRef.new(shape: VlanList, location_name: "environmentVlans"))
    ListEnvironmentVlansResponse.struct_class = Types::ListEnvironmentVlansResponse

    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnvironmentsRequest.add_member(:state, Shapes::ShapeRef.new(shape: EnvironmentStateList, location_name: "state"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentsResponse.add_member(:environment_summaries, Shapes::ShapeRef.new(shape: EnvironmentSummaryList, location_name: "environmentSummaries"))
    ListEnvironmentsResponse.struct_class = Types::ListEnvironmentsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "networkInterfaceId"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaceList.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    RequestTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    RouteServerPeeringList.member = Shapes::ShapeRef.new(shape: RouteServerPeering)

    Secret.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "secretArn"))
    Secret.struct_class = Types::Secret

    SecretList.member = Shapes::ShapeRef.new(shape: Secret)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceAccessSecurityGroups.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    ServiceAccessSecurityGroups.struct_class = Types::ServiceAccessSecurityGroups

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TagPolicyException.struct_class = Types::TagPolicyException

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VcfHostnames.add_member(:v_center, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "vCenter"))
    VcfHostnames.add_member(:nsx, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "nsx"))
    VcfHostnames.add_member(:nsx_manager_1, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "nsxManager1"))
    VcfHostnames.add_member(:nsx_manager_2, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "nsxManager2"))
    VcfHostnames.add_member(:nsx_manager_3, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "nsxManager3"))
    VcfHostnames.add_member(:nsx_edge_1, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "nsxEdge1"))
    VcfHostnames.add_member(:nsx_edge_2, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "nsxEdge2"))
    VcfHostnames.add_member(:sddc_manager, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "sddcManager"))
    VcfHostnames.add_member(:cloud_builder, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "cloudBuilder"))
    VcfHostnames.struct_class = Types::VcfHostnames

    Vlan.add_member(:vlan_id, Shapes::ShapeRef.new(shape: VlanId, location_name: "vlanId"))
    Vlan.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "cidr"))
    Vlan.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    Vlan.add_member(:function_name, Shapes::ShapeRef.new(shape: String, location_name: "functionName"))
    Vlan.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "subnetId"))
    Vlan.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Vlan.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Vlan.add_member(:vlan_state, Shapes::ShapeRef.new(shape: VlanState, location_name: "vlanState"))
    Vlan.add_member(:state_details, Shapes::ShapeRef.new(shape: StateDetails, location_name: "stateDetails"))
    Vlan.struct_class = Types::Vlan

    VlanList.member = Shapes::ShapeRef.new(shape: Vlan)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-07-27"

      api.metadata = {
        "apiVersion" => "2023-07-27",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "evs",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "EVS",
        "serviceFullName" => "Amazon Elastic VMware Service",
        "serviceId" => "evs",
        "signatureVersion" => "v4",
        "signingName" => "evs",
        "targetPrefix" => "AmazonElasticVMwareService",
        "uid" => "evs-2023-07-27",
      }

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_environment_host, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentHost"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentHostRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentHostResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_environment_host, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentHost"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentHostRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentHostResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_environment_hosts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentHosts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentHostsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentHostsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environment_vlans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentVlans"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentVlansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentVlansResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
      end)
    end

  end
end

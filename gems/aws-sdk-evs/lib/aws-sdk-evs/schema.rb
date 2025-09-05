# frozen_string_literal: true

# This is generated code!

module Aws::Evs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:evs:[a-z]{2}-[a-z]+-[0-9]:[0-9]{12}:environment/[a-zA-Z0-9_-]+$"})
    Check = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Check', name: 'Check')
    CheckResult = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#CheckResult', name: 'CheckResult')
    CheckType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#CheckType', name: 'CheckType')
    ChecksList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#ChecksList', name: 'ChecksList')
    Cidr = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#Cidr', name: 'Cidr', traits: {"smithy.api#pattern" => "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/(3[0-2]|[1-2][0-9]|[0-9])$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[!-~]+$"})
    ConnectivityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ConnectivityInfo', name: 'ConnectivityInfo')
    CreateEnvironmentHostRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentHostRequest', name: 'CreateEnvironmentHostRequest')
    CreateEnvironmentHostResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentHostResponse', name: 'CreateEnvironmentHostResponse')
    CreateEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentRequest', name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentResponse', name: 'CreateEnvironmentResponse')
    DedicatedHostId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#DedicatedHostId', name: 'DedicatedHostId', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^h-[a-f0-9]{8}([a-f0-9]{9})?$"})
    DeleteEnvironmentHostRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentHostRequest', name: 'DeleteEnvironmentHostRequest')
    DeleteEnvironmentHostResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentHostResponse', name: 'DeleteEnvironmentHostResponse')
    DeleteEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentRequest', name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentResponse', name: 'DeleteEnvironmentResponse')
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Environment', name: 'Environment')
    EnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#EnvironmentId', name: 'EnvironmentId', traits: {"smithy.api#pattern" => "^(env-[a-zA-Z0-9]{10})$"})
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    EnvironmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#EnvironmentState', name: 'EnvironmentState')
    EnvironmentStateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#EnvironmentStateList', name: 'EnvironmentStateList')
    EnvironmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#EnvironmentSummary', name: 'EnvironmentSummary')
    EnvironmentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#EnvironmentSummaryList', name: 'EnvironmentSummaryList')
    GetEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#GetEnvironmentRequest', name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#GetEnvironmentResponse', name: 'GetEnvironmentResponse')
    Host = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Host', name: 'Host')
    HostInfoForCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#HostInfoForCreate', name: 'HostInfoForCreate')
    HostInfoForCreateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#HostInfoForCreateList', name: 'HostInfoForCreateList', traits: {"smithy.api#length" => {"min" => 4, "max" => 4}})
    HostList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#HostList', name: 'HostList')
    HostName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#HostName', name: 'HostName', traits: {"smithy.api#pattern" => "^([a-zA-Z0-9\\-]*)$"})
    HostState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#HostState', name: 'HostState')
    InitialVlanInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#InitialVlanInfo', name: 'InitialVlanInfo')
    InitialVlans = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#InitialVlans', name: 'InitialVlans')
    InstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#InstanceType', name: 'InstanceType')
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#IpAddress', name: 'IpAddress', traits: {"smithy.api#pattern" => "^(\\d{1,3}\\.){3}\\d{1,3}$"})
    KeyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#KeyName', name: 'KeyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    LicenseInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#LicenseInfo', name: 'LicenseInfo')
    LicenseInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#LicenseInfoList', name: 'LicenseInfoList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ListEnvironmentHostsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentHostsRequest', name: 'ListEnvironmentHostsRequest')
    ListEnvironmentHostsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentHostsResponse', name: 'ListEnvironmentHostsResponse')
    ListEnvironmentVlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentVlansRequest', name: 'ListEnvironmentVlansRequest')
    ListEnvironmentVlansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentVlansResponse', name: 'ListEnvironmentVlansResponse')
    ListEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentsRequest', name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentsResponse', name: 'ListEnvironmentsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.evs#EnvironmentResource", "ids" => {"environmentId" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evs#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#NetworkInterfaceId', name: 'NetworkInterfaceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    NetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#NetworkInterfaceList', name: 'NetworkInterfaceList', traits: {"smithy.api#length" => {"max" => 2}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#PaginationToken', name: 'PaginationToken')
    PlacementGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#PlacementGroupId', name: 'PlacementGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^pg-[a-f0-9]{8}([a-f0-9]{9})?$"})
    RequestTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evs#RequestTagMap', name: 'RequestTagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evs#ResponseTagMap', name: 'ResponseTagMap')
    RouteServerPeering = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#RouteServerPeering', name: 'RouteServerPeering', traits: {"smithy.api#length" => {"min" => 3, "max" => 21}})
    RouteServerPeeringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#RouteServerPeeringList', name: 'RouteServerPeeringList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Secret = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Secret', name: 'Secret')
    SecretList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#SecretList', name: 'SecretList')
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^sg-[0-9a-zA-Z]*$"})
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#SecurityGroups', name: 'SecurityGroups', traits: {"smithy.api#length" => {"max" => 2}})
    ServiceAccessSecurityGroups = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ServiceAccessSecurityGroups', name: 'ServiceAccessSecurityGroups')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SolutionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#SolutionKey', name: 'SolutionKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}$"})
    StateDetails = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#StateDetails', name: 'StateDetails')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-[a-f0-9]{8}([a-f0-9]{9})?$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w.:/=+-@]+$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TagPolicyException', name: 'TagPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TagResourceRequest', name: 'TagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.evs#EnvironmentResource", "ids" => {"environmentId" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\w.:/=+-@]+|$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.evs#EnvironmentResource", "ids" => {"environmentId" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#UntagResourceResponse', name: 'UntagResourceResponse')
    VSanLicenseKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#VSanLicenseKey', name: 'VSanLicenseKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VcfHostnames = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#VcfHostnames', name: 'VcfHostnames')
    VcfVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#VcfVersion', name: 'VcfVersion')
    Vlan = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Vlan', name: 'Vlan')
    VlanId = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evs#VlanId', name: 'VlanId')
    VlanList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#VlanList', name: 'VlanList')
    VlanState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#VlanState', name: 'VlanState')
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-[a-f0-9]{8}([a-f0-9]{9})?$"})

    Check.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckType, location_name: 'type'))
    Check.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckResult, location_name: 'result'))
    Check.add_member(:impaired_since, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'impairedSince'))
    Check.type = Types::Check
    CheckResult.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CheckResult.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CheckResult.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CheckType.add_member(:key_reuse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_REUSE', traits: {"smithy.api#enumValue" => "KEY_REUSE"}))
    CheckType.add_member(:key_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_COVERAGE', traits: {"smithy.api#enumValue" => "KEY_COVERAGE"}))
    CheckType.add_member(:reachability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REACHABILITY', traits: {"smithy.api#enumValue" => "REACHABILITY"}))
    CheckType.add_member(:host_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOST_COUNT', traits: {"smithy.api#enumValue" => "HOST_COUNT"}))
    ChecksList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Check)
    ConnectivityInfo.add_member(:private_route_server_peerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteServerPeeringList, location_name: 'privateRouteServerPeerings', traits: {"smithy.api#required" => {}}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    CreateEnvironmentHostRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentHostRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentHostRequest.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostInfoForCreate, location_name: 'host', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentHostRequest.type = Types::CreateEnvironmentHostRequest
    CreateEnvironmentHostResponse.add_member(:environment_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: 'environmentSummary'))
    CreateEnvironmentHostResponse.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'host'))
    CreateEnvironmentHostResponse.type = Types::CreateEnvironmentHostResponse
    CreateEnvironmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName'))
    CreateEnvironmentRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId'))
    CreateEnvironmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags'))
    CreateEnvironmentRequest.add_member(:service_access_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccessSecurityGroups, location_name: 'serviceAccessSecurityGroups'))
    CreateEnvironmentRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:service_access_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'serviceAccessSubnetId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:vcf_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VcfVersion, location_name: 'vcfVersion', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:terms_accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'termsAccepted', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:license_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: 'licenseInfo', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:initial_vlans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlans, location_name: 'initialVlans', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:hosts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostInfoForCreateList, location_name: 'hosts', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:connectivity_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: 'connectivityInfo', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:vcf_hostnames, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VcfHostnames, location_name: 'vcfHostnames', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'siteId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.type = Types::CreateEnvironmentRequest
    CreateEnvironmentResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    CreateEnvironmentResponse.type = Types::CreateEnvironmentResponse
    DeleteEnvironmentHostRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteEnvironmentHostRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentHostRequest.add_member(:host_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentHostRequest.type = Types::DeleteEnvironmentHostRequest
    DeleteEnvironmentHostResponse.add_member(:environment_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: 'environmentSummary'))
    DeleteEnvironmentHostResponse.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'host'))
    DeleteEnvironmentHostResponse.type = Types::DeleteEnvironmentHostResponse
    DeleteEnvironmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteEnvironmentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.type = Types::DeleteEnvironmentRequest
    DeleteEnvironmentResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    DeleteEnvironmentResponse.type = Types::DeleteEnvironmentResponse
    Environment.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId'))
    Environment.add_member(:environment_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'environmentState'))
    Environment.add_member(:state_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateDetails, location_name: 'stateDetails'))
    Environment.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    Environment.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt'))
    Environment.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'environmentArn'))
    Environment.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName'))
    Environment.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId'))
    Environment.add_member(:service_access_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'serviceAccessSubnetId'))
    Environment.add_member(:vcf_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VcfVersion, location_name: 'vcfVersion'))
    Environment.add_member(:terms_accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'termsAccepted'))
    Environment.add_member(:license_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: 'licenseInfo'))
    Environment.add_member(:site_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'siteId'))
    Environment.add_member(:environment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckResult, location_name: 'environmentStatus'))
    Environment.add_member(:checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksList, location_name: 'checks'))
    Environment.add_member(:connectivity_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: 'connectivityInfo'))
    Environment.add_member(:vcf_hostnames, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VcfHostnames, location_name: 'vcfHostnames'))
    Environment.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId'))
    Environment.add_member(:service_access_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccessSecurityGroups, location_name: 'serviceAccessSecurityGroups'))
    Environment.add_member(:credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretList, location_name: 'credentials'))
    Environment.type = Types::Environment
    EnvironmentState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    EnvironmentState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    EnvironmentState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    EnvironmentState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    EnvironmentState.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    EnvironmentStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState)
    EnvironmentSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId'))
    EnvironmentSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName'))
    EnvironmentSummary.add_member(:vcf_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VcfVersion, location_name: 'vcfVersion'))
    EnvironmentSummary.add_member(:environment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckResult, location_name: 'environmentStatus'))
    EnvironmentSummary.add_member(:environment_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'environmentState'))
    EnvironmentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    EnvironmentSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt'))
    EnvironmentSummary.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'environmentArn'))
    EnvironmentSummary.type = Types::EnvironmentSummary
    EnvironmentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary)
    GetEnvironmentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.type = Types::GetEnvironmentRequest
    GetEnvironmentResponse.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment'))
    GetEnvironmentResponse.type = Types::GetEnvironmentResponse
    Host.add_member(:host_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName'))
    Host.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'ipAddress'))
    Host.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyName, location_name: 'keyName'))
    Host.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType'))
    Host.add_member(:placement_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: 'placementGroupId'))
    Host.add_member(:dedicated_host_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedHostId, location_name: 'dedicatedHostId'))
    Host.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    Host.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt'))
    Host.add_member(:host_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostState, location_name: 'hostState'))
    Host.add_member(:state_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateDetails, location_name: 'stateDetails'))
    Host.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ec2InstanceId'))
    Host.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'networkInterfaces'))
    Host.type = Types::Host
    HostInfoForCreate.add_member(:host_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName', traits: {"smithy.api#required" => {}}))
    HostInfoForCreate.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyName, location_name: 'keyName', traits: {"smithy.api#required" => {}}))
    HostInfoForCreate.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#required" => {}}))
    HostInfoForCreate.add_member(:placement_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: 'placementGroupId'))
    HostInfoForCreate.add_member(:dedicated_host_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedHostId, location_name: 'dedicatedHostId'))
    HostInfoForCreate.type = Types::HostInfoForCreate
    HostInfoForCreateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostInfoForCreate)
    HostList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host)
    HostState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    HostState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    HostState.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    HostState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    HostState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    HostState.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    HostState.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    InitialVlanInfo.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cidr, location_name: 'cidr', traits: {"smithy.api#required" => {}}))
    InitialVlanInfo.type = Types::InitialVlanInfo
    InitialVlans.add_member(:vmk_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vmkManagement', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:vm_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vmManagement', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:v_motion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vMotion', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:v_san, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vSan', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:v_tep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vTep', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:edge_v_tep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'edgeVTep', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:nsx_uplink, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'nsxUplink', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:hcx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'hcx', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:expansion_vlan1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'expansionVlan1', traits: {"smithy.api#required" => {}}))
    InitialVlans.add_member(:expansion_vlan2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'expansionVlan2', traits: {"smithy.api#required" => {}}))
    InitialVlans.type = Types::InitialVlans
    InstanceType.add_member(:i4_i_metal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'I4I_METAL', traits: {"smithy.api#enumValue" => "i4i.metal"}))
    LicenseInfo.add_member(:solution_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionKey, location_name: 'solutionKey', traits: {"smithy.api#required" => {}}))
    LicenseInfo.add_member(:vsan_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VSanLicenseKey, location_name: 'vsanKey', traits: {"smithy.api#required" => {}}))
    LicenseInfo.type = Types::LicenseInfo
    LicenseInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfo)
    ListEnvironmentHostsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentHostsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentHostsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentHostsRequest.type = Types::ListEnvironmentHostsRequest
    ListEnvironmentHostsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListEnvironmentHostsResponse.add_member(:environment_hosts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostList, location_name: 'environmentHosts'))
    ListEnvironmentHostsResponse.type = Types::ListEnvironmentHostsResponse
    ListEnvironmentVlansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentVlansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentVlansRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentVlansRequest.type = Types::ListEnvironmentVlansRequest
    ListEnvironmentVlansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListEnvironmentVlansResponse.add_member(:environment_vlans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VlanList, location_name: 'environmentVlans'))
    ListEnvironmentVlansResponse.type = Types::ListEnvironmentVlansResponse
    ListEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentsRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStateList, location_name: 'state', traits: {"smithy.api#httpQuery" => "state"}))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListEnvironmentsResponse.add_member(:environment_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummaryList, location_name: 'environmentSummaries'))
    ListEnvironmentsResponse.type = Types::ListEnvironmentsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'networkInterfaceId'))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    RequestTagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseTagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    RouteServerPeeringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteServerPeering)
    Secret.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'secretArn'))
    Secret.type = Types::Secret
    SecretList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret)
    SecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceAccessSecurityGroups.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups'))
    ServiceAccessSecurityGroups.type = Types::ServiceAccessSecurityGroups
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))
    VcfHostnames.add_member(:v_center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'vCenter', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsx', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_manager1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxManager1', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_manager2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxManager2', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_manager3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxManager3', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_edge1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxEdge1', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_edge2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxEdge2', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:sddc_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'sddcManager', traits: {"smithy.api#required" => {}}))
    VcfHostnames.add_member(:cloud_builder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'cloudBuilder', traits: {"smithy.api#required" => {}}))
    VcfHostnames.type = Types::VcfHostnames
    VcfVersion.add_member(:vcf_5_2_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VCF_5_2_1', traits: {"smithy.api#enumValue" => "VCF-5.2.1"}))
    Vlan.add_member(:vlan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VlanId, location_name: 'vlanId'))
    Vlan.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cidr, location_name: 'cidr'))
    Vlan.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'availabilityZone'))
    Vlan.add_member(:function_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'functionName'))
    Vlan.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'subnetId'))
    Vlan.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    Vlan.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt'))
    Vlan.add_member(:vlan_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VlanState, location_name: 'vlanState'))
    Vlan.add_member(:state_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StateDetails, location_name: 'stateDetails'))
    Vlan.type = Types::Vlan
    VlanList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Vlan)
    VlanState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    VlanState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    VlanState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    VlanState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    VlanState.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))

    AmazonElasticVMwareService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.evs#AmazonElasticVMwareService"
      service.name = "AmazonElasticVMwareService"
      service.version = "2023-07-27"
      service.traits = {"aws.api#service" => {"sdkId" => "evs", "arnNamespace" => "evs"}, "aws.auth#sigv4" => {"name" => "evs"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "Amazon Elastic VMware Service"}
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#CreateEnvironmentHost"
        operation.name = "CreateEnvironmentHost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentHostRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentHostResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#DeleteEnvironmentHost"
        operation.name = "DeleteEnvironmentHost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentHostRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentHostResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEnvironment_ResourceNotFoundException", "params" => {"environmentId" => "env-a1B2c3D4e5"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.evs#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
      end)
      service.add_operation(:list_environment_hosts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListEnvironmentHosts"
        operation.name = "ListEnvironmentHosts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentHostsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentHostsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEnvironmentHosts_ResourceNotFoundException", "params" => {"environmentId" => "env-a1B2c3D4e5"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.evs#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
        operation[:paginator] = Paginators::ListEnvironmentHosts.new
      end)
      service.add_operation(:list_environment_vlans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListEnvironmentVlans"
        operation.name = "ListEnvironmentVlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentVlansRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentVlansResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEnvironmentVlans_ResourceNotFoundException", "params" => {"environmentId" => "env-a1B2c3D4e5"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.evs#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
        operation[:paginator] = Paginators::ListEnvironmentVlans.new
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
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

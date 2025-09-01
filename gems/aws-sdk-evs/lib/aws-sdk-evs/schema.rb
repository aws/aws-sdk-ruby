# frozen_string_literal: true

# This is generated code!

module Aws::Evs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:evs:[a-z]{2}-[a-z]+-[0-9]:[0-9]{12}:environment/[a-zA-Z0-9_-]+$"})
    Check = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Check', name: 'Check')
    CheckResult = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#CheckResult', name: 'CheckResult')
    CheckType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#CheckType', name: 'CheckType')
    ChecksList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#ChecksList', name: 'ChecksList')
    Cidr = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#Cidr', name: 'Cidr', traits: {"smithy.api#pattern" => "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/(3[0-2]|[1-2][0-9]|[0-9])$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[!-~]+$"})
    ConnectivityInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ConnectivityInfo', name: 'ConnectivityInfo')
    CreateEnvironmentHostRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentHostRequest', name: 'CreateEnvironmentHostRequest')
    CreateEnvironmentHostResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentHostResponse', name: 'CreateEnvironmentHostResponse')
    CreateEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentRequest', name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#CreateEnvironmentResponse', name: 'CreateEnvironmentResponse')
    DedicatedHostId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#DedicatedHostId', name: 'DedicatedHostId', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^h-[a-f0-9]{8}([a-f0-9]{9})?$"})
    DeleteEnvironmentHostRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentHostRequest', name: 'DeleteEnvironmentHostRequest')
    DeleteEnvironmentHostResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentHostResponse', name: 'DeleteEnvironmentHostResponse')
    DeleteEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentRequest', name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#DeleteEnvironmentResponse', name: 'DeleteEnvironmentResponse')
    Environment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Environment', name: 'Environment')
    EnvironmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#EnvironmentId', name: 'EnvironmentId', traits: {"smithy.api#pattern" => "^(env-[a-zA-Z0-9]{10})$"})
    EnvironmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    EnvironmentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#EnvironmentState', name: 'EnvironmentState')
    EnvironmentStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#EnvironmentStateList', name: 'EnvironmentStateList')
    EnvironmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#EnvironmentSummary', name: 'EnvironmentSummary')
    EnvironmentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#EnvironmentSummaryList', name: 'EnvironmentSummaryList')
    GetEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#GetEnvironmentRequest', name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#GetEnvironmentResponse', name: 'GetEnvironmentResponse')
    Host = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Host', name: 'Host')
    HostInfoForCreate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#HostInfoForCreate', name: 'HostInfoForCreate')
    HostInfoForCreateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#HostInfoForCreateList', name: 'HostInfoForCreateList', traits: {"smithy.api#length" => {"min" => 4, "max" => 4}})
    HostList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#HostList', name: 'HostList')
    HostName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#HostName', name: 'HostName', traits: {"smithy.api#pattern" => "^([a-zA-Z0-9\\-]*)$"})
    HostState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#HostState', name: 'HostState')
    InitialVlanInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#InitialVlanInfo', name: 'InitialVlanInfo')
    InitialVlans = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#InitialVlans', name: 'InitialVlans')
    InstanceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#InstanceType', name: 'InstanceType')
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#IpAddress', name: 'IpAddress', traits: {"smithy.api#pattern" => "^(\\d{1,3}\\.){3}\\d{1,3}$"})
    KeyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#KeyName', name: 'KeyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    LicenseInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#LicenseInfo', name: 'LicenseInfo')
    LicenseInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#LicenseInfoList', name: 'LicenseInfoList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ListEnvironmentHostsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentHostsRequest', name: 'ListEnvironmentHostsRequest')
    ListEnvironmentHostsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentHostsResponse', name: 'ListEnvironmentHostsResponse')
    ListEnvironmentVlansRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentVlansRequest', name: 'ListEnvironmentVlansRequest')
    ListEnvironmentVlansResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentVlansResponse', name: 'ListEnvironmentVlansResponse')
    ListEnvironmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentsRequest', name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListEnvironmentsResponse', name: 'ListEnvironmentsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.evs#EnvironmentResource", "ids" => {"environmentId" => "resourceArn"}}]})
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evs#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#NetworkInterfaceId', name: 'NetworkInterfaceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    NetworkInterfaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#NetworkInterfaceList', name: 'NetworkInterfaceList', traits: {"smithy.api#length" => {"max" => 2}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#PaginationToken', name: 'PaginationToken')
    PlacementGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#PlacementGroupId', name: 'PlacementGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^pg-[a-f0-9]{8}([a-f0-9]{9})?$"})
    RequestTagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evs#RequestTagMap', name: 'RequestTagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseTagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.evs#ResponseTagMap', name: 'ResponseTagMap')
    RouteServerPeering = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#RouteServerPeering', name: 'RouteServerPeering', traits: {"smithy.api#length" => {"min" => 3, "max" => 21}})
    RouteServerPeeringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#RouteServerPeeringList', name: 'RouteServerPeeringList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Secret = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Secret', name: 'Secret')
    SecretList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#SecretList', name: 'SecretList')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^sg-[0-9a-zA-Z]*$"})
    SecurityGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#SecurityGroups', name: 'SecurityGroups', traits: {"smithy.api#length" => {"max" => 2}})
    ServiceAccessSecurityGroups = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ServiceAccessSecurityGroups', name: 'ServiceAccessSecurityGroups')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SolutionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#SolutionKey', name: 'SolutionKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}$"})
    StateDetails = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#StateDetails', name: 'StateDetails')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-[a-f0-9]{8}([a-f0-9]{9})?$"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w.:/=+-@]+$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TagPolicyException', name: 'TagPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TagResourceRequest', name: 'TagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.evs#EnvironmentResource", "ids" => {"environmentId" => "resourceArn"}}]})
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\w.:/=+-@]+|$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.evs#EnvironmentResource", "ids" => {"environmentId" => "resourceArn"}}]})
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#UntagResourceResponse', name: 'UntagResourceResponse')
    VSanLicenseKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#VSanLicenseKey', name: 'VSanLicenseKey', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}-[a-zA-Z0-9]{5}$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VcfHostnames = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#VcfHostnames', name: 'VcfHostnames')
    VcfVersion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#VcfVersion', name: 'VcfVersion')
    Vlan = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.evs#Vlan', name: 'Vlan')
    VlanId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.evs#VlanId', name: 'VlanId')
    VlanList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.evs#VlanList', name: 'VlanList')
    VlanState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.evs#VlanState', name: 'VlanState')
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.evs#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-[a-f0-9]{8}([a-f0-9]{9})?$"})

    Check.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The check type. Amazon EVS performs the following checks.</p> <ul> <li> <p> <code>KEY_REUSE</code>: checks that the VCF license key is not used by another Amazon EVS environment. This check fails if a used license is added to the environment.</p> </li> <li> <p> <code>KEY_COVERAGE</code>: checks that your VCF license key allocates sufficient vCPU cores for all deployed hosts. The check fails when any assigned hosts in the EVS environment are not covered by license keys, or when any unassigned hosts cannot be covered by available vCPU cores in keys.</p> </li> <li> <p> <code>REACHABILITY</code>: checks that the Amazon EVS control plane has a persistent connection to SDDC Manager. If Amazon EVS cannot reach the environment, this check fails.</p> </li> <li> <p> <code>HOST_COUNT</code>: Checks that your environment has a minimum of 4 hosts, which is a requirement for VCF 5.2.1.</p> <p>If this check fails, you will need to add hosts so that your environment meets this minimum requirement. Amazon EVS only supports environments with 4-16 hosts.</p> </li> </ul>"}))
    Check.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p> The check result.</p>"}))
    Check.add_member(:impaired_since, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'impairedSince', traits: {"smithy.api#documentation" => "<p>The time when environment health began to be impaired.</p>"}))
    Check.type = Types::Check
    CheckResult.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CheckResult.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CheckResult.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CheckType.add_member(:key_reuse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_REUSE', traits: {"smithy.api#enumValue" => "KEY_REUSE"}))
    CheckType.add_member(:key_coverage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_COVERAGE', traits: {"smithy.api#enumValue" => "KEY_COVERAGE"}))
    CheckType.add_member(:reachability, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REACHABILITY', traits: {"smithy.api#enumValue" => "REACHABILITY"}))
    CheckType.add_member(:host_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOST_COUNT', traits: {"smithy.api#enumValue" => "HOST_COUNT"}))
    ChecksList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Check)
    ConnectivityInfo.add_member(:private_route_server_peerings, Smithy::Schema::Shapes::ShapeRef.new(shape: RouteServerPeeringList, location_name: 'privateRouteServerPeerings', traits: {"smithy.api#documentation" => "<p>The unique IDs for private route server peers.</p>", "smithy.api#required" => {}}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    CreateEnvironmentHostRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the host creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentHostRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>A unique ID for the environment that the host is added to.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentHostRequest.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: HostInfoForCreate, location_name: 'host', traits: {"smithy.api#documentation" => "<p>The host that is created and added to the environment.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentHostRequest.type = Types::CreateEnvironmentHostRequest
    CreateEnvironmentHostResponse.add_member(:environment_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: 'environmentSummary', traits: {"smithy.api#documentation" => "<p>A summary of the environment that the host is created in.</p>"}))
    CreateEnvironmentHostResponse.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'host', traits: {"smithy.api#documentation" => "<p>A description of the created host.</p>"}))
    CreateEnvironmentHostResponse.type = Types::CreateEnvironmentHostResponse
    CreateEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name to give to your environment. The name can contain only alphanumeric characters (case-sensitive), hyphens, and underscores. It must start with an alphanumeric character, and can't be longer than 100 characters. The name must be unique within the Amazon Web Services Region and Amazon Web Services account that you're creating the environment in.</p>"}))
    CreateEnvironmentRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>A unique ID for the customer-managed KMS key that is used to encrypt the VCF credential pairs for SDDC Manager, NSX Manager, and vCenter appliances. These credentials are stored in Amazon Web Services Secrets Manager.</p>"}))
    CreateEnvironmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.</p>"}))
    CreateEnvironmentRequest.add_member(:service_access_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccessSecurityGroups, location_name: 'serviceAccessSecurityGroups', traits: {"smithy.api#documentation" => "<p>The security group that controls communication between the Amazon EVS control plane and VPC. The default security group is used if a custom security group isn't specified.</p> <p>The security group should allow access to the following.</p> <ul> <li> <p>TCP/UDP access to the DNS servers</p> </li> <li> <p>HTTPS/SSH access to the host management VLAN subnet</p> </li> <li> <p>HTTPS/SSH access to the Management VM VLAN subnet</p> </li> </ul> <p>You should avoid modifying the security group rules after deployment, as this can break the persistent connection between the Amazon EVS control plane and VPC. This can cause future environment actions like adding or removing hosts to fail.</p>"}))
    CreateEnvironmentRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>A unique ID for the VPC that the environment is deployed inside.</p> <p>Amazon EVS requires that all VPC subnets exist in a single Availability Zone in a Region where the service is available.</p> <p>The VPC that you specify must have a valid DHCP option set with domain name, at least two DNS servers, and an NTP server. These settings are used to configure your VCF appliances and hosts. The VPC cannot be used with any other deployed Amazon EVS environment. Amazon EVS does not provide multi-VPC support for environments at this time.</p> <p>Amazon EVS does not support the following Amazon Web Services networking options for NSX overlay connectivity: cross-Region VPC peering, Amazon S3 gateway endpoints, or Amazon Web Services Direct Connect virtual private gateway associations.</p> <note> <p>Ensure that you specify a VPC that is adequately sized to accommodate the {evws} subnets.</p> </note>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:service_access_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'serviceAccessSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet that is used to establish connectivity between the Amazon EVS control plane and VPC. Amazon EVS uses this subnet to validate mandatory DNS records for your VCF appliances and hosts and create the environment.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:vcf_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VcfVersion, location_name: 'vcfVersion', traits: {"smithy.api#documentation" => "<p> The VCF version to use for the environment. Amazon EVS only supports VCF version 5.2.1 at this time.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:terms_accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'termsAccepted', traits: {"smithy.api#documentation" => "<p>Customer confirmation that the customer has purchased and will continue to maintain the required number of VCF software licenses to cover all physical processor cores in the Amazon EVS environment. Information about your VCF software in Amazon EVS will be shared with Broadcom to verify license compliance. Amazon EVS does not validate license keys. To validate license keys, visit the Broadcom support portal.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:license_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: 'licenseInfo', traits: {"smithy.api#documentation" => "<p>The license information that Amazon EVS requires to create an environment. Amazon EVS requires two license keys: a VCF solution key and a vSAN license key. The VCF solution key must cover a minimum of 256 cores. The vSAN license key must provide at least 110 TiB of vSAN capacity.</p> <p>VCF licenses can be used for only one Amazon EVS environment. Amazon EVS does not support reuse of VCF licenses for multiple environments.</p> <p>VCF license information can be retrieved from the Broadcom portal.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:initial_vlans, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlans, location_name: 'initialVlans', traits: {"smithy.api#documentation" => "<p>The initial VLAN subnets for the Amazon EVS environment.</p> <note> <p>For each Amazon EVS VLAN subnet, you must specify a non-overlapping CIDR block. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24.</p> </note>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: HostInfoForCreateList, location_name: 'hosts', traits: {"smithy.api#documentation" => "<p>The ESXi hosts to add to the environment. Amazon EVS requires that you provide details for a minimum of 4 hosts during environment creation.</p> <p>For each host, you must provide the desired hostname, EC2 SSH keypair name, and EC2 instance type. Optionally, you can also provide a partition or cluster placement group to use, or use Amazon EC2 Dedicated Hosts.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: 'connectivityInfo', traits: {"smithy.api#documentation" => "<p> The connectivity configuration for the environment. Amazon EVS requires that you specify two route server peer IDs. During environment creation, the route server endpoints peer with the NSX edges over the NSX uplink subnet, providing BGP-based dynamic routing for overlay networks.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:vcf_hostnames, Smithy::Schema::Shapes::ShapeRef.new(shape: VcfHostnames, location_name: 'vcfHostnames', traits: {"smithy.api#documentation" => "<p>The DNS hostnames for the virtual machines that host the VCF management appliances. Amazon EVS requires that you provide DNS hostnames for the following appliances: vCenter, NSX Manager, SDDC Manager, and Cloud Builder.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'siteId', traits: {"smithy.api#documentation" => "<p>The Broadcom Site ID that is allocated to you as part of your electronic software delivery. This ID allows customer access to the Broadcom portal, and is provided to you by Broadcom at the close of your software contract or contract renewal. Amazon EVS uses the Broadcom Site ID that you provide to meet Broadcom VCF license usage reporting requirements for Amazon EVS.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.type = Types::CreateEnvironmentRequest
    CreateEnvironmentResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>A description of the created environment.</p>"}))
    CreateEnvironmentResponse.type = Types::CreateEnvironmentResponse
    DeleteEnvironmentHostRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the host deletion request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteEnvironmentHostRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>A unique ID for the host's environment.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentHostRequest.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName', traits: {"smithy.api#documentation" => "<p>The DNS hostname associated with the host to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteEnvironmentHostRequest.type = Types::DeleteEnvironmentHostRequest
    DeleteEnvironmentHostResponse.add_member(:environment_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: 'environmentSummary', traits: {"smithy.api#documentation" => "<p>A summary of the environment that the host was deleted from.</p>"}))
    DeleteEnvironmentHostResponse.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'host', traits: {"smithy.api#documentation" => "<p>A description of the deleted host.</p>"}))
    DeleteEnvironmentHostResponse.type = Types::DeleteEnvironmentHostResponse
    DeleteEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment deletion request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteEnvironmentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>A unique ID associated with the environment to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.type = Types::DeleteEnvironmentRequest
    DeleteEnvironmentResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>A description of the deleted environment.</p>"}))
    DeleteEnvironmentResponse.type = Types::DeleteEnvironmentResponse
    Environment.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>The unique ID for the environment.</p>"}))
    Environment.add_member(:environment_state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'environmentState', traits: {"smithy.api#documentation" => "<p>The state of an environment.</p>"}))
    Environment.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDetails, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>A detailed description of the <code>environmentState</code> of an environment.</p>"}))
    Environment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the environment was created.</p>"}))
    Environment.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p> The date and time that the environment was modified.</p>"}))
    Environment.add_member(:environment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'environmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the environment.</p>"}))
    Environment.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    Environment.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The VPC associated with the environment.</p>"}))
    Environment.add_member(:service_access_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'serviceAccessSubnetId', traits: {"smithy.api#documentation" => "<p> The subnet that is used to establish connectivity between the Amazon EVS control plane and VPC. Amazon EVS uses this subnet to perform validations and create the environment.</p>"}))
    Environment.add_member(:vcf_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VcfVersion, location_name: 'vcfVersion', traits: {"smithy.api#documentation" => "<p>The VCF version of the environment.</p>"}))
    Environment.add_member(:terms_accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'termsAccepted', traits: {"smithy.api#documentation" => "<p>Customer confirmation that the customer has purchased and will continue to maintain the required number of VCF software licenses to cover all physical processor cores in the Amazon EVS environment. Information about your VCF software in Amazon EVS will be shared with Broadcom to verify license compliance. Amazon EVS does not validate license keys. To validate license keys, visit the Broadcom support portal. </p>"}))
    Environment.add_member(:license_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: 'licenseInfo', traits: {"smithy.api#documentation" => "<p> The license information that Amazon EVS requires to create an environment. Amazon EVS requires two license keys: a VCF solution key and a vSAN license key. The VCF solution key must cover a minimum of 256 cores. The vSAN license key must provide at least 110 TiB of vSAN capacity.</p>"}))
    Environment.add_member(:site_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'siteId', traits: {"smithy.api#documentation" => "<p>The Broadcom Site ID that is associated with your Amazon EVS environment. Amazon EVS uses the Broadcom Site ID that you provide to meet Broadcom VCF license usage reporting requirements for Amazon EVS.</p>"}))
    Environment.add_member(:environment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckResult, location_name: 'environmentStatus', traits: {"smithy.api#documentation" => "<p>Reports impaired functionality that stems from issues internal to the environment, such as impaired reachability.</p>"}))
    Environment.add_member(:checks, Smithy::Schema::Shapes::ShapeRef.new(shape: ChecksList, location_name: 'checks', traits: {"smithy.api#documentation" => "<p>A check on the environment to identify instance health and VMware VCF licensing issues.</p>"}))
    Environment.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: 'connectivityInfo', traits: {"smithy.api#documentation" => "<p>The connectivity configuration for the environment. Amazon EVS requires that you specify two route server peer IDs. During environment creation, the route server endpoints peer with the NSX uplink VLAN for connectivity to the NSX overlay network.</p>"}))
    Environment.add_member(:vcf_hostnames, Smithy::Schema::Shapes::ShapeRef.new(shape: VcfHostnames, location_name: 'vcfHostnames', traits: {"smithy.api#documentation" => "<p>The DNS hostnames to be used by the VCF management appliances in your environment.</p> <p>For environment creation to be successful, each hostname entry must resolve to a domain name that you've registered in your DNS service of choice and configured in the DHCP option set of your VPC. DNS hostnames cannot be changed after environment creation has started.</p>"}))
    Environment.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services KMS key ID that Amazon Web Services Secrets Manager uses to encrypt secrets that are associated with the environment. These secrets contain the VCF credentials that are needed to install vCenter Server, NSX, and SDDC Manager.</p> <p>By default, Amazon EVS use the Amazon Web Services Secrets Manager managed key <code>aws/secretsmanager</code>. You can also specify a customer managed key.</p>"}))
    Environment.add_member(:service_access_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccessSecurityGroups, location_name: 'serviceAccessSecurityGroups', traits: {"smithy.api#documentation" => "<p>The security groups that allow traffic between the Amazon EVS control plane and your VPC for service access. If a security group is not specified, Amazon EVS uses the default security group in your account for service access.</p>"}))
    Environment.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretList, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The VCF credentials that are stored as Amazon EVS managed secrets in Amazon Web Services Secrets Manager.</p> <p>Amazon EVS stores credentials that are needed to install vCenter Server, NSX, and SDDC Manager.</p>"}))
    Environment.type = Types::Environment
    EnvironmentState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    EnvironmentState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    EnvironmentState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    EnvironmentState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    EnvironmentState.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    EnvironmentStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState)
    EnvironmentSummary.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>A unique ID for the environment.</p>"}))
    EnvironmentSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p> The name of the environment.</p>"}))
    EnvironmentSummary.add_member(:vcf_version, Smithy::Schema::Shapes::ShapeRef.new(shape: VcfVersion, location_name: 'vcfVersion', traits: {"smithy.api#documentation" => "<p>The VCF version of the environment.</p>"}))
    EnvironmentSummary.add_member(:environment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckResult, location_name: 'environmentStatus', traits: {"smithy.api#documentation" => "<p>Reports impaired functionality that stems from issues internal to the environment, such as impaired reachability.</p>"}))
    EnvironmentSummary.add_member(:environment_state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'environmentState', traits: {"smithy.api#documentation" => "<p>The state of an environment.</p>"}))
    EnvironmentSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The date and time that the environment was created.</p>"}))
    EnvironmentSummary.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p> The date and time that the environment was modified.</p>"}))
    EnvironmentSummary.add_member(:environment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'environmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that is associated with the environment.</p>"}))
    EnvironmentSummary.type = Types::EnvironmentSummary
    EnvironmentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary)
    GetEnvironmentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>A unique ID for the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.type = Types::GetEnvironmentRequest
    GetEnvironmentResponse.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: Environment, location_name: 'environment', traits: {"smithy.api#documentation" => "<p>A description of the requested environment.</p>"}))
    GetEnvironmentResponse.type = Types::GetEnvironmentResponse
    Host.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName', traits: {"smithy.api#documentation" => "<p>The DNS hostname of the host. DNS hostnames for hosts must be unique across Amazon EVS environments and within VCF.</p>"}))
    Host.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the host.</p>"}))
    Host.add_member(:key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyName, location_name: 'keyName', traits: {"smithy.api#documentation" => "<p>The name of the SSH key that is used to access the host.</p>"}))
    Host.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The EC2 instance type of the host.</p> <note> <p>EC2 instances created through Amazon EVS do not support associating an IAM instance profile.</p> </note>"}))
    Host.add_member(:placement_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: 'placementGroupId', traits: {"smithy.api#documentation" => "<p>The unique ID of the placement group where the host is placed.</p>"}))
    Host.add_member(:dedicated_host_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedHostId, location_name: 'dedicatedHostId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amazon EC2 Dedicated Host.</p>"}))
    Host.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p> The date and time that the host was created.</p>"}))
    Host.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p> The date and time that the host was modified.</p>"}))
    Host.add_member(:host_state, Smithy::Schema::Shapes::ShapeRef.new(shape: HostState, location_name: 'hostState', traits: {"smithy.api#documentation" => "<p> The state of the host.</p>"}))
    Host.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDetails, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p> A detailed description of the <code>hostState</code> of a host.</p>"}))
    Host.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ec2InstanceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the EC2 instance that represents the host.</p>"}))
    Host.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p>The elastic network interfaces that are attached to the host.</p>"}))
    Host.type = Types::Host
    HostInfoForCreate.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'hostName', traits: {"smithy.api#documentation" => "<p>The DNS hostname of the host. DNS hostnames for hosts must be unique across Amazon EVS environments and within VCF.</p>", "smithy.api#required" => {}}))
    HostInfoForCreate.add_member(:key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyName, location_name: 'keyName', traits: {"smithy.api#documentation" => "<p>The name of the SSH key that is used to access the host.</p>", "smithy.api#required" => {}}))
    HostInfoForCreate.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The EC2 instance type that represents the host.</p>", "smithy.api#required" => {}}))
    HostInfoForCreate.add_member(:placement_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupId, location_name: 'placementGroupId', traits: {"smithy.api#documentation" => "<p>The unique ID of the placement group where the host is placed.</p>"}))
    HostInfoForCreate.add_member(:dedicated_host_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedHostId, location_name: 'dedicatedHostId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amazon EC2 Dedicated Host.</p>"}))
    HostInfoForCreate.type = Types::HostInfoForCreate
    HostInfoForCreateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HostInfoForCreate)
    HostList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Host)
    HostState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    HostState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    HostState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    HostState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    HostState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    HostState.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    HostState.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    InitialVlanInfo.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: Cidr, location_name: 'cidr', traits: {"smithy.api#documentation" => "<p> The CIDR block that you provide to create an Amazon EVS VLAN subnet. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24. Amazon EVS VLAN subnet CIDR blocks must not overlap with other subnets in the VPC.</p>", "smithy.api#required" => {}}))
    InitialVlanInfo.type = Types::InitialVlanInfo
    InitialVlans.add_member(:vmk_management, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vmkManagement', traits: {"smithy.api#documentation" => "<p> The host VMkernel management VLAN subnet. This VLAN subnet carries traffic for managing ESXi hosts and communicating with VMware vCenter Server.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:vm_management, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vmManagement', traits: {"smithy.api#documentation" => "<p>The VM management VLAN subnet. This VLAN subnet carries traffic for vSphere virtual machines.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:v_motion, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vMotion', traits: {"smithy.api#documentation" => "<p> The vMotion VLAN subnet. This VLAN subnet carries traffic for vSphere vMotion.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:v_san, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vSan', traits: {"smithy.api#documentation" => "<p> The vSAN VLAN subnet. This VLAN subnet carries the communication between ESXi hosts to implement a vSAN shared storage pool.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:v_tep, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'vTep', traits: {"smithy.api#documentation" => "<p> The VTEP VLAN subnet. This VLAN subnet handles internal network traffic between virtual machines within a VCF instance.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:edge_v_tep, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'edgeVTep', traits: {"smithy.api#documentation" => "<p>The edge VTEP VLAN subnet. This VLAN subnet manages traffic flowing between the internal network and external networks, including internet access and other site connections.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:nsx_uplink, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'nsxUplink', traits: {"smithy.api#documentation" => "<p> The NSX uplink VLAN subnet. This VLAN subnet allows connectivity to the NSX overlay network.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:hcx, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'hcx', traits: {"smithy.api#documentation" => "<p>The HCX VLAN subnet. This VLAN subnet allows the HCX Interconnnect (IX) and HCX Network Extension (NE) to reach their peers and enable HCX Service Mesh creation.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:expansion_vlan1, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'expansionVlan1', traits: {"smithy.api#documentation" => "<p>An additional VLAN subnet that can be used to extend VCF capabilities once configured. For example, you can configure an expansion VLAN subnet to use NSX Federation for centralized management and synchronization of multiple NSX deployments across different locations.</p>", "smithy.api#required" => {}}))
    InitialVlans.add_member(:expansion_vlan2, Smithy::Schema::Shapes::ShapeRef.new(shape: InitialVlanInfo, location_name: 'expansionVlan2', traits: {"smithy.api#documentation" => "<p>An additional VLAN subnet that can be used to extend VCF capabilities once configured. For example, you can configure an expansion VLAN subnet to use NSX Federation for centralized management and synchronization of multiple NSX deployments across different locations.</p>", "smithy.api#required" => {}}))
    InitialVlans.type = Types::InitialVlans
    InstanceType.add_member(:i4_i_metal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'I4I_METAL', traits: {"smithy.api#enumValue" => "i4i.metal"}))
    LicenseInfo.add_member(:solution_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionKey, location_name: 'solutionKey', traits: {"smithy.api#documentation" => "<p> The VCF solution key. This license unlocks VMware VCF product features, including vSphere, NSX, SDDC Manager, and vCenter Server. The VCF solution key must cover a minimum of 256 cores.</p>", "smithy.api#required" => {}}))
    LicenseInfo.add_member(:vsan_key, Smithy::Schema::Shapes::ShapeRef.new(shape: VSanLicenseKey, location_name: 'vsanKey', traits: {"smithy.api#documentation" => "<p> The VSAN license key. This license unlocks vSAN features. The vSAN license key must provide at least 110 TiB of vSAN capacity.</p>", "smithy.api#required" => {}}))
    LicenseInfo.type = Types::LicenseInfo
    LicenseInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfo)
    ListEnvironmentHostsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentHostsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentHostsRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>A unique ID for the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentHostsRequest.type = Types::ListEnvironmentHostsRequest
    ListEnvironmentHostsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A unique pagination token for next page results. Make the call again using this token to retrieve the next page.</p>"}))
    ListEnvironmentHostsResponse.add_member(:environment_hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: HostList, location_name: 'environmentHosts', traits: {"smithy.api#documentation" => "<p>A list of hosts in the environment.</p>"}))
    ListEnvironmentHostsResponse.type = Types::ListEnvironmentHostsResponse
    ListEnvironmentVlansRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentVlansRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentVlansRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#documentation" => "<p>A unique ID for the environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentVlansRequest.type = Types::ListEnvironmentVlansRequest
    ListEnvironmentVlansResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A unique pagination token for next page results. Make the call again using this token to retrieve the next page.</p>"}))
    ListEnvironmentVlansResponse.add_member(:environment_vlans, Smithy::Schema::Shapes::ShapeRef.new(shape: VlanList, location_name: 'environmentVlans', traits: {"smithy.api#documentation" => "<p>A list of VLANs that are associated with the specified environment.</p>"}))
    ListEnvironmentVlansResponse.type = Types::ListEnvironmentVlansResponse
    ListEnvironmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentsRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStateList, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of an environment. Used to filter response results to return only environments with the specified <code>environmentState</code>.</p>", "smithy.api#httpQuery" => "state"}))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListEnvironmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A unique pagination token for next page results. Make the call again using this token to retrieve the next page.</p>"}))
    ListEnvironmentsResponse.add_member(:environment_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummaryList, location_name: 'environmentSummaries', traits: {"smithy.api#documentation" => "<p>A list of environments with summarized environment details.</p>"}))
    ListEnvironmentsResponse.type = Types::ListEnvironmentsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the resource to list tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NetworkInterface.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'networkInterfaceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the elastic network interface.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    RequestTagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Describes the error encountered.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that could not be found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseTagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    RouteServerPeeringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RouteServerPeering)
    Secret.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'secretArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the secret.</p>"}))
    Secret.type = Types::Secret
    SecretList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Secret)
    SecurityGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceAccessSecurityGroups.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups', traits: {"smithy.api#documentation" => "<p>The security groups that allow service access.</p>"}))
    ServiceAccessSecurityGroups.type = Types::ServiceAccessSecurityGroups
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Describes the error encountered.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Describes the error encountered</p>", "smithy.api#required" => {}}))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other environment or Amazon Web Services resources.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Describes the error encountered.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The seconds to wait to retry.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Describes the error encountered.</p>", "smithy.api#required" => {}}))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#documentation" => "<p>The keys of the tags to delete.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Describes the error encountered.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of fields that didn't validate.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The field name.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p> A message describing why the field failed validation.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))
    VcfHostnames.add_member(:v_center, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'vCenter', traits: {"smithy.api#documentation" => "<p>The VMware vCenter hostname.</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsx', traits: {"smithy.api#documentation" => "<p>The VMware NSX hostname.</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_manager1, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxManager1', traits: {"smithy.api#documentation" => "<p>The hostname for the first VMware NSX Manager virtual machine (VM).</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_manager2, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxManager2', traits: {"smithy.api#documentation" => "<p>The hostname for the second VMware NSX Manager virtual machine (VM).</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_manager3, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxManager3', traits: {"smithy.api#documentation" => "<p>The hostname for the third VMware NSX Manager virtual machine (VM).</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_edge1, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxEdge1', traits: {"smithy.api#documentation" => "<p>The hostname for the first NSX Edge node.</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:nsx_edge2, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'nsxEdge2', traits: {"smithy.api#documentation" => "<p>The hostname for the second NSX Edge node.</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:sddc_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'sddcManager', traits: {"smithy.api#documentation" => "<p>The hostname for SDDC Manager.</p>", "smithy.api#required" => {}}))
    VcfHostnames.add_member(:cloud_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'cloudBuilder', traits: {"smithy.api#documentation" => "<p>The hostname for VMware Cloud Builder.</p>", "smithy.api#required" => {}}))
    VcfHostnames.type = Types::VcfHostnames
    VcfVersion.add_member(:vcf_5_2_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VCF_5_2_1', traits: {"smithy.api#enumValue" => "VCF-5.2.1"}))
    Vlan.add_member(:vlan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VlanId, location_name: 'vlanId', traits: {"smithy.api#documentation" => "<p>The unique ID of the VLAN.</p>"}))
    Vlan.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: Cidr, location_name: 'cidr', traits: {"smithy.api#documentation" => "<p>The CIDR block of the VLAN. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24.</p>"}))
    Vlan.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'availabilityZone', traits: {"smithy.api#documentation" => "<p>The availability zone of the VLAN.</p>"}))
    Vlan.add_member(:function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'functionName', traits: {"smithy.api#documentation" => "<p>The VMware VCF traffic type that is carried over the VLAN. For example, a VLAN with a <code>functionName</code> of <code>hcx</code> is being used to carry VMware HCX traffic.</p>"}))
    Vlan.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'subnetId', traits: {"smithy.api#documentation" => "<p> The unique ID of the VLAN subnet.</p>"}))
    Vlan.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time that the VLAN was created.</p>"}))
    Vlan.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p> The date and time that the VLAN was modified.</p>"}))
    Vlan.add_member(:vlan_state, Smithy::Schema::Shapes::ShapeRef.new(shape: VlanState, location_name: 'vlanState', traits: {"smithy.api#documentation" => "<p> The state of the VLAN.</p>"}))
    Vlan.add_member(:state_details, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDetails, location_name: 'stateDetails', traits: {"smithy.api#documentation" => "<p>The state details of the VLAN.</p>"}))
    Vlan.type = Types::Vlan
    VlanList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Vlan)
    VlanState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    VlanState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    VlanState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    VlanState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    VlanState.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))

    AmazonElasticVMwareService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.evs#AmazonElasticVMwareService"
      service.name = "AmazonElasticVMwareService"
      service.version = "2023-07-27"
      service.traits = {"aws.api#service" => {"sdkId" => "evs", "arnNamespace" => "evs"}, "aws.auth#sigv4" => {"name" => "evs"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "Amazon Elastic VMware Service"}
      service.add_operation(:create_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_host, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#CreateEnvironmentHost"
        operation.name = "CreateEnvironmentHost"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentHostRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentHostResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_host, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#DeleteEnvironmentHost"
        operation.name = "DeleteEnvironmentHost"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentHostRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentHostResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEnvironment_ResourceNotFoundException", "params" => {"environmentId" => "env-a1B2c3D4e5"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.evs#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
      end)
      service.add_operation(:list_environment_hosts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListEnvironmentHosts"
        operation.name = "ListEnvironmentHosts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentHostsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentHostsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEnvironmentHosts_ResourceNotFoundException", "params" => {"environmentId" => "env-a1B2c3D4e5"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.evs#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
        operation[:paginator] = Paginators::ListEnvironmentHosts.new
      end)
      service.add_operation(:list_environment_vlans, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListEnvironmentVlans"
        operation.name = "ListEnvironmentVlans"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentVlansRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentVlansResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEnvironmentVlans_ResourceNotFoundException", "params" => {"environmentId" => "env-a1B2c3D4e5"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.evs#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2"}}]}
        operation[:paginator] = Paginators::ListEnvironmentVlans.new
      end)
      service.add_operation(:list_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.evs#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
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

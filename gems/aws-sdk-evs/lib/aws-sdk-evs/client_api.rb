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

    AllocationId = Shapes::StringShape.new(name: 'AllocationId')
    ApplianceFqdn = Shapes::StringShape.new(name: 'ApplianceFqdn')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateEipToVlanRequest = Shapes::StructureShape.new(name: 'AssociateEipToVlanRequest')
    AssociateEipToVlanRequestVlanNameString = Shapes::StringShape.new(name: 'AssociateEipToVlanRequestVlanNameString')
    AssociateEipToVlanResponse = Shapes::StructureShape.new(name: 'AssociateEipToVlanResponse')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Check = Shapes::StructureShape.new(name: 'Check')
    CheckResult = Shapes::StringShape.new(name: 'CheckResult')
    CheckType = Shapes::StringShape.new(name: 'CheckType')
    ChecksList = Shapes::ListShape.new(name: 'ChecksList')
    Cidr = Shapes::StringShape.new(name: 'Cidr')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConnectivityInfo = Shapes::StructureShape.new(name: 'ConnectivityInfo')
    Connector = Shapes::StructureShape.new(name: 'Connector')
    ConnectorCheck = Shapes::StructureShape.new(name: 'ConnectorCheck')
    ConnectorId = Shapes::StringShape.new(name: 'ConnectorId')
    ConnectorList = Shapes::ListShape.new(name: 'ConnectorList')
    ConnectorState = Shapes::StringShape.new(name: 'ConnectorState')
    ConnectorType = Shapes::StringShape.new(name: 'ConnectorType')
    ConnectorsChecksList = Shapes::ListShape.new(name: 'ConnectorsChecksList')
    CreateEntitlementRequest = Shapes::StructureShape.new(name: 'CreateEntitlementRequest')
    CreateEntitlementResponse = Shapes::StructureShape.new(name: 'CreateEntitlementResponse')
    CreateEnvironmentConnectorRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentConnectorRequest')
    CreateEnvironmentConnectorResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentConnectorResponse')
    CreateEnvironmentHostRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentHostRequest')
    CreateEnvironmentHostResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentHostResponse')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentResponse')
    DedicatedHostId = Shapes::StringShape.new(name: 'DedicatedHostId')
    DeleteEntitlementRequest = Shapes::StructureShape.new(name: 'DeleteEntitlementRequest')
    DeleteEntitlementResponse = Shapes::StructureShape.new(name: 'DeleteEntitlementResponse')
    DeleteEnvironmentConnectorRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentConnectorRequest')
    DeleteEnvironmentConnectorResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentConnectorResponse')
    DeleteEnvironmentHostRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentHostRequest')
    DeleteEnvironmentHostResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentHostResponse')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentResponse')
    DisassociateEipFromVlanRequest = Shapes::StructureShape.new(name: 'DisassociateEipFromVlanRequest')
    DisassociateEipFromVlanRequestVlanNameString = Shapes::StringShape.new(name: 'DisassociateEipFromVlanRequestVlanNameString')
    DisassociateEipFromVlanResponse = Shapes::StructureShape.new(name: 'DisassociateEipFromVlanResponse')
    EipAssociation = Shapes::StructureShape.new(name: 'EipAssociation')
    EipAssociationList = Shapes::ListShape.new(name: 'EipAssociationList')
    EntitlementStatus = Shapes::StringShape.new(name: 'EntitlementStatus')
    EntitlementType = Shapes::StringShape.new(name: 'EntitlementType')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentState = Shapes::StringShape.new(name: 'EnvironmentState')
    EnvironmentStateList = Shapes::ListShape.new(name: 'EnvironmentStateList')
    EnvironmentSummary = Shapes::StructureShape.new(name: 'EnvironmentSummary')
    EnvironmentSummaryList = Shapes::ListShape.new(name: 'EnvironmentSummaryList')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    EsxVersion = Shapes::StringShape.new(name: 'EsxVersion')
    EsxVersionList = Shapes::ListShape.new(name: 'EsxVersionList')
    GetDepotUrlRequest = Shapes::StructureShape.new(name: 'GetDepotUrlRequest')
    GetDepotUrlResponse = Shapes::StructureShape.new(name: 'GetDepotUrlResponse')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    GetVersionsRequest = Shapes::StructureShape.new(name: 'GetVersionsRequest')
    GetVersionsResponse = Shapes::StructureShape.new(name: 'GetVersionsResponse')
    Host = Shapes::StructureShape.new(name: 'Host')
    HostInfoForCreate = Shapes::StructureShape.new(name: 'HostInfoForCreate')
    HostInfoForCreateList = Shapes::ListShape.new(name: 'HostInfoForCreateList')
    HostList = Shapes::ListShape.new(name: 'HostList')
    HostName = Shapes::StringShape.new(name: 'HostName')
    HostState = Shapes::StringShape.new(name: 'HostState')
    InitialVlanInfo = Shapes::StructureShape.new(name: 'InitialVlanInfo')
    InitialVlans = Shapes::StructureShape.new(name: 'InitialVlans')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeEsxVersionsInfo = Shapes::StructureShape.new(name: 'InstanceTypeEsxVersionsInfo')
    InstanceTypeEsxVersionsList = Shapes::ListShape.new(name: 'InstanceTypeEsxVersionsList')
    InstanceTypeList = Shapes::ListShape.new(name: 'InstanceTypeList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    KeyName = Shapes::StringShape.new(name: 'KeyName')
    LicenseInfo = Shapes::StructureShape.new(name: 'LicenseInfo')
    LicenseInfoList = Shapes::ListShape.new(name: 'LicenseInfoList')
    ListEnvironmentConnectorsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentConnectorsRequest')
    ListEnvironmentConnectorsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentConnectorsResponse')
    ListEnvironmentHostsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentHostsRequest')
    ListEnvironmentHostsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentHostsResponse')
    ListEnvironmentVlansRequest = Shapes::StructureShape.new(name: 'ListEnvironmentVlansRequest')
    ListEnvironmentVlansResponse = Shapes::StructureShape.new(name: 'ListEnvironmentVlansResponse')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVmEntitlementsRequest = Shapes::StructureShape.new(name: 'ListVmEntitlementsRequest')
    ListVmEntitlementsResponse = Shapes::StructureShape.new(name: 'ListVmEntitlementsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkAclId = Shapes::StringShape.new(name: 'NetworkAclId')
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
    SecretIdentifier = Shapes::StringShape.new(name: 'SecretIdentifier')
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
    UpdateEnvironmentConnectorRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentConnectorRequest')
    UpdateEnvironmentConnectorResponse = Shapes::StructureShape.new(name: 'UpdateEnvironmentConnectorResponse')
    VSanLicenseKey = Shapes::StringShape.new(name: 'VSanLicenseKey')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VcfHostnames = Shapes::StructureShape.new(name: 'VcfHostnames')
    VcfVersion = Shapes::StringShape.new(name: 'VcfVersion')
    VcfVersionInfo = Shapes::StructureShape.new(name: 'VcfVersionInfo')
    VcfVersionList = Shapes::ListShape.new(name: 'VcfVersionList')
    Vlan = Shapes::StructureShape.new(name: 'Vlan')
    VlanId = Shapes::IntegerShape.new(name: 'VlanId')
    VlanList = Shapes::ListShape.new(name: 'VlanList')
    VlanState = Shapes::StringShape.new(name: 'VlanState')
    VmEntitlement = Shapes::StructureShape.new(name: 'VmEntitlement')
    VmEntitlementList = Shapes::ListShape.new(name: 'VmEntitlementList')
    VmId = Shapes::StringShape.new(name: 'VmId')
    VmIdList = Shapes::ListShape.new(name: 'VmIdList')
    VmName = Shapes::StringShape.new(name: 'VmName')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AssociateEipToVlanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AssociateEipToVlanRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    AssociateEipToVlanRequest.add_member(:vlan_name, Shapes::ShapeRef.new(shape: AssociateEipToVlanRequestVlanNameString, required: true, location_name: "vlanName"))
    AssociateEipToVlanRequest.add_member(:allocation_id, Shapes::ShapeRef.new(shape: AllocationId, required: true, location_name: "allocationId"))
    AssociateEipToVlanRequest.struct_class = Types::AssociateEipToVlanRequest

    AssociateEipToVlanResponse.add_member(:vlan, Shapes::ShapeRef.new(shape: Vlan, location_name: "vlan"))
    AssociateEipToVlanResponse.struct_class = Types::AssociateEipToVlanResponse

    Check.add_member(:type, Shapes::ShapeRef.new(shape: CheckType, location_name: "type"))
    Check.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Check.add_member(:result, Shapes::ShapeRef.new(shape: CheckResult, location_name: "result"))
    Check.add_member(:impaired_since, Shapes::ShapeRef.new(shape: Timestamp, location_name: "impairedSince"))
    Check.struct_class = Types::Check

    ChecksList.member = Shapes::ShapeRef.new(shape: Check)

    ConnectivityInfo.add_member(:private_route_server_peerings, Shapes::ShapeRef.new(shape: RouteServerPeeringList, required: true, location_name: "privateRouteServerPeerings"))
    ConnectivityInfo.struct_class = Types::ConnectivityInfo

    Connector.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    Connector.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, location_name: "connectorId"))
    Connector.add_member(:type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "type"))
    Connector.add_member(:appliance_fqdn, Shapes::ShapeRef.new(shape: ApplianceFqdn, location_name: "applianceFqdn"))
    Connector.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretIdentifier, location_name: "secretArn"))
    Connector.add_member(:state, Shapes::ShapeRef.new(shape: ConnectorState, location_name: "state"))
    Connector.add_member(:state_details, Shapes::ShapeRef.new(shape: StateDetails, location_name: "stateDetails"))
    Connector.add_member(:status, Shapes::ShapeRef.new(shape: CheckResult, location_name: "status"))
    Connector.add_member(:checks, Shapes::ShapeRef.new(shape: ConnectorsChecksList, location_name: "checks"))
    Connector.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Connector.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Connector.struct_class = Types::Connector

    ConnectorCheck.add_member(:type, Shapes::ShapeRef.new(shape: CheckType, location_name: "type"))
    ConnectorCheck.add_member(:result, Shapes::ShapeRef.new(shape: CheckResult, location_name: "result"))
    ConnectorCheck.add_member(:last_check_attempt, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastCheckAttempt"))
    ConnectorCheck.add_member(:impaired_since, Shapes::ShapeRef.new(shape: Timestamp, location_name: "impairedSince"))
    ConnectorCheck.struct_class = Types::ConnectorCheck

    ConnectorList.member = Shapes::ShapeRef.new(shape: Connector)

    ConnectorsChecksList.member = Shapes::ShapeRef.new(shape: ConnectorCheck)

    CreateEntitlementRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEntitlementRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateEntitlementRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    CreateEntitlementRequest.add_member(:entitlement_type, Shapes::ShapeRef.new(shape: EntitlementType, required: true, location_name: "entitlementType"))
    CreateEntitlementRequest.add_member(:vm_ids, Shapes::ShapeRef.new(shape: VmIdList, required: true, location_name: "vmIds"))
    CreateEntitlementRequest.struct_class = Types::CreateEntitlementRequest

    CreateEntitlementResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: VmEntitlementList, location_name: "entitlements"))
    CreateEntitlementResponse.struct_class = Types::CreateEntitlementResponse

    CreateEnvironmentConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEnvironmentConnectorRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateEnvironmentConnectorRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConnectorType, required: true, location_name: "type"))
    CreateEnvironmentConnectorRequest.add_member(:appliance_fqdn, Shapes::ShapeRef.new(shape: ApplianceFqdn, required: true, location_name: "applianceFqdn"))
    CreateEnvironmentConnectorRequest.add_member(:secret_identifier, Shapes::ShapeRef.new(shape: SecretIdentifier, required: true, location_name: "secretIdentifier"))
    CreateEnvironmentConnectorRequest.struct_class = Types::CreateEnvironmentConnectorRequest

    CreateEnvironmentConnectorResponse.add_member(:connector, Shapes::ShapeRef.new(shape: Connector, location_name: "connector"))
    CreateEnvironmentConnectorResponse.struct_class = Types::CreateEnvironmentConnectorResponse

    CreateEnvironmentHostRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEnvironmentHostRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateEnvironmentHostRequest.add_member(:host, Shapes::ShapeRef.new(shape: HostInfoForCreate, required: true, location_name: "host"))
    CreateEnvironmentHostRequest.add_member(:esx_version, Shapes::ShapeRef.new(shape: EsxVersion, location_name: "esxVersion"))
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
    CreateEnvironmentRequest.add_member(:initial_vlans, Shapes::ShapeRef.new(shape: InitialVlans, required: true, location_name: "initialVlans"))
    CreateEnvironmentRequest.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: "connectivityInfo"))
    CreateEnvironmentRequest.add_member(:license_info, Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: "licenseInfo"))
    CreateEnvironmentRequest.add_member(:hosts, Shapes::ShapeRef.new(shape: HostInfoForCreateList, location_name: "hosts"))
    CreateEnvironmentRequest.add_member(:vcf_hostnames, Shapes::ShapeRef.new(shape: VcfHostnames, location_name: "vcfHostnames"))
    CreateEnvironmentRequest.add_member(:site_id, Shapes::ShapeRef.new(shape: String, location_name: "siteId"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    CreateEnvironmentResponse.struct_class = Types::CreateEnvironmentResponse

    DeleteEntitlementRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteEntitlementRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DeleteEntitlementRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    DeleteEntitlementRequest.add_member(:entitlement_type, Shapes::ShapeRef.new(shape: EntitlementType, required: true, location_name: "entitlementType"))
    DeleteEntitlementRequest.add_member(:vm_ids, Shapes::ShapeRef.new(shape: VmIdList, required: true, location_name: "vmIds"))
    DeleteEntitlementRequest.struct_class = Types::DeleteEntitlementRequest

    DeleteEntitlementResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: VmEntitlementList, location_name: "entitlements"))
    DeleteEntitlementResponse.struct_class = Types::DeleteEntitlementResponse

    DeleteEnvironmentConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteEnvironmentConnectorRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DeleteEnvironmentConnectorRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    DeleteEnvironmentConnectorRequest.struct_class = Types::DeleteEnvironmentConnectorRequest

    DeleteEnvironmentConnectorResponse.add_member(:connector, Shapes::ShapeRef.new(shape: Connector, location_name: "connector"))
    DeleteEnvironmentConnectorResponse.add_member(:environment_summary, Shapes::ShapeRef.new(shape: EnvironmentSummary, location_name: "environmentSummary"))
    DeleteEnvironmentConnectorResponse.struct_class = Types::DeleteEnvironmentConnectorResponse

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

    DisassociateEipFromVlanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateEipFromVlanRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DisassociateEipFromVlanRequest.add_member(:vlan_name, Shapes::ShapeRef.new(shape: DisassociateEipFromVlanRequestVlanNameString, required: true, location_name: "vlanName"))
    DisassociateEipFromVlanRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "associationId"))
    DisassociateEipFromVlanRequest.struct_class = Types::DisassociateEipFromVlanRequest

    DisassociateEipFromVlanResponse.add_member(:vlan, Shapes::ShapeRef.new(shape: Vlan, location_name: "vlan"))
    DisassociateEipFromVlanResponse.struct_class = Types::DisassociateEipFromVlanResponse

    EipAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "associationId"))
    EipAssociation.add_member(:allocation_id, Shapes::ShapeRef.new(shape: AllocationId, location_name: "allocationId"))
    EipAssociation.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    EipAssociation.struct_class = Types::EipAssociation

    EipAssociationList.member = Shapes::ShapeRef.new(shape: EipAssociation)

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

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    EsxVersionList.member = Shapes::ShapeRef.new(shape: String)

    GetDepotUrlRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    GetDepotUrlRequest.add_member(:rotate, Shapes::ShapeRef.new(shape: Boolean, location_name: "rotate"))
    GetDepotUrlRequest.struct_class = Types::GetDepotUrlRequest

    GetDepotUrlResponse.add_member(:depot_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "depotUrl"))
    GetDepotUrlResponse.add_member(:token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "token"))
    GetDepotUrlResponse.struct_class = Types::GetDepotUrlResponse

    GetEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    GetVersionsRequest.struct_class = Types::GetVersionsRequest

    GetVersionsResponse.add_member(:vcf_versions, Shapes::ShapeRef.new(shape: VcfVersionList, required: true, location_name: "vcfVersions"))
    GetVersionsResponse.add_member(:instance_type_esx_versions, Shapes::ShapeRef.new(shape: InstanceTypeEsxVersionsList, required: true, location_name: "instanceTypeEsxVersions"))
    GetVersionsResponse.struct_class = Types::GetVersionsResponse

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
    InitialVlans.add_member(:is_hcx_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isHcxPublic"))
    InitialVlans.add_member(:hcx_network_acl_id, Shapes::ShapeRef.new(shape: NetworkAclId, location_name: "hcxNetworkAclId"))
    InitialVlans.struct_class = Types::InitialVlans

    InstanceTypeEsxVersionsInfo.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    InstanceTypeEsxVersionsInfo.add_member(:esx_versions, Shapes::ShapeRef.new(shape: EsxVersionList, required: true, location_name: "esxVersions"))
    InstanceTypeEsxVersionsInfo.struct_class = Types::InstanceTypeEsxVersionsInfo

    InstanceTypeEsxVersionsList.member = Shapes::ShapeRef.new(shape: InstanceTypeEsxVersionsInfo)

    InstanceTypeList.member = Shapes::ShapeRef.new(shape: InstanceType)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LicenseInfo.add_member(:solution_key, Shapes::ShapeRef.new(shape: SolutionKey, required: true, location_name: "solutionKey"))
    LicenseInfo.add_member(:vsan_key, Shapes::ShapeRef.new(shape: VSanLicenseKey, required: true, location_name: "vsanKey"))
    LicenseInfo.struct_class = Types::LicenseInfo

    LicenseInfoList.member = Shapes::ShapeRef.new(shape: LicenseInfo)

    ListEnvironmentConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnvironmentConnectorsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    ListEnvironmentConnectorsRequest.struct_class = Types::ListEnvironmentConnectorsRequest

    ListEnvironmentConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentConnectorsResponse.add_member(:connectors, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "connectors"))
    ListEnvironmentConnectorsResponse.struct_class = Types::ListEnvironmentConnectorsResponse

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

    ListVmEntitlementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListVmEntitlementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListVmEntitlementsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    ListVmEntitlementsRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    ListVmEntitlementsRequest.add_member(:entitlement_type, Shapes::ShapeRef.new(shape: EntitlementType, required: true, location_name: "entitlementType"))
    ListVmEntitlementsRequest.struct_class = Types::ListVmEntitlementsRequest

    ListVmEntitlementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListVmEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: VmEntitlementList, location_name: "entitlements"))
    ListVmEntitlementsResponse.struct_class = Types::ListVmEntitlementsResponse

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

    UpdateEnvironmentConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateEnvironmentConnectorRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    UpdateEnvironmentConnectorRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    UpdateEnvironmentConnectorRequest.add_member(:appliance_fqdn, Shapes::ShapeRef.new(shape: ApplianceFqdn, location_name: "applianceFqdn"))
    UpdateEnvironmentConnectorRequest.add_member(:secret_identifier, Shapes::ShapeRef.new(shape: SecretIdentifier, location_name: "secretIdentifier"))
    UpdateEnvironmentConnectorRequest.struct_class = Types::UpdateEnvironmentConnectorRequest

    UpdateEnvironmentConnectorResponse.add_member(:connector, Shapes::ShapeRef.new(shape: Connector, location_name: "connector"))
    UpdateEnvironmentConnectorResponse.struct_class = Types::UpdateEnvironmentConnectorResponse

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

    VcfVersionInfo.add_member(:vcf_version, Shapes::ShapeRef.new(shape: VcfVersion, required: true, location_name: "vcfVersion"))
    VcfVersionInfo.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    VcfVersionInfo.add_member(:default_esx_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "defaultEsxVersion"))
    VcfVersionInfo.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, required: true, location_name: "instanceTypes"))
    VcfVersionInfo.struct_class = Types::VcfVersionInfo

    VcfVersionList.member = Shapes::ShapeRef.new(shape: VcfVersionInfo)

    Vlan.add_member(:vlan_id, Shapes::ShapeRef.new(shape: VlanId, location_name: "vlanId"))
    Vlan.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "cidr"))
    Vlan.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    Vlan.add_member(:function_name, Shapes::ShapeRef.new(shape: String, location_name: "functionName"))
    Vlan.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "subnetId"))
    Vlan.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Vlan.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Vlan.add_member(:vlan_state, Shapes::ShapeRef.new(shape: VlanState, location_name: "vlanState"))
    Vlan.add_member(:state_details, Shapes::ShapeRef.new(shape: StateDetails, location_name: "stateDetails"))
    Vlan.add_member(:eip_associations, Shapes::ShapeRef.new(shape: EipAssociationList, location_name: "eipAssociations"))
    Vlan.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    Vlan.add_member(:network_acl_id, Shapes::ShapeRef.new(shape: NetworkAclId, location_name: "networkAclId"))
    Vlan.struct_class = Types::Vlan

    VlanList.member = Shapes::ShapeRef.new(shape: Vlan)

    VmEntitlement.add_member(:vm_id, Shapes::ShapeRef.new(shape: VmId, location_name: "vmId"))
    VmEntitlement.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    VmEntitlement.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, location_name: "connectorId"))
    VmEntitlement.add_member(:vm_name, Shapes::ShapeRef.new(shape: VmName, location_name: "vmName"))
    VmEntitlement.add_member(:type, Shapes::ShapeRef.new(shape: EntitlementType, location_name: "type"))
    VmEntitlement.add_member(:status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "status"))
    VmEntitlement.add_member(:last_synced_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastSyncedAt"))
    VmEntitlement.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    VmEntitlement.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppedAt"))
    VmEntitlement.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "errorDetail"))
    VmEntitlement.struct_class = Types::VmEntitlement

    VmEntitlementList.member = Shapes::ShapeRef.new(shape: VmEntitlement)

    VmIdList.member = Shapes::ShapeRef.new(shape: VmId)


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

      api.add_operation(:associate_eip_to_vlan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateEipToVlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateEipToVlanRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateEipToVlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_environment_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:delete_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:delete_environment_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:disassociate_eip_from_vlan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateEipFromVlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateEipFromVlanRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateEipFromVlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_depot_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDepotUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDepotUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDepotUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:get_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_environment_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironmentConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:list_vm_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVmEntitlements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVmEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVmEntitlementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:update_environment_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironmentConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end

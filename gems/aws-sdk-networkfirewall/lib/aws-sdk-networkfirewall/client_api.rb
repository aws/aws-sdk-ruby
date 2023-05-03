# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkFirewall
  # @api private
  module ClientApi

    include Seahorse::Model

    ActionDefinition = Shapes::StructureShape.new(name: 'ActionDefinition')
    ActionName = Shapes::StringShape.new(name: 'ActionName')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressDefinition = Shapes::StringShape.new(name: 'AddressDefinition')
    Addresses = Shapes::ListShape.new(name: 'Addresses')
    AssociateFirewallPolicyRequest = Shapes::StructureShape.new(name: 'AssociateFirewallPolicyRequest')
    AssociateFirewallPolicyResponse = Shapes::StructureShape.new(name: 'AssociateFirewallPolicyResponse')
    AssociateSubnetsRequest = Shapes::StructureShape.new(name: 'AssociateSubnetsRequest')
    AssociateSubnetsResponse = Shapes::StructureShape.new(name: 'AssociateSubnetsResponse')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentStatus = Shapes::StringShape.new(name: 'AttachmentStatus')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AzSubnet = Shapes::StringShape.new(name: 'AzSubnet')
    AzSubnets = Shapes::ListShape.new(name: 'AzSubnets')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CIDRCount = Shapes::IntegerShape.new(name: 'CIDRCount')
    CIDRSummary = Shapes::StructureShape.new(name: 'CIDRSummary')
    CapacityUsageSummary = Shapes::StructureShape.new(name: 'CapacityUsageSummary')
    Certificates = Shapes::ListShape.new(name: 'Certificates')
    CollectionMember_String = Shapes::StringShape.new(name: 'CollectionMember_String')
    ConfigurationSyncState = Shapes::StringShape.new(name: 'ConfigurationSyncState')
    CreateFirewallPolicyRequest = Shapes::StructureShape.new(name: 'CreateFirewallPolicyRequest')
    CreateFirewallPolicyResponse = Shapes::StructureShape.new(name: 'CreateFirewallPolicyResponse')
    CreateFirewallRequest = Shapes::StructureShape.new(name: 'CreateFirewallRequest')
    CreateFirewallResponse = Shapes::StructureShape.new(name: 'CreateFirewallResponse')
    CreateRuleGroupRequest = Shapes::StructureShape.new(name: 'CreateRuleGroupRequest')
    CreateRuleGroupResponse = Shapes::StructureShape.new(name: 'CreateRuleGroupResponse')
    CreateTLSInspectionConfigurationRequest = Shapes::StructureShape.new(name: 'CreateTLSInspectionConfigurationRequest')
    CreateTLSInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'CreateTLSInspectionConfigurationResponse')
    CustomAction = Shapes::StructureShape.new(name: 'CustomAction')
    CustomActions = Shapes::ListShape.new(name: 'CustomActions')
    DeleteFirewallPolicyRequest = Shapes::StructureShape.new(name: 'DeleteFirewallPolicyRequest')
    DeleteFirewallPolicyResponse = Shapes::StructureShape.new(name: 'DeleteFirewallPolicyResponse')
    DeleteFirewallRequest = Shapes::StructureShape.new(name: 'DeleteFirewallRequest')
    DeleteFirewallResponse = Shapes::StructureShape.new(name: 'DeleteFirewallResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteRuleGroupRequest = Shapes::StructureShape.new(name: 'DeleteRuleGroupRequest')
    DeleteRuleGroupResponse = Shapes::StructureShape.new(name: 'DeleteRuleGroupResponse')
    DeleteTLSInspectionConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteTLSInspectionConfigurationRequest')
    DeleteTLSInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteTLSInspectionConfigurationResponse')
    DescribeFirewallPolicyRequest = Shapes::StructureShape.new(name: 'DescribeFirewallPolicyRequest')
    DescribeFirewallPolicyResponse = Shapes::StructureShape.new(name: 'DescribeFirewallPolicyResponse')
    DescribeFirewallRequest = Shapes::StructureShape.new(name: 'DescribeFirewallRequest')
    DescribeFirewallResponse = Shapes::StructureShape.new(name: 'DescribeFirewallResponse')
    DescribeLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeLoggingConfigurationRequest')
    DescribeLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeLoggingConfigurationResponse')
    DescribeResourcePolicyRequest = Shapes::StructureShape.new(name: 'DescribeResourcePolicyRequest')
    DescribeResourcePolicyResponse = Shapes::StructureShape.new(name: 'DescribeResourcePolicyResponse')
    DescribeRuleGroupMetadataRequest = Shapes::StructureShape.new(name: 'DescribeRuleGroupMetadataRequest')
    DescribeRuleGroupMetadataResponse = Shapes::StructureShape.new(name: 'DescribeRuleGroupMetadataResponse')
    DescribeRuleGroupRequest = Shapes::StructureShape.new(name: 'DescribeRuleGroupRequest')
    DescribeRuleGroupResponse = Shapes::StructureShape.new(name: 'DescribeRuleGroupResponse')
    DescribeTLSInspectionConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeTLSInspectionConfigurationRequest')
    DescribeTLSInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeTLSInspectionConfigurationResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Destination = Shapes::StringShape.new(name: 'Destination')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    DimensionValue = Shapes::StringShape.new(name: 'DimensionValue')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    DisassociateSubnetsRequest = Shapes::StructureShape.new(name: 'DisassociateSubnetsRequest')
    DisassociateSubnetsResponse = Shapes::StructureShape.new(name: 'DisassociateSubnetsResponse')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EndpointId = Shapes::StringShape.new(name: 'EndpointId')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Firewall = Shapes::StructureShape.new(name: 'Firewall')
    FirewallMetadata = Shapes::StructureShape.new(name: 'FirewallMetadata')
    FirewallPolicies = Shapes::ListShape.new(name: 'FirewallPolicies')
    FirewallPolicy = Shapes::StructureShape.new(name: 'FirewallPolicy')
    FirewallPolicyMetadata = Shapes::StructureShape.new(name: 'FirewallPolicyMetadata')
    FirewallPolicyResponse = Shapes::StructureShape.new(name: 'FirewallPolicyResponse')
    FirewallStatus = Shapes::StructureShape.new(name: 'FirewallStatus')
    FirewallStatusValue = Shapes::StringShape.new(name: 'FirewallStatusValue')
    Firewalls = Shapes::ListShape.new(name: 'Firewalls')
    Flags = Shapes::ListShape.new(name: 'Flags')
    GeneratedRulesType = Shapes::StringShape.new(name: 'GeneratedRulesType')
    HashMapKey = Shapes::StringShape.new(name: 'HashMapKey')
    HashMapValue = Shapes::StringShape.new(name: 'HashMapValue')
    Header = Shapes::StructureShape.new(name: 'Header')
    IPAddressType = Shapes::StringShape.new(name: 'IPAddressType')
    IPSet = Shapes::StructureShape.new(name: 'IPSet')
    IPSetArn = Shapes::StringShape.new(name: 'IPSetArn')
    IPSetMetadata = Shapes::StructureShape.new(name: 'IPSetMetadata')
    IPSetMetadataMap = Shapes::MapShape.new(name: 'IPSetMetadataMap')
    IPSetReference = Shapes::StructureShape.new(name: 'IPSetReference')
    IPSetReferenceMap = Shapes::MapShape.new(name: 'IPSetReferenceMap')
    IPSetReferenceName = Shapes::StringShape.new(name: 'IPSetReferenceName')
    IPSets = Shapes::MapShape.new(name: 'IPSets')
    InsufficientCapacityException = Shapes::StructureShape.new(name: 'InsufficientCapacityException')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidResourcePolicyException = Shapes::StructureShape.new(name: 'InvalidResourcePolicyException')
    InvalidTokenException = Shapes::StructureShape.new(name: 'InvalidTokenException')
    KeyId = Shapes::StringShape.new(name: 'KeyId')
    Keyword = Shapes::StringShape.new(name: 'Keyword')
    LastUpdateTime = Shapes::TimestampShape.new(name: 'LastUpdateTime')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListFirewallPoliciesRequest = Shapes::StructureShape.new(name: 'ListFirewallPoliciesRequest')
    ListFirewallPoliciesResponse = Shapes::StructureShape.new(name: 'ListFirewallPoliciesResponse')
    ListFirewallsRequest = Shapes::StructureShape.new(name: 'ListFirewallsRequest')
    ListFirewallsResponse = Shapes::StructureShape.new(name: 'ListFirewallsResponse')
    ListRuleGroupsRequest = Shapes::StructureShape.new(name: 'ListRuleGroupsRequest')
    ListRuleGroupsResponse = Shapes::StructureShape.new(name: 'ListRuleGroupsResponse')
    ListTLSInspectionConfigurationsRequest = Shapes::StructureShape.new(name: 'ListTLSInspectionConfigurationsRequest')
    ListTLSInspectionConfigurationsResponse = Shapes::StructureShape.new(name: 'ListTLSInspectionConfigurationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogDestinationConfig = Shapes::StructureShape.new(name: 'LogDestinationConfig')
    LogDestinationConfigs = Shapes::ListShape.new(name: 'LogDestinationConfigs')
    LogDestinationMap = Shapes::MapShape.new(name: 'LogDestinationMap')
    LogDestinationPermissionException = Shapes::StructureShape.new(name: 'LogDestinationPermissionException')
    LogDestinationType = Shapes::StringShape.new(name: 'LogDestinationType')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    MatchAttributes = Shapes::StructureShape.new(name: 'MatchAttributes')
    NumberOfAssociations = Shapes::IntegerShape.new(name: 'NumberOfAssociations')
    OverrideAction = Shapes::StringShape.new(name: 'OverrideAction')
    PaginationMaxResults = Shapes::IntegerShape.new(name: 'PaginationMaxResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PerObjectStatus = Shapes::StructureShape.new(name: 'PerObjectStatus')
    PerObjectSyncStatus = Shapes::StringShape.new(name: 'PerObjectSyncStatus')
    PolicyString = Shapes::StringShape.new(name: 'PolicyString')
    PolicyVariables = Shapes::StructureShape.new(name: 'PolicyVariables')
    Port = Shapes::StringShape.new(name: 'Port')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortRangeBound = Shapes::IntegerShape.new(name: 'PortRangeBound')
    PortRanges = Shapes::ListShape.new(name: 'PortRanges')
    PortSet = Shapes::StructureShape.new(name: 'PortSet')
    PortSets = Shapes::MapShape.new(name: 'PortSets')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    ProtocolNumber = Shapes::IntegerShape.new(name: 'ProtocolNumber')
    ProtocolNumbers = Shapes::ListShape.new(name: 'ProtocolNumbers')
    PublishMetricAction = Shapes::StructureShape.new(name: 'PublishMetricAction')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    ReferenceSets = Shapes::StructureShape.new(name: 'ReferenceSets')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceManagedStatus = Shapes::StringShape.new(name: 'ResourceManagedStatus')
    ResourceManagedType = Shapes::StringShape.new(name: 'ResourceManagedType')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOwnerCheckException = Shapes::StructureShape.new(name: 'ResourceOwnerCheckException')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    RuleCapacity = Shapes::IntegerShape.new(name: 'RuleCapacity')
    RuleDefinition = Shapes::StructureShape.new(name: 'RuleDefinition')
    RuleGroup = Shapes::StructureShape.new(name: 'RuleGroup')
    RuleGroupMetadata = Shapes::StructureShape.new(name: 'RuleGroupMetadata')
    RuleGroupResponse = Shapes::StructureShape.new(name: 'RuleGroupResponse')
    RuleGroupType = Shapes::StringShape.new(name: 'RuleGroupType')
    RuleGroups = Shapes::ListShape.new(name: 'RuleGroups')
    RuleOption = Shapes::StructureShape.new(name: 'RuleOption')
    RuleOptions = Shapes::ListShape.new(name: 'RuleOptions')
    RuleOrder = Shapes::StringShape.new(name: 'RuleOrder')
    RuleTargets = Shapes::ListShape.new(name: 'RuleTargets')
    RuleVariableName = Shapes::StringShape.new(name: 'RuleVariableName')
    RuleVariables = Shapes::StructureShape.new(name: 'RuleVariables')
    RulesSource = Shapes::StructureShape.new(name: 'RulesSource')
    RulesSourceList = Shapes::StructureShape.new(name: 'RulesSourceList')
    RulesString = Shapes::StringShape.new(name: 'RulesString')
    ServerCertificate = Shapes::StructureShape.new(name: 'ServerCertificate')
    ServerCertificateConfiguration = Shapes::StructureShape.new(name: 'ServerCertificateConfiguration')
    ServerCertificateConfigurations = Shapes::ListShape.new(name: 'ServerCertificateConfigurations')
    ServerCertificateScope = Shapes::StructureShape.new(name: 'ServerCertificateScope')
    ServerCertificateScopes = Shapes::ListShape.new(name: 'ServerCertificateScopes')
    ServerCertificates = Shapes::ListShape.new(name: 'ServerCertificates')
    Setting = Shapes::StringShape.new(name: 'Setting')
    Settings = Shapes::ListShape.new(name: 'Settings')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceMetadata = Shapes::StructureShape.new(name: 'SourceMetadata')
    StatefulAction = Shapes::StringShape.new(name: 'StatefulAction')
    StatefulActions = Shapes::ListShape.new(name: 'StatefulActions')
    StatefulEngineOptions = Shapes::StructureShape.new(name: 'StatefulEngineOptions')
    StatefulRule = Shapes::StructureShape.new(name: 'StatefulRule')
    StatefulRuleDirection = Shapes::StringShape.new(name: 'StatefulRuleDirection')
    StatefulRuleGroupOverride = Shapes::StructureShape.new(name: 'StatefulRuleGroupOverride')
    StatefulRuleGroupReference = Shapes::StructureShape.new(name: 'StatefulRuleGroupReference')
    StatefulRuleGroupReferences = Shapes::ListShape.new(name: 'StatefulRuleGroupReferences')
    StatefulRuleOptions = Shapes::StructureShape.new(name: 'StatefulRuleOptions')
    StatefulRuleProtocol = Shapes::StringShape.new(name: 'StatefulRuleProtocol')
    StatefulRules = Shapes::ListShape.new(name: 'StatefulRules')
    StatelessActions = Shapes::ListShape.new(name: 'StatelessActions')
    StatelessRule = Shapes::StructureShape.new(name: 'StatelessRule')
    StatelessRuleGroupReference = Shapes::StructureShape.new(name: 'StatelessRuleGroupReference')
    StatelessRuleGroupReferences = Shapes::ListShape.new(name: 'StatelessRuleGroupReferences')
    StatelessRules = Shapes::ListShape.new(name: 'StatelessRules')
    StatelessRulesAndCustomActions = Shapes::StructureShape.new(name: 'StatelessRulesAndCustomActions')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StreamExceptionPolicy = Shapes::StringShape.new(name: 'StreamExceptionPolicy')
    SubnetMapping = Shapes::StructureShape.new(name: 'SubnetMapping')
    SubnetMappings = Shapes::ListShape.new(name: 'SubnetMappings')
    SyncState = Shapes::StructureShape.new(name: 'SyncState')
    SyncStateConfig = Shapes::MapShape.new(name: 'SyncStateConfig')
    SyncStates = Shapes::MapShape.new(name: 'SyncStates')
    TCPFlag = Shapes::StringShape.new(name: 'TCPFlag')
    TCPFlagField = Shapes::StructureShape.new(name: 'TCPFlagField')
    TCPFlags = Shapes::ListShape.new(name: 'TCPFlags')
    TLSInspectionConfiguration = Shapes::StructureShape.new(name: 'TLSInspectionConfiguration')
    TLSInspectionConfigurationMetadata = Shapes::StructureShape.new(name: 'TLSInspectionConfigurationMetadata')
    TLSInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'TLSInspectionConfigurationResponse')
    TLSInspectionConfigurations = Shapes::ListShape.new(name: 'TLSInspectionConfigurations')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsPaginationMaxResults = Shapes::IntegerShape.new(name: 'TagsPaginationMaxResults')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    TargetTypes = Shapes::ListShape.new(name: 'TargetTypes')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TlsCertificateData = Shapes::StructureShape.new(name: 'TlsCertificateData')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateFirewallDeleteProtectionRequest = Shapes::StructureShape.new(name: 'UpdateFirewallDeleteProtectionRequest')
    UpdateFirewallDeleteProtectionResponse = Shapes::StructureShape.new(name: 'UpdateFirewallDeleteProtectionResponse')
    UpdateFirewallDescriptionRequest = Shapes::StructureShape.new(name: 'UpdateFirewallDescriptionRequest')
    UpdateFirewallDescriptionResponse = Shapes::StructureShape.new(name: 'UpdateFirewallDescriptionResponse')
    UpdateFirewallEncryptionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateFirewallEncryptionConfigurationRequest')
    UpdateFirewallEncryptionConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateFirewallEncryptionConfigurationResponse')
    UpdateFirewallPolicyChangeProtectionRequest = Shapes::StructureShape.new(name: 'UpdateFirewallPolicyChangeProtectionRequest')
    UpdateFirewallPolicyChangeProtectionResponse = Shapes::StructureShape.new(name: 'UpdateFirewallPolicyChangeProtectionResponse')
    UpdateFirewallPolicyRequest = Shapes::StructureShape.new(name: 'UpdateFirewallPolicyRequest')
    UpdateFirewallPolicyResponse = Shapes::StructureShape.new(name: 'UpdateFirewallPolicyResponse')
    UpdateLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationRequest')
    UpdateLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationResponse')
    UpdateRuleGroupRequest = Shapes::StructureShape.new(name: 'UpdateRuleGroupRequest')
    UpdateRuleGroupResponse = Shapes::StructureShape.new(name: 'UpdateRuleGroupResponse')
    UpdateSubnetChangeProtectionRequest = Shapes::StructureShape.new(name: 'UpdateSubnetChangeProtectionRequest')
    UpdateSubnetChangeProtectionResponse = Shapes::StructureShape.new(name: 'UpdateSubnetChangeProtectionResponse')
    UpdateTLSInspectionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateTLSInspectionConfigurationRequest')
    UpdateTLSInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateTLSInspectionConfigurationResponse')
    UpdateToken = Shapes::StringShape.new(name: 'UpdateToken')
    VariableDefinition = Shapes::StringShape.new(name: 'VariableDefinition')
    VariableDefinitionList = Shapes::ListShape.new(name: 'VariableDefinitionList')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    VpcIds = Shapes::ListShape.new(name: 'VpcIds')

    ActionDefinition.add_member(:publish_metric_action, Shapes::ShapeRef.new(shape: PublishMetricAction, location_name: "PublishMetricAction"))
    ActionDefinition.struct_class = Types::ActionDefinition

    Address.add_member(:address_definition, Shapes::ShapeRef.new(shape: AddressDefinition, required: true, location_name: "AddressDefinition"))
    Address.struct_class = Types::Address

    Addresses.member = Shapes::ShapeRef.new(shape: Address)

    AssociateFirewallPolicyRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateFirewallPolicyRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateFirewallPolicyRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateFirewallPolicyRequest.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "FirewallPolicyArn"))
    AssociateFirewallPolicyRequest.struct_class = Types::AssociateFirewallPolicyRequest

    AssociateFirewallPolicyResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateFirewallPolicyResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateFirewallPolicyResponse.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    AssociateFirewallPolicyResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateFirewallPolicyResponse.struct_class = Types::AssociateFirewallPolicyResponse

    AssociateSubnetsRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateSubnetsRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateSubnetsRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateSubnetsRequest.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, required: true, location_name: "SubnetMappings"))
    AssociateSubnetsRequest.struct_class = Types::AssociateSubnetsRequest

    AssociateSubnetsResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateSubnetsResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateSubnetsResponse.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    AssociateSubnetsResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateSubnetsResponse.struct_class = Types::AssociateSubnetsResponse

    Attachment.add_member(:subnet_id, Shapes::ShapeRef.new(shape: AzSubnet, location_name: "SubnetId"))
    Attachment.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    Attachment.add_member(:status, Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: "Status"))
    Attachment.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    Attachment.struct_class = Types::Attachment

    AzSubnets.member = Shapes::ShapeRef.new(shape: AzSubnet)

    CIDRSummary.add_member(:available_cidr_count, Shapes::ShapeRef.new(shape: CIDRCount, location_name: "AvailableCIDRCount"))
    CIDRSummary.add_member(:utilized_cidr_count, Shapes::ShapeRef.new(shape: CIDRCount, location_name: "UtilizedCIDRCount"))
    CIDRSummary.add_member(:ip_set_references, Shapes::ShapeRef.new(shape: IPSetMetadataMap, location_name: "IPSetReferences"))
    CIDRSummary.struct_class = Types::CIDRSummary

    CapacityUsageSummary.add_member(:cid_rs, Shapes::ShapeRef.new(shape: CIDRSummary, location_name: "CIDRs"))
    CapacityUsageSummary.struct_class = Types::CapacityUsageSummary

    Certificates.member = Shapes::ShapeRef.new(shape: TlsCertificateData)

    CreateFirewallPolicyRequest.add_member(:firewall_policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "FirewallPolicyName"))
    CreateFirewallPolicyRequest.add_member(:firewall_policy, Shapes::ShapeRef.new(shape: FirewallPolicy, required: true, location_name: "FirewallPolicy"))
    CreateFirewallPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFirewallPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFirewallPolicyRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    CreateFirewallPolicyRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateFirewallPolicyRequest.struct_class = Types::CreateFirewallPolicyRequest

    CreateFirewallPolicyResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    CreateFirewallPolicyResponse.add_member(:firewall_policy_response, Shapes::ShapeRef.new(shape: FirewallPolicyResponse, required: true, location_name: "FirewallPolicyResponse"))
    CreateFirewallPolicyResponse.struct_class = Types::CreateFirewallPolicyResponse

    CreateFirewallRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "FirewallName"))
    CreateFirewallRequest.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "FirewallPolicyArn"))
    CreateFirewallRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    CreateFirewallRequest.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, required: true, location_name: "SubnetMappings"))
    CreateFirewallRequest.add_member(:delete_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection"))
    CreateFirewallRequest.add_member(:subnet_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection"))
    CreateFirewallRequest.add_member(:firewall_policy_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection"))
    CreateFirewallRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFirewallRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFirewallRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateFirewallRequest.struct_class = Types::CreateFirewallRequest

    CreateFirewallResponse.add_member(:firewall, Shapes::ShapeRef.new(shape: Firewall, location_name: "Firewall"))
    CreateFirewallResponse.add_member(:firewall_status, Shapes::ShapeRef.new(shape: FirewallStatus, location_name: "FirewallStatus"))
    CreateFirewallResponse.struct_class = Types::CreateFirewallResponse

    CreateRuleGroupRequest.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "RuleGroupName"))
    CreateRuleGroupRequest.add_member(:rule_group, Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    CreateRuleGroupRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RulesString, location_name: "Rules"))
    CreateRuleGroupRequest.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, required: true, location_name: "Type"))
    CreateRuleGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateRuleGroupRequest.add_member(:capacity, Shapes::ShapeRef.new(shape: RuleCapacity, required: true, location_name: "Capacity"))
    CreateRuleGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleGroupRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    CreateRuleGroupRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateRuleGroupRequest.add_member(:source_metadata, Shapes::ShapeRef.new(shape: SourceMetadata, location_name: "SourceMetadata"))
    CreateRuleGroupRequest.struct_class = Types::CreateRuleGroupRequest

    CreateRuleGroupResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    CreateRuleGroupResponse.add_member(:rule_group_response, Shapes::ShapeRef.new(shape: RuleGroupResponse, required: true, location_name: "RuleGroupResponse"))
    CreateRuleGroupResponse.struct_class = Types::CreateRuleGroupResponse

    CreateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TLSInspectionConfigurationName"))
    CreateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration, Shapes::ShapeRef.new(shape: TLSInspectionConfiguration, required: true, location_name: "TLSInspectionConfiguration"))
    CreateTLSInspectionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateTLSInspectionConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTLSInspectionConfigurationRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateTLSInspectionConfigurationRequest.struct_class = Types::CreateTLSInspectionConfigurationRequest

    CreateTLSInspectionConfigurationResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    CreateTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, required: true, location_name: "TLSInspectionConfigurationResponse"))
    CreateTLSInspectionConfigurationResponse.struct_class = Types::CreateTLSInspectionConfigurationResponse

    CustomAction.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "ActionName"))
    CustomAction.add_member(:action_definition, Shapes::ShapeRef.new(shape: ActionDefinition, required: true, location_name: "ActionDefinition"))
    CustomAction.struct_class = Types::CustomAction

    CustomActions.member = Shapes::ShapeRef.new(shape: CustomAction)

    DeleteFirewallPolicyRequest.add_member(:firewall_policy_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName"))
    DeleteFirewallPolicyRequest.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    DeleteFirewallPolicyRequest.struct_class = Types::DeleteFirewallPolicyRequest

    DeleteFirewallPolicyResponse.add_member(:firewall_policy_response, Shapes::ShapeRef.new(shape: FirewallPolicyResponse, required: true, location_name: "FirewallPolicyResponse"))
    DeleteFirewallPolicyResponse.struct_class = Types::DeleteFirewallPolicyResponse

    DeleteFirewallRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DeleteFirewallRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DeleteFirewallRequest.struct_class = Types::DeleteFirewallRequest

    DeleteFirewallResponse.add_member(:firewall, Shapes::ShapeRef.new(shape: Firewall, location_name: "Firewall"))
    DeleteFirewallResponse.add_member(:firewall_status, Shapes::ShapeRef.new(shape: FirewallStatus, location_name: "FirewallStatus"))
    DeleteFirewallResponse.struct_class = Types::DeleteFirewallResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteRuleGroupRequest.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    DeleteRuleGroupRequest.add_member(:rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    DeleteRuleGroupRequest.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DeleteRuleGroupRequest.struct_class = Types::DeleteRuleGroupRequest

    DeleteRuleGroupResponse.add_member(:rule_group_response, Shapes::ShapeRef.new(shape: RuleGroupResponse, required: true, location_name: "RuleGroupResponse"))
    DeleteRuleGroupResponse.struct_class = Types::DeleteRuleGroupResponse

    DeleteTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    DeleteTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName"))
    DeleteTLSInspectionConfigurationRequest.struct_class = Types::DeleteTLSInspectionConfigurationRequest

    DeleteTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, required: true, location_name: "TLSInspectionConfigurationResponse"))
    DeleteTLSInspectionConfigurationResponse.struct_class = Types::DeleteTLSInspectionConfigurationResponse

    DescribeFirewallPolicyRequest.add_member(:firewall_policy_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName"))
    DescribeFirewallPolicyRequest.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    DescribeFirewallPolicyRequest.struct_class = Types::DescribeFirewallPolicyRequest

    DescribeFirewallPolicyResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    DescribeFirewallPolicyResponse.add_member(:firewall_policy_response, Shapes::ShapeRef.new(shape: FirewallPolicyResponse, required: true, location_name: "FirewallPolicyResponse"))
    DescribeFirewallPolicyResponse.add_member(:firewall_policy, Shapes::ShapeRef.new(shape: FirewallPolicy, location_name: "FirewallPolicy"))
    DescribeFirewallPolicyResponse.struct_class = Types::DescribeFirewallPolicyResponse

    DescribeFirewallRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DescribeFirewallRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeFirewallRequest.struct_class = Types::DescribeFirewallRequest

    DescribeFirewallResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DescribeFirewallResponse.add_member(:firewall, Shapes::ShapeRef.new(shape: Firewall, location_name: "Firewall"))
    DescribeFirewallResponse.add_member(:firewall_status, Shapes::ShapeRef.new(shape: FirewallStatus, location_name: "FirewallStatus"))
    DescribeFirewallResponse.struct_class = Types::DescribeFirewallResponse

    DescribeLoggingConfigurationRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeLoggingConfigurationRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DescribeLoggingConfigurationRequest.struct_class = Types::DescribeLoggingConfigurationRequest

    DescribeLoggingConfigurationResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    DescribeLoggingConfigurationResponse.struct_class = Types::DescribeLoggingConfigurationResponse

    DescribeResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DescribeResourcePolicyRequest.struct_class = Types::DescribeResourcePolicyRequest

    DescribeResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy"))
    DescribeResourcePolicyResponse.struct_class = Types::DescribeResourcePolicyResponse

    DescribeRuleGroupMetadataRequest.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    DescribeRuleGroupMetadataRequest.add_member(:rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    DescribeRuleGroupMetadataRequest.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DescribeRuleGroupMetadataRequest.struct_class = Types::DescribeRuleGroupMetadataRequest

    DescribeRuleGroupMetadataResponse.add_member(:rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RuleGroupArn"))
    DescribeRuleGroupMetadataResponse.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "RuleGroupName"))
    DescribeRuleGroupMetadataResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeRuleGroupMetadataResponse.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DescribeRuleGroupMetadataResponse.add_member(:capacity, Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "Capacity"))
    DescribeRuleGroupMetadataResponse.add_member(:stateful_rule_options, Shapes::ShapeRef.new(shape: StatefulRuleOptions, location_name: "StatefulRuleOptions"))
    DescribeRuleGroupMetadataResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    DescribeRuleGroupMetadataResponse.struct_class = Types::DescribeRuleGroupMetadataResponse

    DescribeRuleGroupRequest.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    DescribeRuleGroupRequest.add_member(:rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    DescribeRuleGroupRequest.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DescribeRuleGroupRequest.struct_class = Types::DescribeRuleGroupRequest

    DescribeRuleGroupResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    DescribeRuleGroupResponse.add_member(:rule_group, Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    DescribeRuleGroupResponse.add_member(:rule_group_response, Shapes::ShapeRef.new(shape: RuleGroupResponse, required: true, location_name: "RuleGroupResponse"))
    DescribeRuleGroupResponse.struct_class = Types::DescribeRuleGroupResponse

    DescribeTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    DescribeTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName"))
    DescribeTLSInspectionConfigurationRequest.struct_class = Types::DescribeTLSInspectionConfigurationRequest

    DescribeTLSInspectionConfigurationResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    DescribeTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration, Shapes::ShapeRef.new(shape: TLSInspectionConfiguration, location_name: "TLSInspectionConfiguration"))
    DescribeTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, required: true, location_name: "TLSInspectionConfigurationResponse"))
    DescribeTLSInspectionConfigurationResponse.struct_class = Types::DescribeTLSInspectionConfigurationResponse

    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: DimensionValue, required: true, location_name: "Value"))
    Dimension.struct_class = Types::Dimension

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    DisassociateSubnetsRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DisassociateSubnetsRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DisassociateSubnetsRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DisassociateSubnetsRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: AzSubnets, required: true, location_name: "SubnetIds"))
    DisassociateSubnetsRequest.struct_class = Types::DisassociateSubnetsRequest

    DisassociateSubnetsResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DisassociateSubnetsResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DisassociateSubnetsResponse.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    DisassociateSubnetsResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DisassociateSubnetsResponse.struct_class = Types::DisassociateSubnetsResponse

    EncryptionConfiguration.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, location_name: "KeyId"))
    EncryptionConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "Type"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    Firewall.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    Firewall.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    Firewall.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "FirewallPolicyArn"))
    Firewall.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    Firewall.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, required: true, location_name: "SubnetMappings"))
    Firewall.add_member(:delete_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection"))
    Firewall.add_member(:subnet_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection"))
    Firewall.add_member(:firewall_policy_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection"))
    Firewall.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Firewall.add_member(:firewall_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallId"))
    Firewall.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Firewall.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    Firewall.struct_class = Types::Firewall

    FirewallMetadata.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    FirewallMetadata.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    FirewallMetadata.struct_class = Types::FirewallMetadata

    FirewallPolicies.member = Shapes::ShapeRef.new(shape: FirewallPolicyMetadata)

    FirewallPolicy.add_member(:stateless_rule_group_references, Shapes::ShapeRef.new(shape: StatelessRuleGroupReferences, location_name: "StatelessRuleGroupReferences"))
    FirewallPolicy.add_member(:stateless_default_actions, Shapes::ShapeRef.new(shape: StatelessActions, required: true, location_name: "StatelessDefaultActions"))
    FirewallPolicy.add_member(:stateless_fragment_default_actions, Shapes::ShapeRef.new(shape: StatelessActions, required: true, location_name: "StatelessFragmentDefaultActions"))
    FirewallPolicy.add_member(:stateless_custom_actions, Shapes::ShapeRef.new(shape: CustomActions, location_name: "StatelessCustomActions"))
    FirewallPolicy.add_member(:stateful_rule_group_references, Shapes::ShapeRef.new(shape: StatefulRuleGroupReferences, location_name: "StatefulRuleGroupReferences"))
    FirewallPolicy.add_member(:stateful_default_actions, Shapes::ShapeRef.new(shape: StatefulActions, location_name: "StatefulDefaultActions"))
    FirewallPolicy.add_member(:stateful_engine_options, Shapes::ShapeRef.new(shape: StatefulEngineOptions, location_name: "StatefulEngineOptions"))
    FirewallPolicy.add_member(:tls_inspection_configuration_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    FirewallPolicy.add_member(:policy_variables, Shapes::ShapeRef.new(shape: PolicyVariables, location_name: "PolicyVariables"))
    FirewallPolicy.struct_class = Types::FirewallPolicy

    FirewallPolicyMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    FirewallPolicyMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    FirewallPolicyMetadata.struct_class = Types::FirewallPolicyMetadata

    FirewallPolicyResponse.add_member(:firewall_policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "FirewallPolicyName"))
    FirewallPolicyResponse.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "FirewallPolicyArn"))
    FirewallPolicyResponse.add_member(:firewall_policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallPolicyId"))
    FirewallPolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    FirewallPolicyResponse.add_member(:firewall_policy_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "FirewallPolicyStatus"))
    FirewallPolicyResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    FirewallPolicyResponse.add_member(:consumed_stateless_rule_capacity, Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "ConsumedStatelessRuleCapacity"))
    FirewallPolicyResponse.add_member(:consumed_stateful_rule_capacity, Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "ConsumedStatefulRuleCapacity"))
    FirewallPolicyResponse.add_member(:number_of_associations, Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "NumberOfAssociations"))
    FirewallPolicyResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    FirewallPolicyResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    FirewallPolicyResponse.struct_class = Types::FirewallPolicyResponse

    FirewallStatus.add_member(:status, Shapes::ShapeRef.new(shape: FirewallStatusValue, required: true, location_name: "Status"))
    FirewallStatus.add_member(:configuration_sync_state_summary, Shapes::ShapeRef.new(shape: ConfigurationSyncState, required: true, location_name: "ConfigurationSyncStateSummary"))
    FirewallStatus.add_member(:sync_states, Shapes::ShapeRef.new(shape: SyncStates, location_name: "SyncStates"))
    FirewallStatus.add_member(:capacity_usage_summary, Shapes::ShapeRef.new(shape: CapacityUsageSummary, location_name: "CapacityUsageSummary"))
    FirewallStatus.struct_class = Types::FirewallStatus

    Firewalls.member = Shapes::ShapeRef.new(shape: FirewallMetadata)

    Flags.member = Shapes::ShapeRef.new(shape: TCPFlag)

    Header.add_member(:protocol, Shapes::ShapeRef.new(shape: StatefulRuleProtocol, required: true, location_name: "Protocol"))
    Header.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    Header.add_member(:source_port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "SourcePort"))
    Header.add_member(:direction, Shapes::ShapeRef.new(shape: StatefulRuleDirection, required: true, location_name: "Direction"))
    Header.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    Header.add_member(:destination_port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "DestinationPort"))
    Header.struct_class = Types::Header

    IPSet.add_member(:definition, Shapes::ShapeRef.new(shape: VariableDefinitionList, required: true, location_name: "Definition"))
    IPSet.struct_class = Types::IPSet

    IPSetMetadata.add_member(:resolved_cidr_count, Shapes::ShapeRef.new(shape: CIDRCount, location_name: "ResolvedCIDRCount"))
    IPSetMetadata.struct_class = Types::IPSetMetadata

    IPSetMetadataMap.key = Shapes::ShapeRef.new(shape: IPSetArn)
    IPSetMetadataMap.value = Shapes::ShapeRef.new(shape: IPSetMetadata)

    IPSetReference.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ReferenceArn"))
    IPSetReference.struct_class = Types::IPSetReference

    IPSetReferenceMap.key = Shapes::ShapeRef.new(shape: IPSetReferenceName)
    IPSetReferenceMap.value = Shapes::ShapeRef.new(shape: IPSetReference)

    IPSets.key = Shapes::ShapeRef.new(shape: RuleVariableName)
    IPSets.value = Shapes::ShapeRef.new(shape: IPSet)

    InsufficientCapacityException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InsufficientCapacityException.struct_class = Types::InsufficientCapacityException

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.struct_class = Types::InternalServerError

    InvalidOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidResourcePolicyException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidResourcePolicyException.struct_class = Types::InvalidResourcePolicyException

    InvalidTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidTokenException.struct_class = Types::InvalidTokenException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListFirewallPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListFirewallPoliciesRequest.struct_class = Types::ListFirewallPoliciesRequest

    ListFirewallPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallPoliciesResponse.add_member(:firewall_policies, Shapes::ShapeRef.new(shape: FirewallPolicies, location_name: "FirewallPolicies"))
    ListFirewallPoliciesResponse.struct_class = Types::ListFirewallPoliciesResponse

    ListFirewallsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallsRequest.add_member(:vpc_ids, Shapes::ShapeRef.new(shape: VpcIds, location_name: "VpcIds"))
    ListFirewallsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListFirewallsRequest.struct_class = Types::ListFirewallsRequest

    ListFirewallsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallsResponse.add_member(:firewalls, Shapes::ShapeRef.new(shape: Firewalls, location_name: "Firewalls"))
    ListFirewallsResponse.struct_class = Types::ListFirewallsResponse

    ListRuleGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRuleGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListRuleGroupsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: ResourceManagedStatus, location_name: "Scope"))
    ListRuleGroupsRequest.add_member(:managed_type, Shapes::ShapeRef.new(shape: ResourceManagedType, location_name: "ManagedType"))
    ListRuleGroupsRequest.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    ListRuleGroupsRequest.struct_class = Types::ListRuleGroupsRequest

    ListRuleGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRuleGroupsResponse.add_member(:rule_groups, Shapes::ShapeRef.new(shape: RuleGroups, location_name: "RuleGroups"))
    ListRuleGroupsResponse.struct_class = Types::ListRuleGroupsResponse

    ListTLSInspectionConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTLSInspectionConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListTLSInspectionConfigurationsRequest.struct_class = Types::ListTLSInspectionConfigurationsRequest

    ListTLSInspectionConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTLSInspectionConfigurationsResponse.add_member(:tls_inspection_configurations, Shapes::ShapeRef.new(shape: TLSInspectionConfigurations, location_name: "TLSInspectionConfigurations"))
    ListTLSInspectionConfigurationsResponse.struct_class = Types::ListTLSInspectionConfigurationsResponse

    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: TagsPaginationMaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogDestinationConfig.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, required: true, location_name: "LogType"))
    LogDestinationConfig.add_member(:log_destination_type, Shapes::ShapeRef.new(shape: LogDestinationType, required: true, location_name: "LogDestinationType"))
    LogDestinationConfig.add_member(:log_destination, Shapes::ShapeRef.new(shape: LogDestinationMap, required: true, location_name: "LogDestination"))
    LogDestinationConfig.struct_class = Types::LogDestinationConfig

    LogDestinationConfigs.member = Shapes::ShapeRef.new(shape: LogDestinationConfig)

    LogDestinationMap.key = Shapes::ShapeRef.new(shape: HashMapKey)
    LogDestinationMap.value = Shapes::ShapeRef.new(shape: HashMapValue)

    LogDestinationPermissionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LogDestinationPermissionException.struct_class = Types::LogDestinationPermissionException

    LoggingConfiguration.add_member(:log_destination_configs, Shapes::ShapeRef.new(shape: LogDestinationConfigs, required: true, location_name: "LogDestinationConfigs"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    MatchAttributes.add_member(:sources, Shapes::ShapeRef.new(shape: Addresses, location_name: "Sources"))
    MatchAttributes.add_member(:destinations, Shapes::ShapeRef.new(shape: Addresses, location_name: "Destinations"))
    MatchAttributes.add_member(:source_ports, Shapes::ShapeRef.new(shape: PortRanges, location_name: "SourcePorts"))
    MatchAttributes.add_member(:destination_ports, Shapes::ShapeRef.new(shape: PortRanges, location_name: "DestinationPorts"))
    MatchAttributes.add_member(:protocols, Shapes::ShapeRef.new(shape: ProtocolNumbers, location_name: "Protocols"))
    MatchAttributes.add_member(:tcp_flags, Shapes::ShapeRef.new(shape: TCPFlags, location_name: "TCPFlags"))
    MatchAttributes.struct_class = Types::MatchAttributes

    PerObjectStatus.add_member(:sync_status, Shapes::ShapeRef.new(shape: PerObjectSyncStatus, location_name: "SyncStatus"))
    PerObjectStatus.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    PerObjectStatus.struct_class = Types::PerObjectStatus

    PolicyVariables.add_member(:rule_variables, Shapes::ShapeRef.new(shape: IPSets, location_name: "RuleVariables"))
    PolicyVariables.struct_class = Types::PolicyVariables

    PortRange.add_member(:from_port, Shapes::ShapeRef.new(shape: PortRangeBound, required: true, location_name: "FromPort"))
    PortRange.add_member(:to_port, Shapes::ShapeRef.new(shape: PortRangeBound, required: true, location_name: "ToPort"))
    PortRange.struct_class = Types::PortRange

    PortRanges.member = Shapes::ShapeRef.new(shape: PortRange)

    PortSet.add_member(:definition, Shapes::ShapeRef.new(shape: VariableDefinitionList, location_name: "Definition"))
    PortSet.struct_class = Types::PortSet

    PortSets.key = Shapes::ShapeRef.new(shape: RuleVariableName)
    PortSets.value = Shapes::ShapeRef.new(shape: PortSet)

    ProtocolNumbers.member = Shapes::ShapeRef.new(shape: ProtocolNumber)

    PublishMetricAction.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, required: true, location_name: "Dimensions"))
    PublishMetricAction.struct_class = Types::PublishMetricAction

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, required: true, location_name: "Policy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    ReferenceSets.add_member(:ip_set_references, Shapes::ShapeRef.new(shape: IPSetReferenceMap, location_name: "IPSetReferences"))
    ReferenceSets.struct_class = Types::ReferenceSets

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceOwnerCheckException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceOwnerCheckException.struct_class = Types::ResourceOwnerCheckException

    RuleDefinition.add_member(:match_attributes, Shapes::ShapeRef.new(shape: MatchAttributes, required: true, location_name: "MatchAttributes"))
    RuleDefinition.add_member(:actions, Shapes::ShapeRef.new(shape: StatelessActions, required: true, location_name: "Actions"))
    RuleDefinition.struct_class = Types::RuleDefinition

    RuleGroup.add_member(:rule_variables, Shapes::ShapeRef.new(shape: RuleVariables, location_name: "RuleVariables"))
    RuleGroup.add_member(:reference_sets, Shapes::ShapeRef.new(shape: ReferenceSets, location_name: "ReferenceSets"))
    RuleGroup.add_member(:rules_source, Shapes::ShapeRef.new(shape: RulesSource, required: true, location_name: "RulesSource"))
    RuleGroup.add_member(:stateful_rule_options, Shapes::ShapeRef.new(shape: StatefulRuleOptions, location_name: "StatefulRuleOptions"))
    RuleGroup.struct_class = Types::RuleGroup

    RuleGroupMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RuleGroupMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    RuleGroupMetadata.struct_class = Types::RuleGroupMetadata

    RuleGroupResponse.add_member(:rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "RuleGroupArn"))
    RuleGroupResponse.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "RuleGroupName"))
    RuleGroupResponse.add_member(:rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "RuleGroupId"))
    RuleGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    RuleGroupResponse.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    RuleGroupResponse.add_member(:capacity, Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "Capacity"))
    RuleGroupResponse.add_member(:rule_group_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "RuleGroupStatus"))
    RuleGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RuleGroupResponse.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "ConsumedCapacity"))
    RuleGroupResponse.add_member(:number_of_associations, Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "NumberOfAssociations"))
    RuleGroupResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    RuleGroupResponse.add_member(:source_metadata, Shapes::ShapeRef.new(shape: SourceMetadata, location_name: "SourceMetadata"))
    RuleGroupResponse.add_member(:sns_topic, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsTopic"))
    RuleGroupResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    RuleGroupResponse.struct_class = Types::RuleGroupResponse

    RuleGroups.member = Shapes::ShapeRef.new(shape: RuleGroupMetadata)

    RuleOption.add_member(:keyword, Shapes::ShapeRef.new(shape: Keyword, required: true, location_name: "Keyword"))
    RuleOption.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "Settings"))
    RuleOption.struct_class = Types::RuleOption

    RuleOptions.member = Shapes::ShapeRef.new(shape: RuleOption)

    RuleTargets.member = Shapes::ShapeRef.new(shape: CollectionMember_String)

    RuleVariables.add_member(:ip_sets, Shapes::ShapeRef.new(shape: IPSets, location_name: "IPSets"))
    RuleVariables.add_member(:port_sets, Shapes::ShapeRef.new(shape: PortSets, location_name: "PortSets"))
    RuleVariables.struct_class = Types::RuleVariables

    RulesSource.add_member(:rules_string, Shapes::ShapeRef.new(shape: RulesString, location_name: "RulesString"))
    RulesSource.add_member(:rules_source_list, Shapes::ShapeRef.new(shape: RulesSourceList, location_name: "RulesSourceList"))
    RulesSource.add_member(:stateful_rules, Shapes::ShapeRef.new(shape: StatefulRules, location_name: "StatefulRules"))
    RulesSource.add_member(:stateless_rules_and_custom_actions, Shapes::ShapeRef.new(shape: StatelessRulesAndCustomActions, location_name: "StatelessRulesAndCustomActions"))
    RulesSource.struct_class = Types::RulesSource

    RulesSourceList.add_member(:targets, Shapes::ShapeRef.new(shape: RuleTargets, required: true, location_name: "Targets"))
    RulesSourceList.add_member(:target_types, Shapes::ShapeRef.new(shape: TargetTypes, required: true, location_name: "TargetTypes"))
    RulesSourceList.add_member(:generated_rules_type, Shapes::ShapeRef.new(shape: GeneratedRulesType, required: true, location_name: "GeneratedRulesType"))
    RulesSourceList.struct_class = Types::RulesSourceList

    ServerCertificate.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    ServerCertificate.struct_class = Types::ServerCertificate

    ServerCertificateConfiguration.add_member(:server_certificates, Shapes::ShapeRef.new(shape: ServerCertificates, location_name: "ServerCertificates"))
    ServerCertificateConfiguration.add_member(:scopes, Shapes::ShapeRef.new(shape: ServerCertificateScopes, location_name: "Scopes"))
    ServerCertificateConfiguration.struct_class = Types::ServerCertificateConfiguration

    ServerCertificateConfigurations.member = Shapes::ShapeRef.new(shape: ServerCertificateConfiguration)

    ServerCertificateScope.add_member(:sources, Shapes::ShapeRef.new(shape: Addresses, location_name: "Sources"))
    ServerCertificateScope.add_member(:destinations, Shapes::ShapeRef.new(shape: Addresses, location_name: "Destinations"))
    ServerCertificateScope.add_member(:source_ports, Shapes::ShapeRef.new(shape: PortRanges, location_name: "SourcePorts"))
    ServerCertificateScope.add_member(:destination_ports, Shapes::ShapeRef.new(shape: PortRanges, location_name: "DestinationPorts"))
    ServerCertificateScope.add_member(:protocols, Shapes::ShapeRef.new(shape: ProtocolNumbers, location_name: "Protocols"))
    ServerCertificateScope.struct_class = Types::ServerCertificateScope

    ServerCertificateScopes.member = Shapes::ShapeRef.new(shape: ServerCertificateScope)

    ServerCertificates.member = Shapes::ShapeRef.new(shape: ServerCertificate)

    Settings.member = Shapes::ShapeRef.new(shape: Setting)

    SourceMetadata.add_member(:source_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SourceArn"))
    SourceMetadata.add_member(:source_update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "SourceUpdateToken"))
    SourceMetadata.struct_class = Types::SourceMetadata

    StatefulActions.member = Shapes::ShapeRef.new(shape: CollectionMember_String)

    StatefulEngineOptions.add_member(:rule_order, Shapes::ShapeRef.new(shape: RuleOrder, location_name: "RuleOrder"))
    StatefulEngineOptions.add_member(:stream_exception_policy, Shapes::ShapeRef.new(shape: StreamExceptionPolicy, location_name: "StreamExceptionPolicy"))
    StatefulEngineOptions.struct_class = Types::StatefulEngineOptions

    StatefulRule.add_member(:action, Shapes::ShapeRef.new(shape: StatefulAction, required: true, location_name: "Action"))
    StatefulRule.add_member(:header, Shapes::ShapeRef.new(shape: Header, required: true, location_name: "Header"))
    StatefulRule.add_member(:rule_options, Shapes::ShapeRef.new(shape: RuleOptions, required: true, location_name: "RuleOptions"))
    StatefulRule.struct_class = Types::StatefulRule

    StatefulRuleGroupOverride.add_member(:action, Shapes::ShapeRef.new(shape: OverrideAction, location_name: "Action"))
    StatefulRuleGroupOverride.struct_class = Types::StatefulRuleGroupOverride

    StatefulRuleGroupReference.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    StatefulRuleGroupReference.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", metadata: {"box"=>true}))
    StatefulRuleGroupReference.add_member(:override, Shapes::ShapeRef.new(shape: StatefulRuleGroupOverride, location_name: "Override"))
    StatefulRuleGroupReference.struct_class = Types::StatefulRuleGroupReference

    StatefulRuleGroupReferences.member = Shapes::ShapeRef.new(shape: StatefulRuleGroupReference)

    StatefulRuleOptions.add_member(:rule_order, Shapes::ShapeRef.new(shape: RuleOrder, location_name: "RuleOrder"))
    StatefulRuleOptions.struct_class = Types::StatefulRuleOptions

    StatefulRules.member = Shapes::ShapeRef.new(shape: StatefulRule)

    StatelessActions.member = Shapes::ShapeRef.new(shape: CollectionMember_String)

    StatelessRule.add_member(:rule_definition, Shapes::ShapeRef.new(shape: RuleDefinition, required: true, location_name: "RuleDefinition"))
    StatelessRule.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "Priority"))
    StatelessRule.struct_class = Types::StatelessRule

    StatelessRuleGroupReference.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    StatelessRuleGroupReference.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "Priority"))
    StatelessRuleGroupReference.struct_class = Types::StatelessRuleGroupReference

    StatelessRuleGroupReferences.member = Shapes::ShapeRef.new(shape: StatelessRuleGroupReference)

    StatelessRules.member = Shapes::ShapeRef.new(shape: StatelessRule)

    StatelessRulesAndCustomActions.add_member(:stateless_rules, Shapes::ShapeRef.new(shape: StatelessRules, required: true, location_name: "StatelessRules"))
    StatelessRulesAndCustomActions.add_member(:custom_actions, Shapes::ShapeRef.new(shape: CustomActions, location_name: "CustomActions"))
    StatelessRulesAndCustomActions.struct_class = Types::StatelessRulesAndCustomActions

    SubnetMapping.add_member(:subnet_id, Shapes::ShapeRef.new(shape: CollectionMember_String, required: true, location_name: "SubnetId"))
    SubnetMapping.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IPAddressType, location_name: "IPAddressType"))
    SubnetMapping.struct_class = Types::SubnetMapping

    SubnetMappings.member = Shapes::ShapeRef.new(shape: SubnetMapping)

    SyncState.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    SyncState.add_member(:config, Shapes::ShapeRef.new(shape: SyncStateConfig, location_name: "Config"))
    SyncState.struct_class = Types::SyncState

    SyncStateConfig.key = Shapes::ShapeRef.new(shape: ResourceName)
    SyncStateConfig.value = Shapes::ShapeRef.new(shape: PerObjectStatus)

    SyncStates.key = Shapes::ShapeRef.new(shape: AvailabilityZone)
    SyncStates.value = Shapes::ShapeRef.new(shape: SyncState)

    TCPFlagField.add_member(:flags, Shapes::ShapeRef.new(shape: Flags, required: true, location_name: "Flags"))
    TCPFlagField.add_member(:masks, Shapes::ShapeRef.new(shape: Flags, location_name: "Masks"))
    TCPFlagField.struct_class = Types::TCPFlagField

    TCPFlags.member = Shapes::ShapeRef.new(shape: TCPFlagField)

    TLSInspectionConfiguration.add_member(:server_certificate_configurations, Shapes::ShapeRef.new(shape: ServerCertificateConfigurations, location_name: "ServerCertificateConfigurations"))
    TLSInspectionConfiguration.struct_class = Types::TLSInspectionConfiguration

    TLSInspectionConfigurationMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    TLSInspectionConfigurationMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    TLSInspectionConfigurationMetadata.struct_class = Types::TLSInspectionConfigurationMetadata

    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "TLSInspectionConfigurationArn"))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TLSInspectionConfigurationName"))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "TLSInspectionConfigurationId"))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "TLSInspectionConfigurationStatus"))
    TLSInspectionConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TLSInspectionConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TLSInspectionConfigurationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    TLSInspectionConfigurationResponse.add_member(:number_of_associations, Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "NumberOfAssociations"))
    TLSInspectionConfigurationResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    TLSInspectionConfigurationResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "Certificates"))
    TLSInspectionConfigurationResponse.struct_class = Types::TLSInspectionConfigurationResponse

    TLSInspectionConfigurations.member = Shapes::ShapeRef.new(shape: TLSInspectionConfigurationMetadata)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetTypes.member = Shapes::ShapeRef.new(shape: TargetType)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TlsCertificateData.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "CertificateArn"))
    TlsCertificateData.add_member(:certificate_serial, Shapes::ShapeRef.new(shape: CollectionMember_String, location_name: "CertificateSerial"))
    TlsCertificateData.add_member(:status, Shapes::ShapeRef.new(shape: CollectionMember_String, location_name: "Status"))
    TlsCertificateData.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusMessage"))
    TlsCertificateData.struct_class = Types::TlsCertificateData

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateFirewallDeleteProtectionRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDeleteProtectionRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDeleteProtectionRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDeleteProtectionRequest.add_member(:delete_protection, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "DeleteProtection"))
    UpdateFirewallDeleteProtectionRequest.struct_class = Types::UpdateFirewallDeleteProtectionRequest

    UpdateFirewallDeleteProtectionResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDeleteProtectionResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDeleteProtectionResponse.add_member(:delete_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection"))
    UpdateFirewallDeleteProtectionResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDeleteProtectionResponse.struct_class = Types::UpdateFirewallDeleteProtectionResponse

    UpdateFirewallDescriptionRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDescriptionRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDescriptionRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDescriptionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFirewallDescriptionRequest.struct_class = Types::UpdateFirewallDescriptionRequest

    UpdateFirewallDescriptionResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDescriptionResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDescriptionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFirewallDescriptionResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDescriptionResponse.struct_class = Types::UpdateFirewallDescriptionResponse

    UpdateFirewallEncryptionConfigurationRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateFirewallEncryptionConfigurationRequest.struct_class = Types::UpdateFirewallEncryptionConfigurationRequest

    UpdateFirewallEncryptionConfigurationResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateFirewallEncryptionConfigurationResponse.struct_class = Types::UpdateFirewallEncryptionConfigurationResponse

    UpdateFirewallPolicyChangeProtectionRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_policy_change_protection, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "FirewallPolicyChangeProtection"))
    UpdateFirewallPolicyChangeProtectionRequest.struct_class = Types::UpdateFirewallPolicyChangeProtectionRequest

    UpdateFirewallPolicyChangeProtectionResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_policy_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection"))
    UpdateFirewallPolicyChangeProtectionResponse.struct_class = Types::UpdateFirewallPolicyChangeProtectionResponse

    UpdateFirewallPolicyRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName"))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy, Shapes::ShapeRef.new(shape: FirewallPolicy, required: true, location_name: "FirewallPolicy"))
    UpdateFirewallPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFirewallPolicyRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    UpdateFirewallPolicyRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateFirewallPolicyRequest.struct_class = Types::UpdateFirewallPolicyRequest

    UpdateFirewallPolicyResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    UpdateFirewallPolicyResponse.add_member(:firewall_policy_response, Shapes::ShapeRef.new(shape: FirewallPolicyResponse, required: true, location_name: "FirewallPolicyResponse"))
    UpdateFirewallPolicyResponse.struct_class = Types::UpdateFirewallPolicyResponse

    UpdateLoggingConfigurationRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateLoggingConfigurationRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateLoggingConfigurationRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    UpdateLoggingConfigurationRequest.struct_class = Types::UpdateLoggingConfigurationRequest

    UpdateLoggingConfigurationResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateLoggingConfigurationResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    UpdateLoggingConfigurationResponse.struct_class = Types::UpdateLoggingConfigurationResponse

    UpdateRuleGroupRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    UpdateRuleGroupRequest.add_member(:rule_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    UpdateRuleGroupRequest.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    UpdateRuleGroupRequest.add_member(:rule_group, Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    UpdateRuleGroupRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RulesString, location_name: "Rules"))
    UpdateRuleGroupRequest.add_member(:type, Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    UpdateRuleGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateRuleGroupRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    UpdateRuleGroupRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateRuleGroupRequest.add_member(:source_metadata, Shapes::ShapeRef.new(shape: SourceMetadata, location_name: "SourceMetadata"))
    UpdateRuleGroupRequest.struct_class = Types::UpdateRuleGroupRequest

    UpdateRuleGroupResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    UpdateRuleGroupResponse.add_member(:rule_group_response, Shapes::ShapeRef.new(shape: RuleGroupResponse, required: true, location_name: "RuleGroupResponse"))
    UpdateRuleGroupResponse.struct_class = Types::UpdateRuleGroupResponse

    UpdateSubnetChangeProtectionRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateSubnetChangeProtectionRequest.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateSubnetChangeProtectionRequest.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateSubnetChangeProtectionRequest.add_member(:subnet_change_protection, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "SubnetChangeProtection"))
    UpdateSubnetChangeProtectionRequest.struct_class = Types::UpdateSubnetChangeProtectionRequest

    UpdateSubnetChangeProtectionResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateSubnetChangeProtectionResponse.add_member(:firewall_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateSubnetChangeProtectionResponse.add_member(:firewall_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateSubnetChangeProtectionResponse.add_member(:subnet_change_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection"))
    UpdateSubnetChangeProtectionResponse.struct_class = Types::UpdateSubnetChangeProtectionResponse

    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName"))
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration, Shapes::ShapeRef.new(shape: TLSInspectionConfiguration, required: true, location_name: "TLSInspectionConfiguration"))
    UpdateTLSInspectionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateTLSInspectionConfigurationRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateTLSInspectionConfigurationRequest.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    UpdateTLSInspectionConfigurationRequest.struct_class = Types::UpdateTLSInspectionConfigurationRequest

    UpdateTLSInspectionConfigurationResponse.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "UpdateToken"))
    UpdateTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, required: true, location_name: "TLSInspectionConfigurationResponse"))
    UpdateTLSInspectionConfigurationResponse.struct_class = Types::UpdateTLSInspectionConfigurationResponse

    VariableDefinitionList.member = Shapes::ShapeRef.new(shape: VariableDefinition)

    VpcIds.member = Shapes::ShapeRef.new(shape: VpcId)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-12"

      api.metadata = {
        "apiVersion" => "2020-11-12",
        "endpointPrefix" => "network-firewall",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Network Firewall",
        "serviceFullName" => "AWS Network Firewall",
        "serviceId" => "Network Firewall",
        "signatureVersion" => "v4",
        "signingName" => "network-firewall",
        "targetPrefix" => "NetworkFirewall_20201112",
        "uid" => "network-firewall-2020-11-12",
      }

      api.add_operation(:associate_firewall_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFirewallPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFirewallPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFirewallPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:associate_subnets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSubnets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateSubnetsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSubnetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
      end)

      api.add_operation(:create_firewall, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFirewall"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFirewallRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFirewallResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:create_firewall_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFirewallPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFirewallPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFirewallPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
      end)

      api.add_operation(:create_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
      end)

      api.add_operation(:create_tls_inspection_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTLSInspectionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTLSInspectionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTLSInspectionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_firewall, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewall"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:delete_firewall_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewallPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourcePolicyException)
      end)

      api.add_operation(:delete_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:delete_tls_inspection_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTLSInspectionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTLSInspectionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTLSInspectionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:describe_firewall, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFirewall"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFirewallRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFirewallResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_firewall_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFirewallPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFirewallPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFirewallPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_rule_group_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuleGroupMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuleGroupMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuleGroupMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_tls_inspection_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTLSInspectionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTLSInspectionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTLSInspectionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_subnets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSubnets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSubnetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSubnetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:list_firewall_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewalls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewalls"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tls_inspection_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTLSInspectionConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTLSInspectionConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTLSInspectionConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourcePolicyException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_firewall_delete_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallDeleteProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallDeleteProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallDeleteProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
      end)

      api.add_operation(:update_firewall_description, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallDescription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallDescriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallDescriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_firewall_encryption_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallEncryptionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallEncryptionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallEncryptionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
      end)

      api.add_operation(:update_firewall_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_firewall_policy_change_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallPolicyChangeProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallPolicyChangeProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallPolicyChangeProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
      end)

      api.add_operation(:update_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: LogDestinationPermissionException)
      end)

      api.add_operation(:update_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)

      api.add_operation(:update_subnet_change_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubnetChangeProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubnetChangeProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubnetChangeProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
      end)

      api.add_operation(:update_tls_inspection_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTLSInspectionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTLSInspectionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTLSInspectionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
      end)
    end

  end
end

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticLoadBalancingV2
  # @api private
  module ClientApi

    include Seahorse::Model

    Action = Shapes::StructureShape.new(name: 'Action')
    ActionOrder = Shapes::IntegerShape.new(name: 'ActionOrder')
    ActionTypeEnum = Shapes::StringShape.new(name: 'ActionTypeEnum')
    Actions = Shapes::ListShape.new(name: 'Actions')
    AddListenerCertificatesInput = Shapes::StructureShape.new(name: 'AddListenerCertificatesInput')
    AddListenerCertificatesOutput = Shapes::StructureShape.new(name: 'AddListenerCertificatesOutput')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AllocationId = Shapes::StringShape.new(name: 'AllocationId')
    AllocationIdNotFoundException = Shapes::StructureShape.new(name: 'AllocationIdNotFoundException')
    AuthenticateCognitoActionAuthenticationRequestExtraParams = Shapes::MapShape.new(name: 'AuthenticateCognitoActionAuthenticationRequestExtraParams')
    AuthenticateCognitoActionAuthenticationRequestParamName = Shapes::StringShape.new(name: 'AuthenticateCognitoActionAuthenticationRequestParamName')
    AuthenticateCognitoActionAuthenticationRequestParamValue = Shapes::StringShape.new(name: 'AuthenticateCognitoActionAuthenticationRequestParamValue')
    AuthenticateCognitoActionConditionalBehaviorEnum = Shapes::StringShape.new(name: 'AuthenticateCognitoActionConditionalBehaviorEnum')
    AuthenticateCognitoActionConfig = Shapes::StructureShape.new(name: 'AuthenticateCognitoActionConfig')
    AuthenticateCognitoActionScope = Shapes::StringShape.new(name: 'AuthenticateCognitoActionScope')
    AuthenticateCognitoActionSessionCookieName = Shapes::StringShape.new(name: 'AuthenticateCognitoActionSessionCookieName')
    AuthenticateCognitoActionSessionTimeout = Shapes::IntegerShape.new(name: 'AuthenticateCognitoActionSessionTimeout')
    AuthenticateCognitoActionUserPoolArn = Shapes::StringShape.new(name: 'AuthenticateCognitoActionUserPoolArn')
    AuthenticateCognitoActionUserPoolClientId = Shapes::StringShape.new(name: 'AuthenticateCognitoActionUserPoolClientId')
    AuthenticateCognitoActionUserPoolDomain = Shapes::StringShape.new(name: 'AuthenticateCognitoActionUserPoolDomain')
    AuthenticateOidcActionAuthenticationRequestExtraParams = Shapes::MapShape.new(name: 'AuthenticateOidcActionAuthenticationRequestExtraParams')
    AuthenticateOidcActionAuthenticationRequestParamName = Shapes::StringShape.new(name: 'AuthenticateOidcActionAuthenticationRequestParamName')
    AuthenticateOidcActionAuthenticationRequestParamValue = Shapes::StringShape.new(name: 'AuthenticateOidcActionAuthenticationRequestParamValue')
    AuthenticateOidcActionAuthorizationEndpoint = Shapes::StringShape.new(name: 'AuthenticateOidcActionAuthorizationEndpoint')
    AuthenticateOidcActionClientId = Shapes::StringShape.new(name: 'AuthenticateOidcActionClientId')
    AuthenticateOidcActionClientSecret = Shapes::StringShape.new(name: 'AuthenticateOidcActionClientSecret')
    AuthenticateOidcActionConditionalBehaviorEnum = Shapes::StringShape.new(name: 'AuthenticateOidcActionConditionalBehaviorEnum')
    AuthenticateOidcActionConfig = Shapes::StructureShape.new(name: 'AuthenticateOidcActionConfig')
    AuthenticateOidcActionIssuer = Shapes::StringShape.new(name: 'AuthenticateOidcActionIssuer')
    AuthenticateOidcActionScope = Shapes::StringShape.new(name: 'AuthenticateOidcActionScope')
    AuthenticateOidcActionSessionCookieName = Shapes::StringShape.new(name: 'AuthenticateOidcActionSessionCookieName')
    AuthenticateOidcActionSessionTimeout = Shapes::IntegerShape.new(name: 'AuthenticateOidcActionSessionTimeout')
    AuthenticateOidcActionTokenEndpoint = Shapes::StringShape.new(name: 'AuthenticateOidcActionTokenEndpoint')
    AuthenticateOidcActionUserInfoEndpoint = Shapes::StringShape.new(name: 'AuthenticateOidcActionUserInfoEndpoint')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneNotSupportedException = Shapes::StructureShape.new(name: 'AvailabilityZoneNotSupportedException')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    CanonicalHostedZoneId = Shapes::StringShape.new(name: 'CanonicalHostedZoneId')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificateNotFoundException = Shapes::StructureShape.new(name: 'CertificateNotFoundException')
    Cipher = Shapes::StructureShape.new(name: 'Cipher')
    CipherName = Shapes::StringShape.new(name: 'CipherName')
    CipherPriority = Shapes::IntegerShape.new(name: 'CipherPriority')
    Ciphers = Shapes::ListShape.new(name: 'Ciphers')
    ConditionFieldName = Shapes::StringShape.new(name: 'ConditionFieldName')
    CreateListenerInput = Shapes::StructureShape.new(name: 'CreateListenerInput')
    CreateListenerOutput = Shapes::StructureShape.new(name: 'CreateListenerOutput')
    CreateLoadBalancerInput = Shapes::StructureShape.new(name: 'CreateLoadBalancerInput')
    CreateLoadBalancerOutput = Shapes::StructureShape.new(name: 'CreateLoadBalancerOutput')
    CreateRuleInput = Shapes::StructureShape.new(name: 'CreateRuleInput')
    CreateRuleOutput = Shapes::StructureShape.new(name: 'CreateRuleOutput')
    CreateTargetGroupInput = Shapes::StructureShape.new(name: 'CreateTargetGroupInput')
    CreateTargetGroupOutput = Shapes::StructureShape.new(name: 'CreateTargetGroupOutput')
    CreatedTime = Shapes::TimestampShape.new(name: 'CreatedTime')
    DNSName = Shapes::StringShape.new(name: 'DNSName')
    Default = Shapes::BooleanShape.new(name: 'Default')
    DeleteListenerInput = Shapes::StructureShape.new(name: 'DeleteListenerInput')
    DeleteListenerOutput = Shapes::StructureShape.new(name: 'DeleteListenerOutput')
    DeleteLoadBalancerInput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerInput')
    DeleteLoadBalancerOutput = Shapes::StructureShape.new(name: 'DeleteLoadBalancerOutput')
    DeleteRuleInput = Shapes::StructureShape.new(name: 'DeleteRuleInput')
    DeleteRuleOutput = Shapes::StructureShape.new(name: 'DeleteRuleOutput')
    DeleteTargetGroupInput = Shapes::StructureShape.new(name: 'DeleteTargetGroupInput')
    DeleteTargetGroupOutput = Shapes::StructureShape.new(name: 'DeleteTargetGroupOutput')
    DeregisterTargetsInput = Shapes::StructureShape.new(name: 'DeregisterTargetsInput')
    DeregisterTargetsOutput = Shapes::StructureShape.new(name: 'DeregisterTargetsOutput')
    DescribeAccountLimitsInput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsInput')
    DescribeAccountLimitsOutput = Shapes::StructureShape.new(name: 'DescribeAccountLimitsOutput')
    DescribeListenerCertificatesInput = Shapes::StructureShape.new(name: 'DescribeListenerCertificatesInput')
    DescribeListenerCertificatesOutput = Shapes::StructureShape.new(name: 'DescribeListenerCertificatesOutput')
    DescribeListenersInput = Shapes::StructureShape.new(name: 'DescribeListenersInput')
    DescribeListenersOutput = Shapes::StructureShape.new(name: 'DescribeListenersOutput')
    DescribeLoadBalancerAttributesInput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerAttributesInput')
    DescribeLoadBalancerAttributesOutput = Shapes::StructureShape.new(name: 'DescribeLoadBalancerAttributesOutput')
    DescribeLoadBalancersInput = Shapes::StructureShape.new(name: 'DescribeLoadBalancersInput')
    DescribeLoadBalancersOutput = Shapes::StructureShape.new(name: 'DescribeLoadBalancersOutput')
    DescribeRulesInput = Shapes::StructureShape.new(name: 'DescribeRulesInput')
    DescribeRulesOutput = Shapes::StructureShape.new(name: 'DescribeRulesOutput')
    DescribeSSLPoliciesInput = Shapes::StructureShape.new(name: 'DescribeSSLPoliciesInput')
    DescribeSSLPoliciesOutput = Shapes::StructureShape.new(name: 'DescribeSSLPoliciesOutput')
    DescribeTagsInput = Shapes::StructureShape.new(name: 'DescribeTagsInput')
    DescribeTagsOutput = Shapes::StructureShape.new(name: 'DescribeTagsOutput')
    DescribeTargetGroupAttributesInput = Shapes::StructureShape.new(name: 'DescribeTargetGroupAttributesInput')
    DescribeTargetGroupAttributesOutput = Shapes::StructureShape.new(name: 'DescribeTargetGroupAttributesOutput')
    DescribeTargetGroupsInput = Shapes::StructureShape.new(name: 'DescribeTargetGroupsInput')
    DescribeTargetGroupsOutput = Shapes::StructureShape.new(name: 'DescribeTargetGroupsOutput')
    DescribeTargetHealthInput = Shapes::StructureShape.new(name: 'DescribeTargetHealthInput')
    DescribeTargetHealthOutput = Shapes::StructureShape.new(name: 'DescribeTargetHealthOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DuplicateListenerException = Shapes::StructureShape.new(name: 'DuplicateListenerException')
    DuplicateLoadBalancerNameException = Shapes::StructureShape.new(name: 'DuplicateLoadBalancerNameException')
    DuplicateTagKeysException = Shapes::StructureShape.new(name: 'DuplicateTagKeysException')
    DuplicateTargetGroupNameException = Shapes::StructureShape.new(name: 'DuplicateTargetGroupNameException')
    FixedResponseActionConfig = Shapes::StructureShape.new(name: 'FixedResponseActionConfig')
    FixedResponseActionContentType = Shapes::StringShape.new(name: 'FixedResponseActionContentType')
    FixedResponseActionMessage = Shapes::StringShape.new(name: 'FixedResponseActionMessage')
    FixedResponseActionStatusCode = Shapes::StringShape.new(name: 'FixedResponseActionStatusCode')
    HealthCheckIntervalSeconds = Shapes::IntegerShape.new(name: 'HealthCheckIntervalSeconds')
    HealthCheckPort = Shapes::StringShape.new(name: 'HealthCheckPort')
    HealthCheckThresholdCount = Shapes::IntegerShape.new(name: 'HealthCheckThresholdCount')
    HealthCheckTimeoutSeconds = Shapes::IntegerShape.new(name: 'HealthCheckTimeoutSeconds')
    HealthUnavailableException = Shapes::StructureShape.new(name: 'HealthUnavailableException')
    HttpCode = Shapes::StringShape.new(name: 'HttpCode')
    IncompatibleProtocolsException = Shapes::StructureShape.new(name: 'IncompatibleProtocolsException')
    InvalidConfigurationRequestException = Shapes::StructureShape.new(name: 'InvalidConfigurationRequestException')
    InvalidLoadBalancerActionException = Shapes::StructureShape.new(name: 'InvalidLoadBalancerActionException')
    InvalidSchemeException = Shapes::StructureShape.new(name: 'InvalidSchemeException')
    InvalidSecurityGroupException = Shapes::StructureShape.new(name: 'InvalidSecurityGroupException')
    InvalidSubnetException = Shapes::StructureShape.new(name: 'InvalidSubnetException')
    InvalidTargetException = Shapes::StructureShape.new(name: 'InvalidTargetException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    IsDefault = Shapes::BooleanShape.new(name: 'IsDefault')
    Limit = Shapes::StructureShape.new(name: 'Limit')
    Limits = Shapes::ListShape.new(name: 'Limits')
    ListOfString = Shapes::ListShape.new(name: 'ListOfString')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    ListenerArn = Shapes::StringShape.new(name: 'ListenerArn')
    ListenerArns = Shapes::ListShape.new(name: 'ListenerArns')
    ListenerNotFoundException = Shapes::StructureShape.new(name: 'ListenerNotFoundException')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    LoadBalancer = Shapes::StructureShape.new(name: 'LoadBalancer')
    LoadBalancerAddress = Shapes::StructureShape.new(name: 'LoadBalancerAddress')
    LoadBalancerAddresses = Shapes::ListShape.new(name: 'LoadBalancerAddresses')
    LoadBalancerArn = Shapes::StringShape.new(name: 'LoadBalancerArn')
    LoadBalancerArns = Shapes::ListShape.new(name: 'LoadBalancerArns')
    LoadBalancerAttribute = Shapes::StructureShape.new(name: 'LoadBalancerAttribute')
    LoadBalancerAttributeKey = Shapes::StringShape.new(name: 'LoadBalancerAttributeKey')
    LoadBalancerAttributeValue = Shapes::StringShape.new(name: 'LoadBalancerAttributeValue')
    LoadBalancerAttributes = Shapes::ListShape.new(name: 'LoadBalancerAttributes')
    LoadBalancerName = Shapes::StringShape.new(name: 'LoadBalancerName')
    LoadBalancerNames = Shapes::ListShape.new(name: 'LoadBalancerNames')
    LoadBalancerNotFoundException = Shapes::StructureShape.new(name: 'LoadBalancerNotFoundException')
    LoadBalancerSchemeEnum = Shapes::StringShape.new(name: 'LoadBalancerSchemeEnum')
    LoadBalancerState = Shapes::StructureShape.new(name: 'LoadBalancerState')
    LoadBalancerStateEnum = Shapes::StringShape.new(name: 'LoadBalancerStateEnum')
    LoadBalancerTypeEnum = Shapes::StringShape.new(name: 'LoadBalancerTypeEnum')
    LoadBalancers = Shapes::ListShape.new(name: 'LoadBalancers')
    Marker = Shapes::StringShape.new(name: 'Marker')
    Matcher = Shapes::StructureShape.new(name: 'Matcher')
    Max = Shapes::StringShape.new(name: 'Max')
    ModifyListenerInput = Shapes::StructureShape.new(name: 'ModifyListenerInput')
    ModifyListenerOutput = Shapes::StructureShape.new(name: 'ModifyListenerOutput')
    ModifyLoadBalancerAttributesInput = Shapes::StructureShape.new(name: 'ModifyLoadBalancerAttributesInput')
    ModifyLoadBalancerAttributesOutput = Shapes::StructureShape.new(name: 'ModifyLoadBalancerAttributesOutput')
    ModifyRuleInput = Shapes::StructureShape.new(name: 'ModifyRuleInput')
    ModifyRuleOutput = Shapes::StructureShape.new(name: 'ModifyRuleOutput')
    ModifyTargetGroupAttributesInput = Shapes::StructureShape.new(name: 'ModifyTargetGroupAttributesInput')
    ModifyTargetGroupAttributesOutput = Shapes::StructureShape.new(name: 'ModifyTargetGroupAttributesOutput')
    ModifyTargetGroupInput = Shapes::StructureShape.new(name: 'ModifyTargetGroupInput')
    ModifyTargetGroupOutput = Shapes::StructureShape.new(name: 'ModifyTargetGroupOutput')
    Name = Shapes::StringShape.new(name: 'Name')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    Path = Shapes::StringShape.new(name: 'Path')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PriorityInUseException = Shapes::StructureShape.new(name: 'PriorityInUseException')
    ProtocolEnum = Shapes::StringShape.new(name: 'ProtocolEnum')
    RedirectActionConfig = Shapes::StructureShape.new(name: 'RedirectActionConfig')
    RedirectActionHost = Shapes::StringShape.new(name: 'RedirectActionHost')
    RedirectActionPath = Shapes::StringShape.new(name: 'RedirectActionPath')
    RedirectActionPort = Shapes::StringShape.new(name: 'RedirectActionPort')
    RedirectActionProtocol = Shapes::StringShape.new(name: 'RedirectActionProtocol')
    RedirectActionQuery = Shapes::StringShape.new(name: 'RedirectActionQuery')
    RedirectActionStatusCodeEnum = Shapes::StringShape.new(name: 'RedirectActionStatusCodeEnum')
    RegisterTargetsInput = Shapes::StructureShape.new(name: 'RegisterTargetsInput')
    RegisterTargetsOutput = Shapes::StructureShape.new(name: 'RegisterTargetsOutput')
    RemoveListenerCertificatesInput = Shapes::StructureShape.new(name: 'RemoveListenerCertificatesInput')
    RemoveListenerCertificatesOutput = Shapes::StructureShape.new(name: 'RemoveListenerCertificatesOutput')
    RemoveTagsInput = Shapes::StructureShape.new(name: 'RemoveTagsInput')
    RemoveTagsOutput = Shapes::StructureShape.new(name: 'RemoveTagsOutput')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArns = Shapes::ListShape.new(name: 'ResourceArns')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleArns = Shapes::ListShape.new(name: 'RuleArns')
    RuleCondition = Shapes::StructureShape.new(name: 'RuleCondition')
    RuleConditionList = Shapes::ListShape.new(name: 'RuleConditionList')
    RuleNotFoundException = Shapes::StructureShape.new(name: 'RuleNotFoundException')
    RulePriority = Shapes::IntegerShape.new(name: 'RulePriority')
    RulePriorityList = Shapes::ListShape.new(name: 'RulePriorityList')
    RulePriorityPair = Shapes::StructureShape.new(name: 'RulePriorityPair')
    Rules = Shapes::ListShape.new(name: 'Rules')
    SSLPolicyNotFoundException = Shapes::StructureShape.new(name: 'SSLPolicyNotFoundException')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SetIpAddressTypeInput = Shapes::StructureShape.new(name: 'SetIpAddressTypeInput')
    SetIpAddressTypeOutput = Shapes::StructureShape.new(name: 'SetIpAddressTypeOutput')
    SetRulePrioritiesInput = Shapes::StructureShape.new(name: 'SetRulePrioritiesInput')
    SetRulePrioritiesOutput = Shapes::StructureShape.new(name: 'SetRulePrioritiesOutput')
    SetSecurityGroupsInput = Shapes::StructureShape.new(name: 'SetSecurityGroupsInput')
    SetSecurityGroupsOutput = Shapes::StructureShape.new(name: 'SetSecurityGroupsOutput')
    SetSubnetsInput = Shapes::StructureShape.new(name: 'SetSubnetsInput')
    SetSubnetsOutput = Shapes::StructureShape.new(name: 'SetSubnetsOutput')
    SslPolicies = Shapes::ListShape.new(name: 'SslPolicies')
    SslPolicy = Shapes::StructureShape.new(name: 'SslPolicy')
    SslPolicyName = Shapes::StringShape.new(name: 'SslPolicyName')
    SslPolicyNames = Shapes::ListShape.new(name: 'SslPolicyNames')
    SslProtocol = Shapes::StringShape.new(name: 'SslProtocol')
    SslProtocols = Shapes::ListShape.new(name: 'SslProtocols')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    String = Shapes::StringShape.new(name: 'String')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetMapping = Shapes::StructureShape.new(name: 'SubnetMapping')
    SubnetMappings = Shapes::ListShape.new(name: 'SubnetMappings')
    SubnetNotFoundException = Shapes::StructureShape.new(name: 'SubnetNotFoundException')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagDescription = Shapes::StructureShape.new(name: 'TagDescription')
    TagDescriptions = Shapes::ListShape.new(name: 'TagDescriptions')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetDescription = Shapes::StructureShape.new(name: 'TargetDescription')
    TargetDescriptions = Shapes::ListShape.new(name: 'TargetDescriptions')
    TargetGroup = Shapes::StructureShape.new(name: 'TargetGroup')
    TargetGroupArn = Shapes::StringShape.new(name: 'TargetGroupArn')
    TargetGroupArns = Shapes::ListShape.new(name: 'TargetGroupArns')
    TargetGroupAssociationLimitException = Shapes::StructureShape.new(name: 'TargetGroupAssociationLimitException')
    TargetGroupAttribute = Shapes::StructureShape.new(name: 'TargetGroupAttribute')
    TargetGroupAttributeKey = Shapes::StringShape.new(name: 'TargetGroupAttributeKey')
    TargetGroupAttributeValue = Shapes::StringShape.new(name: 'TargetGroupAttributeValue')
    TargetGroupAttributes = Shapes::ListShape.new(name: 'TargetGroupAttributes')
    TargetGroupName = Shapes::StringShape.new(name: 'TargetGroupName')
    TargetGroupNames = Shapes::ListShape.new(name: 'TargetGroupNames')
    TargetGroupNotFoundException = Shapes::StructureShape.new(name: 'TargetGroupNotFoundException')
    TargetGroups = Shapes::ListShape.new(name: 'TargetGroups')
    TargetHealth = Shapes::StructureShape.new(name: 'TargetHealth')
    TargetHealthDescription = Shapes::StructureShape.new(name: 'TargetHealthDescription')
    TargetHealthDescriptions = Shapes::ListShape.new(name: 'TargetHealthDescriptions')
    TargetHealthReasonEnum = Shapes::StringShape.new(name: 'TargetHealthReasonEnum')
    TargetHealthStateEnum = Shapes::StringShape.new(name: 'TargetHealthStateEnum')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetTypeEnum = Shapes::StringShape.new(name: 'TargetTypeEnum')
    TooManyActionsException = Shapes::StructureShape.new(name: 'TooManyActionsException')
    TooManyCertificatesException = Shapes::StructureShape.new(name: 'TooManyCertificatesException')
    TooManyListenersException = Shapes::StructureShape.new(name: 'TooManyListenersException')
    TooManyLoadBalancersException = Shapes::StructureShape.new(name: 'TooManyLoadBalancersException')
    TooManyRegistrationsForTargetIdException = Shapes::StructureShape.new(name: 'TooManyRegistrationsForTargetIdException')
    TooManyRulesException = Shapes::StructureShape.new(name: 'TooManyRulesException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TooManyTargetGroupsException = Shapes::StructureShape.new(name: 'TooManyTargetGroupsException')
    TooManyTargetsException = Shapes::StructureShape.new(name: 'TooManyTargetsException')
    UnsupportedProtocolException = Shapes::StructureShape.new(name: 'UnsupportedProtocolException')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    ZoneName = Shapes::StringShape.new(name: 'ZoneName')

    Action.add_member(:type, Shapes::ShapeRef.new(shape: ActionTypeEnum, required: true, location_name: "Type"))
    Action.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "TargetGroupArn"))
    Action.add_member(:authenticate_oidc_config, Shapes::ShapeRef.new(shape: AuthenticateOidcActionConfig, location_name: "AuthenticateOidcConfig"))
    Action.add_member(:authenticate_cognito_config, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionConfig, location_name: "AuthenticateCognitoConfig"))
    Action.add_member(:order, Shapes::ShapeRef.new(shape: ActionOrder, location_name: "Order"))
    Action.add_member(:redirect_config, Shapes::ShapeRef.new(shape: RedirectActionConfig, location_name: "RedirectConfig"))
    Action.add_member(:fixed_response_config, Shapes::ShapeRef.new(shape: FixedResponseActionConfig, location_name: "FixedResponseConfig"))
    Action.struct_class = Types::Action

    Actions.member = Shapes::ShapeRef.new(shape: Action)

    AddListenerCertificatesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    AddListenerCertificatesInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, required: true, location_name: "Certificates"))
    AddListenerCertificatesInput.struct_class = Types::AddListenerCertificatesInput

    AddListenerCertificatesOutput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    AddListenerCertificatesOutput.struct_class = Types::AddListenerCertificatesOutput

    AddTagsInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "ResourceArns"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.struct_class = Types::AddTagsOutput

    AuthenticateCognitoActionAuthenticationRequestExtraParams.key = Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestParamName)
    AuthenticateCognitoActionAuthenticationRequestExtraParams.value = Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestParamValue)

    AuthenticateCognitoActionConfig.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolArn, required: true, location_name: "UserPoolArn"))
    AuthenticateCognitoActionConfig.add_member(:user_pool_client_id, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolClientId, required: true, location_name: "UserPoolClientId"))
    AuthenticateCognitoActionConfig.add_member(:user_pool_domain, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionUserPoolDomain, required: true, location_name: "UserPoolDomain"))
    AuthenticateCognitoActionConfig.add_member(:session_cookie_name, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionSessionCookieName, location_name: "SessionCookieName"))
    AuthenticateCognitoActionConfig.add_member(:scope, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionScope, location_name: "Scope"))
    AuthenticateCognitoActionConfig.add_member(:session_timeout, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionSessionTimeout, location_name: "SessionTimeout"))
    AuthenticateCognitoActionConfig.add_member(:authentication_request_extra_params, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionAuthenticationRequestExtraParams, location_name: "AuthenticationRequestExtraParams"))
    AuthenticateCognitoActionConfig.add_member(:on_unauthenticated_request, Shapes::ShapeRef.new(shape: AuthenticateCognitoActionConditionalBehaviorEnum, location_name: "OnUnauthenticatedRequest"))
    AuthenticateCognitoActionConfig.struct_class = Types::AuthenticateCognitoActionConfig

    AuthenticateOidcActionAuthenticationRequestExtraParams.key = Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestParamName)
    AuthenticateOidcActionAuthenticationRequestExtraParams.value = Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestParamValue)

    AuthenticateOidcActionConfig.add_member(:issuer, Shapes::ShapeRef.new(shape: AuthenticateOidcActionIssuer, required: true, location_name: "Issuer"))
    AuthenticateOidcActionConfig.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthorizationEndpoint, required: true, location_name: "AuthorizationEndpoint"))
    AuthenticateOidcActionConfig.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: AuthenticateOidcActionTokenEndpoint, required: true, location_name: "TokenEndpoint"))
    AuthenticateOidcActionConfig.add_member(:user_info_endpoint, Shapes::ShapeRef.new(shape: AuthenticateOidcActionUserInfoEndpoint, required: true, location_name: "UserInfoEndpoint"))
    AuthenticateOidcActionConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: AuthenticateOidcActionClientId, required: true, location_name: "ClientId"))
    AuthenticateOidcActionConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: AuthenticateOidcActionClientSecret, required: true, location_name: "ClientSecret"))
    AuthenticateOidcActionConfig.add_member(:session_cookie_name, Shapes::ShapeRef.new(shape: AuthenticateOidcActionSessionCookieName, location_name: "SessionCookieName"))
    AuthenticateOidcActionConfig.add_member(:scope, Shapes::ShapeRef.new(shape: AuthenticateOidcActionScope, location_name: "Scope"))
    AuthenticateOidcActionConfig.add_member(:session_timeout, Shapes::ShapeRef.new(shape: AuthenticateOidcActionSessionTimeout, location_name: "SessionTimeout"))
    AuthenticateOidcActionConfig.add_member(:authentication_request_extra_params, Shapes::ShapeRef.new(shape: AuthenticateOidcActionAuthenticationRequestExtraParams, location_name: "AuthenticationRequestExtraParams"))
    AuthenticateOidcActionConfig.add_member(:on_unauthenticated_request, Shapes::ShapeRef.new(shape: AuthenticateOidcActionConditionalBehaviorEnum, location_name: "OnUnauthenticatedRequest"))
    AuthenticateOidcActionConfig.struct_class = Types::AuthenticateOidcActionConfig

    AvailabilityZone.add_member(:zone_name, Shapes::ShapeRef.new(shape: ZoneName, location_name: "ZoneName"))
    AvailabilityZone.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    AvailabilityZone.add_member(:load_balancer_addresses, Shapes::ShapeRef.new(shape: LoadBalancerAddresses, location_name: "LoadBalancerAddresses"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "CertificateArn"))
    Certificate.add_member(:is_default, Shapes::ShapeRef.new(shape: Default, location_name: "IsDefault"))
    Certificate.struct_class = Types::Certificate

    CertificateList.member = Shapes::ShapeRef.new(shape: Certificate)

    Cipher.add_member(:name, Shapes::ShapeRef.new(shape: CipherName, location_name: "Name"))
    Cipher.add_member(:priority, Shapes::ShapeRef.new(shape: CipherPriority, location_name: "Priority"))
    Cipher.struct_class = Types::Cipher

    Ciphers.member = Shapes::ShapeRef.new(shape: Cipher)

    CreateListenerInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    CreateListenerInput.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, required: true, location_name: "Protocol"))
    CreateListenerInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    CreateListenerInput.add_member(:ssl_policy, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "SslPolicy"))
    CreateListenerInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    CreateListenerInput.add_member(:default_actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "DefaultActions"))
    CreateListenerInput.struct_class = Types::CreateListenerInput

    CreateListenerOutput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    CreateListenerOutput.struct_class = Types::CreateListenerOutput

    CreateLoadBalancerInput.add_member(:name, Shapes::ShapeRef.new(shape: LoadBalancerName, required: true, location_name: "Name"))
    CreateLoadBalancerInput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    CreateLoadBalancerInput.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    CreateLoadBalancerInput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    CreateLoadBalancerInput.add_member(:scheme, Shapes::ShapeRef.new(shape: LoadBalancerSchemeEnum, location_name: "Scheme"))
    CreateLoadBalancerInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLoadBalancerInput.add_member(:type, Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: "Type"))
    CreateLoadBalancerInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CreateLoadBalancerInput.struct_class = Types::CreateLoadBalancerInput

    CreateLoadBalancerOutput.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "LoadBalancers"))
    CreateLoadBalancerOutput.struct_class = Types::CreateLoadBalancerOutput

    CreateRuleInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    CreateRuleInput.add_member(:conditions, Shapes::ShapeRef.new(shape: RuleConditionList, required: true, location_name: "Conditions"))
    CreateRuleInput.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, required: true, location_name: "Priority"))
    CreateRuleInput.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "Actions"))
    CreateRuleInput.struct_class = Types::CreateRuleInput

    CreateRuleOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    CreateRuleOutput.struct_class = Types::CreateRuleOutput

    CreateTargetGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, required: true, location_name: "Name"))
    CreateTargetGroupInput.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, required: true, location_name: "Protocol"))
    CreateTargetGroupInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    CreateTargetGroupInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    CreateTargetGroupInput.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "HealthCheckProtocol"))
    CreateTargetGroupInput.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    CreateTargetGroupInput.add_member(:health_check_path, Shapes::ShapeRef.new(shape: Path, location_name: "HealthCheckPath"))
    CreateTargetGroupInput.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    CreateTargetGroupInput.add_member(:health_check_timeout_seconds, Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    CreateTargetGroupInput.add_member(:healthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    CreateTargetGroupInput.add_member(:unhealthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    CreateTargetGroupInput.add_member(:matcher, Shapes::ShapeRef.new(shape: Matcher, location_name: "Matcher"))
    CreateTargetGroupInput.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetTypeEnum, location_name: "TargetType"))
    CreateTargetGroupInput.struct_class = Types::CreateTargetGroupInput

    CreateTargetGroupOutput.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroups, location_name: "TargetGroups"))
    CreateTargetGroupOutput.struct_class = Types::CreateTargetGroupOutput

    DeleteListenerInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    DeleteListenerInput.struct_class = Types::DeleteListenerInput

    DeleteListenerOutput.struct_class = Types::DeleteListenerOutput

    DeleteLoadBalancerInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    DeleteLoadBalancerInput.struct_class = Types::DeleteLoadBalancerInput

    DeleteLoadBalancerOutput.struct_class = Types::DeleteLoadBalancerOutput

    DeleteRuleInput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "RuleArn"))
    DeleteRuleInput.struct_class = Types::DeleteRuleInput

    DeleteRuleOutput.struct_class = Types::DeleteRuleOutput

    DeleteTargetGroupInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DeleteTargetGroupInput.struct_class = Types::DeleteTargetGroupInput

    DeleteTargetGroupOutput.struct_class = Types::DeleteTargetGroupOutput

    DeregisterTargetsInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DeregisterTargetsInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetDescriptions, required: true, location_name: "Targets"))
    DeregisterTargetsInput.struct_class = Types::DeregisterTargetsInput

    DeregisterTargetsOutput.struct_class = Types::DeregisterTargetsOutput

    DescribeAccountLimitsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeAccountLimitsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeAccountLimitsInput.struct_class = Types::DescribeAccountLimitsInput

    DescribeAccountLimitsOutput.add_member(:limits, Shapes::ShapeRef.new(shape: Limits, location_name: "Limits"))
    DescribeAccountLimitsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeAccountLimitsOutput.struct_class = Types::DescribeAccountLimitsOutput

    DescribeListenerCertificatesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    DescribeListenerCertificatesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeListenerCertificatesInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeListenerCertificatesInput.struct_class = Types::DescribeListenerCertificatesInput

    DescribeListenerCertificatesOutput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    DescribeListenerCertificatesOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeListenerCertificatesOutput.struct_class = Types::DescribeListenerCertificatesOutput

    DescribeListenersInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    DescribeListenersInput.add_member(:listener_arns, Shapes::ShapeRef.new(shape: ListenerArns, location_name: "ListenerArns"))
    DescribeListenersInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeListenersInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeListenersInput.struct_class = Types::DescribeListenersInput

    DescribeListenersOutput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    DescribeListenersOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeListenersOutput.struct_class = Types::DescribeListenersOutput

    DescribeLoadBalancerAttributesInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    DescribeLoadBalancerAttributesInput.struct_class = Types::DescribeLoadBalancerAttributesInput

    DescribeLoadBalancerAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: "Attributes"))
    DescribeLoadBalancerAttributesOutput.struct_class = Types::DescribeLoadBalancerAttributesOutput

    DescribeLoadBalancersInput.add_member(:load_balancer_arns, Shapes::ShapeRef.new(shape: LoadBalancerArns, location_name: "LoadBalancerArns"))
    DescribeLoadBalancersInput.add_member(:names, Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: "Names"))
    DescribeLoadBalancersInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeLoadBalancersInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeLoadBalancersInput.struct_class = Types::DescribeLoadBalancersInput

    DescribeLoadBalancersOutput.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "LoadBalancers"))
    DescribeLoadBalancersOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeLoadBalancersOutput.struct_class = Types::DescribeLoadBalancersOutput

    DescribeRulesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "ListenerArn"))
    DescribeRulesInput.add_member(:rule_arns, Shapes::ShapeRef.new(shape: RuleArns, location_name: "RuleArns"))
    DescribeRulesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeRulesInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeRulesInput.struct_class = Types::DescribeRulesInput

    DescribeRulesOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    DescribeRulesOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeRulesOutput.struct_class = Types::DescribeRulesOutput

    DescribeSSLPoliciesInput.add_member(:names, Shapes::ShapeRef.new(shape: SslPolicyNames, location_name: "Names"))
    DescribeSSLPoliciesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeSSLPoliciesInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeSSLPoliciesInput.struct_class = Types::DescribeSSLPoliciesInput

    DescribeSSLPoliciesOutput.add_member(:ssl_policies, Shapes::ShapeRef.new(shape: SslPolicies, location_name: "SslPolicies"))
    DescribeSSLPoliciesOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeSSLPoliciesOutput.struct_class = Types::DescribeSSLPoliciesOutput

    DescribeTagsInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "ResourceArns"))
    DescribeTagsInput.struct_class = Types::DescribeTagsInput

    DescribeTagsOutput.add_member(:tag_descriptions, Shapes::ShapeRef.new(shape: TagDescriptions, location_name: "TagDescriptions"))
    DescribeTagsOutput.struct_class = Types::DescribeTagsOutput

    DescribeTargetGroupAttributesInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DescribeTargetGroupAttributesInput.struct_class = Types::DescribeTargetGroupAttributesInput

    DescribeTargetGroupAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: TargetGroupAttributes, location_name: "Attributes"))
    DescribeTargetGroupAttributesOutput.struct_class = Types::DescribeTargetGroupAttributesOutput

    DescribeTargetGroupsInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    DescribeTargetGroupsInput.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupArns, location_name: "TargetGroupArns"))
    DescribeTargetGroupsInput.add_member(:names, Shapes::ShapeRef.new(shape: TargetGroupNames, location_name: "Names"))
    DescribeTargetGroupsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTargetGroupsInput.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location_name: "PageSize"))
    DescribeTargetGroupsInput.struct_class = Types::DescribeTargetGroupsInput

    DescribeTargetGroupsOutput.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroups, location_name: "TargetGroups"))
    DescribeTargetGroupsOutput.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeTargetGroupsOutput.struct_class = Types::DescribeTargetGroupsOutput

    DescribeTargetHealthInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    DescribeTargetHealthInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetDescriptions, location_name: "Targets"))
    DescribeTargetHealthInput.struct_class = Types::DescribeTargetHealthInput

    DescribeTargetHealthOutput.add_member(:target_health_descriptions, Shapes::ShapeRef.new(shape: TargetHealthDescriptions, location_name: "TargetHealthDescriptions"))
    DescribeTargetHealthOutput.struct_class = Types::DescribeTargetHealthOutput

    FixedResponseActionConfig.add_member(:message_body, Shapes::ShapeRef.new(shape: FixedResponseActionMessage, location_name: "MessageBody"))
    FixedResponseActionConfig.add_member(:status_code, Shapes::ShapeRef.new(shape: FixedResponseActionStatusCode, required: true, location_name: "StatusCode"))
    FixedResponseActionConfig.add_member(:content_type, Shapes::ShapeRef.new(shape: FixedResponseActionContentType, location_name: "ContentType"))
    FixedResponseActionConfig.struct_class = Types::FixedResponseActionConfig

    Limit.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Limit.add_member(:max, Shapes::ShapeRef.new(shape: Max, location_name: "Max"))
    Limit.struct_class = Types::Limit

    Limits.member = Shapes::ShapeRef.new(shape: Limit)

    ListOfString.member = Shapes::ShapeRef.new(shape: StringValue)

    Listener.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "ListenerArn"))
    Listener.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    Listener.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    Listener.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    Listener.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    Listener.add_member(:ssl_policy, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "SslPolicy"))
    Listener.add_member(:default_actions, Shapes::ShapeRef.new(shape: Actions, location_name: "DefaultActions"))
    Listener.struct_class = Types::Listener

    ListenerArns.member = Shapes::ShapeRef.new(shape: ListenerArn)

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    LoadBalancer.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, location_name: "LoadBalancerArn"))
    LoadBalancer.add_member(:dns_name, Shapes::ShapeRef.new(shape: DNSName, location_name: "DNSName"))
    LoadBalancer.add_member(:canonical_hosted_zone_id, Shapes::ShapeRef.new(shape: CanonicalHostedZoneId, location_name: "CanonicalHostedZoneId"))
    LoadBalancer.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    LoadBalancer.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: LoadBalancerName, location_name: "LoadBalancerName"))
    LoadBalancer.add_member(:scheme, Shapes::ShapeRef.new(shape: LoadBalancerSchemeEnum, location_name: "Scheme"))
    LoadBalancer.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    LoadBalancer.add_member(:state, Shapes::ShapeRef.new(shape: LoadBalancerState, location_name: "State"))
    LoadBalancer.add_member(:type, Shapes::ShapeRef.new(shape: LoadBalancerTypeEnum, location_name: "Type"))
    LoadBalancer.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    LoadBalancer.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    LoadBalancer.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    LoadBalancer.struct_class = Types::LoadBalancer

    LoadBalancerAddress.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    LoadBalancerAddress.add_member(:allocation_id, Shapes::ShapeRef.new(shape: AllocationId, location_name: "AllocationId"))
    LoadBalancerAddress.struct_class = Types::LoadBalancerAddress

    LoadBalancerAddresses.member = Shapes::ShapeRef.new(shape: LoadBalancerAddress)

    LoadBalancerArns.member = Shapes::ShapeRef.new(shape: LoadBalancerArn)

    LoadBalancerAttribute.add_member(:key, Shapes::ShapeRef.new(shape: LoadBalancerAttributeKey, location_name: "Key"))
    LoadBalancerAttribute.add_member(:value, Shapes::ShapeRef.new(shape: LoadBalancerAttributeValue, location_name: "Value"))
    LoadBalancerAttribute.struct_class = Types::LoadBalancerAttribute

    LoadBalancerAttributes.member = Shapes::ShapeRef.new(shape: LoadBalancerAttribute)

    LoadBalancerNames.member = Shapes::ShapeRef.new(shape: LoadBalancerName)

    LoadBalancerState.add_member(:code, Shapes::ShapeRef.new(shape: LoadBalancerStateEnum, location_name: "Code"))
    LoadBalancerState.add_member(:reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "Reason"))
    LoadBalancerState.struct_class = Types::LoadBalancerState

    LoadBalancers.member = Shapes::ShapeRef.new(shape: LoadBalancer)

    Matcher.add_member(:http_code, Shapes::ShapeRef.new(shape: HttpCode, required: true, location_name: "HttpCode"))
    Matcher.struct_class = Types::Matcher

    ModifyListenerInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    ModifyListenerInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    ModifyListenerInput.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    ModifyListenerInput.add_member(:ssl_policy, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "SslPolicy"))
    ModifyListenerInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    ModifyListenerInput.add_member(:default_actions, Shapes::ShapeRef.new(shape: Actions, location_name: "DefaultActions"))
    ModifyListenerInput.struct_class = Types::ModifyListenerInput

    ModifyListenerOutput.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    ModifyListenerOutput.struct_class = Types::ModifyListenerOutput

    ModifyLoadBalancerAttributesInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    ModifyLoadBalancerAttributesInput.add_member(:attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, required: true, location_name: "Attributes"))
    ModifyLoadBalancerAttributesInput.struct_class = Types::ModifyLoadBalancerAttributesInput

    ModifyLoadBalancerAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: LoadBalancerAttributes, location_name: "Attributes"))
    ModifyLoadBalancerAttributesOutput.struct_class = Types::ModifyLoadBalancerAttributesOutput

    ModifyRuleInput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "RuleArn"))
    ModifyRuleInput.add_member(:conditions, Shapes::ShapeRef.new(shape: RuleConditionList, location_name: "Conditions"))
    ModifyRuleInput.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "Actions"))
    ModifyRuleInput.struct_class = Types::ModifyRuleInput

    ModifyRuleOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    ModifyRuleOutput.struct_class = Types::ModifyRuleOutput

    ModifyTargetGroupAttributesInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    ModifyTargetGroupAttributesInput.add_member(:attributes, Shapes::ShapeRef.new(shape: TargetGroupAttributes, required: true, location_name: "Attributes"))
    ModifyTargetGroupAttributesInput.struct_class = Types::ModifyTargetGroupAttributesInput

    ModifyTargetGroupAttributesOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: TargetGroupAttributes, location_name: "Attributes"))
    ModifyTargetGroupAttributesOutput.struct_class = Types::ModifyTargetGroupAttributesOutput

    ModifyTargetGroupInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    ModifyTargetGroupInput.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "HealthCheckProtocol"))
    ModifyTargetGroupInput.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    ModifyTargetGroupInput.add_member(:health_check_path, Shapes::ShapeRef.new(shape: Path, location_name: "HealthCheckPath"))
    ModifyTargetGroupInput.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    ModifyTargetGroupInput.add_member(:health_check_timeout_seconds, Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    ModifyTargetGroupInput.add_member(:healthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    ModifyTargetGroupInput.add_member(:unhealthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    ModifyTargetGroupInput.add_member(:matcher, Shapes::ShapeRef.new(shape: Matcher, location_name: "Matcher"))
    ModifyTargetGroupInput.struct_class = Types::ModifyTargetGroupInput

    ModifyTargetGroupOutput.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroups, location_name: "TargetGroups"))
    ModifyTargetGroupOutput.struct_class = Types::ModifyTargetGroupOutput

    RedirectActionConfig.add_member(:protocol, Shapes::ShapeRef.new(shape: RedirectActionProtocol, location_name: "Protocol"))
    RedirectActionConfig.add_member(:port, Shapes::ShapeRef.new(shape: RedirectActionPort, location_name: "Port"))
    RedirectActionConfig.add_member(:host, Shapes::ShapeRef.new(shape: RedirectActionHost, location_name: "Host"))
    RedirectActionConfig.add_member(:path, Shapes::ShapeRef.new(shape: RedirectActionPath, location_name: "Path"))
    RedirectActionConfig.add_member(:query, Shapes::ShapeRef.new(shape: RedirectActionQuery, location_name: "Query"))
    RedirectActionConfig.add_member(:status_code, Shapes::ShapeRef.new(shape: RedirectActionStatusCodeEnum, required: true, location_name: "StatusCode"))
    RedirectActionConfig.struct_class = Types::RedirectActionConfig

    RegisterTargetsInput.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, required: true, location_name: "TargetGroupArn"))
    RegisterTargetsInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetDescriptions, required: true, location_name: "Targets"))
    RegisterTargetsInput.struct_class = Types::RegisterTargetsInput

    RegisterTargetsOutput.struct_class = Types::RegisterTargetsOutput

    RemoveListenerCertificatesInput.add_member(:listener_arn, Shapes::ShapeRef.new(shape: ListenerArn, required: true, location_name: "ListenerArn"))
    RemoveListenerCertificatesInput.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, required: true, location_name: "Certificates"))
    RemoveListenerCertificatesInput.struct_class = Types::RemoveListenerCertificatesInput

    RemoveListenerCertificatesOutput.struct_class = Types::RemoveListenerCertificatesOutput

    RemoveTagsInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, required: true, location_name: "ResourceArns"))
    RemoveTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    RemoveTagsInput.struct_class = Types::RemoveTagsInput

    RemoveTagsOutput.struct_class = Types::RemoveTagsOutput

    ResourceArns.member = Shapes::ShapeRef.new(shape: ResourceArn)

    Rule.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "RuleArn"))
    Rule.add_member(:priority, Shapes::ShapeRef.new(shape: String, location_name: "Priority"))
    Rule.add_member(:conditions, Shapes::ShapeRef.new(shape: RuleConditionList, location_name: "Conditions"))
    Rule.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "Actions"))
    Rule.add_member(:is_default, Shapes::ShapeRef.new(shape: IsDefault, location_name: "IsDefault"))
    Rule.struct_class = Types::Rule

    RuleArns.member = Shapes::ShapeRef.new(shape: RuleArn)

    RuleCondition.add_member(:field, Shapes::ShapeRef.new(shape: ConditionFieldName, location_name: "Field"))
    RuleCondition.add_member(:values, Shapes::ShapeRef.new(shape: ListOfString, location_name: "Values"))
    RuleCondition.struct_class = Types::RuleCondition

    RuleConditionList.member = Shapes::ShapeRef.new(shape: RuleCondition)

    RulePriorityList.member = Shapes::ShapeRef.new(shape: RulePriorityPair)

    RulePriorityPair.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "RuleArn"))
    RulePriorityPair.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "Priority"))
    RulePriorityPair.struct_class = Types::RulePriorityPair

    Rules.member = Shapes::ShapeRef.new(shape: Rule)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SetIpAddressTypeInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    SetIpAddressTypeInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, required: true, location_name: "IpAddressType"))
    SetIpAddressTypeInput.struct_class = Types::SetIpAddressTypeInput

    SetIpAddressTypeOutput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    SetIpAddressTypeOutput.struct_class = Types::SetIpAddressTypeOutput

    SetRulePrioritiesInput.add_member(:rule_priorities, Shapes::ShapeRef.new(shape: RulePriorityList, required: true, location_name: "RulePriorities"))
    SetRulePrioritiesInput.struct_class = Types::SetRulePrioritiesInput

    SetRulePrioritiesOutput.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "Rules"))
    SetRulePrioritiesOutput.struct_class = Types::SetRulePrioritiesOutput

    SetSecurityGroupsInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    SetSecurityGroupsInput.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "SecurityGroups"))
    SetSecurityGroupsInput.struct_class = Types::SetSecurityGroupsInput

    SetSecurityGroupsOutput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroupIds"))
    SetSecurityGroupsOutput.struct_class = Types::SetSecurityGroupsOutput

    SetSubnetsInput.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: LoadBalancerArn, required: true, location_name: "LoadBalancerArn"))
    SetSubnetsInput.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "Subnets"))
    SetSubnetsInput.add_member(:subnet_mappings, Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    SetSubnetsInput.struct_class = Types::SetSubnetsInput

    SetSubnetsOutput.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    SetSubnetsOutput.struct_class = Types::SetSubnetsOutput

    SslPolicies.member = Shapes::ShapeRef.new(shape: SslPolicy)

    SslPolicy.add_member(:ssl_protocols, Shapes::ShapeRef.new(shape: SslProtocols, location_name: "SslProtocols"))
    SslPolicy.add_member(:ciphers, Shapes::ShapeRef.new(shape: Ciphers, location_name: "Ciphers"))
    SslPolicy.add_member(:name, Shapes::ShapeRef.new(shape: SslPolicyName, location_name: "Name"))
    SslPolicy.struct_class = Types::SslPolicy

    SslPolicyNames.member = Shapes::ShapeRef.new(shape: SslPolicyName)

    SslProtocols.member = Shapes::ShapeRef.new(shape: SslProtocol)

    SubnetMapping.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    SubnetMapping.add_member(:allocation_id, Shapes::ShapeRef.new(shape: AllocationId, location_name: "AllocationId"))
    SubnetMapping.struct_class = Types::SubnetMapping

    SubnetMappings.member = Shapes::ShapeRef.new(shape: SubnetMapping)

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagDescription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    TagDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TagDescription.struct_class = Types::TagDescription

    TagDescriptions.member = Shapes::ShapeRef.new(shape: TagDescription)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetDescription.add_member(:id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "Id"))
    TargetDescription.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    TargetDescription.add_member(:availability_zone, Shapes::ShapeRef.new(shape: ZoneName, location_name: "AvailabilityZone"))
    TargetDescription.struct_class = Types::TargetDescription

    TargetDescriptions.member = Shapes::ShapeRef.new(shape: TargetDescription)

    TargetGroup.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "TargetGroupArn"))
    TargetGroup.add_member(:target_group_name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "TargetGroupName"))
    TargetGroup.add_member(:protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "Protocol"))
    TargetGroup.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    TargetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    TargetGroup.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: ProtocolEnum, location_name: "HealthCheckProtocol"))
    TargetGroup.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    TargetGroup.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    TargetGroup.add_member(:health_check_timeout_seconds, Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: "HealthCheckTimeoutSeconds"))
    TargetGroup.add_member(:healthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "HealthyThresholdCount"))
    TargetGroup.add_member(:unhealthy_threshold_count, Shapes::ShapeRef.new(shape: HealthCheckThresholdCount, location_name: "UnhealthyThresholdCount"))
    TargetGroup.add_member(:health_check_path, Shapes::ShapeRef.new(shape: Path, location_name: "HealthCheckPath"))
    TargetGroup.add_member(:matcher, Shapes::ShapeRef.new(shape: Matcher, location_name: "Matcher"))
    TargetGroup.add_member(:load_balancer_arns, Shapes::ShapeRef.new(shape: LoadBalancerArns, location_name: "LoadBalancerArns"))
    TargetGroup.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetTypeEnum, location_name: "TargetType"))
    TargetGroup.struct_class = Types::TargetGroup

    TargetGroupArns.member = Shapes::ShapeRef.new(shape: TargetGroupArn)

    TargetGroupAttribute.add_member(:key, Shapes::ShapeRef.new(shape: TargetGroupAttributeKey, location_name: "Key"))
    TargetGroupAttribute.add_member(:value, Shapes::ShapeRef.new(shape: TargetGroupAttributeValue, location_name: "Value"))
    TargetGroupAttribute.struct_class = Types::TargetGroupAttribute

    TargetGroupAttributes.member = Shapes::ShapeRef.new(shape: TargetGroupAttribute)

    TargetGroupNames.member = Shapes::ShapeRef.new(shape: TargetGroupName)

    TargetGroups.member = Shapes::ShapeRef.new(shape: TargetGroup)

    TargetHealth.add_member(:state, Shapes::ShapeRef.new(shape: TargetHealthStateEnum, location_name: "State"))
    TargetHealth.add_member(:reason, Shapes::ShapeRef.new(shape: TargetHealthReasonEnum, location_name: "Reason"))
    TargetHealth.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TargetHealth.struct_class = Types::TargetHealth

    TargetHealthDescription.add_member(:target, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "Target"))
    TargetHealthDescription.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    TargetHealthDescription.add_member(:target_health, Shapes::ShapeRef.new(shape: TargetHealth, location_name: "TargetHealth"))
    TargetHealthDescription.struct_class = Types::TargetHealthDescription

    TargetHealthDescriptions.member = Shapes::ShapeRef.new(shape: TargetHealthDescription)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-12-01"

      api.metadata = {
        "apiVersion" => "2015-12-01",
        "endpointPrefix" => "elasticloadbalancing",
        "protocol" => "query",
        "serviceAbbreviation" => "Elastic Load Balancing v2",
        "serviceFullName" => "Elastic Load Balancing",
        "serviceId" => "Elastic Load Balancing v2",
        "signatureVersion" => "v4",
        "uid" => "elasticloadbalancingv2-2015-12-01",
        "xmlNamespace" => "http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/",
      }

      api.add_operation(:add_listener_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddListenerCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddListenerCertificatesInput)
        o.output = Shapes::ShapeRef.new(shape: AddListenerCertificatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
      end)

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
      end)

      api.add_operation(:create_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateListenerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateListenerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyListenersException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
      end)

      api.add_operation(:create_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLoadBalancerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLoadBalancerOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateLoadBalancerNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyLoadBalancersException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchemeException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTagKeysException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AllocationIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AvailabilityZoneNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: PriorityInUseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetGroupsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRulesException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
      end)

      api.add_operation(:create_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTargetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTargetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateTargetGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetGroupsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:delete_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteListenerInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
      end)

      api.add_operation(:delete_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoadBalancerInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLoadBalancerOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTargetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTargetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:deregister_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetException)
      end)

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsOutput)
      end)

      api.add_operation(:describe_listener_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeListenerCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeListenerCertificatesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeListenerCertificatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
      end)

      api.add_operation(:describe_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeListeners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeListenersInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeListenersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_load_balancer_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
      end)

      api.add_operation(:describe_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancersInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancersOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRulesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
      end)

      api.add_operation(:describe_ssl_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSSLPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSSLPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSSLPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
      end)

      api.add_operation(:describe_target_group_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTargetGroupAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTargetGroupAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTargetGroupAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
      end)

      api.add_operation(:describe_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTargetGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTargetGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_target_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTargetHealth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTargetHealthInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTargetHealthOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: HealthUnavailableException)
      end)

      api.add_operation(:modify_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyListenerInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyListenerOutput)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateListenerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyListenersException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyCertificatesException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: SSLPolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
      end)

      api.add_operation(:modify_load_balancer_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyLoadBalancerAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyLoadBalancerAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:modify_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyRuleInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupAssociationLimitException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleProtocolsException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProtocolException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyActionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerActionException)
      end)

      api.add_operation(:modify_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyTargetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyTargetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:modify_target_group_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyTargetGroupAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyTargetGroupAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyTargetGroupAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
      end)

      api.add_operation(:register_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRegistrationsForTargetIdException)
      end)

      api.add_operation(:remove_listener_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveListenerCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveListenerCertificatesInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveListenerCertificatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:set_ip_address_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetIpAddressType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetIpAddressTypeInput)
        o.output = Shapes::ShapeRef.new(shape: SetIpAddressTypeOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
      end)

      api.add_operation(:set_rule_priorities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetRulePriorities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetRulePrioritiesInput)
        o.output = Shapes::ShapeRef.new(shape: SetRulePrioritiesOutput)
        o.errors << Shapes::ShapeRef.new(shape: RuleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PriorityInUseException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:set_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetSecurityGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetSecurityGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: SetSecurityGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupException)
      end)

      api.add_operation(:set_subnets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetSubnets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetSubnetsInput)
        o.output = Shapes::ShapeRef.new(shape: SetSubnetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LoadBalancerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRequestException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetException)
        o.errors << Shapes::ShapeRef.new(shape: AllocationIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AvailabilityZoneNotSupportedException)
      end)
    end

  end
end

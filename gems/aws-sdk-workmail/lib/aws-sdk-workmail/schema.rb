# frozen_string_literal: true

# This is generated code!

module Aws::WorkMail
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControlRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AccessControlRule', name: 'AccessControlRule')
    AccessControlRuleAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#AccessControlRuleAction', name: 'AccessControlRuleAction', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    AccessControlRuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#AccessControlRuleDescription', name: 'AccessControlRuleDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    AccessControlRuleEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#AccessControlRuleEffect', name: 'AccessControlRuleEffect')
    AccessControlRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#AccessControlRuleName', name: 'AccessControlRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    AccessControlRuleNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#AccessControlRuleNameList', name: 'AccessControlRuleNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AccessControlRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#AccessControlRulesList', name: 'AccessControlRulesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AccessEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#AccessEffect', name: 'AccessEffect')
    ActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#ActionsList', name: 'ActionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Aliases = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Aliases', name: 'Aliases')
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws:workmail:[a-z0-9-]*:[a-z0-9-]+:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ApplicationArn', name: 'ApplicationArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    AssociateDelegateToResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AssociateDelegateToResourceRequest', name: 'AssociateDelegateToResourceRequest')
    AssociateDelegateToResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AssociateDelegateToResourceResponse', name: 'AssociateDelegateToResourceResponse')
    AssociateMemberToGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AssociateMemberToGroupRequest', name: 'AssociateMemberToGroupRequest')
    AssociateMemberToGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AssociateMemberToGroupResponse', name: 'AssociateMemberToGroupResponse')
    AssumeImpersonationRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AssumeImpersonationRoleRequest', name: 'AssumeImpersonationRoleRequest')
    AssumeImpersonationRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AssumeImpersonationRoleResponse', name: 'AssumeImpersonationRoleResponse')
    AvailabilityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#AvailabilityConfiguration', name: 'AvailabilityConfiguration')
    AvailabilityConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#AvailabilityConfigurationList', name: 'AvailabilityConfigurationList')
    AvailabilityProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#AvailabilityProviderType', name: 'AvailabilityProviderType')
    BookingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#BookingOptions', name: 'BookingOptions')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.workmail#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.workmail#BooleanObject', name: 'BooleanObject')
    CancelMailboxExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CancelMailboxExportJobRequest', name: 'CancelMailboxExportJobRequest')
    CancelMailboxExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CancelMailboxExportJobResponse', name: 'CancelMailboxExportJobResponse')
    CreateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateAliasRequest', name: 'CreateAliasRequest')
    CreateAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateAliasResponse', name: 'CreateAliasResponse')
    CreateAvailabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateAvailabilityConfigurationRequest', name: 'CreateAvailabilityConfigurationRequest')
    CreateAvailabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateAvailabilityConfigurationResponse', name: 'CreateAvailabilityConfigurationResponse')
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateGroupResponse', name: 'CreateGroupResponse')
    CreateIdentityCenterApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateIdentityCenterApplicationRequest', name: 'CreateIdentityCenterApplicationRequest')
    CreateIdentityCenterApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateIdentityCenterApplicationResponse', name: 'CreateIdentityCenterApplicationResponse')
    CreateImpersonationRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateImpersonationRoleRequest', name: 'CreateImpersonationRoleRequest')
    CreateImpersonationRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateImpersonationRoleResponse', name: 'CreateImpersonationRoleResponse')
    CreateMobileDeviceAccessRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateMobileDeviceAccessRuleRequest', name: 'CreateMobileDeviceAccessRuleRequest')
    CreateMobileDeviceAccessRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateMobileDeviceAccessRuleResponse', name: 'CreateMobileDeviceAccessRuleResponse')
    CreateOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateOrganizationRequest', name: 'CreateOrganizationRequest')
    CreateOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateOrganizationResponse', name: 'CreateOrganizationResponse')
    CreateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateResourceRequest', name: 'CreateResourceRequest')
    CreateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateResourceResponse', name: 'CreateResourceResponse')
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#CreateUserResponse', name: 'CreateUserResponse')
    Delegate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#Delegate', name: 'Delegate')
    DeleteAccessControlRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteAccessControlRuleRequest', name: 'DeleteAccessControlRuleRequest')
    DeleteAccessControlRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteAccessControlRuleResponse', name: 'DeleteAccessControlRuleResponse')
    DeleteAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteAliasRequest', name: 'DeleteAliasRequest')
    DeleteAliasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteAliasResponse', name: 'DeleteAliasResponse')
    DeleteAvailabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteAvailabilityConfigurationRequest', name: 'DeleteAvailabilityConfigurationRequest')
    DeleteAvailabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteAvailabilityConfigurationResponse', name: 'DeleteAvailabilityConfigurationResponse')
    DeleteEmailMonitoringConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteEmailMonitoringConfigurationRequest', name: 'DeleteEmailMonitoringConfigurationRequest')
    DeleteEmailMonitoringConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteEmailMonitoringConfigurationResponse', name: 'DeleteEmailMonitoringConfigurationResponse')
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteGroupResponse', name: 'DeleteGroupResponse')
    DeleteIdentityCenterApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteIdentityCenterApplicationRequest', name: 'DeleteIdentityCenterApplicationRequest')
    DeleteIdentityCenterApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteIdentityCenterApplicationResponse', name: 'DeleteIdentityCenterApplicationResponse')
    DeleteIdentityProviderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteIdentityProviderConfigurationRequest', name: 'DeleteIdentityProviderConfigurationRequest')
    DeleteIdentityProviderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteIdentityProviderConfigurationResponse', name: 'DeleteIdentityProviderConfigurationResponse')
    DeleteImpersonationRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteImpersonationRoleRequest', name: 'DeleteImpersonationRoleRequest')
    DeleteImpersonationRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteImpersonationRoleResponse', name: 'DeleteImpersonationRoleResponse')
    DeleteMailboxPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteMailboxPermissionsRequest', name: 'DeleteMailboxPermissionsRequest')
    DeleteMailboxPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteMailboxPermissionsResponse', name: 'DeleteMailboxPermissionsResponse')
    DeleteMobileDeviceAccessOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteMobileDeviceAccessOverrideRequest', name: 'DeleteMobileDeviceAccessOverrideRequest')
    DeleteMobileDeviceAccessOverrideResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteMobileDeviceAccessOverrideResponse', name: 'DeleteMobileDeviceAccessOverrideResponse')
    DeleteMobileDeviceAccessRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteMobileDeviceAccessRuleRequest', name: 'DeleteMobileDeviceAccessRuleRequest')
    DeleteMobileDeviceAccessRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteMobileDeviceAccessRuleResponse', name: 'DeleteMobileDeviceAccessRuleResponse')
    DeleteOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteOrganizationRequest', name: 'DeleteOrganizationRequest')
    DeleteOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteOrganizationResponse', name: 'DeleteOrganizationResponse')
    DeletePersonalAccessTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeletePersonalAccessTokenRequest', name: 'DeletePersonalAccessTokenRequest')
    DeletePersonalAccessTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeletePersonalAccessTokenResponse', name: 'DeletePersonalAccessTokenResponse')
    DeleteResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteResourceRequest', name: 'DeleteResourceRequest')
    DeleteResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteResourceResponse', name: 'DeleteResourceResponse')
    DeleteRetentionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteRetentionPolicyRequest', name: 'DeleteRetentionPolicyRequest')
    DeleteRetentionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteRetentionPolicyResponse', name: 'DeleteRetentionPolicyResponse')
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeleteUserResponse', name: 'DeleteUserResponse')
    DeregisterFromWorkMailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeregisterFromWorkMailRequest', name: 'DeregisterFromWorkMailRequest')
    DeregisterFromWorkMailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeregisterFromWorkMailResponse', name: 'DeregisterFromWorkMailResponse')
    DeregisterMailDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeregisterMailDomainRequest', name: 'DeregisterMailDomainRequest')
    DeregisterMailDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DeregisterMailDomainResponse', name: 'DeregisterMailDomainResponse')
    DescribeEmailMonitoringConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeEmailMonitoringConfigurationRequest', name: 'DescribeEmailMonitoringConfigurationRequest')
    DescribeEmailMonitoringConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeEmailMonitoringConfigurationResponse', name: 'DescribeEmailMonitoringConfigurationResponse')
    DescribeEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeEntityRequest', name: 'DescribeEntityRequest')
    DescribeEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeEntityResponse', name: 'DescribeEntityResponse')
    DescribeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeGroupRequest', name: 'DescribeGroupRequest')
    DescribeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeGroupResponse', name: 'DescribeGroupResponse')
    DescribeIdentityProviderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeIdentityProviderConfigurationRequest', name: 'DescribeIdentityProviderConfigurationRequest')
    DescribeIdentityProviderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeIdentityProviderConfigurationResponse', name: 'DescribeIdentityProviderConfigurationResponse')
    DescribeInboundDmarcSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeInboundDmarcSettingsRequest', name: 'DescribeInboundDmarcSettingsRequest')
    DescribeInboundDmarcSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeInboundDmarcSettingsResponse', name: 'DescribeInboundDmarcSettingsResponse')
    DescribeMailboxExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeMailboxExportJobRequest', name: 'DescribeMailboxExportJobRequest')
    DescribeMailboxExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeMailboxExportJobResponse', name: 'DescribeMailboxExportJobResponse')
    DescribeOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeOrganizationRequest', name: 'DescribeOrganizationRequest')
    DescribeOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeOrganizationResponse', name: 'DescribeOrganizationResponse')
    DescribeResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeResourceRequest', name: 'DescribeResourceRequest')
    DescribeResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeResourceResponse', name: 'DescribeResourceResponse')
    DescribeUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeUserRequest', name: 'DescribeUserRequest')
    DescribeUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DescribeUserResponse', name: 'DescribeUserResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1023}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    DeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#DeviceId', name: 'DeviceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    DeviceModel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#DeviceModel', name: 'DeviceModel', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    DeviceModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#DeviceModelList', name: 'DeviceModelList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DeviceOperatingSystem = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#DeviceOperatingSystem', name: 'DeviceOperatingSystem', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    DeviceOperatingSystemList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#DeviceOperatingSystemList', name: 'DeviceOperatingSystemList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DeviceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#DeviceType', name: 'DeviceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    DeviceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#DeviceTypeList', name: 'DeviceTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DeviceUserAgent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#DeviceUserAgent', name: 'DeviceUserAgent', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    DeviceUserAgentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#DeviceUserAgentList', name: 'DeviceUserAgentList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DirectoryId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#DirectoryId', name: 'DirectoryId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DirectoryInUseException', name: 'DirectoryInUseException', traits: {"smithy.api#error" => "client"})
    DirectoryServiceAuthenticationFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DirectoryServiceAuthenticationFailedException', name: 'DirectoryServiceAuthenticationFailedException', traits: {"smithy.api#error" => "client"})
    DirectoryUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DirectoryUnavailableException', name: 'DirectoryUnavailableException', traits: {"smithy.api#error" => "client"})
    DisassociateDelegateFromResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DisassociateDelegateFromResourceRequest', name: 'DisassociateDelegateFromResourceRequest')
    DisassociateDelegateFromResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DisassociateDelegateFromResourceResponse', name: 'DisassociateDelegateFromResourceResponse')
    DisassociateMemberFromGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DisassociateMemberFromGroupRequest', name: 'DisassociateMemberFromGroupRequest')
    DisassociateMemberFromGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DisassociateMemberFromGroupResponse', name: 'DisassociateMemberFromGroupResponse')
    DnsRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#DnsRecord', name: 'DnsRecord')
    DnsRecordVerificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#DnsRecordVerificationStatus', name: 'DnsRecordVerificationStatus')
    DnsRecords = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#DnsRecords', name: 'DnsRecords')
    Domain = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#Domain', name: 'Domain')
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    Domains = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Domains', name: 'Domains', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 254}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z-]{2,}$"})
    EmailAddressInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#EmailAddressInUseException', name: 'EmailAddressInUseException', traits: {"smithy.api#error" => "client"})
    EntityAlreadyRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#EntityAlreadyRegisteredException', name: 'EntityAlreadyRegisteredException', traits: {"smithy.api#error" => "client"})
    EntityIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#EntityIdentifier', name: 'EntityIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+@-]+$"})
    EntityNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#EntityNotFoundException', name: 'EntityNotFoundException', traits: {"smithy.api#error" => "client"})
    EntityState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#EntityState', name: 'EntityState')
    EntityStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#EntityStateException', name: 'EntityStateException', traits: {"smithy.api#error" => "client"})
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#EntityType', name: 'EntityType')
    EwsAvailabilityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#EwsAvailabilityProvider', name: 'EwsAvailabilityProvider')
    ExpiresIn = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workmail#ExpiresIn', name: 'ExpiresIn')
    ExternalUserName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ExternalUserName', name: 'ExternalUserName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    FolderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#FolderConfiguration', name: 'FolderConfiguration')
    FolderConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#FolderConfigurations', name: 'FolderConfigurations')
    FolderName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#FolderName', name: 'FolderName')
    GetAccessControlEffectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetAccessControlEffectRequest', name: 'GetAccessControlEffectRequest')
    GetAccessControlEffectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetAccessControlEffectResponse', name: 'GetAccessControlEffectResponse')
    GetDefaultRetentionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetDefaultRetentionPolicyRequest', name: 'GetDefaultRetentionPolicyRequest')
    GetDefaultRetentionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetDefaultRetentionPolicyResponse', name: 'GetDefaultRetentionPolicyResponse')
    GetImpersonationRoleEffectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetImpersonationRoleEffectRequest', name: 'GetImpersonationRoleEffectRequest')
    GetImpersonationRoleEffectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetImpersonationRoleEffectResponse', name: 'GetImpersonationRoleEffectResponse')
    GetImpersonationRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetImpersonationRoleRequest', name: 'GetImpersonationRoleRequest')
    GetImpersonationRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetImpersonationRoleResponse', name: 'GetImpersonationRoleResponse')
    GetMailDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMailDomainRequest', name: 'GetMailDomainRequest')
    GetMailDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMailDomainResponse', name: 'GetMailDomainResponse')
    GetMailboxDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMailboxDetailsRequest', name: 'GetMailboxDetailsRequest')
    GetMailboxDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMailboxDetailsResponse', name: 'GetMailboxDetailsResponse')
    GetMobileDeviceAccessEffectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMobileDeviceAccessEffectRequest', name: 'GetMobileDeviceAccessEffectRequest')
    GetMobileDeviceAccessEffectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMobileDeviceAccessEffectResponse', name: 'GetMobileDeviceAccessEffectResponse')
    GetMobileDeviceAccessOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMobileDeviceAccessOverrideRequest', name: 'GetMobileDeviceAccessOverrideRequest')
    GetMobileDeviceAccessOverrideResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetMobileDeviceAccessOverrideResponse', name: 'GetMobileDeviceAccessOverrideResponse')
    GetPersonalAccessTokenMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetPersonalAccessTokenMetadataRequest', name: 'GetPersonalAccessTokenMetadataRequest')
    GetPersonalAccessTokenMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GetPersonalAccessTokenMetadataResponse', name: 'GetPersonalAccessTokenMetadataResponse')
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#Group', name: 'Group')
    GroupIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#GroupIdentifier', name: 'GroupIdentifier')
    GroupIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#GroupIdentifiers', name: 'GroupIdentifiers')
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$"})
    Groups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Groups', name: 'Groups')
    HostedZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#HostedZoneId', name: 'HostedZoneId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[^/\\\\]*$"})
    IdempotencyClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IdempotencyClientToken', name: 'IdempotencyClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\x21-\\x7e]+$"})
    IdentityCenterApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IdentityCenterApplicationName', name: 'IdentityCenterApplicationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    IdentityCenterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#IdentityCenterConfiguration', name: 'IdentityCenterConfiguration')
    IdentityProviderAuthenticationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#IdentityProviderAuthenticationMode', name: 'IdentityProviderAuthenticationMode')
    IdentityProviderIdentityStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IdentityProviderIdentityStoreId', name: 'IdentityProviderIdentityStoreId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$|^[0-9a-f]{8}\\\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\\\b[0-9a-f]{12}$"})
    IdentityProviderUserId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IdentityProviderUserId', name: 'IdentityProviderUserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    IdentityProviderUserIdForUpdate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IdentityProviderUserIdForUpdate', name: 'IdentityProviderUserIdForUpdate', traits: {"smithy.api#length" => {"min" => 0, "max" => 47}, "smithy.api#pattern" => "^$|^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    IdentityProviderUserIdPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IdentityProviderUserIdPrefix', name: 'IdentityProviderUserIdPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^[A-Fa-f0-9-]+$"})
    ImpersonationMatchedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ImpersonationMatchedRule', name: 'ImpersonationMatchedRule')
    ImpersonationMatchedRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#ImpersonationMatchedRuleList', name: 'ImpersonationMatchedRuleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ImpersonationRole = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ImpersonationRole', name: 'ImpersonationRole')
    ImpersonationRoleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ImpersonationRoleDescription', name: 'ImpersonationRoleDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F\\x3C\\x3E\\x5C]+$"})
    ImpersonationRoleId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ImpersonationRoleId', name: 'ImpersonationRoleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ImpersonationRoleIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#ImpersonationRoleIdList', name: 'ImpersonationRoleIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ImpersonationRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#ImpersonationRoleList', name: 'ImpersonationRoleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ImpersonationRoleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ImpersonationRoleName', name: 'ImpersonationRoleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F\\x3C\\x3E\\x5C]+$"})
    ImpersonationRoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#ImpersonationRoleType', name: 'ImpersonationRoleType')
    ImpersonationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ImpersonationRule', name: 'ImpersonationRule')
    ImpersonationRuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ImpersonationRuleDescription', name: 'ImpersonationRuleDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F\\x3C\\x3E\\x5C]+$"})
    ImpersonationRuleId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ImpersonationRuleId', name: 'ImpersonationRuleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ImpersonationRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#ImpersonationRuleList', name: 'ImpersonationRuleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ImpersonationRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ImpersonationRuleName', name: 'ImpersonationRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F\\x3C\\x3E\\x5C]+$"})
    ImpersonationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ImpersonationToken', name: 'ImpersonationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x21-\\x7e]+$"})
    InstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#InstanceArn', name: 'InstanceArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1124}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    InvalidConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#InvalidConfigurationException', name: 'InvalidConfigurationException', traits: {"smithy.api#error" => "client"})
    InvalidCustomSesConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#InvalidCustomSesConfigurationException', name: 'InvalidCustomSesConfigurationException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidPasswordException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#InvalidPasswordException', name: 'InvalidPasswordException', traits: {"smithy.api#error" => "client"})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IpAddress', name: 'IpAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"})
    IpRange = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#IpRange', name: 'IpRange', traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])/([0-9]|[12][0-9]|3[0-2])$"})
    IpRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#IpRangeList', name: 'IpRangeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Jobs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Jobs', name: 'Jobs')
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:kms:[a-z0-9-]*:[a-z0-9-]+:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#LambdaArn', name: 'LambdaArn', traits: {"smithy.api#length" => {"min" => 49, "max" => 256}, "smithy.api#pattern" => "^arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9\\-_\\.]+(:(\\$LATEST|[a-zA-Z0-9\\-_]+))?$"})
    LambdaAvailabilityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#LambdaAvailabilityProvider', name: 'LambdaAvailabilityProvider')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListAccessControlRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListAccessControlRulesRequest', name: 'ListAccessControlRulesRequest')
    ListAccessControlRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListAccessControlRulesResponse', name: 'ListAccessControlRulesResponse')
    ListAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListAliasesRequest', name: 'ListAliasesRequest')
    ListAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListAliasesResponse', name: 'ListAliasesResponse')
    ListAvailabilityConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListAvailabilityConfigurationsRequest', name: 'ListAvailabilityConfigurationsRequest')
    ListAvailabilityConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListAvailabilityConfigurationsResponse', name: 'ListAvailabilityConfigurationsResponse')
    ListGroupMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupMembersRequest', name: 'ListGroupMembersRequest')
    ListGroupMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupMembersResponse', name: 'ListGroupMembersResponse')
    ListGroupsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupsFilters', name: 'ListGroupsFilters')
    ListGroupsForEntityFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupsForEntityFilters', name: 'ListGroupsForEntityFilters')
    ListGroupsForEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupsForEntityRequest', name: 'ListGroupsForEntityRequest')
    ListGroupsForEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupsForEntityResponse', name: 'ListGroupsForEntityResponse')
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupsRequest', name: 'ListGroupsRequest')
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListGroupsResponse', name: 'ListGroupsResponse')
    ListImpersonationRolesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListImpersonationRolesRequest', name: 'ListImpersonationRolesRequest')
    ListImpersonationRolesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListImpersonationRolesResponse', name: 'ListImpersonationRolesResponse')
    ListMailDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMailDomainsRequest', name: 'ListMailDomainsRequest')
    ListMailDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMailDomainsResponse', name: 'ListMailDomainsResponse')
    ListMailboxExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMailboxExportJobsRequest', name: 'ListMailboxExportJobsRequest')
    ListMailboxExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMailboxExportJobsResponse', name: 'ListMailboxExportJobsResponse')
    ListMailboxPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMailboxPermissionsRequest', name: 'ListMailboxPermissionsRequest')
    ListMailboxPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMailboxPermissionsResponse', name: 'ListMailboxPermissionsResponse')
    ListMobileDeviceAccessOverridesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMobileDeviceAccessOverridesRequest', name: 'ListMobileDeviceAccessOverridesRequest')
    ListMobileDeviceAccessOverridesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMobileDeviceAccessOverridesResponse', name: 'ListMobileDeviceAccessOverridesResponse')
    ListMobileDeviceAccessRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMobileDeviceAccessRulesRequest', name: 'ListMobileDeviceAccessRulesRequest')
    ListMobileDeviceAccessRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListMobileDeviceAccessRulesResponse', name: 'ListMobileDeviceAccessRulesResponse')
    ListOrganizationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListOrganizationsRequest', name: 'ListOrganizationsRequest')
    ListOrganizationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListOrganizationsResponse', name: 'ListOrganizationsResponse')
    ListPersonalAccessTokensRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListPersonalAccessTokensRequest', name: 'ListPersonalAccessTokensRequest')
    ListPersonalAccessTokensResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListPersonalAccessTokensResponse', name: 'ListPersonalAccessTokensResponse')
    ListResourceDelegatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListResourceDelegatesRequest', name: 'ListResourceDelegatesRequest')
    ListResourceDelegatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListResourceDelegatesResponse', name: 'ListResourceDelegatesResponse')
    ListResourcesFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListResourcesFilters', name: 'ListResourcesFilters')
    ListResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListResourcesRequest', name: 'ListResourcesRequest')
    ListResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListResourcesResponse', name: 'ListResourcesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListUsersFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListUsersFilters', name: 'ListUsersFilters')
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ListUsersResponse', name: 'ListUsersResponse')
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#LogGroupArn', name: 'LogGroupArn', traits: {"smithy.api#length" => {"min" => 47, "max" => 562}, "smithy.api#pattern" => "^arn:aws:logs:[a-z\\-0-9]*:[0-9]{12}:log-group:([\\.\\-_/#A-Za-z0-9]+):\\*$"})
    MailDomainInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MailDomainInUseException', name: 'MailDomainInUseException', traits: {"smithy.api#error" => "client"})
    MailDomainNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MailDomainNotFoundException', name: 'MailDomainNotFoundException', traits: {"smithy.api#error" => "client"})
    MailDomainStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MailDomainStateException', name: 'MailDomainStateException', traits: {"smithy.api#error" => "client"})
    MailDomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MailDomainSummary', name: 'MailDomainSummary')
    MailDomains = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#MailDomains', name: 'MailDomains')
    MailboxExportErrorInfo = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#MailboxExportErrorInfo', name: 'MailboxExportErrorInfo', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    MailboxExportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MailboxExportJob', name: 'MailboxExportJob')
    MailboxExportJobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#MailboxExportJobId', name: 'MailboxExportJobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    MailboxExportJobState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#MailboxExportJobState', name: 'MailboxExportJobState')
    MailboxQuota = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workmail#MailboxQuota', name: 'MailboxQuota', traits: {"smithy.api#range" => {"min" => 1}})
    MailboxSize = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.workmail#MailboxSize', name: 'MailboxSize', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workmail#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Member = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#Member', name: 'Member')
    MemberType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#MemberType', name: 'MemberType')
    Members = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Members', name: 'Members')
    MobileDeviceAccessMatchedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessMatchedRule', name: 'MobileDeviceAccessMatchedRule')
    MobileDeviceAccessMatchedRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessMatchedRuleList', name: 'MobileDeviceAccessMatchedRuleList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MobileDeviceAccessOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessOverride', name: 'MobileDeviceAccessOverride')
    MobileDeviceAccessOverridesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessOverridesList', name: 'MobileDeviceAccessOverridesList')
    MobileDeviceAccessRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessRule', name: 'MobileDeviceAccessRule')
    MobileDeviceAccessRuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessRuleDescription', name: 'MobileDeviceAccessRuleDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    MobileDeviceAccessRuleEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessRuleEffect', name: 'MobileDeviceAccessRuleEffect')
    MobileDeviceAccessRuleId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessRuleId', name: 'MobileDeviceAccessRuleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    MobileDeviceAccessRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessRuleName', name: 'MobileDeviceAccessRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    MobileDeviceAccessRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#MobileDeviceAccessRulesList', name: 'MobileDeviceAccessRulesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NameAvailabilityException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#NameAvailabilityException', name: 'NameAvailabilityException', traits: {"smithy.api#error" => "client"})
    NewResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#NewResourceDescription', name: 'NewResourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#sensitive" => {}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*|[a-zA-Z0-9/+=]{1,1024}$"})
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#OrganizationId', name: 'OrganizationId', traits: {"smithy.api#length" => {"min" => 34, "max" => 34}, "smithy.api#pattern" => "^m-[0-9a-f]{32}$"})
    OrganizationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#OrganizationName', name: 'OrganizationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 62}, "smithy.api#pattern" => "^(?!d-)([\\da-zA-Z]+)([-][\\da-zA-Z]+)*$"})
    OrganizationNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#OrganizationNotFoundException', name: 'OrganizationNotFoundException', traits: {"smithy.api#error" => "client"})
    OrganizationStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#OrganizationStateException', name: 'OrganizationStateException', traits: {"smithy.api#error" => "client"})
    OrganizationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#OrganizationSummaries', name: 'OrganizationSummaries')
    OrganizationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#OrganizationSummary', name: 'OrganizationSummary')
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#Password', name: 'Password', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\u00FF]+$", "smithy.api#sensitive" => {}})
    Percentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workmail#Percentage', name: 'Percentage', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#Permission', name: 'Permission')
    PermissionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#PermissionType', name: 'PermissionType')
    PermissionValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#PermissionValues', name: 'PermissionValues')
    Permissions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Permissions', name: 'Permissions')
    PersonalAccessTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenConfiguration', name: 'PersonalAccessTokenConfiguration')
    PersonalAccessTokenConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenConfigurationStatus', name: 'PersonalAccessTokenConfigurationStatus')
    PersonalAccessTokenId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenId', name: 'PersonalAccessTokenId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    PersonalAccessTokenLifetimeInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenLifetimeInDays', name: 'PersonalAccessTokenLifetimeInDays', traits: {"smithy.api#range" => {"min" => 1, "max" => 3653}})
    PersonalAccessTokenName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenName', name: 'PersonalAccessTokenName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F\\x3C\\x3E\\x5C]+$"})
    PersonalAccessTokenScope = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenScope', name: 'PersonalAccessTokenScope', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F\\x3C\\x3E\\x5C]+$"})
    PersonalAccessTokenScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenScopeList', name: 'PersonalAccessTokenScopeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PersonalAccessTokenSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenSummary', name: 'PersonalAccessTokenSummary')
    PersonalAccessTokenSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#PersonalAccessTokenSummaryList', name: 'PersonalAccessTokenSummaryList')
    PolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#PolicyDescription', name: 'PolicyDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\w\\d\\s\\S\\-!?=,.;:'_]+$", "smithy.api#sensitive" => {}})
    PutAccessControlRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutAccessControlRuleRequest', name: 'PutAccessControlRuleRequest')
    PutAccessControlRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutAccessControlRuleResponse', name: 'PutAccessControlRuleResponse')
    PutEmailMonitoringConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutEmailMonitoringConfigurationRequest', name: 'PutEmailMonitoringConfigurationRequest')
    PutEmailMonitoringConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutEmailMonitoringConfigurationResponse', name: 'PutEmailMonitoringConfigurationResponse')
    PutIdentityProviderConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutIdentityProviderConfigurationRequest', name: 'PutIdentityProviderConfigurationRequest')
    PutIdentityProviderConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutIdentityProviderConfigurationResponse', name: 'PutIdentityProviderConfigurationResponse')
    PutInboundDmarcSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutInboundDmarcSettingsRequest', name: 'PutInboundDmarcSettingsRequest')
    PutInboundDmarcSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutInboundDmarcSettingsResponse', name: 'PutInboundDmarcSettingsResponse')
    PutMailboxPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutMailboxPermissionsRequest', name: 'PutMailboxPermissionsRequest')
    PutMailboxPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutMailboxPermissionsResponse', name: 'PutMailboxPermissionsResponse')
    PutMobileDeviceAccessOverrideRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutMobileDeviceAccessOverrideRequest', name: 'PutMobileDeviceAccessOverrideRequest')
    PutMobileDeviceAccessOverrideResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutMobileDeviceAccessOverrideResponse', name: 'PutMobileDeviceAccessOverrideResponse')
    PutRetentionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutRetentionPolicyRequest', name: 'PutRetentionPolicyRequest')
    PutRetentionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#PutRetentionPolicyResponse', name: 'PutRetentionPolicyResponse')
    RedactedEwsAvailabilityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#RedactedEwsAvailabilityProvider', name: 'RedactedEwsAvailabilityProvider')
    RegisterMailDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#RegisterMailDomainRequest', name: 'RegisterMailDomainRequest')
    RegisterMailDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#RegisterMailDomainResponse', name: 'RegisterMailDomainResponse')
    RegisterToWorkMailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#RegisterToWorkMailRequest', name: 'RegisterToWorkMailRequest')
    RegisterToWorkMailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#RegisterToWorkMailResponse', name: 'RegisterToWorkMailResponse')
    ReservedNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ReservedNameException', name: 'ReservedNameException', traits: {"smithy.api#error" => "client"})
    ResetPasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ResetPasswordRequest', name: 'ResetPasswordRequest')
    ResetPasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ResetPasswordResponse', name: 'ResetPasswordResponse')
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#Resource', name: 'Resource')
    ResourceDelegates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#ResourceDelegates', name: 'ResourceDelegates')
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 34, "max" => 34}, "smithy.api#pattern" => "^r-[0-9a-f]{32}$"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9-]{2,})?$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#ResourceType', name: 'ResourceType')
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Resources', name: 'Resources')
    RetentionAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#RetentionAction', name: 'RetentionAction')
    RetentionPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workmail#RetentionPeriod', name: 'RetentionPeriod', traits: {"smithy.api#range" => {"min" => 1, "max" => 730}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam:[a-z0-9-]*:[a-z0-9-]+:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9.-]+$"})
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#S3ObjectKey', name: 'S3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1023}, "smithy.api#pattern" => "^[A-Za-z0-9!_.*'()/-]+$"})
    ShortString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#ShortString', name: 'ShortString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    StartMailboxExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#StartMailboxExportJobRequest', name: 'StartMailboxExportJobRequest')
    StartMailboxExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#StartMailboxExportJobResponse', name: 'StartMailboxExportJobResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetUsers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#TargetUsers', name: 'TargetUsers', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TestAvailabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#TestAvailabilityConfigurationRequest', name: 'TestAvailabilityConfigurationRequest')
    TestAvailabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#TestAvailabilityConfigurationResponse', name: 'TestAvailabilityConfigurationResponse')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.workmail#Timestamp', name: 'Timestamp')
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAvailabilityConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateAvailabilityConfigurationRequest', name: 'UpdateAvailabilityConfigurationRequest')
    UpdateAvailabilityConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateAvailabilityConfigurationResponse', name: 'UpdateAvailabilityConfigurationResponse')
    UpdateDefaultMailDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateDefaultMailDomainRequest', name: 'UpdateDefaultMailDomainRequest')
    UpdateDefaultMailDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateDefaultMailDomainResponse', name: 'UpdateDefaultMailDomainResponse')
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateGroupRequest', name: 'UpdateGroupRequest')
    UpdateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateGroupResponse', name: 'UpdateGroupResponse')
    UpdateImpersonationRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateImpersonationRoleRequest', name: 'UpdateImpersonationRoleRequest')
    UpdateImpersonationRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateImpersonationRoleResponse', name: 'UpdateImpersonationRoleResponse')
    UpdateMailboxQuotaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateMailboxQuotaRequest', name: 'UpdateMailboxQuotaRequest')
    UpdateMailboxQuotaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateMailboxQuotaResponse', name: 'UpdateMailboxQuotaResponse')
    UpdateMobileDeviceAccessRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateMobileDeviceAccessRuleRequest', name: 'UpdateMobileDeviceAccessRuleRequest')
    UpdateMobileDeviceAccessRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateMobileDeviceAccessRuleResponse', name: 'UpdateMobileDeviceAccessRuleResponse')
    UpdatePrimaryEmailAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdatePrimaryEmailAddressRequest', name: 'UpdatePrimaryEmailAddressRequest')
    UpdatePrimaryEmailAddressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdatePrimaryEmailAddressResponse', name: 'UpdatePrimaryEmailAddressResponse')
    UpdateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateResourceRequest', name: 'UpdateResourceRequest')
    UpdateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateResourceResponse', name: 'UpdateResourceResponse')
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#UpdateUserResponse', name: 'UpdateUserResponse')
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^https?://[A-Za-z0-9.-]+(:[0-9]+)?/"})
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workmail#User', name: 'User')
    UserAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#UserAttribute', name: 'UserAttribute', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    UserIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#UserIdList', name: 'UserIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9-]{2,})?$"})
    UserRole = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workmail#UserRole', name: 'UserRole')
    Users = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workmail#Users', name: 'Users')
    WorkMailDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#WorkMailDomainName', name: 'WorkMailDomainName', traits: {"smithy.api#length" => {"min" => 3, "max" => 209}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    WorkMailIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workmail#WorkMailIdentifier', name: 'WorkMailIdentifier', traits: {"smithy.api#length" => {"min" => 12, "max" => 256}})

    AccessControlRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleName, location_name: 'Name'))
    AccessControlRule.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleEffect, location_name: 'Effect'))
    AccessControlRule.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleDescription, location_name: 'Description'))
    AccessControlRule.add_member(:ip_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpRangeList, location_name: 'IpRanges'))
    AccessControlRule.add_member(:not_ip_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpRangeList, location_name: 'NotIpRanges'))
    AccessControlRule.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsList, location_name: 'Actions'))
    AccessControlRule.add_member(:not_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsList, location_name: 'NotActions'))
    AccessControlRule.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIds'))
    AccessControlRule.add_member(:not_user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'NotUserIds'))
    AccessControlRule.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    AccessControlRule.add_member(:date_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateModified'))
    AccessControlRule.add_member(:impersonation_role_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleIdList, location_name: 'ImpersonationRoleIds'))
    AccessControlRule.add_member(:not_impersonation_role_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleIdList, location_name: 'NotImpersonationRoleIds'))
    AccessControlRule.type = Types::AccessControlRule
    AccessControlRuleEffect.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    AccessControlRuleEffect.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    AccessControlRuleNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleName)
    AccessControlRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRule)
    AccessEffect.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    AccessEffect.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    ActionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleAction)
    Aliases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress)
    AssociateDelegateToResourceRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    AssociateDelegateToResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    AssociateDelegateToResourceRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    AssociateDelegateToResourceRequest.type = Types::AssociateDelegateToResourceRequest
    AssociateDelegateToResourceResponse.type = Types::AssociateDelegateToResourceResponse
    AssociateMemberToGroupRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    AssociateMemberToGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GroupId', traits: {"smithy.api#required" => {}}))
    AssociateMemberToGroupRequest.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'MemberId', traits: {"smithy.api#required" => {}}))
    AssociateMemberToGroupRequest.type = Types::AssociateMemberToGroupRequest
    AssociateMemberToGroupResponse.type = Types::AssociateMemberToGroupResponse
    AssumeImpersonationRoleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    AssumeImpersonationRoleRequest.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId', traits: {"smithy.api#required" => {}}))
    AssumeImpersonationRoleRequest.type = Types::AssumeImpersonationRoleRequest
    AssumeImpersonationRoleResponse.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationToken, location_name: 'Token'))
    AssumeImpersonationRoleResponse.add_member(:expires_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiresIn, location_name: 'ExpiresIn'))
    AssumeImpersonationRoleResponse.type = Types::AssumeImpersonationRoleResponse
    AvailabilityConfiguration.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName'))
    AvailabilityConfiguration.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityProviderType, location_name: 'ProviderType'))
    AvailabilityConfiguration.add_member(:ews_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedactedEwsAvailabilityProvider, location_name: 'EwsProvider'))
    AvailabilityConfiguration.add_member(:lambda_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAvailabilityProvider, location_name: 'LambdaProvider'))
    AvailabilityConfiguration.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    AvailabilityConfiguration.add_member(:date_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateModified'))
    AvailabilityConfiguration.type = Types::AvailabilityConfiguration
    AvailabilityConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityConfiguration)
    AvailabilityProviderType.add_member(:ews, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EWS', traits: {"smithy.api#enumValue" => "EWS"}))
    AvailabilityProviderType.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    BookingOptions.add_member(:auto_accept_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAcceptRequests', traits: {"smithy.api#default" => false}))
    BookingOptions.add_member(:auto_decline_recurring_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoDeclineRecurringRequests', traits: {"smithy.api#default" => false}))
    BookingOptions.add_member(:auto_decline_conflicting_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoDeclineConflictingRequests', traits: {"smithy.api#default" => false}))
    BookingOptions.type = Types::BookingOptions
    CancelMailboxExportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelMailboxExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportJobId, location_name: 'JobId', traits: {"smithy.api#required" => {}}))
    CancelMailboxExportJobRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CancelMailboxExportJobRequest.type = Types::CancelMailboxExportJobRequest
    CancelMailboxExportJobResponse.type = Types::CancelMailboxExportJobResponse
    CreateAliasRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Alias', traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.type = Types::CreateAliasRequest
    CreateAliasResponse.type = Types::CreateAliasResponse
    CreateAvailabilityConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAvailabilityConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CreateAvailabilityConfigurationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    CreateAvailabilityConfigurationRequest.add_member(:ews_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EwsAvailabilityProvider, location_name: 'EwsProvider'))
    CreateAvailabilityConfigurationRequest.add_member(:lambda_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAvailabilityProvider, location_name: 'LambdaProvider'))
    CreateAvailabilityConfigurationRequest.type = Types::CreateAvailabilityConfigurationRequest
    CreateAvailabilityConfigurationResponse.type = Types::CreateAvailabilityConfigurationResponse
    CreateGroupRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HiddenFromGlobalAddressList', traits: {"smithy.api#default" => false}))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'GroupId'))
    CreateGroupResponse.type = Types::CreateGroupResponse
    CreateIdentityCenterApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateIdentityCenterApplicationRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#required" => {}}))
    CreateIdentityCenterApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIdentityCenterApplicationRequest.type = Types::CreateIdentityCenterApplicationRequest
    CreateIdentityCenterApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn'))
    CreateIdentityCenterApplicationResponse.type = Types::CreateIdentityCenterApplicationResponse
    CreateImpersonationRoleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateImpersonationRoleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CreateImpersonationRoleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateImpersonationRoleRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CreateImpersonationRoleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleDescription, location_name: 'Description'))
    CreateImpersonationRoleRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    CreateImpersonationRoleRequest.type = Types::CreateImpersonationRoleRequest
    CreateImpersonationRoleResponse.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId'))
    CreateImpersonationRoleResponse.type = Types::CreateImpersonationRoleResponse
    CreateMobileDeviceAccessRuleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CreateMobileDeviceAccessRuleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMobileDeviceAccessRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateMobileDeviceAccessRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleDescription, location_name: 'Description'))
    CreateMobileDeviceAccessRuleRequest.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleEffect, location_name: 'Effect', traits: {"smithy.api#required" => {}}))
    CreateMobileDeviceAccessRuleRequest.add_member(:device_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceTypeList, location_name: 'DeviceTypes'))
    CreateMobileDeviceAccessRuleRequest.add_member(:not_device_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceTypeList, location_name: 'NotDeviceTypes'))
    CreateMobileDeviceAccessRuleRequest.add_member(:device_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModelList, location_name: 'DeviceModels'))
    CreateMobileDeviceAccessRuleRequest.add_member(:not_device_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModelList, location_name: 'NotDeviceModels'))
    CreateMobileDeviceAccessRuleRequest.add_member(:device_operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystemList, location_name: 'DeviceOperatingSystems'))
    CreateMobileDeviceAccessRuleRequest.add_member(:not_device_operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystemList, location_name: 'NotDeviceOperatingSystems'))
    CreateMobileDeviceAccessRuleRequest.add_member(:device_user_agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgentList, location_name: 'DeviceUserAgents'))
    CreateMobileDeviceAccessRuleRequest.add_member(:not_device_user_agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgentList, location_name: 'NotDeviceUserAgents'))
    CreateMobileDeviceAccessRuleRequest.type = Types::CreateMobileDeviceAccessRuleRequest
    CreateMobileDeviceAccessRuleResponse.add_member(:mobile_device_access_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleId, location_name: 'MobileDeviceAccessRuleId'))
    CreateMobileDeviceAccessRuleResponse.type = Types::CreateMobileDeviceAccessRuleResponse
    CreateOrganizationRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId'))
    CreateOrganizationRequest.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationName, location_name: 'Alias', traits: {"smithy.api#required" => {}}))
    CreateOrganizationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateOrganizationRequest.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domains, location_name: 'Domains'))
    CreateOrganizationRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    CreateOrganizationRequest.add_member(:enable_interoperability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableInteroperability', traits: {"smithy.api#default" => false}))
    CreateOrganizationRequest.type = Types::CreateOrganizationRequest
    CreateOrganizationResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId'))
    CreateOrganizationResponse.type = Types::CreateOrganizationResponse
    CreateResourceRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CreateResourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateResourceRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CreateResourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    CreateResourceRequest.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HiddenFromGlobalAddressList', traits: {"smithy.api#default" => false}))
    CreateResourceRequest.type = Types::CreateResourceRequest
    CreateResourceResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId'))
    CreateResourceResponse.type = Types::CreateResourceResponse
    CreateUserRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'DisplayName', traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password'))
    CreateUserRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserRole, location_name: 'Role'))
    CreateUserRequest.add_member(:first_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'FirstName'))
    CreateUserRequest.add_member(:last_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'LastName'))
    CreateUserRequest.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HiddenFromGlobalAddressList', traits: {"smithy.api#default" => false}))
    CreateUserRequest.add_member(:identity_provider_user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderUserId, location_name: 'IdentityProviderUserId'))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId'))
    CreateUserResponse.type = Types::CreateUserResponse
    Delegate.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    Delegate.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    Delegate.type = Types::Delegate
    DeleteAccessControlRuleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteAccessControlRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    DeleteAccessControlRuleRequest.type = Types::DeleteAccessControlRuleRequest
    DeleteAccessControlRuleResponse.type = Types::DeleteAccessControlRuleResponse
    DeleteAliasRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteAliasRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    DeleteAliasRequest.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Alias', traits: {"smithy.api#required" => {}}))
    DeleteAliasRequest.type = Types::DeleteAliasRequest
    DeleteAliasResponse.type = Types::DeleteAliasResponse
    DeleteAvailabilityConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteAvailabilityConfigurationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DeleteAvailabilityConfigurationRequest.type = Types::DeleteAvailabilityConfigurationRequest
    DeleteAvailabilityConfigurationResponse.type = Types::DeleteAvailabilityConfigurationResponse
    DeleteEmailMonitoringConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteEmailMonitoringConfigurationRequest.type = Types::DeleteEmailMonitoringConfigurationRequest
    DeleteEmailMonitoringConfigurationResponse.type = Types::DeleteEmailMonitoringConfigurationResponse
    DeleteGroupRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GroupId', traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    DeleteIdentityCenterApplicationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#required" => {}}))
    DeleteIdentityCenterApplicationRequest.type = Types::DeleteIdentityCenterApplicationRequest
    DeleteIdentityCenterApplicationResponse.type = Types::DeleteIdentityCenterApplicationResponse
    DeleteIdentityProviderConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteIdentityProviderConfigurationRequest.type = Types::DeleteIdentityProviderConfigurationRequest
    DeleteIdentityProviderConfigurationResponse.type = Types::DeleteIdentityProviderConfigurationResponse
    DeleteImpersonationRoleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteImpersonationRoleRequest.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId', traits: {"smithy.api#required" => {}}))
    DeleteImpersonationRoleRequest.type = Types::DeleteImpersonationRoleRequest
    DeleteImpersonationRoleResponse.type = Types::DeleteImpersonationRoleResponse
    DeleteMailboxPermissionsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteMailboxPermissionsRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    DeleteMailboxPermissionsRequest.add_member(:grantee_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GranteeId', traits: {"smithy.api#required" => {}}))
    DeleteMailboxPermissionsRequest.type = Types::DeleteMailboxPermissionsRequest
    DeleteMailboxPermissionsResponse.type = Types::DeleteMailboxPermissionsResponse
    DeleteMobileDeviceAccessOverrideRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteMobileDeviceAccessOverrideRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    DeleteMobileDeviceAccessOverrideRequest.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    DeleteMobileDeviceAccessOverrideRequest.type = Types::DeleteMobileDeviceAccessOverrideRequest
    DeleteMobileDeviceAccessOverrideResponse.type = Types::DeleteMobileDeviceAccessOverrideResponse
    DeleteMobileDeviceAccessRuleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteMobileDeviceAccessRuleRequest.add_member(:mobile_device_access_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleId, location_name: 'MobileDeviceAccessRuleId', traits: {"smithy.api#required" => {}}))
    DeleteMobileDeviceAccessRuleRequest.type = Types::DeleteMobileDeviceAccessRuleRequest
    DeleteMobileDeviceAccessRuleResponse.type = Types::DeleteMobileDeviceAccessRuleResponse
    DeleteOrganizationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteOrganizationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteOrganizationRequest.add_member(:delete_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteDirectory', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeleteOrganizationRequest.add_member(:force_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ForceDelete', traits: {"smithy.api#default" => false}))
    DeleteOrganizationRequest.add_member(:delete_identity_center_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteIdentityCenterApplication', traits: {"smithy.api#default" => false}))
    DeleteOrganizationRequest.type = Types::DeleteOrganizationRequest
    DeleteOrganizationResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId'))
    DeleteOrganizationResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    DeleteOrganizationResponse.type = Types::DeleteOrganizationResponse
    DeletePersonalAccessTokenRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeletePersonalAccessTokenRequest.add_member(:personal_access_token_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenId, location_name: 'PersonalAccessTokenId', traits: {"smithy.api#required" => {}}))
    DeletePersonalAccessTokenRequest.type = Types::DeletePersonalAccessTokenRequest
    DeletePersonalAccessTokenResponse.type = Types::DeletePersonalAccessTokenResponse
    DeleteResourceRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    DeleteResourceRequest.type = Types::DeleteResourceRequest
    DeleteResourceResponse.type = Types::DeleteResourceResponse
    DeleteRetentionPolicyRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteRetentionPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortString, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    DeleteRetentionPolicyRequest.type = Types::DeleteRetentionPolicyRequest
    DeleteRetentionPolicyResponse.type = Types::DeleteRetentionPolicyResponse
    DeleteUserRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.type = Types::DeleteUserResponse
    DeregisterFromWorkMailRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeregisterFromWorkMailRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    DeregisterFromWorkMailRequest.type = Types::DeregisterFromWorkMailRequest
    DeregisterFromWorkMailResponse.type = Types::DeregisterFromWorkMailResponse
    DeregisterMailDomainRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DeregisterMailDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailDomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DeregisterMailDomainRequest.type = Types::DeregisterMailDomainRequest
    DeregisterMailDomainResponse.type = Types::DeregisterMailDomainResponse
    DescribeEmailMonitoringConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeEmailMonitoringConfigurationRequest.type = Types::DescribeEmailMonitoringConfigurationRequest
    DescribeEmailMonitoringConfigurationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    DescribeEmailMonitoringConfigurationResponse.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'LogGroupArn'))
    DescribeEmailMonitoringConfigurationResponse.type = Types::DescribeEmailMonitoringConfigurationResponse
    DescribeEntityRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeEntityRequest.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email', traits: {"smithy.api#required" => {}}))
    DescribeEntityRequest.type = Types::DescribeEntityRequest
    DescribeEntityResponse.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'EntityId'))
    DescribeEntityResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    DescribeEntityResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'Type'))
    DescribeEntityResponse.type = Types::DescribeEntityResponse
    DescribeGroupRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GroupId', traits: {"smithy.api#required" => {}}))
    DescribeGroupRequest.type = Types::DescribeGroupRequest
    DescribeGroupResponse.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'GroupId'))
    DescribeGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name'))
    DescribeGroupResponse.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email'))
    DescribeGroupResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    DescribeGroupResponse.add_member(:enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EnabledDate'))
    DescribeGroupResponse.add_member(:disabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DisabledDate'))
    DescribeGroupResponse.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HiddenFromGlobalAddressList', traits: {"smithy.api#default" => false}))
    DescribeGroupResponse.type = Types::DescribeGroupResponse
    DescribeIdentityProviderConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderConfigurationRequest.type = Types::DescribeIdentityProviderConfigurationRequest
    DescribeIdentityProviderConfigurationResponse.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderAuthenticationMode, location_name: 'AuthenticationMode'))
    DescribeIdentityProviderConfigurationResponse.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfiguration, location_name: 'IdentityCenterConfiguration'))
    DescribeIdentityProviderConfigurationResponse.add_member(:personal_access_token_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenConfiguration, location_name: 'PersonalAccessTokenConfiguration'))
    DescribeIdentityProviderConfigurationResponse.type = Types::DescribeIdentityProviderConfigurationResponse
    DescribeInboundDmarcSettingsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeInboundDmarcSettingsRequest.type = Types::DescribeInboundDmarcSettingsRequest
    DescribeInboundDmarcSettingsResponse.add_member(:enforced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enforced', traits: {"smithy.api#default" => false}))
    DescribeInboundDmarcSettingsResponse.type = Types::DescribeInboundDmarcSettingsResponse
    DescribeMailboxExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportJobId, location_name: 'JobId', traits: {"smithy.api#required" => {}}))
    DescribeMailboxExportJobRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeMailboxExportJobRequest.type = Types::DescribeMailboxExportJobRequest
    DescribeMailboxExportJobResponse.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'EntityId'))
    DescribeMailboxExportJobResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    DescribeMailboxExportJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    DescribeMailboxExportJobResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    DescribeMailboxExportJobResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName'))
    DescribeMailboxExportJobResponse.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'S3Prefix'))
    DescribeMailboxExportJobResponse.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'S3Path'))
    DescribeMailboxExportJobResponse.add_member(:estimated_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'EstimatedProgress', traits: {"smithy.api#default" => 0}))
    DescribeMailboxExportJobResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportJobState, location_name: 'State'))
    DescribeMailboxExportJobResponse.add_member(:error_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportErrorInfo, location_name: 'ErrorInfo'))
    DescribeMailboxExportJobResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    DescribeMailboxExportJobResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    DescribeMailboxExportJobResponse.type = Types::DescribeMailboxExportJobResponse
    DescribeOrganizationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeOrganizationRequest.type = Types::DescribeOrganizationRequest
    DescribeOrganizationResponse.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId'))
    DescribeOrganizationResponse.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationName, location_name: 'Alias'))
    DescribeOrganizationResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    DescribeOrganizationResponse.add_member(:directory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DirectoryId'))
    DescribeOrganizationResponse.add_member(:directory_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DirectoryType'))
    DescribeOrganizationResponse.add_member(:default_mail_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultMailDomain'))
    DescribeOrganizationResponse.add_member(:completed_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletedDate'))
    DescribeOrganizationResponse.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    DescribeOrganizationResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ARN'))
    DescribeOrganizationResponse.add_member(:migration_admin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'MigrationAdmin'))
    DescribeOrganizationResponse.add_member(:interoperability_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InteroperabilityEnabled', traits: {"smithy.api#default" => false}))
    DescribeOrganizationResponse.type = Types::DescribeOrganizationResponse
    DescribeResourceRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    DescribeResourceRequest.type = Types::DescribeResourceRequest
    DescribeResourceResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId'))
    DescribeResourceResponse.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email'))
    DescribeResourceResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name'))
    DescribeResourceResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type'))
    DescribeResourceResponse.add_member(:booking_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BookingOptions, location_name: 'BookingOptions'))
    DescribeResourceResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    DescribeResourceResponse.add_member(:enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EnabledDate'))
    DescribeResourceResponse.add_member(:disabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DisabledDate'))
    DescribeResourceResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    DescribeResourceResponse.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HiddenFromGlobalAddressList', traits: {"smithy.api#default" => false}))
    DescribeResourceResponse.type = Types::DescribeResourceResponse
    DescribeUserRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    DescribeUserRequest.type = Types::DescribeUserRequest
    DescribeUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId'))
    DescribeUserResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'Name'))
    DescribeUserResponse.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email'))
    DescribeUserResponse.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'DisplayName'))
    DescribeUserResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    DescribeUserResponse.add_member(:user_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserRole, location_name: 'UserRole'))
    DescribeUserResponse.add_member(:enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EnabledDate'))
    DescribeUserResponse.add_member(:disabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DisabledDate'))
    DescribeUserResponse.add_member(:mailbox_provisioned_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MailboxProvisionedDate'))
    DescribeUserResponse.add_member(:mailbox_deprovisioned_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MailboxDeprovisionedDate'))
    DescribeUserResponse.add_member(:first_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'FirstName'))
    DescribeUserResponse.add_member(:last_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'LastName'))
    DescribeUserResponse.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HiddenFromGlobalAddressList', traits: {"smithy.api#default" => false}))
    DescribeUserResponse.add_member(:initials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Initials'))
    DescribeUserResponse.add_member(:telephone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Telephone'))
    DescribeUserResponse.add_member(:street, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Street'))
    DescribeUserResponse.add_member(:job_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'JobTitle'))
    DescribeUserResponse.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'City'))
    DescribeUserResponse.add_member(:company, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Company'))
    DescribeUserResponse.add_member(:zip_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'ZipCode'))
    DescribeUserResponse.add_member(:department, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Department'))
    DescribeUserResponse.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Country'))
    DescribeUserResponse.add_member(:office, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Office'))
    DescribeUserResponse.add_member(:identity_provider_user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderUserId, location_name: 'IdentityProviderUserId'))
    DescribeUserResponse.add_member(:identity_provider_identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderIdentityStoreId, location_name: 'IdentityProviderIdentityStoreId'))
    DescribeUserResponse.type = Types::DescribeUserResponse
    DeviceModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModel)
    DeviceOperatingSystemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystem)
    DeviceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType)
    DeviceUserAgentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgent)
    DirectoryInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DirectoryInUseException.type = Types::DirectoryInUseException
    DirectoryServiceAuthenticationFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DirectoryServiceAuthenticationFailedException.type = Types::DirectoryServiceAuthenticationFailedException
    DirectoryUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DirectoryUnavailableException.type = Types::DirectoryUnavailableException
    DisassociateDelegateFromResourceRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DisassociateDelegateFromResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    DisassociateDelegateFromResourceRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    DisassociateDelegateFromResourceRequest.type = Types::DisassociateDelegateFromResourceRequest
    DisassociateDelegateFromResourceResponse.type = Types::DisassociateDelegateFromResourceResponse
    DisassociateMemberFromGroupRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    DisassociateMemberFromGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GroupId', traits: {"smithy.api#required" => {}}))
    DisassociateMemberFromGroupRequest.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'MemberId', traits: {"smithy.api#required" => {}}))
    DisassociateMemberFromGroupRequest.type = Types::DisassociateMemberFromGroupRequest
    DisassociateMemberFromGroupResponse.type = Types::DisassociateMemberFromGroupResponse
    DnsRecord.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    DnsRecord.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname'))
    DnsRecord.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    DnsRecord.type = Types::DnsRecord
    DnsRecordVerificationStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DnsRecordVerificationStatus.add_member(:verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFIED', traits: {"smithy.api#enumValue" => "VERIFIED"}))
    DnsRecordVerificationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DnsRecords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRecord)
    Domain.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    Domain.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostedZoneId, location_name: 'HostedZoneId'))
    Domain.type = Types::Domain
    Domains.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain)
    EmailAddressInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EmailAddressInUseException.type = Types::EmailAddressInUseException
    EntityAlreadyRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EntityAlreadyRegisteredException.type = Types::EntityAlreadyRegisteredException
    EntityNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EntityNotFoundException.type = Types::EntityNotFoundException
    EntityState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EntityState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EntityState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    EntityStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    EntityStateException.type = Types::EntityStateException
    EntityType.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    EntityType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    EntityType.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    EwsAvailabilityProvider.add_member(:ews_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'EwsEndpoint', traits: {"smithy.api#required" => {}}))
    EwsAvailabilityProvider.add_member(:ews_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserName, location_name: 'EwsUsername', traits: {"smithy.api#required" => {}}))
    EwsAvailabilityProvider.add_member(:ews_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'EwsPassword', traits: {"smithy.api#required" => {}}))
    EwsAvailabilityProvider.type = Types::EwsAvailabilityProvider
    FolderConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    FolderConfiguration.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionAction, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    FolderConfiguration.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'Period'))
    FolderConfiguration.type = Types::FolderConfiguration
    FolderConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderConfiguration)
    FolderName.add_member(:inbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INBOX', traits: {"smithy.api#enumValue" => "INBOX"}))
    FolderName.add_member(:deleted_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED_ITEMS', traits: {"smithy.api#enumValue" => "DELETED_ITEMS"}))
    FolderName.add_member(:sent_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENT_ITEMS', traits: {"smithy.api#enumValue" => "SENT_ITEMS"}))
    FolderName.add_member(:drafts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFTS', traits: {"smithy.api#enumValue" => "DRAFTS"}))
    FolderName.add_member(:junk_email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JUNK_EMAIL', traits: {"smithy.api#enumValue" => "JUNK_EMAIL"}))
    GetAccessControlEffectRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetAccessControlEffectRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#required" => {}}))
    GetAccessControlEffectRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleAction, location_name: 'Action', traits: {"smithy.api#required" => {}}))
    GetAccessControlEffectRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId'))
    GetAccessControlEffectRequest.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId'))
    GetAccessControlEffectRequest.type = Types::GetAccessControlEffectRequest
    GetAccessControlEffectResponse.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleEffect, location_name: 'Effect'))
    GetAccessControlEffectResponse.add_member(:matched_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleNameList, location_name: 'MatchedRules'))
    GetAccessControlEffectResponse.type = Types::GetAccessControlEffectResponse
    GetDefaultRetentionPolicyRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetDefaultRetentionPolicyRequest.type = Types::GetDefaultRetentionPolicyRequest
    GetDefaultRetentionPolicyResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortString, location_name: 'Id'))
    GetDefaultRetentionPolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortString, location_name: 'Name'))
    GetDefaultRetentionPolicyResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    GetDefaultRetentionPolicyResponse.add_member(:folder_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderConfigurations, location_name: 'FolderConfigurations'))
    GetDefaultRetentionPolicyResponse.type = Types::GetDefaultRetentionPolicyResponse
    GetImpersonationRoleEffectRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetImpersonationRoleEffectRequest.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId', traits: {"smithy.api#required" => {}}))
    GetImpersonationRoleEffectRequest.add_member(:target_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'TargetUser', traits: {"smithy.api#required" => {}}))
    GetImpersonationRoleEffectRequest.type = Types::GetImpersonationRoleEffectRequest
    GetImpersonationRoleEffectResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleType, location_name: 'Type'))
    GetImpersonationRoleEffectResponse.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEffect, location_name: 'Effect'))
    GetImpersonationRoleEffectResponse.add_member(:matched_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationMatchedRuleList, location_name: 'MatchedRules'))
    GetImpersonationRoleEffectResponse.type = Types::GetImpersonationRoleEffectResponse
    GetImpersonationRoleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetImpersonationRoleRequest.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId', traits: {"smithy.api#required" => {}}))
    GetImpersonationRoleRequest.type = Types::GetImpersonationRoleRequest
    GetImpersonationRoleResponse.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId'))
    GetImpersonationRoleResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleName, location_name: 'Name'))
    GetImpersonationRoleResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleType, location_name: 'Type'))
    GetImpersonationRoleResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleDescription, location_name: 'Description'))
    GetImpersonationRoleResponse.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleList, location_name: 'Rules'))
    GetImpersonationRoleResponse.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    GetImpersonationRoleResponse.add_member(:date_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateModified'))
    GetImpersonationRoleResponse.type = Types::GetImpersonationRoleResponse
    GetMailDomainRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetMailDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailDomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    GetMailDomainRequest.type = Types::GetMailDomainRequest
    GetMailDomainResponse.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRecords, location_name: 'Records'))
    GetMailDomainResponse.add_member(:is_test_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsTestDomain', traits: {"smithy.api#default" => false}))
    GetMailDomainResponse.add_member(:is_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefault', traits: {"smithy.api#default" => false}))
    GetMailDomainResponse.add_member(:ownership_verification_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRecordVerificationStatus, location_name: 'OwnershipVerificationStatus'))
    GetMailDomainResponse.add_member(:dkim_verification_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRecordVerificationStatus, location_name: 'DkimVerificationStatus'))
    GetMailDomainResponse.type = Types::GetMailDomainResponse
    GetMailboxDetailsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetMailboxDetailsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    GetMailboxDetailsRequest.type = Types::GetMailboxDetailsRequest
    GetMailboxDetailsResponse.add_member(:mailbox_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxQuota, location_name: 'MailboxQuota'))
    GetMailboxDetailsResponse.add_member(:mailbox_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxSize, location_name: 'MailboxSize', traits: {"smithy.api#default" => 0}))
    GetMailboxDetailsResponse.type = Types::GetMailboxDetailsResponse
    GetMobileDeviceAccessEffectRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetMobileDeviceAccessEffectRequest.add_member(:device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType, location_name: 'DeviceType'))
    GetMobileDeviceAccessEffectRequest.add_member(:device_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModel, location_name: 'DeviceModel'))
    GetMobileDeviceAccessEffectRequest.add_member(:device_operating_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystem, location_name: 'DeviceOperatingSystem'))
    GetMobileDeviceAccessEffectRequest.add_member(:device_user_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgent, location_name: 'DeviceUserAgent'))
    GetMobileDeviceAccessEffectRequest.type = Types::GetMobileDeviceAccessEffectRequest
    GetMobileDeviceAccessEffectResponse.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleEffect, location_name: 'Effect'))
    GetMobileDeviceAccessEffectResponse.add_member(:matched_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessMatchedRuleList, location_name: 'MatchedRules'))
    GetMobileDeviceAccessEffectResponse.type = Types::GetMobileDeviceAccessEffectResponse
    GetMobileDeviceAccessOverrideRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetMobileDeviceAccessOverrideRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    GetMobileDeviceAccessOverrideRequest.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    GetMobileDeviceAccessOverrideRequest.type = Types::GetMobileDeviceAccessOverrideRequest
    GetMobileDeviceAccessOverrideResponse.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId'))
    GetMobileDeviceAccessOverrideResponse.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId'))
    GetMobileDeviceAccessOverrideResponse.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleEffect, location_name: 'Effect'))
    GetMobileDeviceAccessOverrideResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleDescription, location_name: 'Description'))
    GetMobileDeviceAccessOverrideResponse.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    GetMobileDeviceAccessOverrideResponse.add_member(:date_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateModified'))
    GetMobileDeviceAccessOverrideResponse.type = Types::GetMobileDeviceAccessOverrideResponse
    GetPersonalAccessTokenMetadataRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    GetPersonalAccessTokenMetadataRequest.add_member(:personal_access_token_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenId, location_name: 'PersonalAccessTokenId', traits: {"smithy.api#required" => {}}))
    GetPersonalAccessTokenMetadataRequest.type = Types::GetPersonalAccessTokenMetadataRequest
    GetPersonalAccessTokenMetadataResponse.add_member(:personal_access_token_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenId, location_name: 'PersonalAccessTokenId'))
    GetPersonalAccessTokenMetadataResponse.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId'))
    GetPersonalAccessTokenMetadataResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenName, location_name: 'Name'))
    GetPersonalAccessTokenMetadataResponse.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    GetPersonalAccessTokenMetadataResponse.add_member(:date_last_used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateLastUsed'))
    GetPersonalAccessTokenMetadataResponse.add_member(:expires_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpiresTime'))
    GetPersonalAccessTokenMetadataResponse.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenScopeList, location_name: 'Scopes'))
    GetPersonalAccessTokenMetadataResponse.type = Types::GetPersonalAccessTokenMetadataResponse
    Group.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'Id'))
    Group.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email'))
    Group.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name'))
    Group.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    Group.add_member(:enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EnabledDate'))
    Group.add_member(:disabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DisabledDate'))
    Group.type = Types::Group
    GroupIdentifier.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'GroupId'))
    GroupIdentifier.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    GroupIdentifier.type = Types::GroupIdentifier
    GroupIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier)
    Groups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group)
    IdentityCenterConfiguration.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'InstanceArn', traits: {"smithy.api#required" => {}}))
    IdentityCenterConfiguration.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn', traits: {"smithy.api#required" => {}}))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    IdentityProviderAuthenticationMode.add_member(:identity_provider_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTITY_PROVIDER_ONLY', traits: {"smithy.api#enumValue" => "IDENTITY_PROVIDER_ONLY"}))
    IdentityProviderAuthenticationMode.add_member(:identity_provider_and_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTITY_PROVIDER_AND_DIRECTORY', traits: {"smithy.api#enumValue" => "IDENTITY_PROVIDER_AND_DIRECTORY"}))
    ImpersonationMatchedRule.add_member(:impersonation_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleId, location_name: 'ImpersonationRuleId'))
    ImpersonationMatchedRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleName, location_name: 'Name'))
    ImpersonationMatchedRule.type = Types::ImpersonationMatchedRule
    ImpersonationMatchedRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationMatchedRule)
    ImpersonationRole.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId'))
    ImpersonationRole.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleName, location_name: 'Name'))
    ImpersonationRole.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleType, location_name: 'Type'))
    ImpersonationRole.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    ImpersonationRole.add_member(:date_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateModified'))
    ImpersonationRole.type = Types::ImpersonationRole
    ImpersonationRoleIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId)
    ImpersonationRoleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRole)
    ImpersonationRoleType.add_member(:full_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_ACCESS', traits: {"smithy.api#enumValue" => "FULL_ACCESS"}))
    ImpersonationRoleType.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ONLY', traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    ImpersonationRule.add_member(:impersonation_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleId, location_name: 'ImpersonationRuleId', traits: {"smithy.api#required" => {}}))
    ImpersonationRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleName, location_name: 'Name'))
    ImpersonationRule.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleDescription, location_name: 'Description'))
    ImpersonationRule.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEffect, location_name: 'Effect', traits: {"smithy.api#required" => {}}))
    ImpersonationRule.add_member(:target_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetUsers, location_name: 'TargetUsers'))
    ImpersonationRule.add_member(:not_target_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetUsers, location_name: 'NotTargetUsers'))
    ImpersonationRule.type = Types::ImpersonationRule
    ImpersonationRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRule)
    InvalidConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidConfigurationException.type = Types::InvalidConfigurationException
    InvalidCustomSesConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidCustomSesConfigurationException.type = Types::InvalidCustomSesConfigurationException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPasswordException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidPasswordException.type = Types::InvalidPasswordException
    IpRangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpRange)
    Jobs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportJob)
    LambdaAvailabilityProvider.add_member(:lambda_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'LambdaArn', traits: {"smithy.api#required" => {}}))
    LambdaAvailabilityProvider.type = Types::LambdaAvailabilityProvider
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAccessControlRulesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListAccessControlRulesRequest.type = Types::ListAccessControlRulesRequest
    ListAccessControlRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRulesList, location_name: 'Rules'))
    ListAccessControlRulesResponse.type = Types::ListAccessControlRulesResponse
    ListAliasesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListAliasesRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    ListAliasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAliasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAliasesRequest.type = Types::ListAliasesRequest
    ListAliasesResponse.add_member(:aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Aliases, location_name: 'Aliases'))
    ListAliasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAliasesResponse.type = Types::ListAliasesResponse
    ListAvailabilityConfigurationsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListAvailabilityConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAvailabilityConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAvailabilityConfigurationsRequest.type = Types::ListAvailabilityConfigurationsRequest
    ListAvailabilityConfigurationsResponse.add_member(:availability_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityConfigurationList, location_name: 'AvailabilityConfigurations'))
    ListAvailabilityConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAvailabilityConfigurationsResponse.type = Types::ListAvailabilityConfigurationsResponse
    ListGroupMembersRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListGroupMembersRequest.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GroupId', traits: {"smithy.api#required" => {}}))
    ListGroupMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListGroupMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListGroupMembersRequest.type = Types::ListGroupMembersRequest
    ListGroupMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Members, location_name: 'Members'))
    ListGroupMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListGroupMembersResponse.type = Types::ListGroupMembersResponse
    ListGroupsFilters.add_member(:name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamePrefix'))
    ListGroupsFilters.add_member(:primary_email_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryEmailPrefix'))
    ListGroupsFilters.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    ListGroupsFilters.type = Types::ListGroupsFilters
    ListGroupsForEntityFilters.add_member(:group_name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GroupNamePrefix'))
    ListGroupsForEntityFilters.type = Types::ListGroupsForEntityFilters
    ListGroupsForEntityRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListGroupsForEntityRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    ListGroupsForEntityRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsForEntityFilters, location_name: 'Filters'))
    ListGroupsForEntityRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListGroupsForEntityRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListGroupsForEntityRequest.type = Types::ListGroupsForEntityRequest
    ListGroupsForEntityResponse.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifiers, location_name: 'Groups'))
    ListGroupsForEntityResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListGroupsForEntityResponse.type = Types::ListGroupsForEntityResponse
    ListGroupsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListGroupsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsFilters, location_name: 'Filters'))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Groups, location_name: 'Groups'))
    ListGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListImpersonationRolesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListImpersonationRolesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListImpersonationRolesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListImpersonationRolesRequest.type = Types::ListImpersonationRolesRequest
    ListImpersonationRolesResponse.add_member(:roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleList, location_name: 'Roles'))
    ListImpersonationRolesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListImpersonationRolesResponse.type = Types::ListImpersonationRolesResponse
    ListMailDomainsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListMailDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListMailDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMailDomainsRequest.type = Types::ListMailDomainsRequest
    ListMailDomainsResponse.add_member(:mail_domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomains, location_name: 'MailDomains'))
    ListMailDomainsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMailDomainsResponse.type = Types::ListMailDomainsResponse
    ListMailboxExportJobsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListMailboxExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMailboxExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListMailboxExportJobsRequest.type = Types::ListMailboxExportJobsRequest
    ListMailboxExportJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Jobs, location_name: 'Jobs'))
    ListMailboxExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMailboxExportJobsResponse.type = Types::ListMailboxExportJobsResponse
    ListMailboxPermissionsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListMailboxPermissionsRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    ListMailboxPermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMailboxPermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListMailboxPermissionsRequest.type = Types::ListMailboxPermissionsRequest
    ListMailboxPermissionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'Permissions'))
    ListMailboxPermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMailboxPermissionsResponse.type = Types::ListMailboxPermissionsResponse
    ListMobileDeviceAccessOverridesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListMobileDeviceAccessOverridesRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId'))
    ListMobileDeviceAccessOverridesRequest.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId'))
    ListMobileDeviceAccessOverridesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMobileDeviceAccessOverridesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListMobileDeviceAccessOverridesRequest.type = Types::ListMobileDeviceAccessOverridesRequest
    ListMobileDeviceAccessOverridesResponse.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessOverridesList, location_name: 'Overrides'))
    ListMobileDeviceAccessOverridesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListMobileDeviceAccessOverridesResponse.type = Types::ListMobileDeviceAccessOverridesResponse
    ListMobileDeviceAccessRulesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListMobileDeviceAccessRulesRequest.type = Types::ListMobileDeviceAccessRulesRequest
    ListMobileDeviceAccessRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRulesList, location_name: 'Rules'))
    ListMobileDeviceAccessRulesResponse.type = Types::ListMobileDeviceAccessRulesResponse
    ListOrganizationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListOrganizationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListOrganizationsRequest.type = Types::ListOrganizationsRequest
    ListOrganizationsResponse.add_member(:organization_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationSummaries, location_name: 'OrganizationSummaries'))
    ListOrganizationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListOrganizationsResponse.type = Types::ListOrganizationsResponse
    ListPersonalAccessTokensRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListPersonalAccessTokensRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId'))
    ListPersonalAccessTokensRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPersonalAccessTokensRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListPersonalAccessTokensRequest.type = Types::ListPersonalAccessTokensRequest
    ListPersonalAccessTokensResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPersonalAccessTokensResponse.add_member(:personal_access_token_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenSummaryList, location_name: 'PersonalAccessTokenSummaries'))
    ListPersonalAccessTokensResponse.type = Types::ListPersonalAccessTokensResponse
    ListResourceDelegatesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListResourceDelegatesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    ListResourceDelegatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListResourceDelegatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListResourceDelegatesRequest.type = Types::ListResourceDelegatesRequest
    ListResourceDelegatesResponse.add_member(:delegates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDelegates, location_name: 'Delegates'))
    ListResourceDelegatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListResourceDelegatesResponse.type = Types::ListResourceDelegatesResponse
    ListResourcesFilters.add_member(:name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamePrefix'))
    ListResourcesFilters.add_member(:primary_email_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryEmailPrefix'))
    ListResourcesFilters.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    ListResourcesFilters.type = Types::ListResourcesFilters
    ListResourcesRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListResourcesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesFilters, location_name: 'Filters'))
    ListResourcesRequest.type = Types::ListResourcesRequest
    ListResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'Resources'))
    ListResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListResourcesResponse.type = Types::ListResourcesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUsersFilters.add_member(:username_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsernamePrefix'))
    ListUsersFilters.add_member(:display_name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'DisplayNamePrefix'))
    ListUsersFilters.add_member(:primary_email_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryEmailPrefix'))
    ListUsersFilters.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    ListUsersFilters.add_member(:identity_provider_user_id_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderUserIdPrefix, location_name: 'IdentityProviderUserIdPrefix'))
    ListUsersFilters.type = Types::ListUsersFilters
    ListUsersRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListUsersRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersFilters, location_name: 'Filters'))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Users, location_name: 'Users'))
    ListUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListUsersResponse.type = Types::ListUsersResponse
    MailDomainInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MailDomainInUseException.type = Types::MailDomainInUseException
    MailDomainNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MailDomainNotFoundException.type = Types::MailDomainNotFoundException
    MailDomainStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    MailDomainStateException.type = Types::MailDomainStateException
    MailDomainSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName'))
    MailDomainSummary.add_member(:default_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultDomain', traits: {"smithy.api#default" => false}))
    MailDomainSummary.type = Types::MailDomainSummary
    MailDomains.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainSummary)
    MailboxExportJob.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportJobId, location_name: 'JobId'))
    MailboxExportJob.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'EntityId'))
    MailboxExportJob.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    MailboxExportJob.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName'))
    MailboxExportJob.add_member(:s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'S3Path'))
    MailboxExportJob.add_member(:estimated_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'EstimatedProgress', traits: {"smithy.api#default" => 0}))
    MailboxExportJob.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportJobState, location_name: 'State'))
    MailboxExportJob.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime'))
    MailboxExportJob.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime'))
    MailboxExportJob.type = Types::MailboxExportJob
    MailboxExportJobState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    MailboxExportJobState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MailboxExportJobState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MailboxExportJobState.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    Member.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    Member.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Member.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberType, location_name: 'Type'))
    Member.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    Member.add_member(:enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EnabledDate'))
    Member.add_member(:disabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DisabledDate'))
    Member.type = Types::Member
    MemberType.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    MemberType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    Members.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Member)
    MobileDeviceAccessMatchedRule.add_member(:mobile_device_access_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleId, location_name: 'MobileDeviceAccessRuleId'))
    MobileDeviceAccessMatchedRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleName, location_name: 'Name'))
    MobileDeviceAccessMatchedRule.type = Types::MobileDeviceAccessMatchedRule
    MobileDeviceAccessMatchedRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessMatchedRule)
    MobileDeviceAccessOverride.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId'))
    MobileDeviceAccessOverride.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId'))
    MobileDeviceAccessOverride.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleEffect, location_name: 'Effect'))
    MobileDeviceAccessOverride.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleDescription, location_name: 'Description'))
    MobileDeviceAccessOverride.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    MobileDeviceAccessOverride.add_member(:date_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateModified'))
    MobileDeviceAccessOverride.type = Types::MobileDeviceAccessOverride
    MobileDeviceAccessOverridesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessOverride)
    MobileDeviceAccessRule.add_member(:mobile_device_access_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleId, location_name: 'MobileDeviceAccessRuleId'))
    MobileDeviceAccessRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleName, location_name: 'Name'))
    MobileDeviceAccessRule.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleDescription, location_name: 'Description'))
    MobileDeviceAccessRule.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleEffect, location_name: 'Effect'))
    MobileDeviceAccessRule.add_member(:device_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceTypeList, location_name: 'DeviceTypes'))
    MobileDeviceAccessRule.add_member(:not_device_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceTypeList, location_name: 'NotDeviceTypes'))
    MobileDeviceAccessRule.add_member(:device_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModelList, location_name: 'DeviceModels'))
    MobileDeviceAccessRule.add_member(:not_device_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModelList, location_name: 'NotDeviceModels'))
    MobileDeviceAccessRule.add_member(:device_operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystemList, location_name: 'DeviceOperatingSystems'))
    MobileDeviceAccessRule.add_member(:not_device_operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystemList, location_name: 'NotDeviceOperatingSystems'))
    MobileDeviceAccessRule.add_member(:device_user_agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgentList, location_name: 'DeviceUserAgents'))
    MobileDeviceAccessRule.add_member(:not_device_user_agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgentList, location_name: 'NotDeviceUserAgents'))
    MobileDeviceAccessRule.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    MobileDeviceAccessRule.add_member(:date_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateModified'))
    MobileDeviceAccessRule.type = Types::MobileDeviceAccessRule
    MobileDeviceAccessRuleEffect.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    MobileDeviceAccessRuleEffect.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    MobileDeviceAccessRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRule)
    NameAvailabilityException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NameAvailabilityException.type = Types::NameAvailabilityException
    OrganizationNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    OrganizationNotFoundException.type = Types::OrganizationNotFoundException
    OrganizationStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    OrganizationStateException.type = Types::OrganizationStateException
    OrganizationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationSummary)
    OrganizationSummary.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId'))
    OrganizationSummary.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationName, location_name: 'Alias'))
    OrganizationSummary.add_member(:default_mail_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DefaultMailDomain'))
    OrganizationSummary.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    OrganizationSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    OrganizationSummary.type = Types::OrganizationSummary
    Permission.add_member(:grantee_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'GranteeId', traits: {"smithy.api#required" => {}}))
    Permission.add_member(:grantee_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberType, location_name: 'GranteeType', traits: {"smithy.api#required" => {}}))
    Permission.add_member(:permission_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionValues, location_name: 'PermissionValues', traits: {"smithy.api#required" => {}}))
    Permission.type = Types::Permission
    PermissionType.add_member(:full_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_ACCESS', traits: {"smithy.api#enumValue" => "FULL_ACCESS"}))
    PermissionType.add_member(:send_as, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND_AS', traits: {"smithy.api#enumValue" => "SEND_AS"}))
    PermissionType.add_member(:send_on_behalf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND_ON_BEHALF', traits: {"smithy.api#enumValue" => "SEND_ON_BEHALF"}))
    PermissionValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType)
    Permissions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    PersonalAccessTokenConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenConfigurationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    PersonalAccessTokenConfiguration.add_member(:lifetime_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenLifetimeInDays, location_name: 'LifetimeInDays'))
    PersonalAccessTokenConfiguration.type = Types::PersonalAccessTokenConfiguration
    PersonalAccessTokenConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PersonalAccessTokenConfigurationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    PersonalAccessTokenScopeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenScope)
    PersonalAccessTokenSummary.add_member(:personal_access_token_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenId, location_name: 'PersonalAccessTokenId'))
    PersonalAccessTokenSummary.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId'))
    PersonalAccessTokenSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenName, location_name: 'Name'))
    PersonalAccessTokenSummary.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateCreated'))
    PersonalAccessTokenSummary.add_member(:date_last_used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DateLastUsed'))
    PersonalAccessTokenSummary.add_member(:expires_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpiresTime'))
    PersonalAccessTokenSummary.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenScopeList, location_name: 'Scopes'))
    PersonalAccessTokenSummary.type = Types::PersonalAccessTokenSummary
    PersonalAccessTokenSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenSummary)
    PutAccessControlRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    PutAccessControlRuleRequest.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleEffect, location_name: 'Effect', traits: {"smithy.api#required" => {}}))
    PutAccessControlRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlRuleDescription, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    PutAccessControlRuleRequest.add_member(:ip_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpRangeList, location_name: 'IpRanges'))
    PutAccessControlRuleRequest.add_member(:not_ip_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpRangeList, location_name: 'NotIpRanges'))
    PutAccessControlRuleRequest.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsList, location_name: 'Actions'))
    PutAccessControlRuleRequest.add_member(:not_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsList, location_name: 'NotActions'))
    PutAccessControlRuleRequest.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIds'))
    PutAccessControlRuleRequest.add_member(:not_user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'NotUserIds'))
    PutAccessControlRuleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    PutAccessControlRuleRequest.add_member(:impersonation_role_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleIdList, location_name: 'ImpersonationRoleIds'))
    PutAccessControlRuleRequest.add_member(:not_impersonation_role_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleIdList, location_name: 'NotImpersonationRoleIds'))
    PutAccessControlRuleRequest.type = Types::PutAccessControlRuleRequest
    PutAccessControlRuleResponse.type = Types::PutAccessControlRuleResponse
    PutEmailMonitoringConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    PutEmailMonitoringConfigurationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    PutEmailMonitoringConfigurationRequest.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'LogGroupArn', traits: {"smithy.api#required" => {}}))
    PutEmailMonitoringConfigurationRequest.type = Types::PutEmailMonitoringConfigurationRequest
    PutEmailMonitoringConfigurationResponse.type = Types::PutEmailMonitoringConfigurationResponse
    PutIdentityProviderConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    PutIdentityProviderConfigurationRequest.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderAuthenticationMode, location_name: 'AuthenticationMode', traits: {"smithy.api#required" => {}}))
    PutIdentityProviderConfigurationRequest.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfiguration, location_name: 'IdentityCenterConfiguration', traits: {"smithy.api#required" => {}}))
    PutIdentityProviderConfigurationRequest.add_member(:personal_access_token_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalAccessTokenConfiguration, location_name: 'PersonalAccessTokenConfiguration', traits: {"smithy.api#required" => {}}))
    PutIdentityProviderConfigurationRequest.type = Types::PutIdentityProviderConfigurationRequest
    PutIdentityProviderConfigurationResponse.type = Types::PutIdentityProviderConfigurationResponse
    PutInboundDmarcSettingsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    PutInboundDmarcSettingsRequest.add_member(:enforced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'Enforced', traits: {"smithy.api#required" => {}}))
    PutInboundDmarcSettingsRequest.type = Types::PutInboundDmarcSettingsRequest
    PutInboundDmarcSettingsResponse.type = Types::PutInboundDmarcSettingsResponse
    PutMailboxPermissionsRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    PutMailboxPermissionsRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    PutMailboxPermissionsRequest.add_member(:grantee_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GranteeId', traits: {"smithy.api#required" => {}}))
    PutMailboxPermissionsRequest.add_member(:permission_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionValues, location_name: 'PermissionValues', traits: {"smithy.api#required" => {}}))
    PutMailboxPermissionsRequest.type = Types::PutMailboxPermissionsRequest
    PutMailboxPermissionsResponse.type = Types::PutMailboxPermissionsResponse
    PutMobileDeviceAccessOverrideRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    PutMobileDeviceAccessOverrideRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    PutMobileDeviceAccessOverrideRequest.add_member(:device_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#required" => {}}))
    PutMobileDeviceAccessOverrideRequest.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleEffect, location_name: 'Effect', traits: {"smithy.api#required" => {}}))
    PutMobileDeviceAccessOverrideRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleDescription, location_name: 'Description'))
    PutMobileDeviceAccessOverrideRequest.type = Types::PutMobileDeviceAccessOverrideRequest
    PutMobileDeviceAccessOverrideResponse.type = Types::PutMobileDeviceAccessOverrideResponse
    PutRetentionPolicyRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    PutRetentionPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortString, location_name: 'Id'))
    PutRetentionPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    PutRetentionPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDescription, location_name: 'Description'))
    PutRetentionPolicyRequest.add_member(:folder_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FolderConfigurations, location_name: 'FolderConfigurations', traits: {"smithy.api#required" => {}}))
    PutRetentionPolicyRequest.type = Types::PutRetentionPolicyRequest
    PutRetentionPolicyResponse.type = Types::PutRetentionPolicyResponse
    RedactedEwsAvailabilityProvider.add_member(:ews_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'EwsEndpoint'))
    RedactedEwsAvailabilityProvider.add_member(:ews_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserName, location_name: 'EwsUsername'))
    RedactedEwsAvailabilityProvider.type = Types::RedactedEwsAvailabilityProvider
    RegisterMailDomainRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    RegisterMailDomainRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    RegisterMailDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailDomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    RegisterMailDomainRequest.type = Types::RegisterMailDomainRequest
    RegisterMailDomainResponse.type = Types::RegisterMailDomainResponse
    RegisterToWorkMailRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    RegisterToWorkMailRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    RegisterToWorkMailRequest.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email', traits: {"smithy.api#required" => {}}))
    RegisterToWorkMailRequest.type = Types::RegisterToWorkMailRequest
    RegisterToWorkMailResponse.type = Types::RegisterToWorkMailResponse
    ReservedNameException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ReservedNameException.type = Types::ReservedNameException
    ResetPasswordRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    ResetPasswordRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    ResetPasswordRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password', traits: {"smithy.api#required" => {}}))
    ResetPasswordRequest.type = Types::ResetPasswordRequest
    ResetPasswordResponse.type = Types::ResetPasswordResponse
    Resource.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'Id'))
    Resource.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email'))
    Resource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name'))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type'))
    Resource.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    Resource.add_member(:enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EnabledDate'))
    Resource.add_member(:disabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DisabledDate'))
    Resource.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'Description'))
    Resource.type = Types::Resource
    ResourceDelegates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Delegate)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:room, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOM', traits: {"smithy.api#enumValue" => "ROOM"}))
    ResourceType.add_member(:equipment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUIPMENT', traits: {"smithy.api#enumValue" => "EQUIPMENT"}))
    Resources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    RetentionAction.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    RetentionAction.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    RetentionAction.add_member(:permanently_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMANENTLY_DELETE', traits: {"smithy.api#enumValue" => "PERMANENTLY_DELETE"}))
    StartMailboxExportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartMailboxExportJobRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    StartMailboxExportJobRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    StartMailboxExportJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    StartMailboxExportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#required" => {}}))
    StartMailboxExportJobRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#required" => {}}))
    StartMailboxExportJobRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName', traits: {"smithy.api#required" => {}}))
    StartMailboxExportJobRequest.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'S3Prefix', traits: {"smithy.api#required" => {}}))
    StartMailboxExportJobRequest.type = Types::StartMailboxExportJobRequest
    StartMailboxExportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxExportJobId, location_name: 'JobId'))
    StartMailboxExportJobResponse.type = Types::StartMailboxExportJobResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetUsers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier)
    TestAvailabilityConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    TestAvailabilityConfigurationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName'))
    TestAvailabilityConfigurationRequest.add_member(:ews_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EwsAvailabilityProvider, location_name: 'EwsProvider'))
    TestAvailabilityConfigurationRequest.add_member(:lambda_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAvailabilityProvider, location_name: 'LambdaProvider'))
    TestAvailabilityConfigurationRequest.type = Types::TestAvailabilityConfigurationRequest
    TestAvailabilityConfigurationResponse.add_member(:test_passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'TestPassed', traits: {"smithy.api#default" => false}))
    TestAvailabilityConfigurationResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureReason'))
    TestAvailabilityConfigurationResponse.type = Types::TestAvailabilityConfigurationResponse
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAvailabilityConfigurationRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateAvailabilityConfigurationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    UpdateAvailabilityConfigurationRequest.add_member(:ews_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EwsAvailabilityProvider, location_name: 'EwsProvider'))
    UpdateAvailabilityConfigurationRequest.add_member(:lambda_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaAvailabilityProvider, location_name: 'LambdaProvider'))
    UpdateAvailabilityConfigurationRequest.type = Types::UpdateAvailabilityConfigurationRequest
    UpdateAvailabilityConfigurationResponse.type = Types::UpdateAvailabilityConfigurationResponse
    UpdateDefaultMailDomainRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateDefaultMailDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailDomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    UpdateDefaultMailDomainRequest.type = Types::UpdateDefaultMailDomainRequest
    UpdateDefaultMailDomainResponse.type = Types::UpdateDefaultMailDomainResponse
    UpdateGroupRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'GroupId', traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'HiddenFromGlobalAddressList'))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResponse.type = Types::UpdateGroupResponse
    UpdateImpersonationRoleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateImpersonationRoleRequest.add_member(:impersonation_role_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleId, location_name: 'ImpersonationRoleId', traits: {"smithy.api#required" => {}}))
    UpdateImpersonationRoleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateImpersonationRoleRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    UpdateImpersonationRoleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRoleDescription, location_name: 'Description'))
    UpdateImpersonationRoleRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpersonationRuleList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    UpdateImpersonationRoleRequest.type = Types::UpdateImpersonationRoleRequest
    UpdateImpersonationRoleResponse.type = Types::UpdateImpersonationRoleResponse
    UpdateMailboxQuotaRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateMailboxQuotaRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    UpdateMailboxQuotaRequest.add_member(:mailbox_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailboxQuota, location_name: 'MailboxQuota', traits: {"smithy.api#required" => {}}))
    UpdateMailboxQuotaRequest.type = Types::UpdateMailboxQuotaRequest
    UpdateMailboxQuotaResponse.type = Types::UpdateMailboxQuotaResponse
    UpdateMobileDeviceAccessRuleRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateMobileDeviceAccessRuleRequest.add_member(:mobile_device_access_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleId, location_name: 'MobileDeviceAccessRuleId', traits: {"smithy.api#required" => {}}))
    UpdateMobileDeviceAccessRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateMobileDeviceAccessRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleDescription, location_name: 'Description'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceAccessRuleEffect, location_name: 'Effect', traits: {"smithy.api#required" => {}}))
    UpdateMobileDeviceAccessRuleRequest.add_member(:device_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceTypeList, location_name: 'DeviceTypes'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:not_device_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceTypeList, location_name: 'NotDeviceTypes'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:device_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModelList, location_name: 'DeviceModels'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:not_device_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceModelList, location_name: 'NotDeviceModels'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:device_operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystemList, location_name: 'DeviceOperatingSystems'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:not_device_operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceOperatingSystemList, location_name: 'NotDeviceOperatingSystems'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:device_user_agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgentList, location_name: 'DeviceUserAgents'))
    UpdateMobileDeviceAccessRuleRequest.add_member(:not_device_user_agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUserAgentList, location_name: 'NotDeviceUserAgents'))
    UpdateMobileDeviceAccessRuleRequest.type = Types::UpdateMobileDeviceAccessRuleRequest
    UpdateMobileDeviceAccessRuleResponse.type = Types::UpdateMobileDeviceAccessRuleResponse
    UpdatePrimaryEmailAddressRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdatePrimaryEmailAddressRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'EntityId', traits: {"smithy.api#required" => {}}))
    UpdatePrimaryEmailAddressRequest.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email', traits: {"smithy.api#required" => {}}))
    UpdatePrimaryEmailAddressRequest.type = Types::UpdatePrimaryEmailAddressRequest
    UpdatePrimaryEmailAddressResponse.type = Types::UpdatePrimaryEmailAddressResponse
    UpdateResourceRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    UpdateResourceRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name'))
    UpdateResourceRequest.add_member(:booking_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BookingOptions, location_name: 'BookingOptions'))
    UpdateResourceRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewResourceDescription, location_name: 'Description'))
    UpdateResourceRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type'))
    UpdateResourceRequest.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'HiddenFromGlobalAddressList'))
    UpdateResourceRequest.type = Types::UpdateResourceRequest
    UpdateResourceResponse.type = Types::UpdateResourceResponse
    UpdateUserRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationId, location_name: 'OrganizationId', traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: 'UserId', traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserRole, location_name: 'Role'))
    UpdateUserRequest.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'DisplayName'))
    UpdateUserRequest.add_member(:first_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'FirstName'))
    UpdateUserRequest.add_member(:last_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'LastName'))
    UpdateUserRequest.add_member(:hidden_from_global_address_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'HiddenFromGlobalAddressList'))
    UpdateUserRequest.add_member(:initials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Initials'))
    UpdateUserRequest.add_member(:telephone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Telephone'))
    UpdateUserRequest.add_member(:street, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Street'))
    UpdateUserRequest.add_member(:job_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'JobTitle'))
    UpdateUserRequest.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'City'))
    UpdateUserRequest.add_member(:company, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Company'))
    UpdateUserRequest.add_member(:zip_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'ZipCode'))
    UpdateUserRequest.add_member(:department, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Department'))
    UpdateUserRequest.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Country'))
    UpdateUserRequest.add_member(:office, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttribute, location_name: 'Office'))
    UpdateUserRequest.add_member(:identity_provider_user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderUserIdForUpdate, location_name: 'IdentityProviderUserId'))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: 'Id'))
    User.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'Email'))
    User.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'Name'))
    User.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName'))
    User.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityState, location_name: 'State'))
    User.add_member(:user_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserRole, location_name: 'UserRole'))
    User.add_member(:enabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EnabledDate'))
    User.add_member(:disabled_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DisabledDate'))
    User.add_member(:identity_provider_user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderUserId, location_name: 'IdentityProviderUserId'))
    User.add_member(:identity_provider_identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderIdentityStoreId, location_name: 'IdentityProviderIdentityStoreId'))
    User.type = Types::User
    UserIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkMailIdentifier)
    UserRole.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    UserRole.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    UserRole.add_member(:system_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM_USER', traits: {"smithy.api#enumValue" => "SYSTEM_USER"}))
    UserRole.add_member(:remote_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_USER', traits: {"smithy.api#enumValue" => "REMOTE_USER"}))
    Users.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: User)

    WorkMailService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workmail#WorkMailService"
      service.name = "WorkMailService"
      service.version = "2017-10-01"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkMail", "arnNamespace" => "workmail", "cloudFormationName" => "WorkMail", "cloudTrailEventSource" => "workmail.amazonaws.com", "endpointPrefix" => "workmail"}, "aws.auth#sigv4" => {"name" => "workmail"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon WorkMail"}
      service.add_operation(:associate_delegate_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#AssociateDelegateToResource"
        operation.name = "AssociateDelegateToResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDelegateToResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDelegateToResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_member_to_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#AssociateMemberToGroup"
        operation.name = "AssociateMemberToGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateMemberToGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:assume_impersonation_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#AssumeImpersonationRole"
        operation.name = "AssumeImpersonationRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeImpersonationRoleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeImpersonationRoleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_mailbox_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CancelMailboxExportJob"
        operation.name = "CancelMailboxExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMailboxExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMailboxExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_availability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateAvailabilityConfiguration"
        operation.name = "CreateAvailabilityConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAvailabilityConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAvailabilityConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameAvailabilityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameAvailabilityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_identity_center_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateIdentityCenterApplication"
        operation.name = "CreateIdentityCenterApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityCenterApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentityCenterApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_impersonation_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateImpersonationRole"
        operation.name = "CreateImpersonationRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImpersonationRoleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImpersonationRoleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:create_mobile_device_access_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateMobileDeviceAccessRule"
        operation.name = "CreateMobileDeviceAccessRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMobileDeviceAccessRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMobileDeviceAccessRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:create_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateOrganization"
        operation.name = "CreateOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameAvailabilityException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateResource"
        operation.name = "CreateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameAvailabilityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#CreateUser"
        operation.name = "CreateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameAvailabilityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNameException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_control_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteAccessControlRule"
        operation.name = "DeleteAccessControlRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessControlRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessControlRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:delete_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAliasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAliasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_availability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteAvailabilityConfiguration"
        operation.name = "DeleteAvailabilityConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAvailabilityConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAvailabilityConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_email_monitoring_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteEmailMonitoringConfiguration"
        operation.name = "DeleteEmailMonitoringConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailMonitoringConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailMonitoringConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_identity_center_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteIdentityCenterApplication"
        operation.name = "DeleteIdentityCenterApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityCenterApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityCenterApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_identity_provider_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteIdentityProviderConfiguration"
        operation.name = "DeleteIdentityProviderConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityProviderConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentityProviderConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_impersonation_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteImpersonationRole"
        operation.name = "DeleteImpersonationRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImpersonationRoleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImpersonationRoleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:delete_mailbox_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteMailboxPermissions"
        operation.name = "DeleteMailboxPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMailboxPermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMailboxPermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_mobile_device_access_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteMobileDeviceAccessOverride"
        operation.name = "DeleteMobileDeviceAccessOverride"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMobileDeviceAccessOverrideRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMobileDeviceAccessOverrideResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:delete_mobile_device_access_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteMobileDeviceAccessRule"
        operation.name = "DeleteMobileDeviceAccessRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMobileDeviceAccessRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMobileDeviceAccessRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:delete_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteOrganization"
        operation.name = "DeleteOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_personal_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeletePersonalAccessToken"
        operation.name = "DeletePersonalAccessToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePersonalAccessTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePersonalAccessTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteResource"
        operation.name = "DeleteResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_retention_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteRetentionPolicy"
        operation.name = "DeleteRetentionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRetentionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRetentionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_from_work_mail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeregisterFromWorkMail"
        operation.name = "DeregisterFromWorkMail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterFromWorkMailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterFromWorkMailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_mail_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DeregisterMailDomain"
        operation.name = "DeregisterMailDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterMailDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterMailDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCustomSesConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_email_monitoring_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeEmailMonitoringConfiguration"
        operation.name = "DescribeEmailMonitoringConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEmailMonitoringConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEmailMonitoringConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeEntity"
        operation.name = "DescribeEntity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeGroup"
        operation.name = "DescribeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_identity_provider_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeIdentityProviderConfiguration"
        operation.name = "DescribeIdentityProviderConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_inbound_dmarc_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeInboundDmarcSettings"
        operation.name = "DescribeInboundDmarcSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundDmarcSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundDmarcSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_mailbox_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeMailboxExportJob"
        operation.name = "DescribeMailboxExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMailboxExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMailboxExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeOrganization"
        operation.name = "DescribeOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeResource"
        operation.name = "DescribeResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DescribeUser"
        operation.name = "DescribeUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_delegate_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DisassociateDelegateFromResource"
        operation.name = "DisassociateDelegateFromResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDelegateFromResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDelegateFromResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_member_from_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#DisassociateMemberFromGroup"
        operation.name = "DisassociateMemberFromGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberFromGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_control_effect, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetAccessControlEffect"
        operation.name = "GetAccessControlEffect"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessControlEffectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessControlEffectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_default_retention_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetDefaultRetentionPolicy"
        operation.name = "GetDefaultRetentionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultRetentionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultRetentionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_impersonation_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetImpersonationRole"
        operation.name = "GetImpersonationRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImpersonationRoleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImpersonationRoleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_impersonation_role_effect, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetImpersonationRoleEffect"
        operation.name = "GetImpersonationRoleEffect"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImpersonationRoleEffectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImpersonationRoleEffectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_mail_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetMailDomain"
        operation.name = "GetMailDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMailDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMailDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_mailbox_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetMailboxDetails"
        operation.name = "GetMailboxDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMailboxDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMailboxDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_mobile_device_access_effect, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetMobileDeviceAccessEffect"
        operation.name = "GetMobileDeviceAccessEffect"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMobileDeviceAccessEffectRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMobileDeviceAccessEffectResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:get_mobile_device_access_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetMobileDeviceAccessOverride"
        operation.name = "GetMobileDeviceAccessOverride"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMobileDeviceAccessOverrideRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMobileDeviceAccessOverrideResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_personal_access_token_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#GetPersonalAccessTokenMetadata"
        operation.name = "GetPersonalAccessTokenMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonalAccessTokenMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersonalAccessTokenMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_access_control_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListAccessControlRules"
        operation.name = "ListAccessControlRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessControlRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessControlRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:list_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListAliases"
        operation.name = "ListAliases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_availability_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListAvailabilityConfigurations"
        operation.name = "ListAvailabilityConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailabilityConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailabilityConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAvailabilityConfigurations.new
      end)
      service.add_operation(:list_group_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListGroupMembers"
        operation.name = "ListGroupMembers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListGroupMembers.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListGroups"
        operation.name = "ListGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_groups_for_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListGroupsForEntity"
        operation.name = "ListGroupsForEntity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsForEntityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsForEntityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListGroupsForEntity.new
      end)
      service.add_operation(:list_impersonation_roles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListImpersonationRoles"
        operation.name = "ListImpersonationRoles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImpersonationRolesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImpersonationRolesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListImpersonationRoles.new
      end)
      service.add_operation(:list_mail_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListMailDomains"
        operation.name = "ListMailDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMailDomainsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMailDomainsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMailDomains.new
      end)
      service.add_operation(:list_mailbox_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListMailboxExportJobs"
        operation.name = "ListMailboxExportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMailboxExportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMailboxExportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMailboxExportJobs.new
      end)
      service.add_operation(:list_mailbox_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListMailboxPermissions"
        operation.name = "ListMailboxPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMailboxPermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMailboxPermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListMailboxPermissions.new
      end)
      service.add_operation(:list_mobile_device_access_overrides, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListMobileDeviceAccessOverrides"
        operation.name = "ListMobileDeviceAccessOverrides"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMobileDeviceAccessOverridesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMobileDeviceAccessOverridesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMobileDeviceAccessOverrides.new
      end)
      service.add_operation(:list_mobile_device_access_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListMobileDeviceAccessRules"
        operation.name = "ListMobileDeviceAccessRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMobileDeviceAccessRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMobileDeviceAccessRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:list_organizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListOrganizations"
        operation.name = "ListOrganizations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListOrganizations.new
      end)
      service.add_operation(:list_personal_access_tokens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListPersonalAccessTokens"
        operation.name = "ListPersonalAccessTokens"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPersonalAccessTokensRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPersonalAccessTokensResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListPersonalAccessTokens.new
      end)
      service.add_operation(:list_resource_delegates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListResourceDelegates"
        operation.name = "ListResourceDelegates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceDelegatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceDelegatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListResourceDelegates.new
      end)
      service.add_operation(:list_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListResources"
        operation.name = "ListResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ListUsers"
        operation.name = "ListUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:put_access_control_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#PutAccessControlRule"
        operation.name = "PutAccessControlRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessControlRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessControlRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_email_monitoring_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#PutEmailMonitoringConfiguration"
        operation.name = "PutEmailMonitoringConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailMonitoringConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailMonitoringConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_identity_provider_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#PutIdentityProviderConfiguration"
        operation.name = "PutIdentityProviderConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutIdentityProviderConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutIdentityProviderConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_inbound_dmarc_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#PutInboundDmarcSettings"
        operation.name = "PutInboundDmarcSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInboundDmarcSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutInboundDmarcSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_mailbox_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#PutMailboxPermissions"
        operation.name = "PutMailboxPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMailboxPermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMailboxPermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_mobile_device_access_override, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#PutMobileDeviceAccessOverride"
        operation.name = "PutMobileDeviceAccessOverride"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMobileDeviceAccessOverrideRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMobileDeviceAccessOverrideResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:put_retention_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#PutRetentionPolicy"
        operation.name = "PutRetentionPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRetentionPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRetentionPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_mail_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#RegisterMailDomain"
        operation.name = "RegisterMailDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterMailDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterMailDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_to_work_mail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#RegisterToWorkMail"
        operation.name = "RegisterToWorkMail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterToWorkMailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterToWorkMailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityAlreadyRegisteredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reset_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#ResetPassword"
        operation.name = "ResetPassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetPasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetPasswordResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPasswordException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_mailbox_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#StartMailboxExportJob"
        operation.name = "StartMailboxExportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMailboxExportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMailboxExportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:test_availability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#TestAvailabilityConfiguration"
        operation.name = "TestAvailabilityConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestAvailabilityConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestAvailabilityConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_availability_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateAvailabilityConfiguration"
        operation.name = "UpdateAvailabilityConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAvailabilityConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAvailabilityConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_default_mail_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateDefaultMailDomain"
        operation.name = "UpdateDefaultMailDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDefaultMailDomainRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDefaultMailDomainResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_impersonation_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateImpersonationRole"
        operation.name = "UpdateImpersonationRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImpersonationRoleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImpersonationRoleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_mailbox_quota, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateMailboxQuota"
        operation.name = "UpdateMailboxQuota"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMailboxQuotaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMailboxQuotaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_mobile_device_access_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateMobileDeviceAccessRule"
        operation.name = "UpdateMobileDeviceAccessRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMobileDeviceAccessRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMobileDeviceAccessRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.traits = {}
      end)
      service.add_operation(:update_primary_email_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdatePrimaryEmailAddress"
        operation.name = "UpdatePrimaryEmailAddress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePrimaryEmailAddressRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePrimaryEmailAddressResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateResource"
        operation.name = "UpdateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MailDomainStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameAvailabilityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workmail#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {"smithy.api#idempotent" => {}}
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

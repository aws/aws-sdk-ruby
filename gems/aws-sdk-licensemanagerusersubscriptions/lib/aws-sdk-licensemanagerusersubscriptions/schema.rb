# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerUserSubscriptions
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    ActiveDirectoryIdentityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ActiveDirectoryIdentityProvider", name: "ActiveDirectoryIdentityProvider")
    ActiveDirectorySettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ActiveDirectorySettings", name: "ActiveDirectorySettings")
    ActiveDirectoryType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ActiveDirectoryType", name: "ActiveDirectoryType", traits: {"smithy.api#enum" => [{"name" => "SELF_MANAGED", "value" => "SELF_MANAGED", "documentation" => "SELF_MANAGED type of Active Directory"}, {"name" => "AWS_MANAGED", "value" => "AWS_MANAGED", "documentation" => "AWS_MANAGED type of Active Directory"}]})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-zA-Z0-9-\\.]{1,510}/[a-zA-Z0-9-\\.]{1,510}$"})
    AssociateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#AssociateUserRequest", name: "AssociateUserRequest")
    AssociateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#AssociateUserResponse", name: "AssociateUserResponse")
    BoxInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#BoxInteger", name: "BoxInteger")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "server"})
    CreateLicenseServerEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#CreateLicenseServerEndpointRequest", name: "CreateLicenseServerEndpointRequest")
    CreateLicenseServerEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#CreateLicenseServerEndpointResponse", name: "CreateLicenseServerEndpointResponse")
    CredentialsProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#CredentialsProvider", name: "CredentialsProvider")
    DeleteLicenseServerEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#DeleteLicenseServerEndpointRequest", name: "DeleteLicenseServerEndpointRequest")
    DeleteLicenseServerEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#DeleteLicenseServerEndpointResponse", name: "DeleteLicenseServerEndpointResponse")
    DeregisterIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#DeregisterIdentityProviderRequest", name: "DeregisterIdentityProviderRequest")
    DeregisterIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#DeregisterIdentityProviderResponse", name: "DeregisterIdentityProviderResponse")
    Directory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#Directory", name: "Directory", traits: {"smithy.api#pattern" => "^(d|sd)-[0-9a-f]{10}$"})
    DisassociateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#DisassociateUserRequest", name: "DisassociateUserRequest")
    DisassociateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#DisassociateUserResponse", name: "DisassociateUserResponse")
    DomainNetworkSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#DomainNetworkSettings", name: "DomainNetworkSettings")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#FilterList", name: "FilterList")
    IdentityProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#IdentityProvider", name: "IdentityProvider")
    IdentityProviderSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#IdentityProviderSummary", name: "IdentityProviderSummary")
    IdentityProviderSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#IdentityProviderSummaryList", name: "IdentityProviderSummaryList")
    InstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#InstanceSummary", name: "InstanceSummary")
    InstanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#InstanceSummaryList", name: "InstanceSummaryList")
    InstanceUserSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#InstanceUserSummary", name: "InstanceUserSummary")
    InstanceUserSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#InstanceUserSummaryList", name: "InstanceUserSummaryList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpV4 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#IpV4", name: "IpV4", traits: {"smithy.api#pattern" => "^(?:(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])(\\.(?!$)|$)){4}$"})
    IpV4List = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#IpV4List", name: "IpV4List")
    LicenseServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServer", name: "LicenseServer")
    LicenseServerEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpoint", name: "LicenseServerEndpoint")
    LicenseServerEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpointId", name: "LicenseServerEndpointId")
    LicenseServerEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpointList", name: "LicenseServerEndpointList")
    LicenseServerEndpointProvisioningStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpointProvisioningStatus", name: "LicenseServerEndpointProvisioningStatus", traits: {"smithy.api#enum" => [{"name" => "PROVISIONING", "value" => "PROVISIONING", "documentation" => ""}, {"name" => "PROVISIONING_FAILED", "value" => "PROVISIONING_FAILED", "documentation" => ""}, {"name" => "PROVISIONED", "value" => "PROVISIONED", "documentation" => ""}, {"name" => "DELETING", "value" => "DELETING", "documentation" => ""}, {"name" => "DELETION_FAILED", "value" => "DELETION_FAILED", "documentation" => ""}, {"name" => "DELETED", "value" => "DELETED", "documentation" => ""}]})
    LicenseServerHealthStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServerHealthStatus", name: "LicenseServerHealthStatus", traits: {"smithy.api#enum" => [{"name" => "HEALTHY", "value" => "HEALTHY", "documentation" => ""}, {"name" => "UNHEALTHY", "value" => "UNHEALTHY", "documentation" => ""}, {"name" => "NOT_APPLICABLE", "value" => "NOT_APPLICABLE", "documentation" => ""}]})
    LicenseServerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServerList", name: "LicenseServerList")
    LicenseServerSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#LicenseServerSettings", name: "LicenseServerSettings")
    ListIdentityProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListIdentityProvidersRequest", name: "ListIdentityProvidersRequest")
    ListIdentityProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListIdentityProvidersResponse", name: "ListIdentityProvidersResponse")
    ListInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListInstancesRequest", name: "ListInstancesRequest")
    ListInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListInstancesResponse", name: "ListInstancesResponse")
    ListLicenseServerEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListLicenseServerEndpointsRequest", name: "ListLicenseServerEndpointsRequest")
    ListLicenseServerEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListLicenseServerEndpointsResponse", name: "ListLicenseServerEndpointsResponse")
    ListProductSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListProductSubscriptionsRequest", name: "ListProductSubscriptionsRequest")
    ListProductSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListProductSubscriptionsResponse", name: "ListProductSubscriptionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListUserAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListUserAssociationsRequest", name: "ListUserAssociationsRequest")
    ListUserAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ListUserAssociationsResponse", name: "ListUserAssociationsResponse")
    ProductUserSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ProductUserSummary", name: "ProductUserSummary")
    ProductUserSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ProductUserSummaryList", name: "ProductUserSummaryList")
    RdsSalSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#RdsSalSettings", name: "RdsSalSettings")
    RegisterIdentityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#RegisterIdentityProviderRequest", name: "RegisterIdentityProviderRequest")
    RegisterIdentityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#RegisterIdentityProviderResponse", name: "RegisterIdentityProviderResponse")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,510})/([a-z0-9-\\.]{1,510})$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SecretsManagerCredentialsProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#SecretsManagerCredentialsProvider", name: "SecretsManagerCredentialsProvider")
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#SecurityGroup", name: "SecurityGroup", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    ServerEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ServerEndpoint", name: "ServerEndpoint")
    ServerSettings = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ServerSettings", name: "ServerSettings")
    ServerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ServerType", name: "ServerType", traits: {"smithy.api#enum" => [{"name" => "RDS_SAL", "value" => "RDS_SAL", "documentation" => ""}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    Settings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#Settings", name: "Settings")
    StartProductSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#StartProductSubscriptionRequest", name: "StartProductSubscriptionRequest")
    StartProductSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#StartProductSubscriptionResponse", name: "StartProductSubscriptionResponse")
    StopProductSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#StopProductSubscriptionRequest", name: "StopProductSubscriptionRequest")
    StopProductSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#StopProductSubscriptionResponse", name: "StopProductSubscriptionResponse")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#StringList", name: "StringList")
    Subnet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#Subnet", name: "Subnet", traits: {"smithy.api#pattern" => "^subnet-[a-z0-9]{8,17}"})
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#Subnets", name: "Subnets")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#TagResourceResponse", name: "TagResourceResponse")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateIdentityProviderSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#UpdateIdentityProviderSettingsRequest", name: "UpdateIdentityProviderSettingsRequest")
    UpdateIdentityProviderSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#UpdateIdentityProviderSettingsResponse", name: "UpdateIdentityProviderSettingsResponse")
    UpdateSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#UpdateSettings", name: "UpdateSettings")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerusersubscriptions#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActiveDirectoryIdentityProvider.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Directory, name: "DirectoryId"))
    ActiveDirectoryIdentityProvider.add_member(:active_directory_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectorySettings, name: "ActiveDirectorySettings"))
    ActiveDirectoryIdentityProvider.add_member(:active_directory_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryType, name: "ActiveDirectoryType"))
    ActiveDirectoryIdentityProvider.add_member(:is_shared_active_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "IsSharedActiveDirectory"))
    ActiveDirectoryIdentityProvider.type = Types::ActiveDirectoryIdentityProvider
    ActiveDirectorySettings.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DomainName"))
    ActiveDirectorySettings.add_member(:domain_ipv4_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4List, name: "DomainIpv4List", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}}))
    ActiveDirectorySettings.add_member(:domain_credentials_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialsProvider, name: "DomainCredentialsProvider"))
    ActiveDirectorySettings.add_member(:domain_network_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNetworkSettings, name: "DomainNetworkSettings"))
    ActiveDirectorySettings.type = Types::ActiveDirectorySettings
    AssociateUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Username", traits: {"smithy.api#required" => {}}))
    AssociateUserRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    AssociateUserRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    AssociateUserRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Domain"))
    AssociateUserRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    AssociateUserRequest.type = Types::AssociateUserRequest
    AssociateUserResponse.add_member(:instance_user_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUserSummary, name: "InstanceUserSummary", traits: {"smithy.api#required" => {}}))
    AssociateUserResponse.type = Types::AssociateUserResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateLicenseServerEndpointRequest.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IdentityProviderArn", traits: {"smithy.api#required" => {}}))
    CreateLicenseServerEndpointRequest.add_member(:license_server_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerSettings, name: "LicenseServerSettings", traits: {"smithy.api#required" => {}}))
    CreateLicenseServerEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateLicenseServerEndpointRequest.type = Types::CreateLicenseServerEndpointRequest
    CreateLicenseServerEndpointResponse.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IdentityProviderArn"))
    CreateLicenseServerEndpointResponse.add_member(:license_server_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseServerEndpointArn"))
    CreateLicenseServerEndpointResponse.type = Types::CreateLicenseServerEndpointResponse
    CredentialsProvider.add_member(:secrets_manager_credentials_provider, Types::CredentialsProvider::SecretsManagerCredentialsProvider, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerCredentialsProvider, name: "SecretsManagerCredentialsProvider"))
    CredentialsProvider.add_member(:unknown, Types::CredentialsProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CredentialsProvider.type = Types::CredentialsProvider
    DeleteLicenseServerEndpointRequest.add_member(:license_server_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseServerEndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteLicenseServerEndpointRequest.add_member(:server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerType, name: "ServerType", traits: {"smithy.api#required" => {}}))
    DeleteLicenseServerEndpointRequest.type = Types::DeleteLicenseServerEndpointRequest
    DeleteLicenseServerEndpointResponse.add_member(:license_server_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerEndpoint, name: "LicenseServerEndpoint"))
    DeleteLicenseServerEndpointResponse.type = Types::DeleteLicenseServerEndpointResponse
    DeregisterIdentityProviderRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider"))
    DeregisterIdentityProviderRequest.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product"))
    DeregisterIdentityProviderRequest.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IdentityProviderArn"))
    DeregisterIdentityProviderRequest.type = Types::DeregisterIdentityProviderRequest
    DeregisterIdentityProviderResponse.add_member(:identity_provider_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderSummary, name: "IdentityProviderSummary", traits: {"smithy.api#required" => {}}))
    DeregisterIdentityProviderResponse.type = Types::DeregisterIdentityProviderResponse
    DisassociateUserRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Username"))
    DisassociateUserRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId"))
    DisassociateUserRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider"))
    DisassociateUserRequest.add_member(:instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "InstanceUserArn"))
    DisassociateUserRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Domain"))
    DisassociateUserRequest.type = Types::DisassociateUserRequest
    DisassociateUserResponse.add_member(:instance_user_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUserSummary, name: "InstanceUserSummary", traits: {"smithy.api#required" => {}}))
    DisassociateUserResponse.type = Types::DisassociateUserResponse
    DomainNetworkSettings.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    DomainNetworkSettings.type = Types::DomainNetworkSettings
    Filter.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Attribute"))
    Filter.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Operation"))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value"))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    IdentityProvider.add_member(:active_directory_identity_provider, Types::IdentityProvider::ActiveDirectoryIdentityProvider, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryIdentityProvider, name: "ActiveDirectoryIdentityProvider"))
    IdentityProvider.add_member(:unknown, Types::IdentityProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentityProvider.type = Types::IdentityProvider
    IdentityProviderSummary.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Settings, name: "Settings", traits: {"smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product", traits: {"smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Status", traits: {"smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IdentityProviderArn"))
    IdentityProviderSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureMessage"))
    IdentityProviderSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OwnerAccountId"))
    IdentityProviderSummary.type = Types::IdentityProviderSummary
    IdentityProviderSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderSummary, name: "member"))
    InstanceSummary.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    InstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Status", traits: {"smithy.api#required" => {}}))
    InstanceSummary.add_member(:products, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Products", traits: {"smithy.api#required" => {}}))
    InstanceSummary.add_member(:last_status_check_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LastStatusCheckDate"))
    InstanceSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    InstanceSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OwnerAccountId"))
    InstanceSummary.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider"))
    InstanceSummary.type = Types::InstanceSummary
    InstanceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummary, name: "member"))
    InstanceUserSummary.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Username", traits: {"smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Status", traits: {"smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:instance_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "InstanceUserArn"))
    InstanceUserSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    InstanceUserSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Domain"))
    InstanceUserSummary.add_member(:association_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AssociationDate"))
    InstanceUserSummary.add_member(:disassociation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DisassociationDate"))
    InstanceUserSummary.type = Types::InstanceUserSummary
    InstanceUserSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUserSummary, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    IpV4List.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpV4, name: "member"))
    LicenseServer.add_member(:provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerEndpointProvisioningStatus, name: "ProvisioningStatus"))
    LicenseServer.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerHealthStatus, name: "HealthStatus"))
    LicenseServer.add_member(:ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Ipv4Address"))
    LicenseServer.type = Types::LicenseServer
    LicenseServerEndpoint.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IdentityProviderArn"))
    LicenseServerEndpoint.add_member(:server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerType, name: "ServerType"))
    LicenseServerEndpoint.add_member(:server_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerEndpoint, name: "ServerEndpoint"))
    LicenseServerEndpoint.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    LicenseServerEndpoint.add_member(:license_server_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerEndpointId, name: "LicenseServerEndpointId"))
    LicenseServerEndpoint.add_member(:license_server_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseServerEndpointArn"))
    LicenseServerEndpoint.add_member(:license_server_endpoint_provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerEndpointProvisioningStatus, name: "LicenseServerEndpointProvisioningStatus"))
    LicenseServerEndpoint.add_member(:license_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerList, name: "LicenseServers"))
    LicenseServerEndpoint.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreationTime"))
    LicenseServerEndpoint.type = Types::LicenseServerEndpoint
    LicenseServerEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerEndpoint, name: "member"))
    LicenseServerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServer, name: "member"))
    LicenseServerSettings.add_member(:server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerType, name: "ServerType", traits: {"smithy.api#required" => {}}))
    LicenseServerSettings.add_member(:server_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSettings, name: "ServerSettings", traits: {"smithy.api#required" => {}}))
    LicenseServerSettings.type = Types::LicenseServerSettings
    ListIdentityProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListIdentityProvidersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListIdentityProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListIdentityProvidersRequest.type = Types::ListIdentityProvidersRequest
    ListIdentityProvidersResponse.add_member(:identity_provider_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderSummaryList, name: "IdentityProviderSummaries", traits: {"smithy.api#required" => {}}))
    ListIdentityProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListIdentityProvidersResponse.type = Types::ListIdentityProvidersResponse
    ListInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListInstancesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListInstancesRequest.type = Types::ListInstancesRequest
    ListInstancesResponse.add_member(:instance_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummaryList, name: "InstanceSummaries"))
    ListInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListInstancesResponse.type = Types::ListInstancesResponse
    ListLicenseServerEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListLicenseServerEndpointsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListLicenseServerEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListLicenseServerEndpointsRequest.type = Types::ListLicenseServerEndpointsRequest
    ListLicenseServerEndpointsResponse.add_member(:license_server_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseServerEndpointList, name: "LicenseServerEndpoints"))
    ListLicenseServerEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListLicenseServerEndpointsResponse.type = Types::ListLicenseServerEndpointsResponse
    ListProductSubscriptionsRequest.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product"))
    ListProductSubscriptionsRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    ListProductSubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListProductSubscriptionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListProductSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListProductSubscriptionsRequest.type = Types::ListProductSubscriptionsRequest
    ListProductSubscriptionsResponse.add_member(:product_user_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductUserSummaryList, name: "ProductUserSummaries"))
    ListProductSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListProductSubscriptionsResponse.type = Types::ListProductSubscriptionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUserAssociationsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    ListUserAssociationsRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    ListUserAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListUserAssociationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListUserAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListUserAssociationsRequest.type = Types::ListUserAssociationsRequest
    ListUserAssociationsResponse.add_member(:instance_user_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceUserSummaryList, name: "InstanceUserSummaries"))
    ListUserAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListUserAssociationsResponse.type = Types::ListUserAssociationsResponse
    ProductUserSummary.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Username", traits: {"smithy.api#required" => {}}))
    ProductUserSummary.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product", traits: {"smithy.api#required" => {}}))
    ProductUserSummary.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    ProductUserSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Status", traits: {"smithy.api#required" => {}}))
    ProductUserSummary.add_member(:product_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ProductUserArn"))
    ProductUserSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    ProductUserSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Domain"))
    ProductUserSummary.add_member(:subscription_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionStartDate"))
    ProductUserSummary.add_member(:subscription_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionEndDate"))
    ProductUserSummary.type = Types::ProductUserSummary
    ProductUserSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductUserSummary, name: "member"))
    RdsSalSettings.add_member(:rds_sal_credentials_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialsProvider, name: "RdsSalCredentialsProvider", traits: {"smithy.api#required" => {}}))
    RdsSalSettings.type = Types::RdsSalSettings
    RegisterIdentityProviderRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    RegisterIdentityProviderRequest.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product", traits: {"smithy.api#required" => {}}))
    RegisterIdentityProviderRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Settings, name: "Settings"))
    RegisterIdentityProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    RegisterIdentityProviderRequest.type = Types::RegisterIdentityProviderRequest
    RegisterIdentityProviderResponse.add_member(:identity_provider_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderSummary, name: "IdentityProviderSummary", traits: {"smithy.api#required" => {}}))
    RegisterIdentityProviderResponse.type = Types::RegisterIdentityProviderResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SecretsManagerCredentialsProvider.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SecretId", traits: {"smithy.api#length" => {"min" => 1}}))
    SecretsManagerCredentialsProvider.type = Types::SecretsManagerCredentialsProvider
    ServerEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Endpoint"))
    ServerEndpoint.type = Types::ServerEndpoint
    ServerSettings.add_member(:rds_sal_settings, Types::ServerSettings::RdsSalSettings, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsSalSettings, name: "RdsSalSettings"))
    ServerSettings.add_member(:unknown, Types::ServerSettings::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServerSettings.type = Types::ServerSettings
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Settings.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "Subnets", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    Settings.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "SecurityGroupId", traits: {"smithy.api#required" => {}}))
    Settings.type = Types::Settings
    StartProductSubscriptionRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Username", traits: {"smithy.api#required" => {}}))
    StartProductSubscriptionRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider", traits: {"smithy.api#required" => {}}))
    StartProductSubscriptionRequest.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product", traits: {"smithy.api#required" => {}}))
    StartProductSubscriptionRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Domain"))
    StartProductSubscriptionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    StartProductSubscriptionRequest.type = Types::StartProductSubscriptionRequest
    StartProductSubscriptionResponse.add_member(:product_user_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductUserSummary, name: "ProductUserSummary", traits: {"smithy.api#required" => {}}))
    StartProductSubscriptionResponse.type = Types::StartProductSubscriptionResponse
    StopProductSubscriptionRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Username"))
    StopProductSubscriptionRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider"))
    StopProductSubscriptionRequest.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product"))
    StopProductSubscriptionRequest.add_member(:product_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ProductUserArn"))
    StopProductSubscriptionRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Domain"))
    StopProductSubscriptionRequest.type = Types::StopProductSubscriptionRequest
    StopProductSubscriptionResponse.add_member(:product_user_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductUserSummary, name: "ProductUserSummary", traits: {"smithy.api#required" => {}}))
    StopProductSubscriptionResponse.type = Types::StopProductSubscriptionResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    Subnets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateIdentityProviderSettingsRequest.add_member(:identity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "IdentityProvider"))
    UpdateIdentityProviderSettingsRequest.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Product"))
    UpdateIdentityProviderSettingsRequest.add_member(:identity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IdentityProviderArn"))
    UpdateIdentityProviderSettingsRequest.add_member(:update_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSettings, name: "UpdateSettings", traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderSettingsRequest.type = Types::UpdateIdentityProviderSettingsRequest
    UpdateIdentityProviderSettingsResponse.add_member(:identity_provider_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderSummary, name: "IdentityProviderSummary", traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderSettingsResponse.type = Types::UpdateIdentityProviderSettingsResponse
    UpdateSettings.add_member(:add_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "AddSubnets", traits: {"smithy.api#required" => {}}))
    UpdateSettings.add_member(:remove_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "RemoveSubnets", traits: {"smithy.api#required" => {}}))
    UpdateSettings.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "SecurityGroupId"))
    UpdateSettings.type = Types::UpdateSettings
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    LicenseManagerUserSubscriptions = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.licensemanagerusersubscriptions#LicenseManagerUserSubscriptions"
      service.name = "LicenseManagerUserSubscriptions"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "License Manager User Subscriptions", "arnNamespace" => "license-manager-user-subscriptions", "cloudTrailEventSource" => "license-manager-user-subscriptions.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "license-manager-user-subscriptions"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "content-length", "x-api-key", "authorization", "x-amz-date", "x-amz-security-token", "Access-Control-Allow-Headers", "Access-Control-Allow-Methods", "Access-Control-Allow-Origin"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS License Manager User Subscriptions"}
      service.add_operation(:associate_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#AssociateUser"
        operation.name = "AssociateUser"
        operation.input = AssociateUserRequest
        operation.output = AssociateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/AssociateUser"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_license_server_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#CreateLicenseServerEndpoint"
        operation.name = "CreateLicenseServerEndpoint"
        operation.input = CreateLicenseServerEndpointRequest
        operation.output = CreateLicenseServerEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/license-server/CreateLicenseServerEndpoint"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_license_server_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#DeleteLicenseServerEndpoint"
        operation.name = "DeleteLicenseServerEndpoint"
        operation.input = DeleteLicenseServerEndpointRequest
        operation.output = DeleteLicenseServerEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/license-server/DeleteLicenseServerEndpoint"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#DeregisterIdentityProvider"
        operation.name = "DeregisterIdentityProvider"
        operation.input = DeregisterIdentityProviderRequest
        operation.output = DeregisterIdentityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/DeregisterIdentityProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#DisassociateUser"
        operation.name = "DisassociateUser"
        operation.input = DisassociateUserRequest
        operation.output = DisassociateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/DisassociateUser"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_identity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListIdentityProviders"
        operation.name = "ListIdentityProviders"
        operation.input = ListIdentityProvidersRequest
        operation.output = ListIdentityProvidersResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/ListIdentityProviders"}}
        operation[:paginator] = Paginators::ListIdentityProviders.new
      end)
      service.add_operation(:list_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListInstances"
        operation.name = "ListInstances"
        operation.input = ListInstancesRequest
        operation.output = ListInstancesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/instance/ListInstances"}}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_license_server_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListLicenseServerEndpoints"
        operation.name = "ListLicenseServerEndpoints"
        operation.input = ListLicenseServerEndpointsRequest
        operation.output = ListLicenseServerEndpointsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/license-server/ListLicenseServerEndpoints"}}
        operation[:paginator] = Paginators::ListLicenseServerEndpoints.new
      end)
      service.add_operation(:list_product_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListProductSubscriptions"
        operation.name = "ListProductSubscriptions"
        operation.input = ListProductSubscriptionsRequest
        operation.output = ListProductSubscriptionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/ListProductSubscriptions"}}
        operation[:paginator] = Paginators::ListProductSubscriptions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_user_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListUserAssociations"
        operation.name = "ListUserAssociations"
        operation.input = ListUserAssociationsRequest
        operation.output = ListUserAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/ListUserAssociations"}}
        operation[:paginator] = Paginators::ListUserAssociations.new
      end)
      service.add_operation(:register_identity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#RegisterIdentityProvider"
        operation.name = "RegisterIdentityProvider"
        operation.input = RegisterIdentityProviderRequest
        operation.output = RegisterIdentityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/RegisterIdentityProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_product_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#StartProductSubscription"
        operation.name = "StartProductSubscription"
        operation.input = StartProductSubscriptionRequest
        operation.output = StartProductSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/StartProductSubscription"}}
      end)
      service.add_operation(:stop_product_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#StopProductSubscription"
        operation.name = "StopProductSubscription"
        operation.input = StopProductSubscriptionRequest
        operation.output = StopProductSubscriptionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/StopProductSubscription"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_identity_provider_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#UpdateIdentityProviderSettings"
        operation.name = "UpdateIdentityProviderSettings"
        operation.input = UpdateIdentityProviderSettingsRequest
        operation.output = UpdateIdentityProviderSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/UpdateIdentityProviderSettings"}, "smithy.api#idempotent" => {}}
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

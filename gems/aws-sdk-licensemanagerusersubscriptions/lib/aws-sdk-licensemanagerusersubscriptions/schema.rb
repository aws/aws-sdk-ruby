# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerUserSubscriptions
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    ActiveDirectoryIdentityProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ActiveDirectoryIdentityProvider', name: 'ActiveDirectoryIdentityProvider')
    ActiveDirectorySettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ActiveDirectorySettings', name: 'ActiveDirectorySettings')
    ActiveDirectoryType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ActiveDirectoryType', name: 'ActiveDirectoryType', traits: {"smithy.api#enum" => [{"name" => "SELF_MANAGED", "value" => "SELF_MANAGED", "documentation" => "SELF_MANAGED type of Active Directory"}, {"name" => "AWS_MANAGED", "value" => "AWS_MANAGED", "documentation" => "AWS_MANAGED type of Active Directory"}]})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-zA-Z0-9-\\.]{1,510}/[a-zA-Z0-9-\\.]{1,510}$"})
    AssociateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#AssociateUserRequest', name: 'AssociateUserRequest')
    AssociateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#AssociateUserResponse', name: 'AssociateUserResponse')
    BoxInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#BoxInteger', name: 'BoxInteger')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "server"})
    CreateLicenseServerEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#CreateLicenseServerEndpointRequest', name: 'CreateLicenseServerEndpointRequest')
    CreateLicenseServerEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#CreateLicenseServerEndpointResponse', name: 'CreateLicenseServerEndpointResponse')
    CredentialsProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#CredentialsProvider', name: 'CredentialsProvider')
    DeleteLicenseServerEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#DeleteLicenseServerEndpointRequest', name: 'DeleteLicenseServerEndpointRequest')
    DeleteLicenseServerEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#DeleteLicenseServerEndpointResponse', name: 'DeleteLicenseServerEndpointResponse')
    DeregisterIdentityProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#DeregisterIdentityProviderRequest', name: 'DeregisterIdentityProviderRequest')
    DeregisterIdentityProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#DeregisterIdentityProviderResponse', name: 'DeregisterIdentityProviderResponse')
    Directory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#Directory', name: 'Directory', traits: {"smithy.api#pattern" => "^(d|sd)-[0-9a-f]{10}$"})
    DisassociateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#DisassociateUserRequest', name: 'DisassociateUserRequest')
    DisassociateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#DisassociateUserResponse', name: 'DisassociateUserResponse')
    DomainNetworkSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#DomainNetworkSettings', name: 'DomainNetworkSettings')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#Filter', name: 'Filter')
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#FilterList', name: 'FilterList')
    IdentityProvider = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#IdentityProvider', name: 'IdentityProvider')
    IdentityProviderSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#IdentityProviderSummary', name: 'IdentityProviderSummary')
    IdentityProviderSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#IdentityProviderSummaryList', name: 'IdentityProviderSummaryList')
    InstanceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#InstanceSummary', name: 'InstanceSummary')
    InstanceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#InstanceSummaryList', name: 'InstanceSummaryList')
    InstanceUserSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#InstanceUserSummary', name: 'InstanceUserSummary')
    InstanceUserSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#InstanceUserSummaryList', name: 'InstanceUserSummaryList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpV4 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#IpV4', name: 'IpV4', traits: {"smithy.api#pattern" => "^(?:(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])(\\.(?!$)|$)){4}$"})
    IpV4List = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#IpV4List', name: 'IpV4List')
    LicenseServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServer', name: 'LicenseServer')
    LicenseServerEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpoint', name: 'LicenseServerEndpoint')
    LicenseServerEndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpointId', name: 'LicenseServerEndpointId')
    LicenseServerEndpointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpointList', name: 'LicenseServerEndpointList')
    LicenseServerEndpointProvisioningStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServerEndpointProvisioningStatus', name: 'LicenseServerEndpointProvisioningStatus', traits: {"smithy.api#enum" => [{"name" => "PROVISIONING", "value" => "PROVISIONING", "documentation" => ""}, {"name" => "PROVISIONING_FAILED", "value" => "PROVISIONING_FAILED", "documentation" => ""}, {"name" => "PROVISIONED", "value" => "PROVISIONED", "documentation" => ""}, {"name" => "DELETING", "value" => "DELETING", "documentation" => ""}, {"name" => "DELETION_FAILED", "value" => "DELETION_FAILED", "documentation" => ""}, {"name" => "DELETED", "value" => "DELETED", "documentation" => ""}]})
    LicenseServerHealthStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServerHealthStatus', name: 'LicenseServerHealthStatus', traits: {"smithy.api#enum" => [{"name" => "HEALTHY", "value" => "HEALTHY", "documentation" => ""}, {"name" => "UNHEALTHY", "value" => "UNHEALTHY", "documentation" => ""}, {"name" => "NOT_APPLICABLE", "value" => "NOT_APPLICABLE", "documentation" => ""}]})
    LicenseServerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServerList', name: 'LicenseServerList')
    LicenseServerSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#LicenseServerSettings', name: 'LicenseServerSettings')
    ListIdentityProvidersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListIdentityProvidersRequest', name: 'ListIdentityProvidersRequest')
    ListIdentityProvidersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListIdentityProvidersResponse', name: 'ListIdentityProvidersResponse')
    ListInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListInstancesRequest', name: 'ListInstancesRequest')
    ListInstancesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListInstancesResponse', name: 'ListInstancesResponse')
    ListLicenseServerEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListLicenseServerEndpointsRequest', name: 'ListLicenseServerEndpointsRequest')
    ListLicenseServerEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListLicenseServerEndpointsResponse', name: 'ListLicenseServerEndpointsResponse')
    ListProductSubscriptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListProductSubscriptionsRequest', name: 'ListProductSubscriptionsRequest')
    ListProductSubscriptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListProductSubscriptionsResponse', name: 'ListProductSubscriptionsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListUserAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListUserAssociationsRequest', name: 'ListUserAssociationsRequest')
    ListUserAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ListUserAssociationsResponse', name: 'ListUserAssociationsResponse')
    ProductUserSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ProductUserSummary', name: 'ProductUserSummary')
    ProductUserSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ProductUserSummaryList', name: 'ProductUserSummaryList')
    RdsSalSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#RdsSalSettings', name: 'RdsSalSettings')
    RegisterIdentityProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#RegisterIdentityProviderRequest', name: 'RegisterIdentityProviderRequest')
    RegisterIdentityProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#RegisterIdentityProviderResponse', name: 'RegisterIdentityProviderResponse')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#pattern" => "^arn:([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,63}):([a-z0-9-\\.]{1,510})/([a-z0-9-\\.]{1,510})$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SecretsManagerCredentialsProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#SecretsManagerCredentialsProvider', name: 'SecretsManagerCredentialsProvider')
    SecurityGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#SecurityGroup', name: 'SecurityGroup', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    ServerEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ServerEndpoint', name: 'ServerEndpoint')
    ServerSettings = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ServerSettings', name: 'ServerSettings')
    ServerType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ServerType', name: 'ServerType', traits: {"smithy.api#enum" => [{"name" => "RDS_SAL", "value" => "RDS_SAL", "documentation" => ""}]})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client"})
    Settings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#Settings', name: 'Settings')
    StartProductSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#StartProductSubscriptionRequest', name: 'StartProductSubscriptionRequest')
    StartProductSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#StartProductSubscriptionResponse', name: 'StartProductSubscriptionResponse')
    StopProductSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#StopProductSubscriptionRequest', name: 'StopProductSubscriptionRequest')
    StopProductSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#StopProductSubscriptionResponse', name: 'StopProductSubscriptionResponse')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#StringList', name: 'StringList')
    Subnet = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#Subnet', name: 'Subnet', traits: {"smithy.api#pattern" => "^subnet-[a-z0-9]{8,17}"})
    Subnets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#Subnets', name: 'Subnets')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#TagResourceResponse', name: 'TagResourceResponse')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateIdentityProviderSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#UpdateIdentityProviderSettingsRequest', name: 'UpdateIdentityProviderSettingsRequest')
    UpdateIdentityProviderSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#UpdateIdentityProviderSettingsResponse', name: 'UpdateIdentityProviderSettingsResponse')
    UpdateSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#UpdateSettings', name: 'UpdateSettings')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerusersubscriptions#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActiveDirectoryIdentityProvider.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Directory, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory ID for an Active Directory identity provider.</p>"}))
    ActiveDirectoryIdentityProvider.add_member(:active_directory_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveDirectorySettings, location_name: 'ActiveDirectorySettings', traits: {"smithy.api#documentation" => "<p>The <code>ActiveDirectorySettings</code> resource contains details about \n\t\t\tthe Active Directory, including network access details such as domain name and IP \n\t\t\taddresses, and the credential provider for user administration.</p>"}))
    ActiveDirectoryIdentityProvider.add_member(:active_directory_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveDirectoryType, location_name: 'ActiveDirectoryType', traits: {"smithy.api#documentation" => "<p>The type of Active Directory – either a self-managed Active Directory or an \n\t\t\tAmazon Web Services Managed Active Directory.</p>"}))
    ActiveDirectoryIdentityProvider.type = Types::ActiveDirectoryIdentityProvider
    ActiveDirectorySettings.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The domain name for the Active Directory.</p>"}))
    ActiveDirectorySettings.add_member(:domain_ipv4_list, Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4List, location_name: 'DomainIpv4List', traits: {"smithy.api#documentation" => "<p>A list of domain IPv4 addresses that are used for the Active Directory.</p>", "smithy.api#length" => {"min" => 1, "max" => 2}}))
    ActiveDirectorySettings.add_member(:domain_credentials_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialsProvider, location_name: 'DomainCredentialsProvider', traits: {"smithy.api#documentation" => "<p>Points to the <code>CredentialsProvider</code> resource that contains \n\t\t\tinformation about the credential provider for user administration.</p>"}))
    ActiveDirectorySettings.add_member(:domain_network_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNetworkSettings, location_name: 'DomainNetworkSettings', traits: {"smithy.api#documentation" => "<p>The <code>DomainNetworkSettings</code> resource contains an array of \n\t\t\tsubnets that apply for the Active Directory.</p>"}))
    ActiveDirectorySettings.type = Types::ActiveDirectorySettings
    AssociateUserRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name from the identity provider.</p>", "smithy.api#required" => {}}))
    AssociateUserRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the EC2 instance that provides the user-based subscription.</p>", "smithy.api#required" => {}}))
    AssociateUserRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>The identity provider for the user.</p>", "smithy.api#required" => {}}))
    AssociateUserRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name of the  Active Directory that contains information for the user to associate.</p>"}))
    AssociateUserRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that apply for the user association.</p>"}))
    AssociateUserRequest.type = Types::AssociateUserRequest
    AssociateUserResponse.add_member(:instance_user_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceUserSummary, location_name: 'InstanceUserSummary', traits: {"smithy.api#documentation" => "<p>Metadata that describes the associate user operation.</p>", "smithy.api#required" => {}}))
    AssociateUserResponse.type = Types::AssociateUserResponse
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateLicenseServerEndpointRequest.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the <code>IdentityProvider</code> resource that contains details \n\t\t\tabout a registered identity provider. In the case of Active Directory, that can be \n\t\t\ta self-managed Active Directory or an Amazon Web Services Managed Active Directory that contains user identity details.</p>", "smithy.api#required" => {}}))
    CreateLicenseServerEndpointRequest.add_member(:license_server_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerSettings, location_name: 'LicenseServerSettings', traits: {"smithy.api#documentation" => "<p>The <code>LicenseServerSettings</code> resource to create for the endpoint. The \n\t\t\tsettings include the type of license server and the Secrets Manager secret that \n\t\t\tenables administrators to add or remove users associated with the \n\t\t\tlicense server.</p>", "smithy.api#required" => {}}))
    CreateLicenseServerEndpointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that apply for the license server endpoint.</p>"}))
    CreateLicenseServerEndpointRequest.type = Types::CreateLicenseServerEndpointRequest
    CreateLicenseServerEndpointResponse.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity provider specified in the request.</p>"}))
    CreateLicenseServerEndpointResponse.add_member(:license_server_endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseServerEndpointArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>LicenseServerEndpoint</code> resource.</p>"}))
    CreateLicenseServerEndpointResponse.type = Types::CreateLicenseServerEndpointResponse
    CredentialsProvider.add_member(:secrets_manager_credentials_provider, Types::CredentialsProvider::SecretsManagerCredentialsProvider, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerCredentialsProvider, location_name: 'SecretsManagerCredentialsProvider', traits: {"smithy.api#documentation" => "<p>Identifies the Secrets Manager secret that contains credentials needed for \n\t\t\tuser administration in the Active Directory.</p>"}))
    CredentialsProvider.add_member(:unknown, Types::CredentialsProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    CredentialsProvider.type = Types::CredentialsProvider
    DeleteLicenseServerEndpointRequest.add_member(:license_server_endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseServerEndpointArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the <code>LicenseServerEndpoint</code> \n\t\t\tresource to delete.</p>", "smithy.api#required" => {}}))
    DeleteLicenseServerEndpointRequest.add_member(:server_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: 'ServerType', traits: {"smithy.api#documentation" => "<p>The type of License Server that the delete request refers to.</p>", "smithy.api#required" => {}}))
    DeleteLicenseServerEndpointRequest.type = Types::DeleteLicenseServerEndpointRequest
    DeleteLicenseServerEndpointResponse.add_member(:license_server_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerEndpoint, location_name: 'LicenseServerEndpoint', traits: {"smithy.api#documentation" => "<p>Shows details from the <code>LicenseServerEndpoint</code> resource that was deleted.</p>"}))
    DeleteLicenseServerEndpointResponse.type = Types::DeleteLicenseServerEndpointResponse
    DeregisterIdentityProviderRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the Active Directory identity provider.</p>"}))
    DeregisterIdentityProviderRequest.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>\n         <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | \n<code>REMOTE_DESKTOP_SERVICES</code>\n         </p>"}))
    DeregisterIdentityProviderRequest.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the identity provider to deregister.</p>"}))
    DeregisterIdentityProviderRequest.type = Types::DeregisterIdentityProviderRequest
    DeregisterIdentityProviderResponse.add_member(:identity_provider_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderSummary, location_name: 'IdentityProviderSummary', traits: {"smithy.api#documentation" => "<p>Metadata that describes the results of an identity provider operation.</p>", "smithy.api#required" => {}}))
    DeregisterIdentityProviderResponse.type = Types::DeregisterIdentityProviderResponse
    DisassociateUserRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name from the Active Directory identity provider for the user.</p>"}))
    DisassociateUserRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the EC2 instance which provides user-based subscriptions.</p>"}))
    DisassociateUserRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the Active Directory identity provider.</p>"}))
    DisassociateUserRequest.add_member(:instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'InstanceUserArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user to disassociate from the EC2 instance.</p>"}))
    DisassociateUserRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name of the  Active Directory that contains information for the user to disassociate.</p>"}))
    DisassociateUserRequest.type = Types::DisassociateUserRequest
    DisassociateUserResponse.add_member(:instance_user_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceUserSummary, location_name: 'InstanceUserSummary', traits: {"smithy.api#documentation" => "<p>Metadata that describes the associate user operation.</p>", "smithy.api#required" => {}}))
    DisassociateUserResponse.type = Types::DisassociateUserResponse
    DomainNetworkSettings.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>Contains a list of subnets that apply for the Active Directory domain.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    DomainNetworkSettings.type = Types::DomainNetworkSettings
    Filter.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Attribute', traits: {"smithy.api#documentation" => "<p>The name of an attribute to use as a filter.</p>"}))
    Filter.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>The type of search (For example, eq, geq, leq)</p>"}))
    Filter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of the filter.</p>"}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    IdentityProvider.add_member(:active_directory_identity_provider, Types::IdentityProvider::ActiveDirectoryIdentityProvider, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveDirectoryIdentityProvider, location_name: 'ActiveDirectoryIdentityProvider', traits: {"smithy.api#documentation" => "<p>The <code>ActiveDirectoryIdentityProvider</code> resource contains settings \n\t\t\tand other details about a specific Active Directory identity provider.</p>"}))
    IdentityProvider.add_member(:unknown, Types::IdentityProvider::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IdentityProvider.type = Types::IdentityProvider
    IdentityProviderSummary.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>The <code>IdentityProvider</code> resource contains information about \n\t\t\tan identity provider.</p>", "smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>The <code>Settings</code> resource contains details about the registered \n\t\t\tidentity provider’s product related configuration settings, such as the \n\t\t\tsubnets to provision VPC endpoints.</p>", "smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>", "smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the identity provider.</p>", "smithy.api#required" => {}}))
    IdentityProviderSummary.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity provider.</p>"}))
    IdentityProviderSummary.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'FailureMessage', traits: {"smithy.api#documentation" => "<p>The failure message associated with an identity provider.</p>"}))
    IdentityProviderSummary.type = Types::IdentityProviderSummary
    IdentityProviderSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderSummary)
    InstanceSummary.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the EC2 instance, which provides user-based subscriptions.</p>", "smithy.api#required" => {}}))
    InstanceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of an EC2 instance resource.</p>", "smithy.api#required" => {}}))
    InstanceSummary.add_member(:products, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Products', traits: {"smithy.api#documentation" => "<p>A list of provided user-based subscription products.</p>", "smithy.api#required" => {}}))
    InstanceSummary.add_member(:last_status_check_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LastStatusCheckDate', traits: {"smithy.api#documentation" => "<p>The date of the last status check.</p>"}))
    InstanceSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for an EC2 instance.</p>"}))
    InstanceSummary.type = Types::InstanceSummary
    InstanceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSummary)
    InstanceUserSummary.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name from the identity provider for the user.</p>", "smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the EC2 instance that provides user-based subscriptions.</p>", "smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>The <code>IdentityProvider</code> resource specifies details \n\t\t\tabout the identity provider.</p>", "smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a user associated with an EC2 instance.</p>", "smithy.api#required" => {}}))
    InstanceUserSummary.add_member(:instance_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'InstanceUserArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the instance user.</p>"}))
    InstanceUserSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for users of an EC2 instance.</p>"}))
    InstanceUserSummary.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name of the  Active Directory that contains the user information for the product subscription.</p>"}))
    InstanceUserSummary.add_member(:association_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'AssociationDate', traits: {"smithy.api#documentation" => "<p>The date a user was associated with an EC2 instance.</p>"}))
    InstanceUserSummary.add_member(:disassociation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DisassociationDate', traits: {"smithy.api#documentation" => "<p>The date a user was disassociated from an EC2 instance.</p>"}))
    InstanceUserSummary.type = Types::InstanceUserSummary
    InstanceUserSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceUserSummary)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    IpV4List.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpV4)
    LicenseServer.add_member(:provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerEndpointProvisioningStatus, location_name: 'ProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The current state of the provisioning process for the RDS \n\t\t\tlicense server.</p>"}))
    LicenseServer.add_member(:health_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerHealthStatus, location_name: 'HealthStatus', traits: {"smithy.api#documentation" => "<p>The health status of the RDS license server.</p>"}))
    LicenseServer.add_member(:ipv4_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Ipv4Address', traits: {"smithy.api#documentation" => "<p>A list of domain IPv4 addresses that are used for the RDS \n\t\t\tlicense server.</p>"}))
    LicenseServer.type = Types::LicenseServer
    LicenseServerEndpoint.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'IdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity provider that's associated with \n\t\t\tthe RDS license server endpoint.</p>"}))
    LicenseServerEndpoint.add_member(:server_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: 'ServerType', traits: {"smithy.api#documentation" => "<p>The type of license server.</p>"}))
    LicenseServerEndpoint.add_member(:server_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerEndpoint, location_name: 'ServerEndpoint', traits: {"smithy.api#documentation" => "<p>The <code>ServerEndpoint</code> resource contains the network \n\t\t\taddress of the RDS license server endpoint.</p>"}))
    LicenseServerEndpoint.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The message associated with the provisioning status, if there is one.</p>"}))
    LicenseServerEndpoint.add_member(:license_server_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerEndpointId, location_name: 'LicenseServerEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the license server endpoint.</p>"}))
    LicenseServerEndpoint.add_member(:license_server_endpoint_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseServerEndpointArn', traits: {"smithy.api#documentation" => "<p>The ARN of the <code>ServerEndpoint</code> resource for the RDS \n\t\t\tlicense server.</p>"}))
    LicenseServerEndpoint.add_member(:license_server_endpoint_provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerEndpointProvisioningStatus, location_name: 'LicenseServerEndpointProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The current state of the provisioning process for the RDS license \n\t\t\tserver endpoint</p>"}))
    LicenseServerEndpoint.add_member(:license_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerList, location_name: 'LicenseServers', traits: {"smithy.api#documentation" => "<p>An array of <code>LicenseServer</code> resources that represent the \n\t\t\tlicense servers that are accessed through this endpoint.</p>"}))
    LicenseServerEndpoint.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The timestamp when License Manager created the license server endpoint.</p>"}))
    LicenseServerEndpoint.type = Types::LicenseServerEndpoint
    LicenseServerEndpointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerEndpoint)
    LicenseServerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServer)
    LicenseServerSettings.add_member(:server_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: 'ServerType', traits: {"smithy.api#documentation" => "<p>The type of license server.</p>", "smithy.api#required" => {}}))
    LicenseServerSettings.add_member(:server_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSettings, location_name: 'ServerSettings', traits: {"smithy.api#documentation" => "<p>The <code>ServerSettings</code> resource contains the settings for your \n\t\t\tserver.</p>", "smithy.api#required" => {}}))
    LicenseServerSettings.type = Types::LicenseServerSettings
    ListIdentityProvidersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return from a single request.</p>"}))
    ListIdentityProvidersRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>You can use the following filters to streamline results:</p>\n         <ul>\n            <li>\n               <p>Product</p>\n            </li>\n            <li>\n               <p>DirectoryId</p>\n            </li>\n         </ul>"}))
    ListIdentityProvidersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the nextToken \n\tfrom a previously truncated response.</p>"}))
    ListIdentityProvidersRequest.type = Types::ListIdentityProvidersRequest
    ListIdentityProvidersResponse.add_member(:identity_provider_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderSummaryList, location_name: 'IdentityProviderSummaries', traits: {"smithy.api#documentation" => "<p>An array of <code>IdentityProviderSummary</code> resources that contain \n\t\t\tdetails about the Active Directory identity providers that meet the request criteria.</p>", "smithy.api#required" => {}}))
    ListIdentityProvidersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this field isn't empty, \n\tthere are additional elements that the service hasn't included in this request. Use this token \n\t\twith the next request to retrieve additional objects.</p>"}))
    ListIdentityProvidersResponse.type = Types::ListIdentityProvidersResponse
    ListInstancesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return from a single request.</p>"}))
    ListInstancesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the nextToken \n\tfrom a previously truncated response.</p>"}))
    ListInstancesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>You can use the following filters to streamline results:</p>\n         <ul>\n            <li>\n               <p>Status</p>\n            </li>\n            <li>\n               <p>InstanceId</p>\n            </li>\n         </ul>"}))
    ListInstancesRequest.type = Types::ListInstancesRequest
    ListInstancesResponse.add_member(:instance_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: 'InstanceSummaries', traits: {"smithy.api#documentation" => "<p>An array of <code>InstanceSummary</code> resources that contain details \n\t\t\tabout the instances that provide user-based subscriptions and also meet the \n\t\t\trequest criteria.</p>"}))
    ListInstancesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this field isn't empty, \n\tthere are additional elements that the service hasn't included in this request. Use this token \n\t\twith the next request to retrieve additional objects.</p>"}))
    ListInstancesResponse.type = Types::ListInstancesResponse
    ListLicenseServerEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return from a single request.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListLicenseServerEndpointsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>You can use the following filters to streamline results:</p>\n         <ul>\n            <li>\n               <p>IdentityProviderArn</p>\n            </li>\n         </ul>"}))
    ListLicenseServerEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the nextToken \n\tfrom a previously truncated response.</p>"}))
    ListLicenseServerEndpointsRequest.type = Types::ListLicenseServerEndpointsRequest
    ListLicenseServerEndpointsResponse.add_member(:license_server_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseServerEndpointList, location_name: 'LicenseServerEndpoints', traits: {"smithy.api#documentation" => "<p>An array of <code>LicenseServerEndpoint</code> resources that \n\t\t\tcontain detailed information about the RDS License Servers that meet \n\t\t\tthe request criteria.</p>"}))
    ListLicenseServerEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this field isn't empty, \n\tthere are additional elements that the service hasn't included in this request. Use this token \n\t\twith the next request to retrieve additional objects.</p>"}))
    ListLicenseServerEndpointsResponse.type = Types::ListLicenseServerEndpointsResponse
    ListProductSubscriptionsRequest.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>\n         <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | \n<code>REMOTE_DESKTOP_SERVICES</code>\n         </p>"}))
    ListProductSubscriptionsRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the identity provider.</p>", "smithy.api#required" => {}}))
    ListProductSubscriptionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return from a single request.</p>"}))
    ListProductSubscriptionsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>You can use the following filters to streamline results:</p>\n         <ul>\n            <li>\n               <p>Status</p>\n            </li>\n            <li>\n               <p>Username</p>\n            </li>\n            <li>\n               <p>Domain</p>\n            </li>\n         </ul>"}))
    ListProductSubscriptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the nextToken \n\tfrom a previously truncated response.</p>"}))
    ListProductSubscriptionsRequest.type = Types::ListProductSubscriptionsRequest
    ListProductSubscriptionsResponse.add_member(:product_user_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductUserSummaryList, location_name: 'ProductUserSummaries', traits: {"smithy.api#documentation" => "<p>Metadata that describes the list product subscriptions operation.</p>"}))
    ListProductSubscriptionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this field isn't empty, \n\tthere are additional elements that the service hasn't included in this request. Use this token \n\t\twith the next request to retrieve additional objects.</p>"}))
    ListProductSubscriptionsResponse.type = Types::ListProductSubscriptionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the specified resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUserAssociationsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the EC2 instance, which provides user-based subscriptions.</p>", "smithy.api#required" => {}}))
    ListUserAssociationsRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the identity provider.</p>", "smithy.api#required" => {}}))
    ListUserAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return from a single request.</p>"}))
    ListUserAssociationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>You can use the following filters to streamline results:</p>\n         <ul>\n            <li>\n               <p>Status</p>\n            </li>\n            <li>\n               <p>Username</p>\n            </li>\n            <li>\n               <p>Domain</p>\n            </li>\n         </ul>"}))
    ListUserAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the nextToken \n\tfrom a previously truncated response.</p>"}))
    ListUserAssociationsRequest.type = Types::ListUserAssociationsRequest
    ListUserAssociationsResponse.add_member(:instance_user_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceUserSummaryList, location_name: 'InstanceUserSummaries', traits: {"smithy.api#documentation" => "<p>Metadata that describes the list user association operation.</p>"}))
    ListUserAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this field isn't empty, \n\tthere are additional elements that the service hasn't included in this request. Use this token \n\t\twith the next request to retrieve additional objects.</p>"}))
    ListUserAssociationsResponse.type = Types::ListUserAssociationsResponse
    ProductUserSummary.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name from the identity provider for this product user.</p>", "smithy.api#required" => {}}))
    ProductUserSummary.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>", "smithy.api#required" => {}}))
    ProductUserSummary.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the identity provider.</p>", "smithy.api#required" => {}}))
    ProductUserSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a product for this user.</p>", "smithy.api#required" => {}}))
    ProductUserSummary.add_member(:product_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ProductUserArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for this product user.</p>"}))
    ProductUserSummary.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for a product for this user.</p>"}))
    ProductUserSummary.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name of the  Active Directory that contains the user information for the product subscription.</p>"}))
    ProductUserSummary.add_member(:subscription_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionStartDate', traits: {"smithy.api#documentation" => "<p>The start date of a subscription.</p>"}))
    ProductUserSummary.add_member(:subscription_end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionEndDate', traits: {"smithy.api#documentation" => "<p>The end date of a subscription.</p>"}))
    ProductUserSummary.type = Types::ProductUserSummary
    ProductUserSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductUserSummary)
    RdsSalSettings.add_member(:rds_sal_credentials_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialsProvider, location_name: 'RdsSalCredentialsProvider', traits: {"smithy.api#documentation" => "<p>The <code>CredentialsProvider</code> resource contains a reference to \n\t\t\tthe credentials provider that's used for RDS license server user administration.</p>", "smithy.api#required" => {}}))
    RdsSalSettings.type = Types::RdsSalSettings
    RegisterIdentityProviderRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the identity provider to register.</p>", "smithy.api#required" => {}}))
    RegisterIdentityProviderRequest.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>\n         <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | \n<code>REMOTE_DESKTOP_SERVICES</code>\n         </p>", "smithy.api#required" => {}}))
    RegisterIdentityProviderRequest.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: 'Settings', traits: {"smithy.api#documentation" => "<p>The registered identity provider’s product related configuration \n\t\t\tsettings such as the subnets to provision VPC endpoints.</p>"}))
    RegisterIdentityProviderRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that apply to the identity provider's registration.</p>"}))
    RegisterIdentityProviderRequest.type = Types::RegisterIdentityProviderRequest
    RegisterIdentityProviderResponse.add_member(:identity_provider_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderSummary, location_name: 'IdentityProviderSummary', traits: {"smithy.api#documentation" => "<p>Metadata that describes the results of an identity provider operation.</p>", "smithy.api#required" => {}}))
    RegisterIdentityProviderResponse.type = Types::RegisterIdentityProviderResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SecretsManagerCredentialsProvider.add_member(:secret_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SecretId', traits: {"smithy.api#documentation" => "<p>The ID of the Secrets Manager secret that contains credentials.</p>", "smithy.api#length" => {"min" => 1}}))
    SecretsManagerCredentialsProvider.type = Types::SecretsManagerCredentialsProvider
    ServerEndpoint.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The network address of the endpoint.</p>"}))
    ServerEndpoint.type = Types::ServerEndpoint
    ServerSettings.add_member(:rds_sal_settings, Types::ServerSettings::RdsSalSettings, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsSalSettings, location_name: 'RdsSalSettings', traits: {"smithy.api#documentation" => "<p>The <code>RdsSalSettings</code> resource contains settings to configure \n\t\t\ta specific Remote Desktop Services (RDS) license server.</p>"}))
    ServerSettings.add_member(:unknown, Types::ServerSettings::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ServerSettings.type = Types::ServerSettings
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Settings.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>The subnets defined for the registered identity provider.</p>", "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    Settings.add_member(:security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup, location_name: 'SecurityGroupId', traits: {"smithy.api#documentation" => "<p>A security group ID that allows inbound TCP port 1688 communication between resources in\n\t\t\tyour VPC and the VPC endpoint for activation servers.</p>", "smithy.api#required" => {}}))
    Settings.type = Types::Settings
    StartProductSubscriptionRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name from the identity provider of the user.</p>", "smithy.api#required" => {}}))
    StartProductSubscriptionRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the identity provider.</p>", "smithy.api#required" => {}}))
    StartProductSubscriptionRequest.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>\n         <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | \n<code>REMOTE_DESKTOP_SERVICES</code>\n         </p>", "smithy.api#required" => {}}))
    StartProductSubscriptionRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name of the  Active Directory that contains the user for whom to start the product \n\t\t\tsubscription.</p>"}))
    StartProductSubscriptionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that apply to the product subscription.</p>"}))
    StartProductSubscriptionRequest.type = Types::StartProductSubscriptionRequest
    StartProductSubscriptionResponse.add_member(:product_user_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductUserSummary, location_name: 'ProductUserSummary', traits: {"smithy.api#documentation" => "<p>Metadata that describes the start product subscription operation.</p>", "smithy.api#required" => {}}))
    StartProductSubscriptionResponse.type = Types::StartProductSubscriptionResponse
    StopProductSubscriptionRequest.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name from the identity provider for the user.</p>"}))
    StopProductSubscriptionRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider', traits: {"smithy.api#documentation" => "<p>An object that specifies details for the identity provider.</p>"}))
    StopProductSubscriptionRequest.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>\n         <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | \n<code>REMOTE_DESKTOP_SERVICES</code>\n         </p>"}))
    StopProductSubscriptionRequest.add_member(:product_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ProductUserArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the product user.</p>"}))
    StopProductSubscriptionRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain name of the  Active Directory that contains the user for whom to stop the product \n\t\t\tsubscription.</p>"}))
    StopProductSubscriptionRequest.type = Types::StopProductSubscriptionRequest
    StopProductSubscriptionResponse.add_member(:product_user_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductUserSummary, location_name: 'ProductUserSummary', traits: {"smithy.api#documentation" => "<p>Metadata that describes the start product subscription operation.</p>", "smithy.api#required" => {}}))
    StopProductSubscriptionResponse.type = Types::StopProductSubscriptionResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Subnets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to apply to the specified resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateIdentityProviderSettingsRequest.add_member(:identity_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProvider, location_name: 'IdentityProvider'))
    UpdateIdentityProviderSettingsRequest.add_member(:product, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Product', traits: {"smithy.api#documentation" => "<p>The name of the user-based subscription product.</p>\n         <p>Valid values: <code>VISUAL_STUDIO_ENTERPRISE</code> | <code>VISUAL_STUDIO_PROFESSIONAL</code> | <code>OFFICE_PROFESSIONAL_PLUS</code> | \n<code>REMOTE_DESKTOP_SERVICES</code>\n         </p>"}))
    UpdateIdentityProviderSettingsRequest.add_member(:identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity provider to update.</p>"}))
    UpdateIdentityProviderSettingsRequest.add_member(:update_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSettings, location_name: 'UpdateSettings', traits: {"smithy.api#documentation" => "<p>Updates the registered identity provider’s product related configuration settings. You can\n\t\t\tupdate any combination of settings in a single operation such as the:</p>\n         <ul>\n            <li>\n               <p>Subnets which you want to add to provision VPC endpoints.</p>\n            </li>\n            <li>\n               <p>Subnets which you want to remove the VPC endpoints from.</p>\n            </li>\n            <li>\n               <p>Security group ID which permits traffic to the VPC endpoints.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateIdentityProviderSettingsRequest.type = Types::UpdateIdentityProviderSettingsRequest
    UpdateIdentityProviderSettingsResponse.add_member(:identity_provider_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderSummary, location_name: 'IdentityProviderSummary', traits: {"smithy.api#required" => {}}))
    UpdateIdentityProviderSettingsResponse.type = Types::UpdateIdentityProviderSettingsResponse
    UpdateSettings.add_member(:add_subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'AddSubnets', traits: {"smithy.api#documentation" => "<p>The ID of one or more subnets in which License Manager will create a VPC endpoint for products that\n\t\t\trequire connectivity to activation servers.</p>", "smithy.api#required" => {}}))
    UpdateSettings.add_member(:remove_subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'RemoveSubnets', traits: {"smithy.api#documentation" => "<p>The ID of one or more subnets to remove.</p>", "smithy.api#required" => {}}))
    UpdateSettings.add_member(:security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup, location_name: 'SecurityGroupId', traits: {"smithy.api#documentation" => "<p>A security group ID that allows inbound TCP port 1688 communication between resources in\n\t\t\tyour VPC and the VPC endpoints for activation servers.</p>"}))
    UpdateSettings.type = Types::UpdateSettings
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    LicenseManagerUserSubscriptions = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.licensemanagerusersubscriptions#LicenseManagerUserSubscriptions"
      service.name = "LicenseManagerUserSubscriptions"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "License Manager User Subscriptions", "arnNamespace" => "license-manager-user-subscriptions", "cloudTrailEventSource" => "license-manager-user-subscriptions.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "license-manager-user-subscriptions"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "content-length", "x-api-key", "authorization", "x-amz-date", "x-amz-security-token", "Access-Control-Allow-Headers", "Access-Control-Allow-Methods", "Access-Control-Allow-Origin"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS License Manager User Subscriptions"}
      service.add_operation(:associate_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#AssociateUser"
        operation.name = "AssociateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/AssociateUser"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_license_server_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#CreateLicenseServerEndpoint"
        operation.name = "CreateLicenseServerEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseServerEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseServerEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/license-server/CreateLicenseServerEndpoint"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_license_server_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#DeleteLicenseServerEndpoint"
        operation.name = "DeleteLicenseServerEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseServerEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseServerEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/license-server/DeleteLicenseServerEndpoint"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_identity_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#DeregisterIdentityProvider"
        operation.name = "DeregisterIdentityProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterIdentityProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterIdentityProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/DeregisterIdentityProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#DisassociateUser"
        operation.name = "DisassociateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/DisassociateUser"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_identity_providers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListIdentityProviders"
        operation.name = "ListIdentityProviders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProvidersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProvidersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/ListIdentityProviders"}}
        operation[:paginator] = Paginators::ListIdentityProviders.new
      end)
      service.add_operation(:list_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListInstances"
        operation.name = "ListInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/instance/ListInstances"}}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_license_server_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListLicenseServerEndpoints"
        operation.name = "ListLicenseServerEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseServerEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseServerEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/license-server/ListLicenseServerEndpoints"}}
        operation[:paginator] = Paginators::ListLicenseServerEndpoints.new
      end)
      service.add_operation(:list_product_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListProductSubscriptions"
        operation.name = "ListProductSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProductSubscriptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProductSubscriptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/ListProductSubscriptions"}}
        operation[:paginator] = Paginators::ListProductSubscriptions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_user_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#ListUserAssociations"
        operation.name = "ListUserAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUserAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/ListUserAssociations"}}
        operation[:paginator] = Paginators::ListUserAssociations.new
      end)
      service.add_operation(:register_identity_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#RegisterIdentityProvider"
        operation.name = "RegisterIdentityProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterIdentityProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterIdentityProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/RegisterIdentityProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_product_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#StartProductSubscription"
        operation.name = "StartProductSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProductSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartProductSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/StartProductSubscription"}}
      end)
      service.add_operation(:stop_product_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#StopProductSubscription"
        operation.name = "StopProductSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopProductSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopProductSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/user/StopProductSubscription"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_identity_provider_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerusersubscriptions#UpdateIdentityProviderSettings"
        operation.name = "UpdateIdentityProviderSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityProviderSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIdentityProviderSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-provider/UpdateIdentityProviderSettings"}, "smithy.api#idempotent" => {}}
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

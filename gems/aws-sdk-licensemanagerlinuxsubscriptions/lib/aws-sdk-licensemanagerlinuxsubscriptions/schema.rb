# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerLinuxSubscriptions
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BoxInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#BoxInteger", name: "BoxInteger")
    BoxLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#BoxLong", name: "BoxLong")
    DeregisterSubscriptionProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProviderRequest", name: "DeregisterSubscriptionProviderRequest")
    DeregisterSubscriptionProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProviderResponse", name: "DeregisterSubscriptionProviderResponse")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#FilterList", name: "FilterList")
    GetRegisteredSubscriptionProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProviderRequest", name: "GetRegisteredSubscriptionProviderRequest")
    GetRegisteredSubscriptionProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProviderResponse", name: "GetRegisteredSubscriptionProviderResponse")
    GetServiceSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettingsInput", name: "GetServiceSettingsInput")
    GetServiceSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettingsOutput", name: "GetServiceSettingsOutput")
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#Instance", name: "Instance")
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#InstanceList", name: "InstanceList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server"})
    LinuxSubscriptionsDiscovery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#LinuxSubscriptionsDiscovery", name: "LinuxSubscriptionsDiscovery", traits: {"smithy.api#enum" => [{"name" => "Enabled", "value" => "Enabled", "documentation" => "Enabled LinuxSubscriptionsDiscovery"}, {"name" => "Disabled", "value" => "Disabled", "documentation" => "Disabled LinuxSubscriptionsDiscovery"}]})
    LinuxSubscriptionsDiscoverySettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#LinuxSubscriptionsDiscoverySettings", name: "LinuxSubscriptionsDiscoverySettings")
    ListLinuxSubscriptionInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstancesInput", name: "ListLinuxSubscriptionInstancesInput")
    ListLinuxSubscriptionInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstancesOutput", name: "ListLinuxSubscriptionInstancesOutput")
    ListLinuxSubscriptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionsInput", name: "ListLinuxSubscriptionsInput")
    ListLinuxSubscriptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionsOutput", name: "ListLinuxSubscriptionsOutput")
    ListRegisteredSubscriptionProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProvidersRequest", name: "ListRegisteredSubscriptionProvidersRequest")
    ListRegisteredSubscriptionProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProvidersResponse", name: "ListRegisteredSubscriptionProvidersResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Operator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#Operator", name: "Operator", traits: {"smithy.api#enum" => [{"name" => "EQUAL", "value" => "Equal", "documentation" => "Equal operator"}, {"name" => "NOT_EQUAL", "value" => "NotEqual", "documentation" => "Not equal operator"}, {"name" => "CONTAINS", "value" => "Contains", "documentation" => "Contains operator"}], "smithy.api#length" => {"min" => 1, "max" => 20}})
    OrganizationIntegration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#OrganizationIntegration", name: "OrganizationIntegration", traits: {"smithy.api#enum" => [{"name" => "Enabled", "value" => "Enabled", "documentation" => "Enabled OrganizationIntegration"}, {"name" => "Disabled", "value" => "Disabled", "documentation" => "Disabled OrganizationIntegration"}]})
    ProductCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ProductCodeList", name: "ProductCodeList")
    RegisterSubscriptionProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProviderRequest", name: "RegisterSubscriptionProviderRequest")
    RegisterSubscriptionProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProviderResponse", name: "RegisterSubscriptionProviderResponse")
    RegisteredSubscriptionProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#RegisteredSubscriptionProvider", name: "RegisteredSubscriptionProvider")
    RegisteredSubscriptionProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#RegisteredSubscriptionProviderList", name: "RegisteredSubscriptionProviderList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#SecretArn", name: "SecretArn", traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:secretsmanager:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:secret:[^/]{1,1023}$"})
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#Status", name: "Status", traits: {"smithy.api#enum" => [{"name" => "InProgress", "value" => "InProgress", "documentation" => "InProgress status"}, {"name" => "Completed", "value" => "Completed", "documentation" => "Completed status"}, {"name" => "Successful", "value" => "Successful", "documentation" => "Successful status"}, {"name" => "Failed", "value" => "Failed", "documentation" => "Failed status"}]})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#StringList", name: "StringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#StringMap", name: "StringMap")
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#Subscription", name: "Subscription")
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionList", name: "SubscriptionList")
    SubscriptionProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderArn", name: "SubscriptionProviderArn", traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,510}/[a-z0-9-\\.]{1,510}$"})
    SubscriptionProviderSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderSource", name: "SubscriptionProviderSource", traits: {"smithy.api#enum" => [{"name" => "RedHat", "value" => "RedHat", "documentation" => "RedHat subscription provider namespace"}]})
    SubscriptionProviderSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderSourceList", name: "SubscriptionProviderSourceList")
    SubscriptionProviderStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderStatus", name: "SubscriptionProviderStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ACTIVE status"}, {"name" => "INVALID", "value" => "INVALID", "documentation" => "INVALID status"}, {"name" => "PENDING", "value" => "PENDING", "documentation" => "PENDING status"}]})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#TagResourceResponse", name: "TagResourceResponse")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateServiceSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettingsInput", name: "UpdateServiceSettingsInput")
    UpdateServiceSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettingsOutput", name: "UpdateServiceSettingsOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanagerlinuxsubscriptions#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})

    DeregisterSubscriptionProviderRequest.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderArn, name: "SubscriptionProviderArn", traits: {"smithy.api#required" => {}}))
    DeregisterSubscriptionProviderRequest.type = Types::DeregisterSubscriptionProviderRequest
    DeregisterSubscriptionProviderResponse.type = Types::DeregisterSubscriptionProviderResponse
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Values"))
    Filter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "Operator"))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member")
    GetRegisteredSubscriptionProviderRequest.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderArn, name: "SubscriptionProviderArn", traits: {"smithy.api#required" => {}}))
    GetRegisteredSubscriptionProviderRequest.type = Types::GetRegisteredSubscriptionProviderRequest
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderArn, name: "SubscriptionProviderArn"))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderSource, name: "SubscriptionProviderSource"))
    GetRegisteredSubscriptionProviderResponse.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderStatus, name: "SubscriptionProviderStatus"))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionProviderStatusMessage"))
    GetRegisteredSubscriptionProviderResponse.add_member(:last_successful_data_retrieval_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LastSuccessfulDataRetrievalTime"))
    GetRegisteredSubscriptionProviderResponse.type = Types::GetRegisteredSubscriptionProviderResponse
    GetServiceSettingsInput.type = Types::GetServiceSettingsInput
    GetServiceSettingsOutput.add_member(:linux_subscriptions_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxSubscriptionsDiscovery, name: "LinuxSubscriptionsDiscovery"))
    GetServiceSettingsOutput.add_member(:linux_subscriptions_discovery_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxSubscriptionsDiscoverySettings, name: "LinuxSubscriptionsDiscoverySettings"))
    GetServiceSettingsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    GetServiceSettingsOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "StatusMessage"))
    GetServiceSettingsOutput.add_member(:home_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "HomeRegions"))
    GetServiceSettingsOutput.type = Types::GetServiceSettingsOutput
    Instance.add_member(:ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AmiId"))
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceID"))
    Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceType"))
    Instance.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountID"))
    Instance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Status"))
    Instance.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region"))
    Instance.add_member(:usage_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "UsageOperation"))
    Instance.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeList, name: "ProductCode"))
    Instance.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LastUpdatedTime"))
    Instance.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionName"))
    Instance.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OsVersion"))
    Instance.add_member(:subscription_provider_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionProviderCreateTime"))
    Instance.add_member(:subscription_provider_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionProviderUpdateTime"))
    Instance.add_member(:dual_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DualSubscription"))
    Instance.add_member(:registered_with_subscription_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegisteredWithSubscriptionProvider"))
    Instance.type = Types::Instance
    InstanceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    LinuxSubscriptionsDiscoverySettings.add_member(:source_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SourceRegions", traits: {"smithy.api#required" => {}}))
    LinuxSubscriptionsDiscoverySettings.add_member(:organization_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationIntegration, name: "OrganizationIntegration", traits: {"smithy.api#required" => {}}))
    LinuxSubscriptionsDiscoverySettings.type = Types::LinuxSubscriptionsDiscoverySettings
    ListLinuxSubscriptionInstancesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListLinuxSubscriptionInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListLinuxSubscriptionInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}}))
    ListLinuxSubscriptionInstancesInput.type = Types::ListLinuxSubscriptionInstancesInput
    ListLinuxSubscriptionInstancesOutput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "Instances"))
    ListLinuxSubscriptionInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListLinuxSubscriptionInstancesOutput.type = Types::ListLinuxSubscriptionInstancesOutput
    ListLinuxSubscriptionsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListLinuxSubscriptionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListLinuxSubscriptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}}))
    ListLinuxSubscriptionsInput.type = Types::ListLinuxSubscriptionsInput
    ListLinuxSubscriptionsOutput.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "Subscriptions"))
    ListLinuxSubscriptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListLinuxSubscriptionsOutput.type = Types::ListLinuxSubscriptionsOutput
    ListRegisteredSubscriptionProvidersRequest.add_member(:subscription_provider_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderSourceList, name: "SubscriptionProviderSources"))
    ListRegisteredSubscriptionProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRegisteredSubscriptionProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListRegisteredSubscriptionProvidersRequest.type = Types::ListRegisteredSubscriptionProvidersRequest
    ListRegisteredSubscriptionProvidersResponse.add_member(:registered_subscription_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredSubscriptionProviderList, name: "RegisteredSubscriptionProviders"))
    ListRegisteredSubscriptionProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListRegisteredSubscriptionProvidersResponse.type = Types::ListRegisteredSubscriptionProvidersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ProductCodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    RegisterSubscriptionProviderRequest.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderSource, name: "SubscriptionProviderSource", traits: {"smithy.api#required" => {}}))
    RegisterSubscriptionProviderRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    RegisterSubscriptionProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    RegisterSubscriptionProviderRequest.type = Types::RegisterSubscriptionProviderRequest
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderSource, name: "SubscriptionProviderSource"))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionProviderArn"))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderStatus, name: "SubscriptionProviderStatus"))
    RegisterSubscriptionProviderResponse.type = Types::RegisterSubscriptionProviderResponse
    RegisteredSubscriptionProvider.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderArn, name: "SubscriptionProviderArn"))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderSource, name: "SubscriptionProviderSource"))
    RegisteredSubscriptionProvider.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderStatus, name: "SubscriptionProviderStatus"))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubscriptionProviderStatusMessage"))
    RegisteredSubscriptionProvider.add_member(:last_successful_data_retrieval_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LastSuccessfulDataRetrievalTime"))
    RegisteredSubscriptionProvider.type = Types::RegisteredSubscriptionProvider
    RegisteredSubscriptionProviderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredSubscriptionProvider, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value")
    Subscription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    Subscription.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    Subscription.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "InstanceCount"))
    Subscription.type = Types::Subscription
    SubscriptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "member")
    SubscriptionProviderSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderSource, name: "member")
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionProviderArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateServiceSettingsInput.add_member(:linux_subscriptions_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxSubscriptionsDiscovery, name: "LinuxSubscriptionsDiscovery", traits: {"smithy.api#required" => {}}))
    UpdateServiceSettingsInput.add_member(:linux_subscriptions_discovery_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxSubscriptionsDiscoverySettings, name: "LinuxSubscriptionsDiscoverySettings", traits: {"smithy.api#required" => {}}))
    UpdateServiceSettingsInput.add_member(:allow_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "AllowUpdate"))
    UpdateServiceSettingsInput.type = Types::UpdateServiceSettingsInput
    UpdateServiceSettingsOutput.add_member(:linux_subscriptions_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxSubscriptionsDiscovery, name: "LinuxSubscriptionsDiscovery"))
    UpdateServiceSettingsOutput.add_member(:linux_subscriptions_discovery_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxSubscriptionsDiscoverySettings, name: "LinuxSubscriptionsDiscoverySettings"))
    UpdateServiceSettingsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    UpdateServiceSettingsOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "StatusMessage"))
    UpdateServiceSettingsOutput.add_member(:home_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "HomeRegions"))
    UpdateServiceSettingsOutput.type = Types::UpdateServiceSettingsOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    LicenseManagerLinuxSubscriptions = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.licensemanagerlinuxsubscriptions#LicenseManagerLinuxSubscriptions"
      service.name = "LicenseManagerLinuxSubscriptions"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "License Manager Linux Subscriptions", "arnNamespace" => "license-manager-linux-subscriptions", "cloudTrailEventSource" => "license-manager-linux-subscriptions.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "license-manager-linux-subscriptions"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS License Manager Linux Subscriptions"}
      service.add_operation(:deregister_subscription_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProvider"
        operation.name = "DeregisterSubscriptionProvider"
        operation.input = DeregisterSubscriptionProviderRequest
        operation.output = DeregisterSubscriptionProviderResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/DeregisterSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_registered_subscription_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProvider"
        operation.name = "GetRegisteredSubscriptionProvider"
        operation.input = GetRegisteredSubscriptionProviderRequest
        operation.output = GetRegisteredSubscriptionProviderResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/GetRegisteredSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettings"
        operation.name = "GetServiceSettings"
        operation.input = GetServiceSettingsInput
        operation.output = GetServiceSettingsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/GetServiceSettings"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_linux_subscription_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstances"
        operation.name = "ListLinuxSubscriptionInstances"
        operation.input = ListLinuxSubscriptionInstancesInput
        operation.output = ListLinuxSubscriptionInstancesOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListLinuxSubscriptionInstances"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLinuxSubscriptionInstances.new
      end)
      service.add_operation(:list_linux_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptions"
        operation.name = "ListLinuxSubscriptions"
        operation.input = ListLinuxSubscriptionsInput
        operation.output = ListLinuxSubscriptionsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListLinuxSubscriptions"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLinuxSubscriptions.new
      end)
      service.add_operation(:list_registered_subscription_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProviders"
        operation.name = "ListRegisteredSubscriptionProviders"
        operation.input = ListRegisteredSubscriptionProvidersRequest
        operation.output = ListRegisteredSubscriptionProvidersResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListRegisteredSubscriptionProviders"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRegisteredSubscriptionProviders.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_subscription_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProvider"
        operation.name = "RegisterSubscriptionProvider"
        operation.input = RegisterSubscriptionProviderRequest
        operation.output = RegisterSubscriptionProviderResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/RegisterSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettings"
        operation.name = "UpdateServiceSettings"
        operation.input = UpdateServiceSettingsInput
        operation.output = UpdateServiceSettingsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/UpdateServiceSettings"}, "smithy.api#idempotent" => {}}
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

# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerLinuxSubscriptions
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BoxInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#BoxInteger', name: 'BoxInteger')
    BoxLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#BoxLong', name: 'BoxLong')
    DeregisterSubscriptionProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProviderRequest', name: 'DeregisterSubscriptionProviderRequest')
    DeregisterSubscriptionProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProviderResponse', name: 'DeregisterSubscriptionProviderResponse')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#FilterList', name: 'FilterList')
    GetRegisteredSubscriptionProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProviderRequest', name: 'GetRegisteredSubscriptionProviderRequest')
    GetRegisteredSubscriptionProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProviderResponse', name: 'GetRegisteredSubscriptionProviderResponse')
    GetServiceSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettingsInput', name: 'GetServiceSettingsInput')
    GetServiceSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettingsOutput', name: 'GetServiceSettingsOutput')
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Instance', name: 'Instance')
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#InstanceList', name: 'InstanceList')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server"})
    LinuxSubscriptionsDiscovery = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#LinuxSubscriptionsDiscovery', name: 'LinuxSubscriptionsDiscovery', traits: {"smithy.api#enum" => [{"name" => "Enabled", "value" => "Enabled", "documentation" => "Enabled LinuxSubscriptionsDiscovery"}, {"name" => "Disabled", "value" => "Disabled", "documentation" => "Disabled LinuxSubscriptionsDiscovery"}]})
    LinuxSubscriptionsDiscoverySettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#LinuxSubscriptionsDiscoverySettings', name: 'LinuxSubscriptionsDiscoverySettings')
    ListLinuxSubscriptionInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstancesInput', name: 'ListLinuxSubscriptionInstancesInput')
    ListLinuxSubscriptionInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstancesOutput', name: 'ListLinuxSubscriptionInstancesOutput')
    ListLinuxSubscriptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionsInput', name: 'ListLinuxSubscriptionsInput')
    ListLinuxSubscriptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionsOutput', name: 'ListLinuxSubscriptionsOutput')
    ListRegisteredSubscriptionProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProvidersRequest', name: 'ListRegisteredSubscriptionProvidersRequest')
    ListRegisteredSubscriptionProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProvidersResponse', name: 'ListRegisteredSubscriptionProvidersResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Operator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Operator', name: 'Operator', traits: {"smithy.api#enum" => [{"name" => "EQUAL", "value" => "Equal", "documentation" => "Equal operator"}, {"name" => "NOT_EQUAL", "value" => "NotEqual", "documentation" => "Not equal operator"}, {"name" => "CONTAINS", "value" => "Contains", "documentation" => "Contains operator"}], "smithy.api#length" => {"min" => 1, "max" => 20}})
    OrganizationIntegration = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#OrganizationIntegration', name: 'OrganizationIntegration', traits: {"smithy.api#enum" => [{"name" => "Enabled", "value" => "Enabled", "documentation" => "Enabled OrganizationIntegration"}, {"name" => "Disabled", "value" => "Disabled", "documentation" => "Disabled OrganizationIntegration"}]})
    ProductCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ProductCodeList', name: 'ProductCodeList')
    RegisterSubscriptionProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProviderRequest', name: 'RegisterSubscriptionProviderRequest')
    RegisterSubscriptionProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProviderResponse', name: 'RegisterSubscriptionProviderResponse')
    RegisteredSubscriptionProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisteredSubscriptionProvider', name: 'RegisteredSubscriptionProvider')
    RegisteredSubscriptionProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisteredSubscriptionProviderList', name: 'RegisteredSubscriptionProviderList')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SecretArn', name: 'SecretArn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:secretsmanager:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:secret:[^/]{1,1023}$"})
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Status', name: 'Status', traits: {"smithy.api#enum" => [{"name" => "InProgress", "value" => "InProgress", "documentation" => "InProgress status"}, {"name" => "Completed", "value" => "Completed", "documentation" => "Completed status"}, {"name" => "Successful", "value" => "Successful", "documentation" => "Successful status"}, {"name" => "Failed", "value" => "Failed", "documentation" => "Failed status"}]})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#StringList', name: 'StringList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#StringMap', name: 'StringMap')
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Subscription', name: 'Subscription')
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionList', name: 'SubscriptionList')
    SubscriptionProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderArn', name: 'SubscriptionProviderArn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,510}/[a-z0-9-\\.]{1,510}$"})
    SubscriptionProviderSource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderSource', name: 'SubscriptionProviderSource', traits: {"smithy.api#enum" => [{"name" => "RedHat", "value" => "RedHat", "documentation" => "RedHat subscription provider namespace"}]})
    SubscriptionProviderSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderSourceList', name: 'SubscriptionProviderSourceList')
    SubscriptionProviderStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderStatus', name: 'SubscriptionProviderStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ACTIVE status"}, {"name" => "INVALID", "value" => "INVALID", "documentation" => "INVALID status"}, {"name" => "PENDING", "value" => "PENDING", "documentation" => "PENDING status"}]})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#TagResourceResponse', name: 'TagResourceResponse')
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateServiceSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettingsInput', name: 'UpdateServiceSettingsInput')
    UpdateServiceSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettingsOutput', name: 'UpdateServiceSettingsOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})

    DeregisterSubscriptionProviderRequest.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn', traits: {"smithy.api#required" => {}}))
    DeregisterSubscriptionProviderRequest.type = Types::DeregisterSubscriptionProviderRequest
    DeregisterSubscriptionProviderResponse.type = Types::DeregisterSubscriptionProviderResponse
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name'))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Values'))
    Filter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator'))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetRegisteredSubscriptionProviderRequest.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn', traits: {"smithy.api#required" => {}}))
    GetRegisteredSubscriptionProviderRequest.type = Types::GetRegisteredSubscriptionProviderRequest
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn'))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource'))
    GetRegisteredSubscriptionProviderResponse.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: 'SubscriptionProviderStatus'))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderStatusMessage'))
    GetRegisteredSubscriptionProviderResponse.add_member(:last_successful_data_retrieval_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'LastSuccessfulDataRetrievalTime'))
    GetRegisteredSubscriptionProviderResponse.type = Types::GetRegisteredSubscriptionProviderResponse
    GetServiceSettingsInput.type = Types::GetServiceSettingsInput
    GetServiceSettingsOutput.add_member(:linux_subscriptions_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: 'LinuxSubscriptionsDiscovery'))
    GetServiceSettingsOutput.add_member(:linux_subscriptions_discovery_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: 'LinuxSubscriptionsDiscoverySettings'))
    GetServiceSettingsOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    GetServiceSettingsOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'StatusMessage'))
    GetServiceSettingsOutput.add_member(:home_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'HomeRegions'))
    GetServiceSettingsOutput.type = Types::GetServiceSettingsOutput
    Instance.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'AmiId'))
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceID'))
    Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceType'))
    Instance.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'AccountID'))
    Instance.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Status'))
    Instance.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Region'))
    Instance.add_member(:usage_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'UsageOperation'))
    Instance.add_member(:product_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeList, location_name: 'ProductCode'))
    Instance.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'LastUpdatedTime'))
    Instance.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionName'))
    Instance.add_member(:os_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'OsVersion'))
    Instance.add_member(:subscription_provider_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderCreateTime'))
    Instance.add_member(:subscription_provider_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderUpdateTime'))
    Instance.add_member(:dual_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DualSubscription'))
    Instance.add_member(:registered_with_subscription_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RegisteredWithSubscriptionProvider'))
    Instance.type = Types::Instance
    InstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    LinuxSubscriptionsDiscoverySettings.add_member(:source_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SourceRegions', traits: {"smithy.api#required" => {}}))
    LinuxSubscriptionsDiscoverySettings.add_member(:organization_integration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationIntegration, location_name: 'OrganizationIntegration', traits: {"smithy.api#required" => {}}))
    LinuxSubscriptionsDiscoverySettings.type = Types::LinuxSubscriptionsDiscoverySettings
    ListLinuxSubscriptionInstancesInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    ListLinuxSubscriptionInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults'))
    ListLinuxSubscriptionInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}}))
    ListLinuxSubscriptionInstancesInput.type = Types::ListLinuxSubscriptionInstancesInput
    ListLinuxSubscriptionInstancesOutput.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'Instances'))
    ListLinuxSubscriptionInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListLinuxSubscriptionInstancesOutput.type = Types::ListLinuxSubscriptionInstancesOutput
    ListLinuxSubscriptionsInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    ListLinuxSubscriptionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults'))
    ListLinuxSubscriptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}}))
    ListLinuxSubscriptionsInput.type = Types::ListLinuxSubscriptionsInput
    ListLinuxSubscriptionsOutput.add_member(:subscriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'Subscriptions'))
    ListLinuxSubscriptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListLinuxSubscriptionsOutput.type = Types::ListLinuxSubscriptionsOutput
    ListRegisteredSubscriptionProvidersRequest.add_member(:subscription_provider_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSourceList, location_name: 'SubscriptionProviderSources'))
    ListRegisteredSubscriptionProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRegisteredSubscriptionProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListRegisteredSubscriptionProvidersRequest.type = Types::ListRegisteredSubscriptionProvidersRequest
    ListRegisteredSubscriptionProvidersResponse.add_member(:registered_subscription_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisteredSubscriptionProviderList, location_name: 'RegisteredSubscriptionProviders'))
    ListRegisteredSubscriptionProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListRegisteredSubscriptionProvidersResponse.type = Types::ListRegisteredSubscriptionProvidersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ProductCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    RegisterSubscriptionProviderRequest.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource', traits: {"smithy.api#required" => {}}))
    RegisterSubscriptionProviderRequest.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#required" => {}}))
    RegisterSubscriptionProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    RegisterSubscriptionProviderRequest.type = Types::RegisterSubscriptionProviderRequest
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource'))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderArn'))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: 'SubscriptionProviderStatus'))
    RegisterSubscriptionProviderResponse.type = Types::RegisterSubscriptionProviderResponse
    RegisteredSubscriptionProvider.add_member(:subscription_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn'))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource'))
    RegisteredSubscriptionProvider.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn'))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: 'SubscriptionProviderStatus'))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderStatusMessage'))
    RegisteredSubscriptionProvider.add_member(:last_successful_data_retrieval_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'LastSuccessfulDataRetrievalTime'))
    RegisteredSubscriptionProvider.type = Types::RegisteredSubscriptionProvider
    RegisteredSubscriptionProviderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisteredSubscriptionProvider)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Subscription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name'))
    Subscription.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Type'))
    Subscription.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'InstanceCount'))
    Subscription.type = Types::Subscription
    SubscriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    SubscriptionProviderSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateServiceSettingsInput.add_member(:linux_subscriptions_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: 'LinuxSubscriptionsDiscovery', traits: {"smithy.api#required" => {}}))
    UpdateServiceSettingsInput.add_member(:linux_subscriptions_discovery_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: 'LinuxSubscriptionsDiscoverySettings', traits: {"smithy.api#required" => {}}))
    UpdateServiceSettingsInput.add_member(:allow_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AllowUpdate'))
    UpdateServiceSettingsInput.type = Types::UpdateServiceSettingsInput
    UpdateServiceSettingsOutput.add_member(:linux_subscriptions_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: 'LinuxSubscriptionsDiscovery'))
    UpdateServiceSettingsOutput.add_member(:linux_subscriptions_discovery_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: 'LinuxSubscriptionsDiscoverySettings'))
    UpdateServiceSettingsOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    UpdateServiceSettingsOutput.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'StatusMessage'))
    UpdateServiceSettingsOutput.add_member(:home_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'HomeRegions'))
    UpdateServiceSettingsOutput.type = Types::UpdateServiceSettingsOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    LicenseManagerLinuxSubscriptions = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.licensemanagerlinuxsubscriptions#LicenseManagerLinuxSubscriptions"
      service.name = "LicenseManagerLinuxSubscriptions"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "License Manager Linux Subscriptions", "arnNamespace" => "license-manager-linux-subscriptions", "cloudTrailEventSource" => "license-manager-linux-subscriptions.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "license-manager-linux-subscriptions"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS License Manager Linux Subscriptions"}
      service.add_operation(:deregister_subscription_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProvider"
        operation.name = "DeregisterSubscriptionProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterSubscriptionProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterSubscriptionProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/DeregisterSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_registered_subscription_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProvider"
        operation.name = "GetRegisteredSubscriptionProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegisteredSubscriptionProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegisteredSubscriptionProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/GetRegisteredSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettings"
        operation.name = "GetServiceSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/GetServiceSettings"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_linux_subscription_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstances"
        operation.name = "ListLinuxSubscriptionInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionInstancesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionInstancesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListLinuxSubscriptionInstances"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLinuxSubscriptionInstances.new
      end)
      service.add_operation(:list_linux_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptions"
        operation.name = "ListLinuxSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListLinuxSubscriptions"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLinuxSubscriptions.new
      end)
      service.add_operation(:list_registered_subscription_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProviders"
        operation.name = "ListRegisteredSubscriptionProviders"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegisteredSubscriptionProvidersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegisteredSubscriptionProvidersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListRegisteredSubscriptionProviders"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRegisteredSubscriptionProviders.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_subscription_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProvider"
        operation.name = "RegisterSubscriptionProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterSubscriptionProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterSubscriptionProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/RegisterSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettings"
        operation.name = "UpdateServiceSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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

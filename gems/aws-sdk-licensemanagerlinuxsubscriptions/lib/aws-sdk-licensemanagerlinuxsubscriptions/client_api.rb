# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LicenseManagerLinuxSubscriptions
  # @api private
  module ClientApi

    include Seahorse::Model

    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxInteger = Shapes::IntegerShape.new(name: 'BoxInteger')
    BoxLong = Shapes::IntegerShape.new(name: 'BoxLong')
    DeregisterSubscriptionProviderRequest = Shapes::StructureShape.new(name: 'DeregisterSubscriptionProviderRequest')
    DeregisterSubscriptionProviderResponse = Shapes::StructureShape.new(name: 'DeregisterSubscriptionProviderResponse')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    GetRegisteredSubscriptionProviderRequest = Shapes::StructureShape.new(name: 'GetRegisteredSubscriptionProviderRequest')
    GetRegisteredSubscriptionProviderResponse = Shapes::StructureShape.new(name: 'GetRegisteredSubscriptionProviderResponse')
    GetServiceSettingsRequest = Shapes::StructureShape.new(name: 'GetServiceSettingsRequest')
    GetServiceSettingsResponse = Shapes::StructureShape.new(name: 'GetServiceSettingsResponse')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LinuxSubscriptionsDiscovery = Shapes::StringShape.new(name: 'LinuxSubscriptionsDiscovery')
    LinuxSubscriptionsDiscoverySettings = Shapes::StructureShape.new(name: 'LinuxSubscriptionsDiscoverySettings')
    ListLinuxSubscriptionInstancesRequest = Shapes::StructureShape.new(name: 'ListLinuxSubscriptionInstancesRequest')
    ListLinuxSubscriptionInstancesRequestNextTokenString = Shapes::StringShape.new(name: 'ListLinuxSubscriptionInstancesRequestNextTokenString')
    ListLinuxSubscriptionInstancesResponse = Shapes::StructureShape.new(name: 'ListLinuxSubscriptionInstancesResponse')
    ListLinuxSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListLinuxSubscriptionsRequest')
    ListLinuxSubscriptionsRequestNextTokenString = Shapes::StringShape.new(name: 'ListLinuxSubscriptionsRequestNextTokenString')
    ListLinuxSubscriptionsResponse = Shapes::StructureShape.new(name: 'ListLinuxSubscriptionsResponse')
    ListRegisteredSubscriptionProvidersRequest = Shapes::StructureShape.new(name: 'ListRegisteredSubscriptionProvidersRequest')
    ListRegisteredSubscriptionProvidersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRegisteredSubscriptionProvidersRequestMaxResultsInteger')
    ListRegisteredSubscriptionProvidersResponse = Shapes::StructureShape.new(name: 'ListRegisteredSubscriptionProvidersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OrganizationIntegration = Shapes::StringShape.new(name: 'OrganizationIntegration')
    ProductCodeList = Shapes::ListShape.new(name: 'ProductCodeList')
    RegisterSubscriptionProviderRequest = Shapes::StructureShape.new(name: 'RegisterSubscriptionProviderRequest')
    RegisterSubscriptionProviderResponse = Shapes::StructureShape.new(name: 'RegisterSubscriptionProviderResponse')
    RegisteredSubscriptionProvider = Shapes::StructureShape.new(name: 'RegisteredSubscriptionProvider')
    RegisteredSubscriptionProviderList = Shapes::ListShape.new(name: 'RegisteredSubscriptionProviderList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringListMemberString = Shapes::StringShape.new(name: 'StringListMemberString')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionList = Shapes::ListShape.new(name: 'SubscriptionList')
    SubscriptionProviderArn = Shapes::StringShape.new(name: 'SubscriptionProviderArn')
    SubscriptionProviderSource = Shapes::StringShape.new(name: 'SubscriptionProviderSource')
    SubscriptionProviderSourceList = Shapes::ListShape.new(name: 'SubscriptionProviderSourceList')
    SubscriptionProviderStatus = Shapes::StringShape.new(name: 'SubscriptionProviderStatus')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateServiceSettingsRequest = Shapes::StructureShape.new(name: 'UpdateServiceSettingsRequest')
    UpdateServiceSettingsResponse = Shapes::StructureShape.new(name: 'UpdateServiceSettingsResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    DeregisterSubscriptionProviderRequest.add_member(:subscription_provider_arn, Shapes::ShapeRef.new(shape: SubscriptionProviderArn, required: true, location_name: "SubscriptionProviderArn"))
    DeregisterSubscriptionProviderRequest.struct_class = Types::DeregisterSubscriptionProviderRequest

    DeregisterSubscriptionProviderResponse.struct_class = Types::DeregisterSubscriptionProviderResponse

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Filter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, location_name: "Operator"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: StringList, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetRegisteredSubscriptionProviderRequest.add_member(:subscription_provider_arn, Shapes::ShapeRef.new(shape: SubscriptionProviderArn, required: true, location_name: "SubscriptionProviderArn"))
    GetRegisteredSubscriptionProviderRequest.struct_class = Types::GetRegisteredSubscriptionProviderRequest

    GetRegisteredSubscriptionProviderResponse.add_member(:last_successful_data_retrieval_time, Shapes::ShapeRef.new(shape: String, location_name: "LastSuccessfulDataRetrievalTime"))
    GetRegisteredSubscriptionProviderResponse.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_arn, Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: "SubscriptionProviderArn"))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_source, Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: "SubscriptionProviderSource"))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status, Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: "SubscriptionProviderStatus"))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status_message, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionProviderStatusMessage"))
    GetRegisteredSubscriptionProviderResponse.struct_class = Types::GetRegisteredSubscriptionProviderResponse

    GetServiceSettingsRequest.struct_class = Types::GetServiceSettingsRequest

    GetServiceSettingsResponse.add_member(:home_regions, Shapes::ShapeRef.new(shape: StringList, location_name: "HomeRegions"))
    GetServiceSettingsResponse.add_member(:linux_subscriptions_discovery, Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: "LinuxSubscriptionsDiscovery"))
    GetServiceSettingsResponse.add_member(:linux_subscriptions_discovery_settings, Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: "LinuxSubscriptionsDiscoverySettings"))
    GetServiceSettingsResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetServiceSettingsResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StringMap, location_name: "StatusMessage"))
    GetServiceSettingsResponse.struct_class = Types::GetServiceSettingsResponse

    Instance.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountID"))
    Instance.add_member(:ami_id, Shapes::ShapeRef.new(shape: String, location_name: "AmiId"))
    Instance.add_member(:dual_subscription, Shapes::ShapeRef.new(shape: String, location_name: "DualSubscription"))
    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceID"))
    Instance.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    Instance.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: String, location_name: "LastUpdatedTime"))
    Instance.add_member(:os_version, Shapes::ShapeRef.new(shape: String, location_name: "OsVersion"))
    Instance.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCodeList, location_name: "ProductCode"))
    Instance.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    Instance.add_member(:registered_with_subscription_provider, Shapes::ShapeRef.new(shape: String, location_name: "RegisteredWithSubscriptionProvider"))
    Instance.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Instance.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName"))
    Instance.add_member(:subscription_provider_create_time, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionProviderCreateTime"))
    Instance.add_member(:subscription_provider_update_time, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionProviderUpdateTime"))
    Instance.add_member(:usage_operation, Shapes::ShapeRef.new(shape: String, location_name: "UsageOperation"))
    Instance.struct_class = Types::Instance

    InstanceList.member = Shapes::ShapeRef.new(shape: Instance)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LinuxSubscriptionsDiscoverySettings.add_member(:organization_integration, Shapes::ShapeRef.new(shape: OrganizationIntegration, required: true, location_name: "OrganizationIntegration"))
    LinuxSubscriptionsDiscoverySettings.add_member(:source_regions, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "SourceRegions"))
    LinuxSubscriptionsDiscoverySettings.struct_class = Types::LinuxSubscriptionsDiscoverySettings

    ListLinuxSubscriptionInstancesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListLinuxSubscriptionInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListLinuxSubscriptionInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListLinuxSubscriptionInstancesRequestNextTokenString, location_name: "NextToken"))
    ListLinuxSubscriptionInstancesRequest.struct_class = Types::ListLinuxSubscriptionInstancesRequest

    ListLinuxSubscriptionInstancesResponse.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
    ListLinuxSubscriptionInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLinuxSubscriptionInstancesResponse.struct_class = Types::ListLinuxSubscriptionInstancesResponse

    ListLinuxSubscriptionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListLinuxSubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListLinuxSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListLinuxSubscriptionsRequestNextTokenString, location_name: "NextToken"))
    ListLinuxSubscriptionsRequest.struct_class = Types::ListLinuxSubscriptionsRequest

    ListLinuxSubscriptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLinuxSubscriptionsResponse.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, location_name: "Subscriptions"))
    ListLinuxSubscriptionsResponse.struct_class = Types::ListLinuxSubscriptionsResponse

    ListRegisteredSubscriptionProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRegisteredSubscriptionProvidersRequestMaxResultsInteger, location_name: "MaxResults"))
    ListRegisteredSubscriptionProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRegisteredSubscriptionProvidersRequest.add_member(:subscription_provider_sources, Shapes::ShapeRef.new(shape: SubscriptionProviderSourceList, location_name: "SubscriptionProviderSources"))
    ListRegisteredSubscriptionProvidersRequest.struct_class = Types::ListRegisteredSubscriptionProvidersRequest

    ListRegisteredSubscriptionProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRegisteredSubscriptionProvidersResponse.add_member(:registered_subscription_providers, Shapes::ShapeRef.new(shape: RegisteredSubscriptionProviderList, location_name: "RegisteredSubscriptionProviders"))
    ListRegisteredSubscriptionProvidersResponse.struct_class = Types::ListRegisteredSubscriptionProvidersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SubscriptionProviderArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ProductCodeList.member = Shapes::ShapeRef.new(shape: String)

    RegisterSubscriptionProviderRequest.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    RegisterSubscriptionProviderRequest.add_member(:subscription_provider_source, Shapes::ShapeRef.new(shape: SubscriptionProviderSource, required: true, location_name: "SubscriptionProviderSource"))
    RegisterSubscriptionProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    RegisterSubscriptionProviderRequest.struct_class = Types::RegisterSubscriptionProviderRequest

    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_arn, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionProviderArn"))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_source, Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: "SubscriptionProviderSource"))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_status, Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: "SubscriptionProviderStatus"))
    RegisterSubscriptionProviderResponse.struct_class = Types::RegisterSubscriptionProviderResponse

    RegisteredSubscriptionProvider.add_member(:last_successful_data_retrieval_time, Shapes::ShapeRef.new(shape: String, location_name: "LastSuccessfulDataRetrievalTime"))
    RegisteredSubscriptionProvider.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_arn, Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: "SubscriptionProviderArn"))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_source, Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: "SubscriptionProviderSource"))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status, Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: "SubscriptionProviderStatus"))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status_message, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionProviderStatusMessage"))
    RegisteredSubscriptionProvider.struct_class = Types::RegisteredSubscriptionProvider

    RegisteredSubscriptionProviderList.member = Shapes::ShapeRef.new(shape: RegisteredSubscriptionProvider)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    StringList.member = Shapes::ShapeRef.new(shape: StringListMemberString)

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    Subscription.add_member(:instance_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "InstanceCount"))
    Subscription.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Subscription.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Subscription.struct_class = Types::Subscription

    SubscriptionList.member = Shapes::ShapeRef.new(shape: Subscription)

    SubscriptionProviderSourceList.member = Shapes::ShapeRef.new(shape: SubscriptionProviderSource)

    TagKeyList.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SubscriptionProviderArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SubscriptionProviderArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateServiceSettingsRequest.add_member(:allow_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowUpdate"))
    UpdateServiceSettingsRequest.add_member(:linux_subscriptions_discovery, Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, required: true, location_name: "LinuxSubscriptionsDiscovery"))
    UpdateServiceSettingsRequest.add_member(:linux_subscriptions_discovery_settings, Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, required: true, location_name: "LinuxSubscriptionsDiscoverySettings"))
    UpdateServiceSettingsRequest.struct_class = Types::UpdateServiceSettingsRequest

    UpdateServiceSettingsResponse.add_member(:home_regions, Shapes::ShapeRef.new(shape: StringList, location_name: "HomeRegions"))
    UpdateServiceSettingsResponse.add_member(:linux_subscriptions_discovery, Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: "LinuxSubscriptionsDiscovery"))
    UpdateServiceSettingsResponse.add_member(:linux_subscriptions_discovery_settings, Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: "LinuxSubscriptionsDiscoverySettings"))
    UpdateServiceSettingsResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    UpdateServiceSettingsResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StringMap, location_name: "StatusMessage"))
    UpdateServiceSettingsResponse.struct_class = Types::UpdateServiceSettingsResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "license-manager-linux-subscriptions",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS License Manager Linux Subscriptions",
        "serviceId" => "License Manager Linux Subscriptions",
        "signatureVersion" => "v4",
        "signingName" => "license-manager-linux-subscriptions",
        "uid" => "license-manager-linux-subscriptions-2018-05-10",
      }

      api.add_operation(:deregister_subscription_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterSubscriptionProvider"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/DeregisterSubscriptionProvider"
        o.input = Shapes::ShapeRef.new(shape: DeregisterSubscriptionProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterSubscriptionProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_registered_subscription_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegisteredSubscriptionProvider"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/GetRegisteredSubscriptionProvider"
        o.input = Shapes::ShapeRef.new(shape: GetRegisteredSubscriptionProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegisteredSubscriptionProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_service_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceSettings"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/GetServiceSettings"
        o.input = Shapes::ShapeRef.new(shape: GetServiceSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_linux_subscription_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLinuxSubscriptionInstances"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/ListLinuxSubscriptionInstances"
        o.input = Shapes::ShapeRef.new(shape: ListLinuxSubscriptionInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLinuxSubscriptionInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_linux_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLinuxSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/ListLinuxSubscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListLinuxSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLinuxSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registered_subscription_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegisteredSubscriptionProviders"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/ListRegisteredSubscriptionProviders"
        o.input = Shapes::ShapeRef.new(shape: ListRegisteredSubscriptionProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegisteredSubscriptionProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:register_subscription_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterSubscriptionProvider"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/RegisterSubscriptionProvider"
        o.input = Shapes::ShapeRef.new(shape: RegisterSubscriptionProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterSubscriptionProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_service_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceSettings"
        o.http_method = "POST"
        o.http_request_uri = "/subscription/UpdateServiceSettings"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end

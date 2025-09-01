# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManagerLinuxSubscriptions
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BoxInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#BoxInteger', name: 'BoxInteger')
    BoxLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#BoxLong', name: 'BoxLong')
    DeregisterSubscriptionProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProviderRequest', name: 'DeregisterSubscriptionProviderRequest')
    DeregisterSubscriptionProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProviderResponse', name: 'DeregisterSubscriptionProviderResponse')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Filter', name: 'Filter')
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#FilterList', name: 'FilterList')
    GetRegisteredSubscriptionProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProviderRequest', name: 'GetRegisteredSubscriptionProviderRequest')
    GetRegisteredSubscriptionProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProviderResponse', name: 'GetRegisteredSubscriptionProviderResponse')
    GetServiceSettingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettingsInput', name: 'GetServiceSettingsInput')
    GetServiceSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettingsOutput', name: 'GetServiceSettingsOutput')
    Instance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Instance', name: 'Instance')
    InstanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#InstanceList', name: 'InstanceList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server"})
    LinuxSubscriptionsDiscovery = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#LinuxSubscriptionsDiscovery', name: 'LinuxSubscriptionsDiscovery', traits: {"smithy.api#enum" => [{"name" => "Enabled", "value" => "Enabled", "documentation" => "Enabled LinuxSubscriptionsDiscovery"}, {"name" => "Disabled", "value" => "Disabled", "documentation" => "Disabled LinuxSubscriptionsDiscovery"}]})
    LinuxSubscriptionsDiscoverySettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#LinuxSubscriptionsDiscoverySettings', name: 'LinuxSubscriptionsDiscoverySettings')
    ListLinuxSubscriptionInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstancesInput', name: 'ListLinuxSubscriptionInstancesInput')
    ListLinuxSubscriptionInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstancesOutput', name: 'ListLinuxSubscriptionInstancesOutput')
    ListLinuxSubscriptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionsInput', name: 'ListLinuxSubscriptionsInput')
    ListLinuxSubscriptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionsOutput', name: 'ListLinuxSubscriptionsOutput')
    ListRegisteredSubscriptionProvidersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProvidersRequest', name: 'ListRegisteredSubscriptionProvidersRequest')
    ListRegisteredSubscriptionProvidersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProvidersResponse', name: 'ListRegisteredSubscriptionProvidersResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Operator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Operator', name: 'Operator', traits: {"smithy.api#enum" => [{"name" => "EQUAL", "value" => "Equal", "documentation" => "Equal operator"}, {"name" => "NOT_EQUAL", "value" => "NotEqual", "documentation" => "Not equal operator"}, {"name" => "CONTAINS", "value" => "Contains", "documentation" => "Contains operator"}], "smithy.api#length" => {"min" => 1, "max" => 20}})
    OrganizationIntegration = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#OrganizationIntegration', name: 'OrganizationIntegration', traits: {"smithy.api#enum" => [{"name" => "Enabled", "value" => "Enabled", "documentation" => "Enabled OrganizationIntegration"}, {"name" => "Disabled", "value" => "Disabled", "documentation" => "Disabled OrganizationIntegration"}]})
    ProductCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ProductCodeList', name: 'ProductCodeList')
    RegisterSubscriptionProviderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProviderRequest', name: 'RegisterSubscriptionProviderRequest')
    RegisterSubscriptionProviderResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProviderResponse', name: 'RegisterSubscriptionProviderResponse')
    RegisteredSubscriptionProvider = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisteredSubscriptionProvider', name: 'RegisteredSubscriptionProvider')
    RegisteredSubscriptionProviderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#RegisteredSubscriptionProviderList', name: 'RegisteredSubscriptionProviderList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    SecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SecretArn', name: 'SecretArn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:secretsmanager:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:secret:[^/]{1,1023}$"})
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Status', name: 'Status', traits: {"smithy.api#enum" => [{"name" => "InProgress", "value" => "InProgress", "documentation" => "InProgress status"}, {"name" => "Completed", "value" => "Completed", "documentation" => "Completed status"}, {"name" => "Successful", "value" => "Successful", "documentation" => "Successful status"}, {"name" => "Failed", "value" => "Failed", "documentation" => "Failed status"}]})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#StringList', name: 'StringList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    StringMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#StringMap', name: 'StringMap')
    Subscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Subscription', name: 'Subscription')
    SubscriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionList', name: 'SubscriptionList')
    SubscriptionProviderArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderArn', name: 'SubscriptionProviderArn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{1,510}/[a-z0-9-\\.]{1,510}$"})
    SubscriptionProviderSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderSource', name: 'SubscriptionProviderSource', traits: {"smithy.api#enum" => [{"name" => "RedHat", "value" => "RedHat", "documentation" => "RedHat subscription provider namespace"}]})
    SubscriptionProviderSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderSourceList', name: 'SubscriptionProviderSourceList')
    SubscriptionProviderStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#SubscriptionProviderStatus', name: 'SubscriptionProviderStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "ACTIVE status"}, {"name" => "INVALID", "value" => "INVALID", "documentation" => "INVALID status"}, {"name" => "PENDING", "value" => "PENDING", "documentation" => "PENDING status"}]})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#TagResourceResponse', name: 'TagResourceResponse')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateServiceSettingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettingsInput', name: 'UpdateServiceSettingsInput')
    UpdateServiceSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettingsOutput', name: 'UpdateServiceSettingsOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanagerlinuxsubscriptions#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})

    DeregisterSubscriptionProviderRequest.add_member(:subscription_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the subscription provider resource to deregister.</p>", "smithy.api#required" => {}}))
    DeregisterSubscriptionProviderRequest.type = Types::DeregisterSubscriptionProviderRequest
    DeregisterSubscriptionProviderResponse.type = Types::DeregisterSubscriptionProviderResponse
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The type of name to filter by.</p>"}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>One or more values for the name to filter by.</p>"}))
    Filter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>An operator for filtering results.</p>"}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetRegisteredSubscriptionProviderRequest.add_member(:subscription_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the BYOL registration resource to get details for.</p>", "smithy.api#required" => {}}))
    GetRegisteredSubscriptionProviderRequest.type = Types::GetRegisteredSubscriptionProviderRequest
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the BYOL registration resource specified in the request.</p>"}))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_source, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource', traits: {"smithy.api#documentation" => "<p>The subscription provider for the BYOL registration resource specified \n\t\t\tin the request.</p>"}))
    GetRegisteredSubscriptionProviderResponse.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the third-party access secret stored in Secrets Manager for the BYOL \n\t\t\tregistration resource specified in the request.</p>"}))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: 'SubscriptionProviderStatus', traits: {"smithy.api#documentation" => "<p>The status of the Linux subscription provider access token from the last \n\t\t\tsuccessful subscription data request.</p>"}))
    GetRegisteredSubscriptionProviderResponse.add_member(:subscription_provider_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderStatusMessage', traits: {"smithy.api#documentation" => "<p>The detailed message from your subscription provider token status.</p>"}))
    GetRegisteredSubscriptionProviderResponse.add_member(:last_successful_data_retrieval_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LastSuccessfulDataRetrievalTime', traits: {"smithy.api#documentation" => "<p>The timestamp from the last time License Manager retrieved subscription details \n\t\t\tfrom your registered third-party Linux subscription provider.</p>"}))
    GetRegisteredSubscriptionProviderResponse.type = Types::GetRegisteredSubscriptionProviderResponse
    GetServiceSettingsInput.type = Types::GetServiceSettingsInput
    GetServiceSettingsOutput.add_member(:linux_subscriptions_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: 'LinuxSubscriptionsDiscovery', traits: {"smithy.api#documentation" => "<p>Lists if discovery has been enabled for Linux subscriptions.</p>"}))
    GetServiceSettingsOutput.add_member(:linux_subscriptions_discovery_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: 'LinuxSubscriptionsDiscoverySettings', traits: {"smithy.api#documentation" => "<p>Lists the settings defined for Linux subscriptions discovery. The settings include if\n      Organizations integration has been enabled, and which Regions data will be aggregated from.</p>"}))
    GetServiceSettingsOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of Linux subscriptions settings being applied.</p>"}))
    GetServiceSettingsOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A message which details the Linux subscriptions service settings current status.</p>"}))
    GetServiceSettingsOutput.add_member(:home_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'HomeRegions', traits: {"smithy.api#documentation" => "<p>The Region in which License Manager displays the aggregated data for Linux\n      subscriptions.</p>"}))
    GetServiceSettingsOutput.type = Types::GetServiceSettingsOutput
    Instance.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'AmiId', traits: {"smithy.api#documentation" => "<p>The AMI ID used to launch the instance.</p>"}))
    Instance.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceID', traits: {"smithy.api#documentation" => "<p>The instance ID of the resource.</p>"}))
    Instance.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type of the resource.</p>"}))
    Instance.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'AccountID', traits: {"smithy.api#documentation" => "<p>The account ID which owns the instance.</p>"}))
    Instance.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the instance.</p>"}))
    Instance.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Region the instance is running in.</p>"}))
    Instance.add_member(:usage_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'UsageOperation', traits: {"smithy.api#documentation" => "<p>The usage operation of the instance. For more information, see For more information, see\n        <a href=\"https://docs.aws.amazon.com/license-manager/latest/userguide/linux-subscriptions-usage-operation.html\">Usage\n        operation values</a> in the <i>License Manager User Guide</i>.</p>"}))
    Instance.add_member(:product_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeList, location_name: 'ProductCode', traits: {"smithy.api#documentation" => "<p>The product code for the instance. For more information, see <a href=\"https://docs.aws.amazon.com/license-manager/latest/userguide/linux-subscriptions-usage-operation.html\">Usage\n        operation values</a> in the <i>License Manager User Guide</i> .</p>"}))
    Instance.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time in which the last discovery updated the instance details.</p>"}))
    Instance.add_member(:subscription_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionName', traits: {"smithy.api#documentation" => "<p>The name of the license subscription that the instance uses.</p>"}))
    Instance.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OsVersion', traits: {"smithy.api#documentation" => "<p>The operating system software version that runs on your instance.</p>"}))
    Instance.add_member(:subscription_provider_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderCreateTime', traits: {"smithy.api#documentation" => "<p>The timestamp when you registered the third-party Linux subscription \n\t\t\tprovider for the subscription that the instance uses.</p>"}))
    Instance.add_member(:subscription_provider_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderUpdateTime', traits: {"smithy.api#documentation" => "<p>The timestamp from the last time that the instance synced with the registered \n\t\t\tthird-party Linux subscription provider.</p>"}))
    Instance.add_member(:dual_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'DualSubscription', traits: {"smithy.api#documentation" => "<p>Indicates that you have two different license subscriptions for \n\t\t\tthe same software on your instance.</p>"}))
    Instance.add_member(:registered_with_subscription_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'RegisteredWithSubscriptionProvider', traits: {"smithy.api#documentation" => "<p>Indicates that your instance uses a BYOL license subscription from \n\t\t\ta third-party Linux subscription provider that you've registered with License Manager.</p>"}))
    Instance.type = Types::Instance
    InstanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    LinuxSubscriptionsDiscoverySettings.add_member(:source_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SourceRegions', traits: {"smithy.api#documentation" => "<p>The Regions in which to discover data for Linux subscriptions.</p>", "smithy.api#required" => {}}))
    LinuxSubscriptionsDiscoverySettings.add_member(:organization_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationIntegration, location_name: 'OrganizationIntegration', traits: {"smithy.api#documentation" => "<p>Details if you have enabled resource discovery across your accounts in Organizations.</p>", "smithy.api#required" => {}}))
    LinuxSubscriptionsDiscoverySettings.type = Types::LinuxSubscriptionsDiscoverySettings
    ListLinuxSubscriptionInstancesInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of structures that you can use to filter the results by your specified criteria. \n    \tFor example, you can specify <code>Region</code> in the <code>Name</code>, with the \n    \t<code>contains</code> operator to list all subscriptions that match a partial string in the \n    \t<code>Value</code>, such as <code>us-west</code>.</p>\n         <p>For each filter, you can specify one of the following values for the <code>Name</code> key \n    \tto streamline results:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AccountID</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>AmiID</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>DualSubscription</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>InstanceID</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>InstanceType</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ProductCode</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Region</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>UsageOperation</code>\n               </p>\n            </li>\n         </ul>\n         <p>For each filter, you can use one of the following <code>Operator</code> values to \n  \t\tdefine the behavior of the filter:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>contains</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>equals</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Notequal</code>\n               </p>\n            </li>\n         </ul>"}))
    ListLinuxSubscriptionInstancesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum items to return in a request.</p>"}))
    ListLinuxSubscriptionInstancesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This \n\tis the nextToken from a previously truncated response.</p>", "smithy.api#length" => {"min" => 1, "max" => 16384}}))
    ListLinuxSubscriptionInstancesInput.type = Types::ListLinuxSubscriptionInstancesInput
    ListLinuxSubscriptionInstancesOutput.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'Instances', traits: {"smithy.api#documentation" => "<p>An array that contains instance objects.</p>"}))
    ListLinuxSubscriptionInstancesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this \n\tfield isn't empty, there are additional elements that the service hasn't \n\tincluded in this request. Use this token with the next request to retrieve \n\tadditional objects.</p>"}))
    ListLinuxSubscriptionInstancesOutput.type = Types::ListLinuxSubscriptionInstancesOutput
    ListLinuxSubscriptionsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of structures that you can use to filter the results to those that match one or\n      more sets of key-value pairs that you specify. For example, you can filter by the name of\n        <code>Subscription</code> with an optional operator to see subscriptions that match,\n      partially match, or don't match a certain subscription's name.</p>\n         <p>The valid names for this filter are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Subscription</code>\n               </p>\n            </li>\n         </ul>\n         <p>The valid Operators for this filter are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>contains</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>equals</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Notequal</code>\n               </p>\n            </li>\n         </ul>"}))
    ListLinuxSubscriptionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum items to return in a request.</p>"}))
    ListLinuxSubscriptionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This \n\tis the nextToken from a previously truncated response.</p>", "smithy.api#length" => {"min" => 1, "max" => 16384}}))
    ListLinuxSubscriptionsInput.type = Types::ListLinuxSubscriptionsInput
    ListLinuxSubscriptionsOutput.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'Subscriptions', traits: {"smithy.api#documentation" => "<p>An array that contains subscription objects.</p>"}))
    ListLinuxSubscriptionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this \n\tfield isn't empty, there are additional elements that the service hasn't \n\tincluded in this request. Use this token with the next request to retrieve \n\tadditional objects.</p>"}))
    ListLinuxSubscriptionsOutput.type = Types::ListLinuxSubscriptionsOutput
    ListRegisteredSubscriptionProvidersRequest.add_member(:subscription_provider_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSourceList, location_name: 'SubscriptionProviderSources', traits: {"smithy.api#documentation" => "<p>To filter your results, specify which subscription providers to return \n\t\t\tin the list.</p>"}))
    ListRegisteredSubscriptionProvidersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum items to return in a request.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRegisteredSubscriptionProvidersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This \n\tis the nextToken from a previously truncated response.</p>"}))
    ListRegisteredSubscriptionProvidersRequest.type = Types::ListRegisteredSubscriptionProvidersRequest
    ListRegisteredSubscriptionProvidersResponse.add_member(:registered_subscription_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: RegisteredSubscriptionProviderList, location_name: 'RegisteredSubscriptionProviders', traits: {"smithy.api#documentation" => "<p>The list of BYOL registration resources that fit the criteria \n\t\t\tyou specified in the request.</p>"}))
    ListRegisteredSubscriptionProvidersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used for paginated responses. When this \n\tfield isn't empty, there are additional elements that the service hasn't \n\tincluded in this request. Use this token with the next request to retrieve \n\tadditional objects.</p>"}))
    ListRegisteredSubscriptionProvidersResponse.type = Types::ListRegisteredSubscriptionProvidersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which to list metadata tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The metadata tags for the requested resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ProductCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    RegisterSubscriptionProviderRequest.add_member(:subscription_provider_source, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource', traits: {"smithy.api#documentation" => "<p>The supported Linux subscription provider to register.</p>", "smithy.api#required" => {}}))
    RegisterSubscriptionProviderRequest.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the secret where you've stored your subscription provider's access token. For \n\t\t\tRHEL subscriptions managed through the Red Hat Subscription Manager (RHSM), the secret contains \n\t\t\tyour Red Hat Offline token.</p>", "smithy.api#required" => {}}))
    RegisterSubscriptionProviderRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The metadata tags to assign to your registered Linux subscription provider \n\t\t\tresource.</p>"}))
    RegisterSubscriptionProviderRequest.type = Types::RegisterSubscriptionProviderRequest
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_source, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource', traits: {"smithy.api#documentation" => "<p>The Linux subscription provider that you registered.</p>"}))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Linux subscription provider resource that you registered.</p>"}))
    RegisterSubscriptionProviderResponse.add_member(:subscription_provider_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: 'SubscriptionProviderStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of the registration action for the Linux subscription provider \n\t\t\tthat you requested.</p>"}))
    RegisterSubscriptionProviderResponse.type = Types::RegisterSubscriptionProviderResponse
    RegisteredSubscriptionProvider.add_member(:subscription_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'SubscriptionProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Linux subscription provider resource that you registered.</p>"}))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_source, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource, location_name: 'SubscriptionProviderSource', traits: {"smithy.api#documentation" => "<p>A supported third-party Linux subscription provider. License Manager currently supports \n\t\t\tRed Hat subscriptions.</p>"}))
    RegisteredSubscriptionProvider.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Secrets Manager secret that stores your registered Linux subscription provider \n\t\t\taccess token. For RHEL account subscriptions, this is the offline token.</p>"}))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderStatus, location_name: 'SubscriptionProviderStatus', traits: {"smithy.api#documentation" => "<p>Indicates the status of your registered Linux subscription provider access token \n\t\t\tfrom the last time License Manager retrieved subscription data. For RHEL account subscriptions, \n\t\t\tthis is the status of the offline token.</p>"}))
    RegisteredSubscriptionProvider.add_member(:subscription_provider_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SubscriptionProviderStatusMessage', traits: {"smithy.api#documentation" => "<p>A detailed message that's associated with your BYOL subscription \n\t\t\tprovider token status.</p>"}))
    RegisteredSubscriptionProvider.add_member(:last_successful_data_retrieval_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LastSuccessfulDataRetrievalTime', traits: {"smithy.api#documentation" => "<p>The timestamp from the last time that License Manager accessed third-party subscription data \n\t\t\tfor your account from your registered Linux subscription provider.</p>"}))
    RegisteredSubscriptionProvider.type = Types::RegisteredSubscriptionProvider
    RegisteredSubscriptionProviderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisteredSubscriptionProvider)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    StringMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    StringMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Subscription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the subscription.</p>"}))
    Subscription.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of subscription. The type can be subscription-included with Amazon EC2, Bring Your Own\n      Subscription model (BYOS), or from the Amazon Web Services Marketplace. Certain subscriptions may use licensing from the\n      Amazon Web Services Marketplace as well as OS licensing from Amazon EC2 or BYOS.</p>"}))
    Subscription.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'InstanceCount', traits: {"smithy.api#documentation" => "<p>The total amount of running instances using this subscription.</p>"}))
    Subscription.type = Types::Subscription
    SubscriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    SubscriptionProviderSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderSource)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services resource to which to add the specified \n\t\t\tmetadata tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The metadata tags to assign to the Amazon Web Services resource. Tags are \n\t\t\tformatted as key value pairs.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProviderArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services resource to remove the metadata tags from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of metadata tag keys to remove from the requested \n\t\t\tresource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateServiceSettingsInput.add_member(:linux_subscriptions_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: 'LinuxSubscriptionsDiscovery', traits: {"smithy.api#documentation" => "<p>Describes if the discovery of Linux subscriptions is enabled.</p>", "smithy.api#required" => {}}))
    UpdateServiceSettingsInput.add_member(:linux_subscriptions_discovery_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: 'LinuxSubscriptionsDiscoverySettings', traits: {"smithy.api#documentation" => "<p>The settings defined for Linux subscriptions discovery. The settings include if Organizations\n      integration has been enabled, and which Regions data will be aggregated from.</p>", "smithy.api#required" => {}}))
    UpdateServiceSettingsInput.add_member(:allow_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AllowUpdate', traits: {"smithy.api#documentation" => "<p>Describes if updates are allowed to the service settings for Linux subscriptions. If you\n      allow updates, you can aggregate Linux subscription data in more than one home Region.</p>"}))
    UpdateServiceSettingsInput.type = Types::UpdateServiceSettingsInput
    UpdateServiceSettingsOutput.add_member(:linux_subscriptions_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscovery, location_name: 'LinuxSubscriptionsDiscovery', traits: {"smithy.api#documentation" => "<p>Lists if discovery has been enabled for Linux subscriptions.</p>"}))
    UpdateServiceSettingsOutput.add_member(:linux_subscriptions_discovery_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: LinuxSubscriptionsDiscoverySettings, location_name: 'LinuxSubscriptionsDiscoverySettings', traits: {"smithy.api#documentation" => "<p>The settings defined for Linux subscriptions discovery. The settings include if Organizations\n      integration has been enabled, and which Regions data will be aggregated from.</p>"}))
    UpdateServiceSettingsOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of Linux subscriptions settings being applied.</p>"}))
    UpdateServiceSettingsOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A message which details the Linux subscriptions service settings current status.</p>"}))
    UpdateServiceSettingsOutput.add_member(:home_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'HomeRegions', traits: {"smithy.api#documentation" => "<p>The Region in which License Manager displays the aggregated data for Linux\n      subscriptions.</p>"}))
    UpdateServiceSettingsOutput.type = Types::UpdateServiceSettingsOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    LicenseManagerLinuxSubscriptions = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.licensemanagerlinuxsubscriptions#LicenseManagerLinuxSubscriptions"
      service.name = "LicenseManagerLinuxSubscriptions"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "License Manager Linux Subscriptions", "arnNamespace" => "license-manager-linux-subscriptions", "cloudTrailEventSource" => "license-manager-linux-subscriptions.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "license-manager-linux-subscriptions"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS License Manager Linux Subscriptions"}
      service.add_operation(:deregister_subscription_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#DeregisterSubscriptionProvider"
        operation.name = "DeregisterSubscriptionProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterSubscriptionProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterSubscriptionProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/DeregisterSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_registered_subscription_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#GetRegisteredSubscriptionProvider"
        operation.name = "GetRegisteredSubscriptionProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegisteredSubscriptionProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegisteredSubscriptionProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/GetRegisteredSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_service_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#GetServiceSettings"
        operation.name = "GetServiceSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSettingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/GetServiceSettings"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_linux_subscription_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptionInstances"
        operation.name = "ListLinuxSubscriptionInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListLinuxSubscriptionInstances"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLinuxSubscriptionInstances.new
      end)
      service.add_operation(:list_linux_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListLinuxSubscriptions"
        operation.name = "ListLinuxSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinuxSubscriptionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListLinuxSubscriptions"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListLinuxSubscriptions.new
      end)
      service.add_operation(:list_registered_subscription_providers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListRegisteredSubscriptionProviders"
        operation.name = "ListRegisteredSubscriptionProviders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegisteredSubscriptionProvidersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegisteredSubscriptionProvidersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/ListRegisteredSubscriptionProviders"}, "smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListRegisteredSubscriptionProviders.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_subscription_provider, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#RegisterSubscriptionProvider"
        operation.name = "RegisterSubscriptionProvider"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterSubscriptionProviderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterSubscriptionProviderResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/RegisterSubscriptionProvider"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanagerlinuxsubscriptions#UpdateServiceSettings"
        operation.name = "UpdateServiceSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSettingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/subscription/UpdateServiceSettings"}, "smithy.api#idempotent" => {}}
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

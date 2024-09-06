# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManagerUserSubscriptions
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActiveDirectoryIdentityProvider = Shapes::StructureShape.new(name: 'ActiveDirectoryIdentityProvider')
    AssociateUserRequest = Shapes::StructureShape.new(name: 'AssociateUserRequest')
    AssociateUserResponse = Shapes::StructureShape.new(name: 'AssociateUserResponse')
    BoxInteger = Shapes::IntegerShape.new(name: 'BoxInteger')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DeregisterIdentityProviderRequest = Shapes::StructureShape.new(name: 'DeregisterIdentityProviderRequest')
    DeregisterIdentityProviderResponse = Shapes::StructureShape.new(name: 'DeregisterIdentityProviderResponse')
    DisassociateUserRequest = Shapes::StructureShape.new(name: 'DisassociateUserRequest')
    DisassociateUserResponse = Shapes::StructureShape.new(name: 'DisassociateUserResponse')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    IdentityProvider = Shapes::UnionShape.new(name: 'IdentityProvider')
    IdentityProviderSummary = Shapes::StructureShape.new(name: 'IdentityProviderSummary')
    IdentityProviderSummaryList = Shapes::ListShape.new(name: 'IdentityProviderSummaryList')
    InstanceSummary = Shapes::StructureShape.new(name: 'InstanceSummary')
    InstanceSummaryList = Shapes::ListShape.new(name: 'InstanceSummaryList')
    InstanceUserSummary = Shapes::StructureShape.new(name: 'InstanceUserSummary')
    InstanceUserSummaryList = Shapes::ListShape.new(name: 'InstanceUserSummaryList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListIdentityProvidersRequest = Shapes::StructureShape.new(name: 'ListIdentityProvidersRequest')
    ListIdentityProvidersResponse = Shapes::StructureShape.new(name: 'ListIdentityProvidersResponse')
    ListInstancesRequest = Shapes::StructureShape.new(name: 'ListInstancesRequest')
    ListInstancesResponse = Shapes::StructureShape.new(name: 'ListInstancesResponse')
    ListProductSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListProductSubscriptionsRequest')
    ListProductSubscriptionsResponse = Shapes::StructureShape.new(name: 'ListProductSubscriptionsResponse')
    ListUserAssociationsRequest = Shapes::StructureShape.new(name: 'ListUserAssociationsRequest')
    ListUserAssociationsResponse = Shapes::StructureShape.new(name: 'ListUserAssociationsResponse')
    ProductUserSummary = Shapes::StructureShape.new(name: 'ProductUserSummary')
    ProductUserSummaryList = Shapes::ListShape.new(name: 'ProductUserSummaryList')
    RegisterIdentityProviderRequest = Shapes::StructureShape.new(name: 'RegisterIdentityProviderRequest')
    RegisterIdentityProviderResponse = Shapes::StructureShape.new(name: 'RegisterIdentityProviderResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Settings = Shapes::StructureShape.new(name: 'Settings')
    SettingsSubnetsList = Shapes::ListShape.new(name: 'SettingsSubnetsList')
    StartProductSubscriptionRequest = Shapes::StructureShape.new(name: 'StartProductSubscriptionRequest')
    StartProductSubscriptionResponse = Shapes::StructureShape.new(name: 'StartProductSubscriptionResponse')
    StopProductSubscriptionRequest = Shapes::StructureShape.new(name: 'StopProductSubscriptionRequest')
    StopProductSubscriptionResponse = Shapes::StructureShape.new(name: 'StopProductSubscriptionResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Subnet = Shapes::StringShape.new(name: 'Subnet')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateIdentityProviderSettingsRequest = Shapes::StructureShape.new(name: 'UpdateIdentityProviderSettingsRequest')
    UpdateIdentityProviderSettingsResponse = Shapes::StructureShape.new(name: 'UpdateIdentityProviderSettingsResponse')
    UpdateSettings = Shapes::StructureShape.new(name: 'UpdateSettings')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActiveDirectoryIdentityProvider.add_member(:directory_id, Shapes::ShapeRef.new(shape: String, location_name: "DirectoryId"))
    ActiveDirectoryIdentityProvider.struct_class = Types::ActiveDirectoryIdentityProvider

    AssociateUserRequest.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    AssociateUserRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    AssociateUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    AssociateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Username"))
    AssociateUserRequest.struct_class = Types::AssociateUserRequest

    AssociateUserResponse.add_member(:instance_user_summary, Shapes::ShapeRef.new(shape: InstanceUserSummary, required: true, location_name: "InstanceUserSummary"))
    AssociateUserResponse.struct_class = Types::AssociateUserResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    DeregisterIdentityProviderRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    DeregisterIdentityProviderRequest.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    DeregisterIdentityProviderRequest.struct_class = Types::DeregisterIdentityProviderRequest

    DeregisterIdentityProviderResponse.add_member(:identity_provider_summary, Shapes::ShapeRef.new(shape: IdentityProviderSummary, required: true, location_name: "IdentityProviderSummary"))
    DeregisterIdentityProviderResponse.struct_class = Types::DeregisterIdentityProviderResponse

    DisassociateUserRequest.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    DisassociateUserRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    DisassociateUserRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    DisassociateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Username"))
    DisassociateUserRequest.struct_class = Types::DisassociateUserRequest

    DisassociateUserResponse.add_member(:instance_user_summary, Shapes::ShapeRef.new(shape: InstanceUserSummary, required: true, location_name: "InstanceUserSummary"))
    DisassociateUserResponse.struct_class = Types::DisassociateUserResponse

    Filter.add_member(:attribute, Shapes::ShapeRef.new(shape: String, location_name: "Attribute"))
    Filter.add_member(:operation, Shapes::ShapeRef.new(shape: String, location_name: "Operation"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    IdentityProvider.add_member(:active_directory_identity_provider, Shapes::ShapeRef.new(shape: ActiveDirectoryIdentityProvider, location_name: "ActiveDirectoryIdentityProvider"))
    IdentityProvider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentityProvider.add_member_subclass(:active_directory_identity_provider, Types::IdentityProvider::ActiveDirectoryIdentityProvider)
    IdentityProvider.add_member_subclass(:unknown, Types::IdentityProvider::Unknown)
    IdentityProvider.struct_class = Types::IdentityProvider

    IdentityProviderSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    IdentityProviderSummary.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    IdentityProviderSummary.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    IdentityProviderSummary.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, required: true, location_name: "Settings"))
    IdentityProviderSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    IdentityProviderSummary.struct_class = Types::IdentityProviderSummary

    IdentityProviderSummaryList.member = Shapes::ShapeRef.new(shape: IdentityProviderSummary)

    InstanceSummary.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    InstanceSummary.add_member(:last_status_check_date, Shapes::ShapeRef.new(shape: String, location_name: "LastStatusCheckDate"))
    InstanceSummary.add_member(:products, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "Products"))
    InstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    InstanceSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    InstanceSummary.struct_class = Types::InstanceSummary

    InstanceSummaryList.member = Shapes::ShapeRef.new(shape: InstanceSummary)

    InstanceUserSummary.add_member(:association_date, Shapes::ShapeRef.new(shape: String, location_name: "AssociationDate"))
    InstanceUserSummary.add_member(:disassociation_date, Shapes::ShapeRef.new(shape: String, location_name: "DisassociationDate"))
    InstanceUserSummary.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    InstanceUserSummary.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    InstanceUserSummary.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    InstanceUserSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    InstanceUserSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    InstanceUserSummary.add_member(:username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Username"))
    InstanceUserSummary.struct_class = Types::InstanceUserSummary

    InstanceUserSummaryList.member = Shapes::ShapeRef.new(shape: InstanceUserSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListIdentityProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListIdentityProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIdentityProvidersRequest.struct_class = Types::ListIdentityProvidersRequest

    ListIdentityProvidersResponse.add_member(:identity_provider_summaries, Shapes::ShapeRef.new(shape: IdentityProviderSummaryList, required: true, location_name: "IdentityProviderSummaries"))
    ListIdentityProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIdentityProvidersResponse.struct_class = Types::ListIdentityProvidersResponse

    ListInstancesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListInstancesRequest.struct_class = Types::ListInstancesRequest

    ListInstancesResponse.add_member(:instance_summaries, Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: "InstanceSummaries"))
    ListInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListInstancesResponse.struct_class = Types::ListInstancesResponse

    ListProductSubscriptionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListProductSubscriptionsRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    ListProductSubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListProductSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListProductSubscriptionsRequest.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    ListProductSubscriptionsRequest.struct_class = Types::ListProductSubscriptionsRequest

    ListProductSubscriptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListProductSubscriptionsResponse.add_member(:product_user_summaries, Shapes::ShapeRef.new(shape: ProductUserSummaryList, location_name: "ProductUserSummaries"))
    ListProductSubscriptionsResponse.struct_class = Types::ListProductSubscriptionsResponse

    ListUserAssociationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListUserAssociationsRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    ListUserAssociationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    ListUserAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListUserAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUserAssociationsRequest.struct_class = Types::ListUserAssociationsRequest

    ListUserAssociationsResponse.add_member(:instance_user_summaries, Shapes::ShapeRef.new(shape: InstanceUserSummaryList, location_name: "InstanceUserSummaries"))
    ListUserAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUserAssociationsResponse.struct_class = Types::ListUserAssociationsResponse

    ProductUserSummary.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    ProductUserSummary.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    ProductUserSummary.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    ProductUserSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    ProductUserSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    ProductUserSummary.add_member(:subscription_end_date, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionEndDate"))
    ProductUserSummary.add_member(:subscription_start_date, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionStartDate"))
    ProductUserSummary.add_member(:username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Username"))
    ProductUserSummary.struct_class = Types::ProductUserSummary

    ProductUserSummaryList.member = Shapes::ShapeRef.new(shape: ProductUserSummary)

    RegisterIdentityProviderRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    RegisterIdentityProviderRequest.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    RegisterIdentityProviderRequest.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "Settings"))
    RegisterIdentityProviderRequest.struct_class = Types::RegisterIdentityProviderRequest

    RegisterIdentityProviderResponse.add_member(:identity_provider_summary, Shapes::ShapeRef.new(shape: IdentityProviderSummary, required: true, location_name: "IdentityProviderSummary"))
    RegisterIdentityProviderResponse.struct_class = Types::RegisterIdentityProviderResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Settings.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroup, required: true, location_name: "SecurityGroupId"))
    Settings.add_member(:subnets, Shapes::ShapeRef.new(shape: SettingsSubnetsList, required: true, location_name: "Subnets"))
    Settings.struct_class = Types::Settings

    SettingsSubnetsList.member = Shapes::ShapeRef.new(shape: Subnet)

    StartProductSubscriptionRequest.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    StartProductSubscriptionRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    StartProductSubscriptionRequest.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    StartProductSubscriptionRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Username"))
    StartProductSubscriptionRequest.struct_class = Types::StartProductSubscriptionRequest

    StartProductSubscriptionResponse.add_member(:product_user_summary, Shapes::ShapeRef.new(shape: ProductUserSummary, required: true, location_name: "ProductUserSummary"))
    StartProductSubscriptionResponse.struct_class = Types::StartProductSubscriptionResponse

    StopProductSubscriptionRequest.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    StopProductSubscriptionRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    StopProductSubscriptionRequest.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    StopProductSubscriptionRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Username"))
    StopProductSubscriptionRequest.struct_class = Types::StopProductSubscriptionRequest

    StopProductSubscriptionResponse.add_member(:product_user_summary, Shapes::ShapeRef.new(shape: ProductUserSummary, required: true, location_name: "ProductUserSummary"))
    StopProductSubscriptionResponse.struct_class = Types::StopProductSubscriptionResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Subnets.member = Shapes::ShapeRef.new(shape: Subnet)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateIdentityProviderSettingsRequest.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProvider, required: true, location_name: "IdentityProvider"))
    UpdateIdentityProviderSettingsRequest.add_member(:product, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Product"))
    UpdateIdentityProviderSettingsRequest.add_member(:update_settings, Shapes::ShapeRef.new(shape: UpdateSettings, required: true, location_name: "UpdateSettings"))
    UpdateIdentityProviderSettingsRequest.struct_class = Types::UpdateIdentityProviderSettingsRequest

    UpdateIdentityProviderSettingsResponse.add_member(:identity_provider_summary, Shapes::ShapeRef.new(shape: IdentityProviderSummary, required: true, location_name: "IdentityProviderSummary"))
    UpdateIdentityProviderSettingsResponse.struct_class = Types::UpdateIdentityProviderSettingsResponse

    UpdateSettings.add_member(:add_subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "AddSubnets"))
    UpdateSettings.add_member(:remove_subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "RemoveSubnets"))
    UpdateSettings.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroup, location_name: "SecurityGroupId"))
    UpdateSettings.struct_class = Types::UpdateSettings

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "license-manager-user-subscriptions",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS License Manager User Subscriptions",
        "serviceId" => "License Manager User Subscriptions",
        "signatureVersion" => "v4",
        "signingName" => "license-manager-user-subscriptions",
        "uid" => "license-manager-user-subscriptions-2018-05-10",
      }

      api.add_operation(:associate_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateUser"
        o.http_method = "POST"
        o.http_request_uri = "/user/AssociateUser"
        o.input = Shapes::ShapeRef.new(shape: AssociateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:deregister_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identity-provider/DeregisterIdentityProvider"
        o.input = Shapes::ShapeRef.new(shape: DeregisterIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateUser"
        o.http_method = "POST"
        o.http_request_uri = "/user/DisassociateUser"
        o.input = Shapes::ShapeRef.new(shape: DisassociateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_identity_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentityProviders"
        o.http_method = "POST"
        o.http_request_uri = "/identity-provider/ListIdentityProviders"
        o.input = Shapes::ShapeRef.new(shape: ListIdentityProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIdentityProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstances"
        o.http_method = "POST"
        o.http_request_uri = "/instance/ListInstances"
        o.input = Shapes::ShapeRef.new(shape: ListInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_product_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProductSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/user/ListProductSubscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListProductSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProductSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/user/ListUserAssociations"
        o.input = Shapes::ShapeRef.new(shape: ListUserAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identity-provider/RegisterIdentityProvider"
        o.input = Shapes::ShapeRef.new(shape: RegisterIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_product_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProductSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/user/StartProductSubscription"
        o.input = Shapes::ShapeRef.new(shape: StartProductSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartProductSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_product_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopProductSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/user/StopProductSubscription"
        o.input = Shapes::ShapeRef.new(shape: StopProductSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopProductSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_identity_provider_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdentityProviderSettings"
        o.http_method = "POST"
        o.http_request_uri = "/identity-provider/UpdateIdentityProviderSettings"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdentityProviderSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdentityProviderSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end

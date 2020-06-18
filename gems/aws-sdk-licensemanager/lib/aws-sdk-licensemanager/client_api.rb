# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AuthorizationException = Shapes::StructureShape.new(name: 'AuthorizationException')
    AutomatedDiscoveryInformation = Shapes::StructureShape.new(name: 'AutomatedDiscoveryInformation')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxBoolean = Shapes::BooleanShape.new(name: 'BoxBoolean')
    BoxInteger = Shapes::IntegerShape.new(name: 'BoxInteger')
    BoxLong = Shapes::IntegerShape.new(name: 'BoxLong')
    ConsumedLicenseSummary = Shapes::StructureShape.new(name: 'ConsumedLicenseSummary')
    ConsumedLicenseSummaryList = Shapes::ListShape.new(name: 'ConsumedLicenseSummaryList')
    CreateLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'CreateLicenseConfigurationRequest')
    CreateLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'CreateLicenseConfigurationResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteLicenseConfigurationRequest')
    DeleteLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteLicenseConfigurationResponse')
    FailedDependencyException = Shapes::StructureShape.new(name: 'FailedDependencyException')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterLimitExceededException = Shapes::StructureShape.new(name: 'FilterLimitExceededException')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'GetLicenseConfigurationRequest')
    GetLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'GetLicenseConfigurationResponse')
    GetServiceSettingsRequest = Shapes::StructureShape.new(name: 'GetServiceSettingsRequest')
    GetServiceSettingsResponse = Shapes::StructureShape.new(name: 'GetServiceSettingsResponse')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidResourceStateException = Shapes::StructureShape.new(name: 'InvalidResourceStateException')
    InventoryFilter = Shapes::StructureShape.new(name: 'InventoryFilter')
    InventoryFilterCondition = Shapes::StringShape.new(name: 'InventoryFilterCondition')
    InventoryFilterList = Shapes::ListShape.new(name: 'InventoryFilterList')
    LicenseConfiguration = Shapes::StructureShape.new(name: 'LicenseConfiguration')
    LicenseConfigurationAssociation = Shapes::StructureShape.new(name: 'LicenseConfigurationAssociation')
    LicenseConfigurationAssociations = Shapes::ListShape.new(name: 'LicenseConfigurationAssociations')
    LicenseConfigurationStatus = Shapes::StringShape.new(name: 'LicenseConfigurationStatus')
    LicenseConfigurationUsage = Shapes::StructureShape.new(name: 'LicenseConfigurationUsage')
    LicenseConfigurationUsageList = Shapes::ListShape.new(name: 'LicenseConfigurationUsageList')
    LicenseConfigurations = Shapes::ListShape.new(name: 'LicenseConfigurations')
    LicenseCountingType = Shapes::StringShape.new(name: 'LicenseCountingType')
    LicenseOperationFailure = Shapes::StructureShape.new(name: 'LicenseOperationFailure')
    LicenseOperationFailureList = Shapes::ListShape.new(name: 'LicenseOperationFailureList')
    LicenseSpecification = Shapes::StructureShape.new(name: 'LicenseSpecification')
    LicenseSpecifications = Shapes::ListShape.new(name: 'LicenseSpecifications')
    LicenseUsageException = Shapes::StructureShape.new(name: 'LicenseUsageException')
    ListAssociationsForLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'ListAssociationsForLicenseConfigurationRequest')
    ListAssociationsForLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'ListAssociationsForLicenseConfigurationResponse')
    ListFailuresForLicenseConfigurationOperationsRequest = Shapes::StructureShape.new(name: 'ListFailuresForLicenseConfigurationOperationsRequest')
    ListFailuresForLicenseConfigurationOperationsResponse = Shapes::StructureShape.new(name: 'ListFailuresForLicenseConfigurationOperationsResponse')
    ListLicenseConfigurationsRequest = Shapes::StructureShape.new(name: 'ListLicenseConfigurationsRequest')
    ListLicenseConfigurationsResponse = Shapes::StructureShape.new(name: 'ListLicenseConfigurationsResponse')
    ListLicenseSpecificationsForResourceRequest = Shapes::StructureShape.new(name: 'ListLicenseSpecificationsForResourceRequest')
    ListLicenseSpecificationsForResourceResponse = Shapes::StructureShape.new(name: 'ListLicenseSpecificationsForResourceResponse')
    ListResourceInventoryRequest = Shapes::StructureShape.new(name: 'ListResourceInventoryRequest')
    ListResourceInventoryResponse = Shapes::StructureShape.new(name: 'ListResourceInventoryResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsageForLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'ListUsageForLicenseConfigurationRequest')
    ListUsageForLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'ListUsageForLicenseConfigurationResponse')
    ManagedResourceSummary = Shapes::StructureShape.new(name: 'ManagedResourceSummary')
    ManagedResourceSummaryList = Shapes::ListShape.new(name: 'ManagedResourceSummaryList')
    Message = Shapes::StringShape.new(name: 'Message')
    Metadata = Shapes::StructureShape.new(name: 'Metadata')
    MetadataList = Shapes::ListShape.new(name: 'MetadataList')
    OrganizationConfiguration = Shapes::StructureShape.new(name: 'OrganizationConfiguration')
    ProductInformation = Shapes::StructureShape.new(name: 'ProductInformation')
    ProductInformationFilter = Shapes::StructureShape.new(name: 'ProductInformationFilter')
    ProductInformationFilterList = Shapes::ListShape.new(name: 'ProductInformationFilterList')
    ProductInformationList = Shapes::ListShape.new(name: 'ProductInformationList')
    RateLimitExceededException = Shapes::StructureShape.new(name: 'RateLimitExceededException')
    ResourceInventory = Shapes::StructureShape.new(name: 'ResourceInventory')
    ResourceInventoryList = Shapes::ListShape.new(name: 'ResourceInventoryList')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServerInternalException = Shapes::StructureShape.new(name: 'ServerInternalException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLicenseConfigurationRequest')
    UpdateLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateLicenseConfigurationResponse')
    UpdateLicenseSpecificationsForResourceRequest = Shapes::StructureShape.new(name: 'UpdateLicenseSpecificationsForResourceRequest')
    UpdateLicenseSpecificationsForResourceResponse = Shapes::StructureShape.new(name: 'UpdateLicenseSpecificationsForResourceResponse')
    UpdateServiceSettingsRequest = Shapes::StructureShape.new(name: 'UpdateServiceSettingsRequest')
    UpdateServiceSettingsResponse = Shapes::StructureShape.new(name: 'UpdateServiceSettingsResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AuthorizationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AuthorizationException.struct_class = Types::AuthorizationException

    AutomatedDiscoveryInformation.add_member(:last_run_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastRunTime"))
    AutomatedDiscoveryInformation.struct_class = Types::AutomatedDiscoveryInformation

    ConsumedLicenseSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConsumedLicenseSummary.add_member(:consumed_licenses, Shapes::ShapeRef.new(shape: BoxLong, location_name: "ConsumedLicenses"))
    ConsumedLicenseSummary.struct_class = Types::ConsumedLicenseSummary

    ConsumedLicenseSummaryList.member = Shapes::ShapeRef.new(shape: ConsumedLicenseSummary)

    CreateLicenseConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateLicenseConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateLicenseConfigurationRequest.add_member(:license_counting_type, Shapes::ShapeRef.new(shape: LicenseCountingType, required: true, location_name: "LicenseCountingType"))
    CreateLicenseConfigurationRequest.add_member(:license_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "LicenseCount"))
    CreateLicenseConfigurationRequest.add_member(:license_count_hard_limit, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "LicenseCountHardLimit"))
    CreateLicenseConfigurationRequest.add_member(:license_rules, Shapes::ShapeRef.new(shape: StringList, location_name: "LicenseRules"))
    CreateLicenseConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLicenseConfigurationRequest.add_member(:product_information_list, Shapes::ShapeRef.new(shape: ProductInformationList, location_name: "ProductInformationList"))
    CreateLicenseConfigurationRequest.struct_class = Types::CreateLicenseConfigurationRequest

    CreateLicenseConfigurationResponse.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationArn"))
    CreateLicenseConfigurationResponse.struct_class = Types::CreateLicenseConfigurationResponse

    DeleteLicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    DeleteLicenseConfigurationRequest.struct_class = Types::DeleteLicenseConfigurationRequest

    DeleteLicenseConfigurationResponse.struct_class = Types::DeleteLicenseConfigurationResponse

    FailedDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    FailedDependencyException.struct_class = Types::FailedDependencyException

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    FilterLimitExceededException.struct_class = Types::FilterLimitExceededException

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetLicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    GetLicenseConfigurationRequest.struct_class = Types::GetLicenseConfigurationRequest

    GetLicenseConfigurationResponse.add_member(:license_configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationId"))
    GetLicenseConfigurationResponse.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationArn"))
    GetLicenseConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetLicenseConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GetLicenseConfigurationResponse.add_member(:license_counting_type, Shapes::ShapeRef.new(shape: LicenseCountingType, location_name: "LicenseCountingType"))
    GetLicenseConfigurationResponse.add_member(:license_rules, Shapes::ShapeRef.new(shape: StringList, location_name: "LicenseRules"))
    GetLicenseConfigurationResponse.add_member(:license_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "LicenseCount"))
    GetLicenseConfigurationResponse.add_member(:license_count_hard_limit, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "LicenseCountHardLimit"))
    GetLicenseConfigurationResponse.add_member(:consumed_licenses, Shapes::ShapeRef.new(shape: BoxLong, location_name: "ConsumedLicenses"))
    GetLicenseConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    GetLicenseConfigurationResponse.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccountId"))
    GetLicenseConfigurationResponse.add_member(:consumed_license_summary_list, Shapes::ShapeRef.new(shape: ConsumedLicenseSummaryList, location_name: "ConsumedLicenseSummaryList"))
    GetLicenseConfigurationResponse.add_member(:managed_resource_summary_list, Shapes::ShapeRef.new(shape: ManagedResourceSummaryList, location_name: "ManagedResourceSummaryList"))
    GetLicenseConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GetLicenseConfigurationResponse.add_member(:product_information_list, Shapes::ShapeRef.new(shape: ProductInformationList, location_name: "ProductInformationList"))
    GetLicenseConfigurationResponse.add_member(:automated_discovery_information, Shapes::ShapeRef.new(shape: AutomatedDiscoveryInformation, location_name: "AutomatedDiscoveryInformation"))
    GetLicenseConfigurationResponse.struct_class = Types::GetLicenseConfigurationResponse

    GetServiceSettingsRequest.struct_class = Types::GetServiceSettingsRequest

    GetServiceSettingsResponse.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketArn"))
    GetServiceSettingsResponse.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    GetServiceSettingsResponse.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "OrganizationConfiguration"))
    GetServiceSettingsResponse.add_member(:enable_cross_accounts_discovery, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "EnableCrossAccountsDiscovery"))
    GetServiceSettingsResponse.add_member(:license_manager_resource_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseManagerResourceShareArn"))
    GetServiceSettingsResponse.struct_class = Types::GetServiceSettingsResponse

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidResourceStateException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidResourceStateException.struct_class = Types::InvalidResourceStateException

    InventoryFilter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    InventoryFilter.add_member(:condition, Shapes::ShapeRef.new(shape: InventoryFilterCondition, required: true, location_name: "Condition"))
    InventoryFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    InventoryFilter.struct_class = Types::InventoryFilter

    InventoryFilterList.member = Shapes::ShapeRef.new(shape: InventoryFilter)

    LicenseConfiguration.add_member(:license_configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationId"))
    LicenseConfiguration.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationArn"))
    LicenseConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    LicenseConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    LicenseConfiguration.add_member(:license_counting_type, Shapes::ShapeRef.new(shape: LicenseCountingType, location_name: "LicenseCountingType"))
    LicenseConfiguration.add_member(:license_rules, Shapes::ShapeRef.new(shape: StringList, location_name: "LicenseRules"))
    LicenseConfiguration.add_member(:license_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "LicenseCount"))
    LicenseConfiguration.add_member(:license_count_hard_limit, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "LicenseCountHardLimit"))
    LicenseConfiguration.add_member(:consumed_licenses, Shapes::ShapeRef.new(shape: BoxLong, location_name: "ConsumedLicenses"))
    LicenseConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    LicenseConfiguration.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: String, location_name: "OwnerAccountId"))
    LicenseConfiguration.add_member(:consumed_license_summary_list, Shapes::ShapeRef.new(shape: ConsumedLicenseSummaryList, location_name: "ConsumedLicenseSummaryList"))
    LicenseConfiguration.add_member(:managed_resource_summary_list, Shapes::ShapeRef.new(shape: ManagedResourceSummaryList, location_name: "ManagedResourceSummaryList"))
    LicenseConfiguration.add_member(:product_information_list, Shapes::ShapeRef.new(shape: ProductInformationList, location_name: "ProductInformationList"))
    LicenseConfiguration.add_member(:automated_discovery_information, Shapes::ShapeRef.new(shape: AutomatedDiscoveryInformation, location_name: "AutomatedDiscoveryInformation"))
    LicenseConfiguration.struct_class = Types::LicenseConfiguration

    LicenseConfigurationAssociation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    LicenseConfigurationAssociation.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    LicenseConfigurationAssociation.add_member(:resource_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceOwnerId"))
    LicenseConfigurationAssociation.add_member(:association_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "AssociationTime"))
    LicenseConfigurationAssociation.struct_class = Types::LicenseConfigurationAssociation

    LicenseConfigurationAssociations.member = Shapes::ShapeRef.new(shape: LicenseConfigurationAssociation)

    LicenseConfigurationUsage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    LicenseConfigurationUsage.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    LicenseConfigurationUsage.add_member(:resource_status, Shapes::ShapeRef.new(shape: String, location_name: "ResourceStatus"))
    LicenseConfigurationUsage.add_member(:resource_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceOwnerId"))
    LicenseConfigurationUsage.add_member(:association_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "AssociationTime"))
    LicenseConfigurationUsage.add_member(:consumed_licenses, Shapes::ShapeRef.new(shape: BoxLong, location_name: "ConsumedLicenses"))
    LicenseConfigurationUsage.struct_class = Types::LicenseConfigurationUsage

    LicenseConfigurationUsageList.member = Shapes::ShapeRef.new(shape: LicenseConfigurationUsage)

    LicenseConfigurations.member = Shapes::ShapeRef.new(shape: LicenseConfiguration)

    LicenseOperationFailure.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    LicenseOperationFailure.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    LicenseOperationFailure.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    LicenseOperationFailure.add_member(:failure_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "FailureTime"))
    LicenseOperationFailure.add_member(:operation_name, Shapes::ShapeRef.new(shape: String, location_name: "OperationName"))
    LicenseOperationFailure.add_member(:resource_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceOwnerId"))
    LicenseOperationFailure.add_member(:operation_requested_by, Shapes::ShapeRef.new(shape: String, location_name: "OperationRequestedBy"))
    LicenseOperationFailure.add_member(:metadata_list, Shapes::ShapeRef.new(shape: MetadataList, location_name: "MetadataList"))
    LicenseOperationFailure.struct_class = Types::LicenseOperationFailure

    LicenseOperationFailureList.member = Shapes::ShapeRef.new(shape: LicenseOperationFailure)

    LicenseSpecification.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    LicenseSpecification.struct_class = Types::LicenseSpecification

    LicenseSpecifications.member = Shapes::ShapeRef.new(shape: LicenseSpecification)

    LicenseUsageException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    LicenseUsageException.struct_class = Types::LicenseUsageException

    ListAssociationsForLicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    ListAssociationsForLicenseConfigurationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListAssociationsForLicenseConfigurationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociationsForLicenseConfigurationRequest.struct_class = Types::ListAssociationsForLicenseConfigurationRequest

    ListAssociationsForLicenseConfigurationResponse.add_member(:license_configuration_associations, Shapes::ShapeRef.new(shape: LicenseConfigurationAssociations, location_name: "LicenseConfigurationAssociations"))
    ListAssociationsForLicenseConfigurationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociationsForLicenseConfigurationResponse.struct_class = Types::ListAssociationsForLicenseConfigurationResponse

    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFailuresForLicenseConfigurationOperationsRequest.struct_class = Types::ListFailuresForLicenseConfigurationOperationsRequest

    ListFailuresForLicenseConfigurationOperationsResponse.add_member(:license_operation_failure_list, Shapes::ShapeRef.new(shape: LicenseOperationFailureList, location_name: "LicenseOperationFailureList"))
    ListFailuresForLicenseConfigurationOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFailuresForLicenseConfigurationOperationsResponse.struct_class = Types::ListFailuresForLicenseConfigurationOperationsResponse

    ListLicenseConfigurationsRequest.add_member(:license_configuration_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "LicenseConfigurationArns"))
    ListLicenseConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListLicenseConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListLicenseConfigurationsRequest.struct_class = Types::ListLicenseConfigurationsRequest

    ListLicenseConfigurationsResponse.add_member(:license_configurations, Shapes::ShapeRef.new(shape: LicenseConfigurations, location_name: "LicenseConfigurations"))
    ListLicenseConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseConfigurationsResponse.struct_class = Types::ListLicenseConfigurationsResponse

    ListLicenseSpecificationsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    ListLicenseSpecificationsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListLicenseSpecificationsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseSpecificationsForResourceRequest.struct_class = Types::ListLicenseSpecificationsForResourceRequest

    ListLicenseSpecificationsForResourceResponse.add_member(:license_specifications, Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: "LicenseSpecifications"))
    ListLicenseSpecificationsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseSpecificationsForResourceResponse.struct_class = Types::ListLicenseSpecificationsForResourceResponse

    ListResourceInventoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListResourceInventoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListResourceInventoryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, location_name: "Filters"))
    ListResourceInventoryRequest.struct_class = Types::ListResourceInventoryRequest

    ListResourceInventoryResponse.add_member(:resource_inventory_list, Shapes::ShapeRef.new(shape: ResourceInventoryList, location_name: "ResourceInventoryList"))
    ListResourceInventoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListResourceInventoryResponse.struct_class = Types::ListResourceInventoryResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsageForLicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    ListUsageForLicenseConfigurationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListUsageForLicenseConfigurationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsageForLicenseConfigurationRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListUsageForLicenseConfigurationRequest.struct_class = Types::ListUsageForLicenseConfigurationRequest

    ListUsageForLicenseConfigurationResponse.add_member(:license_configuration_usage_list, Shapes::ShapeRef.new(shape: LicenseConfigurationUsageList, location_name: "LicenseConfigurationUsageList"))
    ListUsageForLicenseConfigurationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsageForLicenseConfigurationResponse.struct_class = Types::ListUsageForLicenseConfigurationResponse

    ManagedResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ManagedResourceSummary.add_member(:association_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "AssociationCount"))
    ManagedResourceSummary.struct_class = Types::ManagedResourceSummary

    ManagedResourceSummaryList.member = Shapes::ShapeRef.new(shape: ManagedResourceSummary)

    Metadata.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Metadata.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Metadata.struct_class = Types::Metadata

    MetadataList.member = Shapes::ShapeRef.new(shape: Metadata)

    OrganizationConfiguration.add_member(:enable_integration, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EnableIntegration"))
    OrganizationConfiguration.struct_class = Types::OrganizationConfiguration

    ProductInformation.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ProductInformation.add_member(:product_information_filter_list, Shapes::ShapeRef.new(shape: ProductInformationFilterList, required: true, location_name: "ProductInformationFilterList"))
    ProductInformation.struct_class = Types::ProductInformation

    ProductInformationFilter.add_member(:product_information_filter_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductInformationFilterName"))
    ProductInformationFilter.add_member(:product_information_filter_value, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "ProductInformationFilterValue"))
    ProductInformationFilter.add_member(:product_information_filter_comparator, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductInformationFilterComparator"))
    ProductInformationFilter.struct_class = Types::ProductInformationFilter

    ProductInformationFilterList.member = Shapes::ShapeRef.new(shape: ProductInformationFilter)

    ProductInformationList.member = Shapes::ShapeRef.new(shape: ProductInformation)

    RateLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    RateLimitExceededException.struct_class = Types::RateLimitExceededException

    ResourceInventory.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceInventory.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceInventory.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    ResourceInventory.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "Platform"))
    ResourceInventory.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
    ResourceInventory.add_member(:resource_owning_account_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceOwningAccountId"))
    ResourceInventory.struct_class = Types::ResourceInventory

    ResourceInventoryList.member = Shapes::ShapeRef.new(shape: ResourceInventory)

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ServerInternalException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ServerInternalException.struct_class = Types::ServerInternalException

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: String)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    UpdateLicenseConfigurationRequest.add_member(:license_configuration_status, Shapes::ShapeRef.new(shape: LicenseConfigurationStatus, location_name: "LicenseConfigurationStatus"))
    UpdateLicenseConfigurationRequest.add_member(:license_rules, Shapes::ShapeRef.new(shape: StringList, location_name: "LicenseRules"))
    UpdateLicenseConfigurationRequest.add_member(:license_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "LicenseCount"))
    UpdateLicenseConfigurationRequest.add_member(:license_count_hard_limit, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "LicenseCountHardLimit"))
    UpdateLicenseConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateLicenseConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateLicenseConfigurationRequest.add_member(:product_information_list, Shapes::ShapeRef.new(shape: ProductInformationList, location_name: "ProductInformationList"))
    UpdateLicenseConfigurationRequest.struct_class = Types::UpdateLicenseConfigurationRequest

    UpdateLicenseConfigurationResponse.struct_class = Types::UpdateLicenseConfigurationResponse

    UpdateLicenseSpecificationsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    UpdateLicenseSpecificationsForResourceRequest.add_member(:add_license_specifications, Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: "AddLicenseSpecifications"))
    UpdateLicenseSpecificationsForResourceRequest.add_member(:remove_license_specifications, Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: "RemoveLicenseSpecifications"))
    UpdateLicenseSpecificationsForResourceRequest.struct_class = Types::UpdateLicenseSpecificationsForResourceRequest

    UpdateLicenseSpecificationsForResourceResponse.struct_class = Types::UpdateLicenseSpecificationsForResourceResponse

    UpdateServiceSettingsRequest.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketArn"))
    UpdateServiceSettingsRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    UpdateServiceSettingsRequest.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "OrganizationConfiguration"))
    UpdateServiceSettingsRequest.add_member(:enable_cross_accounts_discovery, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "EnableCrossAccountsDiscovery"))
    UpdateServiceSettingsRequest.struct_class = Types::UpdateServiceSettingsRequest

    UpdateServiceSettingsResponse.struct_class = Types::UpdateServiceSettingsResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-08-01"

      api.metadata = {
        "apiVersion" => "2018-08-01",
        "endpointPrefix" => "license-manager",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS License Manager",
        "serviceId" => "License Manager",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSLicenseManager",
        "uid" => "license-manager-2018-08-01",
      }

      api.add_operation(:create_license_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLicenseConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLicenseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLicenseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:delete_license_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLicenseConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLicenseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLicenseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:get_license_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLicenseConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLicenseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLicenseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:get_service_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_associations_for_license_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociationsForLicenseConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociationsForLicenseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociationsForLicenseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_failures_for_license_configuration_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFailuresForLicenseConfigurationOperations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFailuresForLicenseConfigurationOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFailuresForLicenseConfigurationOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_license_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLicenseConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLicenseConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLicenseConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_license_specifications_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLicenseSpecificationsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLicenseSpecificationsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLicenseSpecificationsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_resource_inventory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceInventory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceInventoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceInventoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FailedDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_usage_for_license_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsageForLicenseConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsageForLicenseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsageForLicenseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:update_license_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLicenseConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLicenseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLicenseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:update_license_specifications_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLicenseSpecificationsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLicenseSpecificationsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLicenseSpecificationsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseUsageException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:update_service_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)
    end

  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LicenseManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptGrantRequest = Shapes::StructureShape.new(name: 'AcceptGrantRequest')
    AcceptGrantResponse = Shapes::StructureShape.new(name: 'AcceptGrantResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActivationOverrideBehavior = Shapes::StringShape.new(name: 'ActivationOverrideBehavior')
    AllowedOperation = Shapes::StringShape.new(name: 'AllowedOperation')
    AllowedOperationList = Shapes::ListShape.new(name: 'AllowedOperationList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AuthorizationException = Shapes::StructureShape.new(name: 'AuthorizationException')
    AutomatedDiscoveryInformation = Shapes::StructureShape.new(name: 'AutomatedDiscoveryInformation')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BorrowConfiguration = Shapes::StructureShape.new(name: 'BorrowConfiguration')
    BoxBoolean = Shapes::BooleanShape.new(name: 'BoxBoolean')
    BoxInteger = Shapes::IntegerShape.new(name: 'BoxInteger')
    BoxLong = Shapes::IntegerShape.new(name: 'BoxLong')
    CheckInLicenseRequest = Shapes::StructureShape.new(name: 'CheckInLicenseRequest')
    CheckInLicenseResponse = Shapes::StructureShape.new(name: 'CheckInLicenseResponse')
    CheckoutBorrowLicenseRequest = Shapes::StructureShape.new(name: 'CheckoutBorrowLicenseRequest')
    CheckoutBorrowLicenseResponse = Shapes::StructureShape.new(name: 'CheckoutBorrowLicenseResponse')
    CheckoutLicenseRequest = Shapes::StructureShape.new(name: 'CheckoutLicenseRequest')
    CheckoutLicenseResponse = Shapes::StructureShape.new(name: 'CheckoutLicenseResponse')
    CheckoutType = Shapes::StringShape.new(name: 'CheckoutType')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConsumedLicenseSummary = Shapes::StructureShape.new(name: 'ConsumedLicenseSummary')
    ConsumedLicenseSummaryList = Shapes::ListShape.new(name: 'ConsumedLicenseSummaryList')
    ConsumptionConfiguration = Shapes::StructureShape.new(name: 'ConsumptionConfiguration')
    CreateGrantRequest = Shapes::StructureShape.new(name: 'CreateGrantRequest')
    CreateGrantResponse = Shapes::StructureShape.new(name: 'CreateGrantResponse')
    CreateGrantVersionRequest = Shapes::StructureShape.new(name: 'CreateGrantVersionRequest')
    CreateGrantVersionResponse = Shapes::StructureShape.new(name: 'CreateGrantVersionResponse')
    CreateLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'CreateLicenseConfigurationRequest')
    CreateLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'CreateLicenseConfigurationResponse')
    CreateLicenseConversionTaskForResourceRequest = Shapes::StructureShape.new(name: 'CreateLicenseConversionTaskForResourceRequest')
    CreateLicenseConversionTaskForResourceResponse = Shapes::StructureShape.new(name: 'CreateLicenseConversionTaskForResourceResponse')
    CreateLicenseManagerReportGeneratorRequest = Shapes::StructureShape.new(name: 'CreateLicenseManagerReportGeneratorRequest')
    CreateLicenseManagerReportGeneratorResponse = Shapes::StructureShape.new(name: 'CreateLicenseManagerReportGeneratorResponse')
    CreateLicenseRequest = Shapes::StructureShape.new(name: 'CreateLicenseRequest')
    CreateLicenseResponse = Shapes::StructureShape.new(name: 'CreateLicenseResponse')
    CreateLicenseVersionRequest = Shapes::StructureShape.new(name: 'CreateLicenseVersionRequest')
    CreateLicenseVersionResponse = Shapes::StructureShape.new(name: 'CreateLicenseVersionResponse')
    CreateTokenRequest = Shapes::StructureShape.new(name: 'CreateTokenRequest')
    CreateTokenResponse = Shapes::StructureShape.new(name: 'CreateTokenResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DatetimeRange = Shapes::StructureShape.new(name: 'DatetimeRange')
    DeleteGrantRequest = Shapes::StructureShape.new(name: 'DeleteGrantRequest')
    DeleteGrantResponse = Shapes::StructureShape.new(name: 'DeleteGrantResponse')
    DeleteLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteLicenseConfigurationRequest')
    DeleteLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteLicenseConfigurationResponse')
    DeleteLicenseManagerReportGeneratorRequest = Shapes::StructureShape.new(name: 'DeleteLicenseManagerReportGeneratorRequest')
    DeleteLicenseManagerReportGeneratorResponse = Shapes::StructureShape.new(name: 'DeleteLicenseManagerReportGeneratorResponse')
    DeleteLicenseRequest = Shapes::StructureShape.new(name: 'DeleteLicenseRequest')
    DeleteLicenseResponse = Shapes::StructureShape.new(name: 'DeleteLicenseResponse')
    DeleteTokenRequest = Shapes::StructureShape.new(name: 'DeleteTokenRequest')
    DeleteTokenResponse = Shapes::StructureShape.new(name: 'DeleteTokenResponse')
    DigitalSignatureMethod = Shapes::StringShape.new(name: 'DigitalSignatureMethod')
    Entitlement = Shapes::StructureShape.new(name: 'Entitlement')
    EntitlementData = Shapes::StructureShape.new(name: 'EntitlementData')
    EntitlementDataList = Shapes::ListShape.new(name: 'EntitlementDataList')
    EntitlementDataUnit = Shapes::StringShape.new(name: 'EntitlementDataUnit')
    EntitlementList = Shapes::ListShape.new(name: 'EntitlementList')
    EntitlementNotAllowedException = Shapes::StructureShape.new(name: 'EntitlementNotAllowedException')
    EntitlementUnit = Shapes::StringShape.new(name: 'EntitlementUnit')
    EntitlementUsage = Shapes::StructureShape.new(name: 'EntitlementUsage')
    EntitlementUsageList = Shapes::ListShape.new(name: 'EntitlementUsageList')
    ExtendLicenseConsumptionRequest = Shapes::StructureShape.new(name: 'ExtendLicenseConsumptionRequest')
    ExtendLicenseConsumptionResponse = Shapes::StructureShape.new(name: 'ExtendLicenseConsumptionResponse')
    FailedDependencyException = Shapes::StructureShape.new(name: 'FailedDependencyException')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterLimitExceededException = Shapes::StructureShape.new(name: 'FilterLimitExceededException')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetAccessTokenRequest = Shapes::StructureShape.new(name: 'GetAccessTokenRequest')
    GetAccessTokenResponse = Shapes::StructureShape.new(name: 'GetAccessTokenResponse')
    GetGrantRequest = Shapes::StructureShape.new(name: 'GetGrantRequest')
    GetGrantResponse = Shapes::StructureShape.new(name: 'GetGrantResponse')
    GetLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'GetLicenseConfigurationRequest')
    GetLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'GetLicenseConfigurationResponse')
    GetLicenseConversionTaskRequest = Shapes::StructureShape.new(name: 'GetLicenseConversionTaskRequest')
    GetLicenseConversionTaskResponse = Shapes::StructureShape.new(name: 'GetLicenseConversionTaskResponse')
    GetLicenseManagerReportGeneratorRequest = Shapes::StructureShape.new(name: 'GetLicenseManagerReportGeneratorRequest')
    GetLicenseManagerReportGeneratorResponse = Shapes::StructureShape.new(name: 'GetLicenseManagerReportGeneratorResponse')
    GetLicenseRequest = Shapes::StructureShape.new(name: 'GetLicenseRequest')
    GetLicenseResponse = Shapes::StructureShape.new(name: 'GetLicenseResponse')
    GetLicenseUsageRequest = Shapes::StructureShape.new(name: 'GetLicenseUsageRequest')
    GetLicenseUsageResponse = Shapes::StructureShape.new(name: 'GetLicenseUsageResponse')
    GetServiceSettingsRequest = Shapes::StructureShape.new(name: 'GetServiceSettingsRequest')
    GetServiceSettingsResponse = Shapes::StructureShape.new(name: 'GetServiceSettingsResponse')
    Grant = Shapes::StructureShape.new(name: 'Grant')
    GrantList = Shapes::ListShape.new(name: 'GrantList')
    GrantStatus = Shapes::StringShape.new(name: 'GrantStatus')
    GrantedLicense = Shapes::StructureShape.new(name: 'GrantedLicense')
    GrantedLicenseList = Shapes::ListShape.new(name: 'GrantedLicenseList')
    ISO8601DateTime = Shapes::StringShape.new(name: 'ISO8601DateTime')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidResourceStateException = Shapes::StructureShape.new(name: 'InvalidResourceStateException')
    InventoryFilter = Shapes::StructureShape.new(name: 'InventoryFilter')
    InventoryFilterCondition = Shapes::StringShape.new(name: 'InventoryFilterCondition')
    InventoryFilterList = Shapes::ListShape.new(name: 'InventoryFilterList')
    Issuer = Shapes::StructureShape.new(name: 'Issuer')
    IssuerDetails = Shapes::StructureShape.new(name: 'IssuerDetails')
    License = Shapes::StructureShape.new(name: 'License')
    LicenseConfiguration = Shapes::StructureShape.new(name: 'LicenseConfiguration')
    LicenseConfigurationAssociation = Shapes::StructureShape.new(name: 'LicenseConfigurationAssociation')
    LicenseConfigurationAssociations = Shapes::ListShape.new(name: 'LicenseConfigurationAssociations')
    LicenseConfigurationStatus = Shapes::StringShape.new(name: 'LicenseConfigurationStatus')
    LicenseConfigurationUsage = Shapes::StructureShape.new(name: 'LicenseConfigurationUsage')
    LicenseConfigurationUsageList = Shapes::ListShape.new(name: 'LicenseConfigurationUsageList')
    LicenseConfigurations = Shapes::ListShape.new(name: 'LicenseConfigurations')
    LicenseConversionContext = Shapes::StructureShape.new(name: 'LicenseConversionContext')
    LicenseConversionTask = Shapes::StructureShape.new(name: 'LicenseConversionTask')
    LicenseConversionTaskId = Shapes::StringShape.new(name: 'LicenseConversionTaskId')
    LicenseConversionTaskStatus = Shapes::StringShape.new(name: 'LicenseConversionTaskStatus')
    LicenseConversionTasks = Shapes::ListShape.new(name: 'LicenseConversionTasks')
    LicenseCountingType = Shapes::StringShape.new(name: 'LicenseCountingType')
    LicenseDeletionStatus = Shapes::StringShape.new(name: 'LicenseDeletionStatus')
    LicenseList = Shapes::ListShape.new(name: 'LicenseList')
    LicenseOperationFailure = Shapes::StructureShape.new(name: 'LicenseOperationFailure')
    LicenseOperationFailureList = Shapes::ListShape.new(name: 'LicenseOperationFailureList')
    LicenseSpecification = Shapes::StructureShape.new(name: 'LicenseSpecification')
    LicenseSpecifications = Shapes::ListShape.new(name: 'LicenseSpecifications')
    LicenseStatus = Shapes::StringShape.new(name: 'LicenseStatus')
    LicenseUsage = Shapes::StructureShape.new(name: 'LicenseUsage')
    LicenseUsageException = Shapes::StructureShape.new(name: 'LicenseUsageException')
    ListAssociationsForLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'ListAssociationsForLicenseConfigurationRequest')
    ListAssociationsForLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'ListAssociationsForLicenseConfigurationResponse')
    ListDistributedGrantsRequest = Shapes::StructureShape.new(name: 'ListDistributedGrantsRequest')
    ListDistributedGrantsResponse = Shapes::StructureShape.new(name: 'ListDistributedGrantsResponse')
    ListFailuresForLicenseConfigurationOperationsRequest = Shapes::StructureShape.new(name: 'ListFailuresForLicenseConfigurationOperationsRequest')
    ListFailuresForLicenseConfigurationOperationsResponse = Shapes::StructureShape.new(name: 'ListFailuresForLicenseConfigurationOperationsResponse')
    ListLicenseConfigurationsRequest = Shapes::StructureShape.new(name: 'ListLicenseConfigurationsRequest')
    ListLicenseConfigurationsResponse = Shapes::StructureShape.new(name: 'ListLicenseConfigurationsResponse')
    ListLicenseConversionTasksRequest = Shapes::StructureShape.new(name: 'ListLicenseConversionTasksRequest')
    ListLicenseConversionTasksResponse = Shapes::StructureShape.new(name: 'ListLicenseConversionTasksResponse')
    ListLicenseManagerReportGeneratorsRequest = Shapes::StructureShape.new(name: 'ListLicenseManagerReportGeneratorsRequest')
    ListLicenseManagerReportGeneratorsResponse = Shapes::StructureShape.new(name: 'ListLicenseManagerReportGeneratorsResponse')
    ListLicenseSpecificationsForResourceRequest = Shapes::StructureShape.new(name: 'ListLicenseSpecificationsForResourceRequest')
    ListLicenseSpecificationsForResourceResponse = Shapes::StructureShape.new(name: 'ListLicenseSpecificationsForResourceResponse')
    ListLicenseVersionsRequest = Shapes::StructureShape.new(name: 'ListLicenseVersionsRequest')
    ListLicenseVersionsResponse = Shapes::StructureShape.new(name: 'ListLicenseVersionsResponse')
    ListLicensesRequest = Shapes::StructureShape.new(name: 'ListLicensesRequest')
    ListLicensesResponse = Shapes::StructureShape.new(name: 'ListLicensesResponse')
    ListReceivedGrantsForOrganizationRequest = Shapes::StructureShape.new(name: 'ListReceivedGrantsForOrganizationRequest')
    ListReceivedGrantsForOrganizationResponse = Shapes::StructureShape.new(name: 'ListReceivedGrantsForOrganizationResponse')
    ListReceivedGrantsRequest = Shapes::StructureShape.new(name: 'ListReceivedGrantsRequest')
    ListReceivedGrantsResponse = Shapes::StructureShape.new(name: 'ListReceivedGrantsResponse')
    ListReceivedLicensesForOrganizationRequest = Shapes::StructureShape.new(name: 'ListReceivedLicensesForOrganizationRequest')
    ListReceivedLicensesForOrganizationResponse = Shapes::StructureShape.new(name: 'ListReceivedLicensesForOrganizationResponse')
    ListReceivedLicensesRequest = Shapes::StructureShape.new(name: 'ListReceivedLicensesRequest')
    ListReceivedLicensesResponse = Shapes::StructureShape.new(name: 'ListReceivedLicensesResponse')
    ListResourceInventoryRequest = Shapes::StructureShape.new(name: 'ListResourceInventoryRequest')
    ListResourceInventoryResponse = Shapes::StructureShape.new(name: 'ListResourceInventoryResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTokensRequest = Shapes::StructureShape.new(name: 'ListTokensRequest')
    ListTokensResponse = Shapes::StructureShape.new(name: 'ListTokensResponse')
    ListUsageForLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'ListUsageForLicenseConfigurationRequest')
    ListUsageForLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'ListUsageForLicenseConfigurationResponse')
    Location = Shapes::StringShape.new(name: 'Location')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedResourceSummary = Shapes::StructureShape.new(name: 'ManagedResourceSummary')
    ManagedResourceSummaryList = Shapes::ListShape.new(name: 'ManagedResourceSummaryList')
    MaxSize100 = Shapes::IntegerShape.new(name: 'MaxSize100')
    MaxSize3StringList = Shapes::ListShape.new(name: 'MaxSize3StringList')
    Message = Shapes::StringShape.new(name: 'Message')
    Metadata = Shapes::StructureShape.new(name: 'Metadata')
    MetadataList = Shapes::ListShape.new(name: 'MetadataList')
    NoEntitlementsAllowedException = Shapes::StructureShape.new(name: 'NoEntitlementsAllowedException')
    Options = Shapes::StructureShape.new(name: 'Options')
    OrganizationConfiguration = Shapes::StructureShape.new(name: 'OrganizationConfiguration')
    PrincipalArnList = Shapes::ListShape.new(name: 'PrincipalArnList')
    ProductInformation = Shapes::StructureShape.new(name: 'ProductInformation')
    ProductInformationFilter = Shapes::StructureShape.new(name: 'ProductInformationFilter')
    ProductInformationFilterList = Shapes::ListShape.new(name: 'ProductInformationFilterList')
    ProductInformationList = Shapes::ListShape.new(name: 'ProductInformationList')
    ProvisionalConfiguration = Shapes::StructureShape.new(name: 'ProvisionalConfiguration')
    RateLimitExceededException = Shapes::StructureShape.new(name: 'RateLimitExceededException')
    ReceivedMetadata = Shapes::StructureShape.new(name: 'ReceivedMetadata')
    ReceivedStatus = Shapes::StringShape.new(name: 'ReceivedStatus')
    RedirectException = Shapes::StructureShape.new(name: 'RedirectException')
    RejectGrantRequest = Shapes::StructureShape.new(name: 'RejectGrantRequest')
    RejectGrantResponse = Shapes::StructureShape.new(name: 'RejectGrantResponse')
    RenewType = Shapes::StringShape.new(name: 'RenewType')
    ReportContext = Shapes::StructureShape.new(name: 'ReportContext')
    ReportFrequency = Shapes::StructureShape.new(name: 'ReportFrequency')
    ReportFrequencyType = Shapes::StringShape.new(name: 'ReportFrequencyType')
    ReportGenerator = Shapes::StructureShape.new(name: 'ReportGenerator')
    ReportGeneratorList = Shapes::ListShape.new(name: 'ReportGeneratorList')
    ReportGeneratorName = Shapes::StringShape.new(name: 'ReportGeneratorName')
    ReportType = Shapes::StringShape.new(name: 'ReportType')
    ReportTypeList = Shapes::ListShape.new(name: 'ReportTypeList')
    ResourceInventory = Shapes::StructureShape.new(name: 'ResourceInventory')
    ResourceInventoryList = Shapes::ListShape.new(name: 'ResourceInventoryList')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    ServerInternalException = Shapes::StructureShape.new(name: 'ServerInternalException')
    SignedToken = Shapes::StringShape.new(name: 'SignedToken')
    StatusReasonMessage = Shapes::StringShape.new(name: 'StatusReasonMessage')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TokenData = Shapes::StructureShape.new(name: 'TokenData')
    TokenList = Shapes::ListShape.new(name: 'TokenList')
    TokenString = Shapes::StringShape.new(name: 'TokenString')
    TokenType = Shapes::StringShape.new(name: 'TokenType')
    UnsupportedDigitalSignatureMethodException = Shapes::StructureShape.new(name: 'UnsupportedDigitalSignatureMethodException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLicenseConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLicenseConfigurationRequest')
    UpdateLicenseConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateLicenseConfigurationResponse')
    UpdateLicenseManagerReportGeneratorRequest = Shapes::StructureShape.new(name: 'UpdateLicenseManagerReportGeneratorRequest')
    UpdateLicenseManagerReportGeneratorResponse = Shapes::StructureShape.new(name: 'UpdateLicenseManagerReportGeneratorResponse')
    UpdateLicenseSpecificationsForResourceRequest = Shapes::StructureShape.new(name: 'UpdateLicenseSpecificationsForResourceRequest')
    UpdateLicenseSpecificationsForResourceResponse = Shapes::StructureShape.new(name: 'UpdateLicenseSpecificationsForResourceResponse')
    UpdateServiceSettingsRequest = Shapes::StructureShape.new(name: 'UpdateServiceSettingsRequest')
    UpdateServiceSettingsResponse = Shapes::StructureShape.new(name: 'UpdateServiceSettingsResponse')
    UsageOperation = Shapes::StringShape.new(name: 'UsageOperation')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AcceptGrantRequest.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GrantArn"))
    AcceptGrantRequest.struct_class = Types::AcceptGrantRequest

    AcceptGrantResponse.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GrantArn"))
    AcceptGrantResponse.add_member(:status, Shapes::ShapeRef.new(shape: GrantStatus, location_name: "Status"))
    AcceptGrantResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    AcceptGrantResponse.struct_class = Types::AcceptGrantResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AllowedOperationList.member = Shapes::ShapeRef.new(shape: AllowedOperation)

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AuthorizationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AuthorizationException.struct_class = Types::AuthorizationException

    AutomatedDiscoveryInformation.add_member(:last_run_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastRunTime"))
    AutomatedDiscoveryInformation.struct_class = Types::AutomatedDiscoveryInformation

    BorrowConfiguration.add_member(:allow_early_check_in, Shapes::ShapeRef.new(shape: BoxBoolean, required: true, location_name: "AllowEarlyCheckIn"))
    BorrowConfiguration.add_member(:max_time_to_live_in_minutes, Shapes::ShapeRef.new(shape: BoxInteger, required: true, location_name: "MaxTimeToLiveInMinutes"))
    BorrowConfiguration.struct_class = Types::BorrowConfiguration

    CheckInLicenseRequest.add_member(:license_consumption_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConsumptionToken"))
    CheckInLicenseRequest.add_member(:beneficiary, Shapes::ShapeRef.new(shape: String, location_name: "Beneficiary"))
    CheckInLicenseRequest.struct_class = Types::CheckInLicenseRequest

    CheckInLicenseResponse.struct_class = Types::CheckInLicenseResponse

    CheckoutBorrowLicenseRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    CheckoutBorrowLicenseRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementDataList, required: true, location_name: "Entitlements"))
    CheckoutBorrowLicenseRequest.add_member(:digital_signature_method, Shapes::ShapeRef.new(shape: DigitalSignatureMethod, required: true, location_name: "DigitalSignatureMethod"))
    CheckoutBorrowLicenseRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: String, location_name: "NodeId"))
    CheckoutBorrowLicenseRequest.add_member(:checkout_metadata, Shapes::ShapeRef.new(shape: MetadataList, location_name: "CheckoutMetadata"))
    CheckoutBorrowLicenseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CheckoutBorrowLicenseRequest.struct_class = Types::CheckoutBorrowLicenseRequest

    CheckoutBorrowLicenseResponse.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "LicenseArn"))
    CheckoutBorrowLicenseResponse.add_member(:license_consumption_token, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConsumptionToken"))
    CheckoutBorrowLicenseResponse.add_member(:entitlements_allowed, Shapes::ShapeRef.new(shape: EntitlementDataList, location_name: "EntitlementsAllowed"))
    CheckoutBorrowLicenseResponse.add_member(:node_id, Shapes::ShapeRef.new(shape: String, location_name: "NodeId"))
    CheckoutBorrowLicenseResponse.add_member(:signed_token, Shapes::ShapeRef.new(shape: SignedToken, location_name: "SignedToken"))
    CheckoutBorrowLicenseResponse.add_member(:issued_at, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "IssuedAt"))
    CheckoutBorrowLicenseResponse.add_member(:expiration, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "Expiration"))
    CheckoutBorrowLicenseResponse.add_member(:checkout_metadata, Shapes::ShapeRef.new(shape: MetadataList, location_name: "CheckoutMetadata"))
    CheckoutBorrowLicenseResponse.struct_class = Types::CheckoutBorrowLicenseResponse

    CheckoutLicenseRequest.add_member(:product_sku, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductSKU"))
    CheckoutLicenseRequest.add_member(:checkout_type, Shapes::ShapeRef.new(shape: CheckoutType, required: true, location_name: "CheckoutType"))
    CheckoutLicenseRequest.add_member(:key_fingerprint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "KeyFingerprint"))
    CheckoutLicenseRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementDataList, required: true, location_name: "Entitlements"))
    CheckoutLicenseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CheckoutLicenseRequest.add_member(:beneficiary, Shapes::ShapeRef.new(shape: String, location_name: "Beneficiary"))
    CheckoutLicenseRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: String, location_name: "NodeId"))
    CheckoutLicenseRequest.struct_class = Types::CheckoutLicenseRequest

    CheckoutLicenseResponse.add_member(:checkout_type, Shapes::ShapeRef.new(shape: CheckoutType, location_name: "CheckoutType"))
    CheckoutLicenseResponse.add_member(:license_consumption_token, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConsumptionToken"))
    CheckoutLicenseResponse.add_member(:entitlements_allowed, Shapes::ShapeRef.new(shape: EntitlementDataList, location_name: "EntitlementsAllowed"))
    CheckoutLicenseResponse.add_member(:signed_token, Shapes::ShapeRef.new(shape: SignedToken, location_name: "SignedToken"))
    CheckoutLicenseResponse.add_member(:node_id, Shapes::ShapeRef.new(shape: String, location_name: "NodeId"))
    CheckoutLicenseResponse.add_member(:issued_at, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "IssuedAt"))
    CheckoutLicenseResponse.add_member(:expiration, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "Expiration"))
    CheckoutLicenseResponse.add_member(:license_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseArn"))
    CheckoutLicenseResponse.struct_class = Types::CheckoutLicenseResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConsumedLicenseSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConsumedLicenseSummary.add_member(:consumed_licenses, Shapes::ShapeRef.new(shape: BoxLong, location_name: "ConsumedLicenses"))
    ConsumedLicenseSummary.struct_class = Types::ConsumedLicenseSummary

    ConsumedLicenseSummaryList.member = Shapes::ShapeRef.new(shape: ConsumedLicenseSummary)

    ConsumptionConfiguration.add_member(:renew_type, Shapes::ShapeRef.new(shape: RenewType, location_name: "RenewType"))
    ConsumptionConfiguration.add_member(:provisional_configuration, Shapes::ShapeRef.new(shape: ProvisionalConfiguration, location_name: "ProvisionalConfiguration"))
    ConsumptionConfiguration.add_member(:borrow_configuration, Shapes::ShapeRef.new(shape: BorrowConfiguration, location_name: "BorrowConfiguration"))
    ConsumptionConfiguration.struct_class = Types::ConsumptionConfiguration

    CreateGrantRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateGrantRequest.add_member(:grant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "GrantName"))
    CreateGrantRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    CreateGrantRequest.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalArnList, required: true, location_name: "Principals"))
    CreateGrantRequest.add_member(:home_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HomeRegion"))
    CreateGrantRequest.add_member(:allowed_operations, Shapes::ShapeRef.new(shape: AllowedOperationList, required: true, location_name: "AllowedOperations"))
    CreateGrantRequest.struct_class = Types::CreateGrantRequest

    CreateGrantResponse.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GrantArn"))
    CreateGrantResponse.add_member(:status, Shapes::ShapeRef.new(shape: GrantStatus, location_name: "Status"))
    CreateGrantResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    CreateGrantResponse.struct_class = Types::CreateGrantResponse

    CreateGrantVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateGrantVersionRequest.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GrantArn"))
    CreateGrantVersionRequest.add_member(:grant_name, Shapes::ShapeRef.new(shape: String, location_name: "GrantName"))
    CreateGrantVersionRequest.add_member(:allowed_operations, Shapes::ShapeRef.new(shape: AllowedOperationList, location_name: "AllowedOperations"))
    CreateGrantVersionRequest.add_member(:status, Shapes::ShapeRef.new(shape: GrantStatus, location_name: "Status"))
    CreateGrantVersionRequest.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: "StatusReason"))
    CreateGrantVersionRequest.add_member(:source_version, Shapes::ShapeRef.new(shape: String, location_name: "SourceVersion"))
    CreateGrantVersionRequest.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    CreateGrantVersionRequest.struct_class = Types::CreateGrantVersionRequest

    CreateGrantVersionResponse.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GrantArn"))
    CreateGrantVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: GrantStatus, location_name: "Status"))
    CreateGrantVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    CreateGrantVersionResponse.struct_class = Types::CreateGrantVersionResponse

    CreateLicenseConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateLicenseConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateLicenseConfigurationRequest.add_member(:license_counting_type, Shapes::ShapeRef.new(shape: LicenseCountingType, required: true, location_name: "LicenseCountingType"))
    CreateLicenseConfigurationRequest.add_member(:license_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "LicenseCount"))
    CreateLicenseConfigurationRequest.add_member(:license_count_hard_limit, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "LicenseCountHardLimit"))
    CreateLicenseConfigurationRequest.add_member(:license_rules, Shapes::ShapeRef.new(shape: StringList, location_name: "LicenseRules"))
    CreateLicenseConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLicenseConfigurationRequest.add_member(:disassociate_when_not_found, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "DisassociateWhenNotFound"))
    CreateLicenseConfigurationRequest.add_member(:product_information_list, Shapes::ShapeRef.new(shape: ProductInformationList, location_name: "ProductInformationList"))
    CreateLicenseConfigurationRequest.struct_class = Types::CreateLicenseConfigurationRequest

    CreateLicenseConfigurationResponse.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationArn"))
    CreateLicenseConfigurationResponse.struct_class = Types::CreateLicenseConfigurationResponse

    CreateLicenseConversionTaskForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    CreateLicenseConversionTaskForResourceRequest.add_member(:source_license_context, Shapes::ShapeRef.new(shape: LicenseConversionContext, required: true, location_name: "SourceLicenseContext"))
    CreateLicenseConversionTaskForResourceRequest.add_member(:destination_license_context, Shapes::ShapeRef.new(shape: LicenseConversionContext, required: true, location_name: "DestinationLicenseContext"))
    CreateLicenseConversionTaskForResourceRequest.struct_class = Types::CreateLicenseConversionTaskForResourceRequest

    CreateLicenseConversionTaskForResourceResponse.add_member(:license_conversion_task_id, Shapes::ShapeRef.new(shape: LicenseConversionTaskId, location_name: "LicenseConversionTaskId"))
    CreateLicenseConversionTaskForResourceResponse.struct_class = Types::CreateLicenseConversionTaskForResourceResponse

    CreateLicenseManagerReportGeneratorRequest.add_member(:report_generator_name, Shapes::ShapeRef.new(shape: ReportGeneratorName, required: true, location_name: "ReportGeneratorName"))
    CreateLicenseManagerReportGeneratorRequest.add_member(:type, Shapes::ShapeRef.new(shape: ReportTypeList, required: true, location_name: "Type"))
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_context, Shapes::ShapeRef.new(shape: ReportContext, required: true, location_name: "ReportContext"))
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_frequency, Shapes::ShapeRef.new(shape: ReportFrequency, required: true, location_name: "ReportFrequency"))
    CreateLicenseManagerReportGeneratorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientToken"))
    CreateLicenseManagerReportGeneratorRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateLicenseManagerReportGeneratorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateLicenseManagerReportGeneratorRequest.struct_class = Types::CreateLicenseManagerReportGeneratorRequest

    CreateLicenseManagerReportGeneratorResponse.add_member(:license_manager_report_generator_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseManagerReportGeneratorArn"))
    CreateLicenseManagerReportGeneratorResponse.struct_class = Types::CreateLicenseManagerReportGeneratorResponse

    CreateLicenseRequest.add_member(:license_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseName"))
    CreateLicenseRequest.add_member(:product_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductName"))
    CreateLicenseRequest.add_member(:product_sku, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductSKU"))
    CreateLicenseRequest.add_member(:issuer, Shapes::ShapeRef.new(shape: Issuer, required: true, location_name: "Issuer"))
    CreateLicenseRequest.add_member(:home_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HomeRegion"))
    CreateLicenseRequest.add_member(:validity, Shapes::ShapeRef.new(shape: DatetimeRange, required: true, location_name: "Validity"))
    CreateLicenseRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementList, required: true, location_name: "Entitlements"))
    CreateLicenseRequest.add_member(:beneficiary, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Beneficiary"))
    CreateLicenseRequest.add_member(:consumption_configuration, Shapes::ShapeRef.new(shape: ConsumptionConfiguration, required: true, location_name: "ConsumptionConfiguration"))
    CreateLicenseRequest.add_member(:license_metadata, Shapes::ShapeRef.new(shape: MetadataList, location_name: "LicenseMetadata"))
    CreateLicenseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateLicenseRequest.struct_class = Types::CreateLicenseRequest

    CreateLicenseResponse.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "LicenseArn"))
    CreateLicenseResponse.add_member(:status, Shapes::ShapeRef.new(shape: LicenseStatus, location_name: "Status"))
    CreateLicenseResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    CreateLicenseResponse.struct_class = Types::CreateLicenseResponse

    CreateLicenseVersionRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    CreateLicenseVersionRequest.add_member(:license_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseName"))
    CreateLicenseVersionRequest.add_member(:product_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductName"))
    CreateLicenseVersionRequest.add_member(:issuer, Shapes::ShapeRef.new(shape: Issuer, required: true, location_name: "Issuer"))
    CreateLicenseVersionRequest.add_member(:home_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HomeRegion"))
    CreateLicenseVersionRequest.add_member(:validity, Shapes::ShapeRef.new(shape: DatetimeRange, required: true, location_name: "Validity"))
    CreateLicenseVersionRequest.add_member(:license_metadata, Shapes::ShapeRef.new(shape: MetadataList, location_name: "LicenseMetadata"))
    CreateLicenseVersionRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementList, required: true, location_name: "Entitlements"))
    CreateLicenseVersionRequest.add_member(:consumption_configuration, Shapes::ShapeRef.new(shape: ConsumptionConfiguration, required: true, location_name: "ConsumptionConfiguration"))
    CreateLicenseVersionRequest.add_member(:status, Shapes::ShapeRef.new(shape: LicenseStatus, required: true, location_name: "Status"))
    CreateLicenseVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateLicenseVersionRequest.add_member(:source_version, Shapes::ShapeRef.new(shape: String, location_name: "SourceVersion"))
    CreateLicenseVersionRequest.struct_class = Types::CreateLicenseVersionRequest

    CreateLicenseVersionResponse.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "LicenseArn"))
    CreateLicenseVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    CreateLicenseVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: LicenseStatus, location_name: "Status"))
    CreateLicenseVersionResponse.struct_class = Types::CreateLicenseVersionResponse

    CreateTokenRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    CreateTokenRequest.add_member(:role_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "RoleArns"))
    CreateTokenRequest.add_member(:expiration_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "ExpirationInDays"))
    CreateTokenRequest.add_member(:token_properties, Shapes::ShapeRef.new(shape: MaxSize3StringList, location_name: "TokenProperties"))
    CreateTokenRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreateTokenRequest.struct_class = Types::CreateTokenRequest

    CreateTokenResponse.add_member(:token_id, Shapes::ShapeRef.new(shape: String, location_name: "TokenId"))
    CreateTokenResponse.add_member(:token_type, Shapes::ShapeRef.new(shape: TokenType, location_name: "TokenType"))
    CreateTokenResponse.add_member(:token, Shapes::ShapeRef.new(shape: TokenString, location_name: "Token"))
    CreateTokenResponse.struct_class = Types::CreateTokenResponse

    DatetimeRange.add_member(:begin, Shapes::ShapeRef.new(shape: ISO8601DateTime, required: true, location_name: "Begin"))
    DatetimeRange.add_member(:end, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "End"))
    DatetimeRange.struct_class = Types::DatetimeRange

    DeleteGrantRequest.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GrantArn"))
    DeleteGrantRequest.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: "StatusReason"))
    DeleteGrantRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Version"))
    DeleteGrantRequest.struct_class = Types::DeleteGrantRequest

    DeleteGrantResponse.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GrantArn"))
    DeleteGrantResponse.add_member(:status, Shapes::ShapeRef.new(shape: GrantStatus, location_name: "Status"))
    DeleteGrantResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    DeleteGrantResponse.struct_class = Types::DeleteGrantResponse

    DeleteLicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    DeleteLicenseConfigurationRequest.struct_class = Types::DeleteLicenseConfigurationRequest

    DeleteLicenseConfigurationResponse.struct_class = Types::DeleteLicenseConfigurationResponse

    DeleteLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseManagerReportGeneratorArn"))
    DeleteLicenseManagerReportGeneratorRequest.struct_class = Types::DeleteLicenseManagerReportGeneratorRequest

    DeleteLicenseManagerReportGeneratorResponse.struct_class = Types::DeleteLicenseManagerReportGeneratorResponse

    DeleteLicenseRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    DeleteLicenseRequest.add_member(:source_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceVersion"))
    DeleteLicenseRequest.struct_class = Types::DeleteLicenseRequest

    DeleteLicenseResponse.add_member(:status, Shapes::ShapeRef.new(shape: LicenseDeletionStatus, location_name: "Status"))
    DeleteLicenseResponse.add_member(:deletion_date, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "DeletionDate"))
    DeleteLicenseResponse.struct_class = Types::DeleteLicenseResponse

    DeleteTokenRequest.add_member(:token_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TokenId"))
    DeleteTokenRequest.struct_class = Types::DeleteTokenRequest

    DeleteTokenResponse.struct_class = Types::DeleteTokenResponse

    Entitlement.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Entitlement.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Entitlement.add_member(:max_count, Shapes::ShapeRef.new(shape: Long, location_name: "MaxCount"))
    Entitlement.add_member(:overage, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "Overage"))
    Entitlement.add_member(:unit, Shapes::ShapeRef.new(shape: EntitlementUnit, required: true, location_name: "Unit"))
    Entitlement.add_member(:allow_check_in, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "AllowCheckIn"))
    Entitlement.struct_class = Types::Entitlement

    EntitlementData.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    EntitlementData.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    EntitlementData.add_member(:unit, Shapes::ShapeRef.new(shape: EntitlementDataUnit, required: true, location_name: "Unit"))
    EntitlementData.struct_class = Types::EntitlementData

    EntitlementDataList.member = Shapes::ShapeRef.new(shape: EntitlementData)

    EntitlementList.member = Shapes::ShapeRef.new(shape: Entitlement)

    EntitlementNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    EntitlementNotAllowedException.struct_class = Types::EntitlementNotAllowedException

    EntitlementUsage.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    EntitlementUsage.add_member(:consumed_value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ConsumedValue"))
    EntitlementUsage.add_member(:max_count, Shapes::ShapeRef.new(shape: String, location_name: "MaxCount"))
    EntitlementUsage.add_member(:unit, Shapes::ShapeRef.new(shape: EntitlementDataUnit, required: true, location_name: "Unit"))
    EntitlementUsage.struct_class = Types::EntitlementUsage

    EntitlementUsageList.member = Shapes::ShapeRef.new(shape: EntitlementUsage)

    ExtendLicenseConsumptionRequest.add_member(:license_consumption_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConsumptionToken"))
    ExtendLicenseConsumptionRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    ExtendLicenseConsumptionRequest.struct_class = Types::ExtendLicenseConsumptionRequest

    ExtendLicenseConsumptionResponse.add_member(:license_consumption_token, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConsumptionToken"))
    ExtendLicenseConsumptionResponse.add_member(:expiration, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "Expiration"))
    ExtendLicenseConsumptionResponse.struct_class = Types::ExtendLicenseConsumptionResponse

    FailedDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    FailedDependencyException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    FailedDependencyException.struct_class = Types::FailedDependencyException

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    FilterLimitExceededException.struct_class = Types::FilterLimitExceededException

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetAccessTokenRequest.add_member(:token, Shapes::ShapeRef.new(shape: TokenString, required: true, location_name: "Token"))
    GetAccessTokenRequest.add_member(:token_properties, Shapes::ShapeRef.new(shape: MaxSize3StringList, location_name: "TokenProperties"))
    GetAccessTokenRequest.struct_class = Types::GetAccessTokenRequest

    GetAccessTokenResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenString, location_name: "AccessToken"))
    GetAccessTokenResponse.struct_class = Types::GetAccessTokenResponse

    GetGrantRequest.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GrantArn"))
    GetGrantRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    GetGrantRequest.struct_class = Types::GetGrantRequest

    GetGrantResponse.add_member(:grant, Shapes::ShapeRef.new(shape: Grant, location_name: "Grant"))
    GetGrantResponse.struct_class = Types::GetGrantResponse

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
    GetLicenseConfigurationResponse.add_member(:disassociate_when_not_found, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "DisassociateWhenNotFound"))
    GetLicenseConfigurationResponse.struct_class = Types::GetLicenseConfigurationResponse

    GetLicenseConversionTaskRequest.add_member(:license_conversion_task_id, Shapes::ShapeRef.new(shape: LicenseConversionTaskId, required: true, location_name: "LicenseConversionTaskId"))
    GetLicenseConversionTaskRequest.struct_class = Types::GetLicenseConversionTaskRequest

    GetLicenseConversionTaskResponse.add_member(:license_conversion_task_id, Shapes::ShapeRef.new(shape: LicenseConversionTaskId, location_name: "LicenseConversionTaskId"))
    GetLicenseConversionTaskResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    GetLicenseConversionTaskResponse.add_member(:source_license_context, Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: "SourceLicenseContext"))
    GetLicenseConversionTaskResponse.add_member(:destination_license_context, Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: "DestinationLicenseContext"))
    GetLicenseConversionTaskResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    GetLicenseConversionTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: LicenseConversionTaskStatus, location_name: "Status"))
    GetLicenseConversionTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetLicenseConversionTaskResponse.add_member(:license_conversion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LicenseConversionTime"))
    GetLicenseConversionTaskResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetLicenseConversionTaskResponse.struct_class = Types::GetLicenseConversionTaskResponse

    GetLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseManagerReportGeneratorArn"))
    GetLicenseManagerReportGeneratorRequest.struct_class = Types::GetLicenseManagerReportGeneratorRequest

    GetLicenseManagerReportGeneratorResponse.add_member(:report_generator, Shapes::ShapeRef.new(shape: ReportGenerator, location_name: "ReportGenerator"))
    GetLicenseManagerReportGeneratorResponse.struct_class = Types::GetLicenseManagerReportGeneratorResponse

    GetLicenseRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    GetLicenseRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    GetLicenseRequest.struct_class = Types::GetLicenseRequest

    GetLicenseResponse.add_member(:license, Shapes::ShapeRef.new(shape: License, location_name: "License"))
    GetLicenseResponse.struct_class = Types::GetLicenseResponse

    GetLicenseUsageRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    GetLicenseUsageRequest.struct_class = Types::GetLicenseUsageRequest

    GetLicenseUsageResponse.add_member(:license_usage, Shapes::ShapeRef.new(shape: LicenseUsage, location_name: "LicenseUsage"))
    GetLicenseUsageResponse.struct_class = Types::GetLicenseUsageResponse

    GetServiceSettingsRequest.struct_class = Types::GetServiceSettingsRequest

    GetServiceSettingsResponse.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketArn"))
    GetServiceSettingsResponse.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    GetServiceSettingsResponse.add_member(:organization_configuration, Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: "OrganizationConfiguration"))
    GetServiceSettingsResponse.add_member(:enable_cross_accounts_discovery, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "EnableCrossAccountsDiscovery"))
    GetServiceSettingsResponse.add_member(:license_manager_resource_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseManagerResourceShareArn"))
    GetServiceSettingsResponse.struct_class = Types::GetServiceSettingsResponse

    Grant.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GrantArn"))
    Grant.add_member(:grant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "GrantName"))
    Grant.add_member(:parent_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ParentArn"))
    Grant.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    Grant.add_member(:grantee_principal_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GranteePrincipalArn"))
    Grant.add_member(:home_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "HomeRegion"))
    Grant.add_member(:grant_status, Shapes::ShapeRef.new(shape: GrantStatus, required: true, location_name: "GrantStatus"))
    Grant.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: "StatusReason"))
    Grant.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Version"))
    Grant.add_member(:granted_operations, Shapes::ShapeRef.new(shape: AllowedOperationList, required: true, location_name: "GrantedOperations"))
    Grant.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    Grant.struct_class = Types::Grant

    GrantList.member = Shapes::ShapeRef.new(shape: Grant)

    GrantedLicense.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "LicenseArn"))
    GrantedLicense.add_member(:license_name, Shapes::ShapeRef.new(shape: String, location_name: "LicenseName"))
    GrantedLicense.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    GrantedLicense.add_member(:product_sku, Shapes::ShapeRef.new(shape: String, location_name: "ProductSKU"))
    GrantedLicense.add_member(:issuer, Shapes::ShapeRef.new(shape: IssuerDetails, location_name: "Issuer"))
    GrantedLicense.add_member(:home_region, Shapes::ShapeRef.new(shape: String, location_name: "HomeRegion"))
    GrantedLicense.add_member(:status, Shapes::ShapeRef.new(shape: LicenseStatus, location_name: "Status"))
    GrantedLicense.add_member(:validity, Shapes::ShapeRef.new(shape: DatetimeRange, location_name: "Validity"))
    GrantedLicense.add_member(:beneficiary, Shapes::ShapeRef.new(shape: String, location_name: "Beneficiary"))
    GrantedLicense.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementList, location_name: "Entitlements"))
    GrantedLicense.add_member(:consumption_configuration, Shapes::ShapeRef.new(shape: ConsumptionConfiguration, location_name: "ConsumptionConfiguration"))
    GrantedLicense.add_member(:license_metadata, Shapes::ShapeRef.new(shape: MetadataList, location_name: "LicenseMetadata"))
    GrantedLicense.add_member(:create_time, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "CreateTime"))
    GrantedLicense.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    GrantedLicense.add_member(:received_metadata, Shapes::ShapeRef.new(shape: ReceivedMetadata, location_name: "ReceivedMetadata"))
    GrantedLicense.struct_class = Types::GrantedLicense

    GrantedLicenseList.member = Shapes::ShapeRef.new(shape: GrantedLicense)

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidResourceStateException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidResourceStateException.struct_class = Types::InvalidResourceStateException

    InventoryFilter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    InventoryFilter.add_member(:condition, Shapes::ShapeRef.new(shape: InventoryFilterCondition, required: true, location_name: "Condition"))
    InventoryFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    InventoryFilter.struct_class = Types::InventoryFilter

    InventoryFilterList.member = Shapes::ShapeRef.new(shape: InventoryFilter)

    Issuer.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Issuer.add_member(:sign_key, Shapes::ShapeRef.new(shape: String, location_name: "SignKey"))
    Issuer.struct_class = Types::Issuer

    IssuerDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    IssuerDetails.add_member(:sign_key, Shapes::ShapeRef.new(shape: String, location_name: "SignKey"))
    IssuerDetails.add_member(:key_fingerprint, Shapes::ShapeRef.new(shape: String, location_name: "KeyFingerprint"))
    IssuerDetails.struct_class = Types::IssuerDetails

    License.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "LicenseArn"))
    License.add_member(:license_name, Shapes::ShapeRef.new(shape: String, location_name: "LicenseName"))
    License.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "ProductName"))
    License.add_member(:product_sku, Shapes::ShapeRef.new(shape: String, location_name: "ProductSKU"))
    License.add_member(:issuer, Shapes::ShapeRef.new(shape: IssuerDetails, location_name: "Issuer"))
    License.add_member(:home_region, Shapes::ShapeRef.new(shape: String, location_name: "HomeRegion"))
    License.add_member(:status, Shapes::ShapeRef.new(shape: LicenseStatus, location_name: "Status"))
    License.add_member(:validity, Shapes::ShapeRef.new(shape: DatetimeRange, location_name: "Validity"))
    License.add_member(:beneficiary, Shapes::ShapeRef.new(shape: String, location_name: "Beneficiary"))
    License.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementList, location_name: "Entitlements"))
    License.add_member(:consumption_configuration, Shapes::ShapeRef.new(shape: ConsumptionConfiguration, location_name: "ConsumptionConfiguration"))
    License.add_member(:license_metadata, Shapes::ShapeRef.new(shape: MetadataList, location_name: "LicenseMetadata"))
    License.add_member(:create_time, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "CreateTime"))
    License.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    License.struct_class = Types::License

    LicenseConfiguration.add_member(:license_configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationId"))
    LicenseConfiguration.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseConfigurationArn"))
    LicenseConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    LicenseConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    LicenseConfiguration.add_member(:license_counting_type, Shapes::ShapeRef.new(shape: LicenseCountingType, location_name: "LicenseCountingType"))
    LicenseConfiguration.add_member(:license_rules, Shapes::ShapeRef.new(shape: StringList, location_name: "LicenseRules"))
    LicenseConfiguration.add_member(:license_count, Shapes::ShapeRef.new(shape: BoxLong, location_name: "LicenseCount"))
    LicenseConfiguration.add_member(:license_count_hard_limit, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "LicenseCountHardLimit"))
    LicenseConfiguration.add_member(:disassociate_when_not_found, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "DisassociateWhenNotFound"))
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
    LicenseConfigurationAssociation.add_member(:ami_association_scope, Shapes::ShapeRef.new(shape: String, location_name: "AmiAssociationScope"))
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

    LicenseConversionContext.add_member(:usage_operation, Shapes::ShapeRef.new(shape: UsageOperation, location_name: "UsageOperation"))
    LicenseConversionContext.struct_class = Types::LicenseConversionContext

    LicenseConversionTask.add_member(:license_conversion_task_id, Shapes::ShapeRef.new(shape: LicenseConversionTaskId, location_name: "LicenseConversionTaskId"))
    LicenseConversionTask.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    LicenseConversionTask.add_member(:source_license_context, Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: "SourceLicenseContext"))
    LicenseConversionTask.add_member(:destination_license_context, Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: "DestinationLicenseContext"))
    LicenseConversionTask.add_member(:status, Shapes::ShapeRef.new(shape: LicenseConversionTaskStatus, location_name: "Status"))
    LicenseConversionTask.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    LicenseConversionTask.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    LicenseConversionTask.add_member(:license_conversion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LicenseConversionTime"))
    LicenseConversionTask.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    LicenseConversionTask.struct_class = Types::LicenseConversionTask

    LicenseConversionTasks.member = Shapes::ShapeRef.new(shape: LicenseConversionTask)

    LicenseList.member = Shapes::ShapeRef.new(shape: License)

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
    LicenseSpecification.add_member(:ami_association_scope, Shapes::ShapeRef.new(shape: String, location_name: "AmiAssociationScope"))
    LicenseSpecification.struct_class = Types::LicenseSpecification

    LicenseSpecifications.member = Shapes::ShapeRef.new(shape: LicenseSpecification)

    LicenseUsage.add_member(:entitlement_usages, Shapes::ShapeRef.new(shape: EntitlementUsageList, location_name: "EntitlementUsages"))
    LicenseUsage.struct_class = Types::LicenseUsage

    LicenseUsageException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    LicenseUsageException.struct_class = Types::LicenseUsageException

    ListAssociationsForLicenseConfigurationRequest.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseConfigurationArn"))
    ListAssociationsForLicenseConfigurationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListAssociationsForLicenseConfigurationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociationsForLicenseConfigurationRequest.struct_class = Types::ListAssociationsForLicenseConfigurationRequest

    ListAssociationsForLicenseConfigurationResponse.add_member(:license_configuration_associations, Shapes::ShapeRef.new(shape: LicenseConfigurationAssociations, location_name: "LicenseConfigurationAssociations"))
    ListAssociationsForLicenseConfigurationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociationsForLicenseConfigurationResponse.struct_class = Types::ListAssociationsForLicenseConfigurationResponse

    ListDistributedGrantsRequest.add_member(:grant_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "GrantArns"))
    ListDistributedGrantsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListDistributedGrantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDistributedGrantsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListDistributedGrantsRequest.struct_class = Types::ListDistributedGrantsRequest

    ListDistributedGrantsResponse.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, location_name: "Grants"))
    ListDistributedGrantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDistributedGrantsResponse.struct_class = Types::ListDistributedGrantsResponse

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

    ListLicenseConversionTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseConversionTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListLicenseConversionTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListLicenseConversionTasksRequest.struct_class = Types::ListLicenseConversionTasksRequest

    ListLicenseConversionTasksResponse.add_member(:license_conversion_tasks, Shapes::ShapeRef.new(shape: LicenseConversionTasks, location_name: "LicenseConversionTasks"))
    ListLicenseConversionTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseConversionTasksResponse.struct_class = Types::ListLicenseConversionTasksResponse

    ListLicenseManagerReportGeneratorsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListLicenseManagerReportGeneratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseManagerReportGeneratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListLicenseManagerReportGeneratorsRequest.struct_class = Types::ListLicenseManagerReportGeneratorsRequest

    ListLicenseManagerReportGeneratorsResponse.add_member(:report_generators, Shapes::ShapeRef.new(shape: ReportGeneratorList, location_name: "ReportGenerators"))
    ListLicenseManagerReportGeneratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseManagerReportGeneratorsResponse.struct_class = Types::ListLicenseManagerReportGeneratorsResponse

    ListLicenseSpecificationsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    ListLicenseSpecificationsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxInteger, location_name: "MaxResults"))
    ListLicenseSpecificationsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseSpecificationsForResourceRequest.struct_class = Types::ListLicenseSpecificationsForResourceRequest

    ListLicenseSpecificationsForResourceResponse.add_member(:license_specifications, Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: "LicenseSpecifications"))
    ListLicenseSpecificationsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseSpecificationsForResourceResponse.struct_class = Types::ListLicenseSpecificationsForResourceResponse

    ListLicenseVersionsRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    ListLicenseVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListLicenseVersionsRequest.struct_class = Types::ListLicenseVersionsRequest

    ListLicenseVersionsResponse.add_member(:licenses, Shapes::ShapeRef.new(shape: LicenseList, location_name: "Licenses"))
    ListLicenseVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicenseVersionsResponse.struct_class = Types::ListLicenseVersionsResponse

    ListLicensesRequest.add_member(:license_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "LicenseArns"))
    ListLicensesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListLicensesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicensesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListLicensesRequest.struct_class = Types::ListLicensesRequest

    ListLicensesResponse.add_member(:licenses, Shapes::ShapeRef.new(shape: LicenseList, location_name: "Licenses"))
    ListLicensesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLicensesResponse.struct_class = Types::ListLicensesResponse

    ListReceivedGrantsForOrganizationRequest.add_member(:license_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "LicenseArn"))
    ListReceivedGrantsForOrganizationRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListReceivedGrantsForOrganizationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedGrantsForOrganizationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListReceivedGrantsForOrganizationRequest.struct_class = Types::ListReceivedGrantsForOrganizationRequest

    ListReceivedGrantsForOrganizationResponse.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, location_name: "Grants"))
    ListReceivedGrantsForOrganizationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedGrantsForOrganizationResponse.struct_class = Types::ListReceivedGrantsForOrganizationResponse

    ListReceivedGrantsRequest.add_member(:grant_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "GrantArns"))
    ListReceivedGrantsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListReceivedGrantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedGrantsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListReceivedGrantsRequest.struct_class = Types::ListReceivedGrantsRequest

    ListReceivedGrantsResponse.add_member(:grants, Shapes::ShapeRef.new(shape: GrantList, location_name: "Grants"))
    ListReceivedGrantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedGrantsResponse.struct_class = Types::ListReceivedGrantsResponse

    ListReceivedLicensesForOrganizationRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListReceivedLicensesForOrganizationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedLicensesForOrganizationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListReceivedLicensesForOrganizationRequest.struct_class = Types::ListReceivedLicensesForOrganizationRequest

    ListReceivedLicensesForOrganizationResponse.add_member(:licenses, Shapes::ShapeRef.new(shape: GrantedLicenseList, location_name: "Licenses"))
    ListReceivedLicensesForOrganizationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedLicensesForOrganizationResponse.struct_class = Types::ListReceivedLicensesForOrganizationResponse

    ListReceivedLicensesRequest.add_member(:license_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "LicenseArns"))
    ListReceivedLicensesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListReceivedLicensesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedLicensesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListReceivedLicensesRequest.struct_class = Types::ListReceivedLicensesRequest

    ListReceivedLicensesResponse.add_member(:licenses, Shapes::ShapeRef.new(shape: GrantedLicenseList, location_name: "Licenses"))
    ListReceivedLicensesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReceivedLicensesResponse.struct_class = Types::ListReceivedLicensesResponse

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

    ListTokensRequest.add_member(:token_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "TokenIds"))
    ListTokensRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListTokensRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTokensRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    ListTokensRequest.struct_class = Types::ListTokensRequest

    ListTokensResponse.add_member(:tokens, Shapes::ShapeRef.new(shape: TokenList, location_name: "Tokens"))
    ListTokensResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTokensResponse.struct_class = Types::ListTokensResponse

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

    MaxSize3StringList.member = Shapes::ShapeRef.new(shape: String)

    Metadata.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Metadata.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Metadata.struct_class = Types::Metadata

    MetadataList.member = Shapes::ShapeRef.new(shape: Metadata)

    NoEntitlementsAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    NoEntitlementsAllowedException.struct_class = Types::NoEntitlementsAllowedException

    Options.add_member(:activation_override_behavior, Shapes::ShapeRef.new(shape: ActivationOverrideBehavior, location_name: "ActivationOverrideBehavior"))
    Options.struct_class = Types::Options

    OrganizationConfiguration.add_member(:enable_integration, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EnableIntegration"))
    OrganizationConfiguration.struct_class = Types::OrganizationConfiguration

    PrincipalArnList.member = Shapes::ShapeRef.new(shape: Arn)

    ProductInformation.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ProductInformation.add_member(:product_information_filter_list, Shapes::ShapeRef.new(shape: ProductInformationFilterList, required: true, location_name: "ProductInformationFilterList"))
    ProductInformation.struct_class = Types::ProductInformation

    ProductInformationFilter.add_member(:product_information_filter_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductInformationFilterName"))
    ProductInformationFilter.add_member(:product_information_filter_value, Shapes::ShapeRef.new(shape: StringList, location_name: "ProductInformationFilterValue"))
    ProductInformationFilter.add_member(:product_information_filter_comparator, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductInformationFilterComparator"))
    ProductInformationFilter.struct_class = Types::ProductInformationFilter

    ProductInformationFilterList.member = Shapes::ShapeRef.new(shape: ProductInformationFilter)

    ProductInformationList.member = Shapes::ShapeRef.new(shape: ProductInformation)

    ProvisionalConfiguration.add_member(:max_time_to_live_in_minutes, Shapes::ShapeRef.new(shape: BoxInteger, required: true, location_name: "MaxTimeToLiveInMinutes"))
    ProvisionalConfiguration.struct_class = Types::ProvisionalConfiguration

    RateLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    RateLimitExceededException.struct_class = Types::RateLimitExceededException

    ReceivedMetadata.add_member(:received_status, Shapes::ShapeRef.new(shape: ReceivedStatus, location_name: "ReceivedStatus"))
    ReceivedMetadata.add_member(:received_status_reason, Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: "ReceivedStatusReason"))
    ReceivedMetadata.add_member(:allowed_operations, Shapes::ShapeRef.new(shape: AllowedOperationList, location_name: "AllowedOperations"))
    ReceivedMetadata.struct_class = Types::ReceivedMetadata

    RedirectException.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    RedirectException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    RedirectException.struct_class = Types::RedirectException

    RejectGrantRequest.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "GrantArn"))
    RejectGrantRequest.struct_class = Types::RejectGrantRequest

    RejectGrantResponse.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "GrantArn"))
    RejectGrantResponse.add_member(:status, Shapes::ShapeRef.new(shape: GrantStatus, location_name: "Status"))
    RejectGrantResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    RejectGrantResponse.struct_class = Types::RejectGrantResponse

    ReportContext.add_member(:license_configuration_arns, Shapes::ShapeRef.new(shape: ArnList, required: true, location_name: "licenseConfigurationArns"))
    ReportContext.struct_class = Types::ReportContext

    ReportFrequency.add_member(:value, Shapes::ShapeRef.new(shape: Integer, location_name: "value"))
    ReportFrequency.add_member(:period, Shapes::ShapeRef.new(shape: ReportFrequencyType, location_name: "period"))
    ReportFrequency.struct_class = Types::ReportFrequency

    ReportGenerator.add_member(:report_generator_name, Shapes::ShapeRef.new(shape: String, location_name: "ReportGeneratorName"))
    ReportGenerator.add_member(:report_type, Shapes::ShapeRef.new(shape: ReportTypeList, location_name: "ReportType"))
    ReportGenerator.add_member(:report_context, Shapes::ShapeRef.new(shape: ReportContext, location_name: "ReportContext"))
    ReportGenerator.add_member(:report_frequency, Shapes::ShapeRef.new(shape: ReportFrequency, location_name: "ReportFrequency"))
    ReportGenerator.add_member(:license_manager_report_generator_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseManagerReportGeneratorArn"))
    ReportGenerator.add_member(:last_run_status, Shapes::ShapeRef.new(shape: String, location_name: "LastRunStatus"))
    ReportGenerator.add_member(:last_run_failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "LastRunFailureReason"))
    ReportGenerator.add_member(:last_report_generation_time, Shapes::ShapeRef.new(shape: String, location_name: "LastReportGenerationTime"))
    ReportGenerator.add_member(:report_creator_account, Shapes::ShapeRef.new(shape: String, location_name: "ReportCreatorAccount"))
    ReportGenerator.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ReportGenerator.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "S3Location"))
    ReportGenerator.add_member(:create_time, Shapes::ShapeRef.new(shape: String, location_name: "CreateTime"))
    ReportGenerator.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ReportGenerator.struct_class = Types::ReportGenerator

    ReportGeneratorList.member = Shapes::ShapeRef.new(shape: ReportGenerator)

    ReportTypeList.member = Shapes::ShapeRef.new(shape: ReportType)

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

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: String, location_name: "bucket"))
    S3Location.add_member(:key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "keyPrefix"))
    S3Location.struct_class = Types::S3Location

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

    TokenData.add_member(:token_id, Shapes::ShapeRef.new(shape: String, location_name: "TokenId"))
    TokenData.add_member(:token_type, Shapes::ShapeRef.new(shape: String, location_name: "TokenType"))
    TokenData.add_member(:license_arn, Shapes::ShapeRef.new(shape: String, location_name: "LicenseArn"))
    TokenData.add_member(:expiration_time, Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: "ExpirationTime"))
    TokenData.add_member(:token_properties, Shapes::ShapeRef.new(shape: MaxSize3StringList, location_name: "TokenProperties"))
    TokenData.add_member(:role_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "RoleArns"))
    TokenData.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    TokenData.struct_class = Types::TokenData

    TokenList.member = Shapes::ShapeRef.new(shape: TokenData)

    UnsupportedDigitalSignatureMethodException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    UnsupportedDigitalSignatureMethodException.struct_class = Types::UnsupportedDigitalSignatureMethodException

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
    UpdateLicenseConfigurationRequest.add_member(:disassociate_when_not_found, Shapes::ShapeRef.new(shape: BoxBoolean, location_name: "DisassociateWhenNotFound"))
    UpdateLicenseConfigurationRequest.struct_class = Types::UpdateLicenseConfigurationRequest

    UpdateLicenseConfigurationResponse.struct_class = Types::UpdateLicenseConfigurationResponse

    UpdateLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LicenseManagerReportGeneratorArn"))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_generator_name, Shapes::ShapeRef.new(shape: ReportGeneratorName, required: true, location_name: "ReportGeneratorName"))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:type, Shapes::ShapeRef.new(shape: ReportTypeList, required: true, location_name: "Type"))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_context, Shapes::ShapeRef.new(shape: ReportContext, required: true, location_name: "ReportContext"))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_frequency, Shapes::ShapeRef.new(shape: ReportFrequency, required: true, location_name: "ReportFrequency"))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientToken"))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateLicenseManagerReportGeneratorRequest.struct_class = Types::UpdateLicenseManagerReportGeneratorRequest

    UpdateLicenseManagerReportGeneratorResponse.struct_class = Types::UpdateLicenseManagerReportGeneratorResponse

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

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


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

      api.add_operation(:accept_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptGrantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:check_in_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckInLicense"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckInLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckInLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:checkout_borrow_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckoutBorrowLicense"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckoutBorrowLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckoutBorrowLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NoEntitlementsAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: EntitlementNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDigitalSignatureMethodException)
        o.errors << Shapes::ShapeRef.new(shape: RedirectException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:checkout_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckoutLicense"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckoutLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckoutLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NoEntitlementsAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDigitalSignatureMethodException)
        o.errors << Shapes::ShapeRef.new(shape: RedirectException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:create_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGrantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_grant_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGrantVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGrantVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGrantVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:create_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLicense"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: RedirectException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

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

      api.add_operation(:create_license_conversion_task_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLicenseConversionTaskForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLicenseConversionTaskForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLicenseConversionTaskForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:create_license_manager_report_generator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLicenseManagerReportGenerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLicenseManagerReportGeneratorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLicenseManagerReportGeneratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_license_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLicenseVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLicenseVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLicenseVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RedirectException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:create_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RedirectException)
      end)

      api.add_operation(:delete_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGrantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:delete_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLicense"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: RedirectException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
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

      api.add_operation(:delete_license_manager_report_generator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLicenseManagerReportGenerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLicenseManagerReportGeneratorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLicenseManagerReportGeneratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RedirectException)
      end)

      api.add_operation(:extend_license_consumption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExtendLicenseConsumption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExtendLicenseConsumptionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExtendLicenseConsumptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccessTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:get_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGrantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:get_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLicense"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
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

      api.add_operation(:get_license_conversion_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLicenseConversionTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLicenseConversionTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLicenseConversionTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:get_license_manager_report_generator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLicenseManagerReportGenerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLicenseManagerReportGeneratorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLicenseManagerReportGeneratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_license_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLicenseUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLicenseUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLicenseUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
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

      api.add_operation(:list_distributed_grants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributedGrants"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDistributedGrantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributedGrantsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
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

      api.add_operation(:list_license_conversion_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLicenseConversionTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLicenseConversionTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLicenseConversionTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_license_manager_report_generators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLicenseManagerReportGenerators"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLicenseManagerReportGeneratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLicenseManagerReportGeneratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_license_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLicenseVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLicenseVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLicenseVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:list_licenses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLicenses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLicensesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLicensesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
      end)

      api.add_operation(:list_received_grants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReceivedGrants"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReceivedGrantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReceivedGrantsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_received_grants_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReceivedGrantsForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReceivedGrantsForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReceivedGrantsForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_received_licenses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReceivedLicenses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReceivedLicensesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReceivedLicensesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
      end)

      api.add_operation(:list_received_licenses_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReceivedLicensesForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReceivedLicensesForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReceivedLicensesForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
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

      api.add_operation(:list_tokens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTokens"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTokensRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTokensResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
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

      api.add_operation(:reject_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectGrantRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectGrantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
      end)

      api.add_operation(:update_license_manager_report_generator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLicenseManagerReportGenerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLicenseManagerReportGeneratorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLicenseManagerReportGeneratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: RateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
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

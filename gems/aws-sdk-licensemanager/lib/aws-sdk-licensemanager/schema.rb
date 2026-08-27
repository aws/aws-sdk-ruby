# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#AcceptGrantRequest", name: "AcceptGrantRequest")
    AcceptGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#AcceptGrantResponse", name: "AcceptGrantResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceAccessDenied", "httpResponseCode" => 401}, "smithy.api#error" => "client", "smithy.api#httpError" => 401})
    ActivationOverrideBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#ActivationOverrideBehavior", name: "ActivationOverrideBehavior")
    AllowedOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#AllowedOperation", name: "AllowedOperation")
    AllowedOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#AllowedOperationList", name: "AllowedOperationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ArnList", name: "ArnList")
    AuthorizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#AuthorizationException", name: "AuthorizationException", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationFailure", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AutomatedDiscoveryInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#AutomatedDiscoveryInformation", name: "AutomatedDiscoveryInformation")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.licensemanager#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BorrowConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#BorrowConfiguration", name: "BorrowConfiguration")
    BoxBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.licensemanager#BoxBoolean", name: "BoxBoolean")
    BoxInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanager#BoxInteger", name: "BoxInteger")
    BoxLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanager#BoxLong", name: "BoxLong")
    CheckInLicenseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CheckInLicenseRequest", name: "CheckInLicenseRequest")
    CheckInLicenseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CheckInLicenseResponse", name: "CheckInLicenseResponse")
    CheckoutBorrowLicenseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CheckoutBorrowLicenseRequest", name: "CheckoutBorrowLicenseRequest")
    CheckoutBorrowLicenseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CheckoutBorrowLicenseResponse", name: "CheckoutBorrowLicenseResponse")
    CheckoutLicenseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CheckoutLicenseRequest", name: "CheckoutLicenseRequest")
    CheckoutLicenseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CheckoutLicenseResponse", name: "CheckoutLicenseResponse")
    CheckoutType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#CheckoutType", name: "CheckoutType")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsumedLicenseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ConsumedLicenseSummary", name: "ConsumedLicenseSummary")
    ConsumedLicenseSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ConsumedLicenseSummaryList", name: "ConsumedLicenseSummaryList")
    ConsumptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ConsumptionConfiguration", name: "ConsumptionConfiguration")
    CreateGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateGrantRequest", name: "CreateGrantRequest")
    CreateGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateGrantResponse", name: "CreateGrantResponse")
    CreateGrantVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateGrantVersionRequest", name: "CreateGrantVersionRequest")
    CreateGrantVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateGrantVersionResponse", name: "CreateGrantVersionResponse")
    CreateLicenseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseConfigurationRequest", name: "CreateLicenseConfigurationRequest")
    CreateLicenseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseConfigurationResponse", name: "CreateLicenseConfigurationResponse")
    CreateLicenseConversionTaskForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseConversionTaskForResourceRequest", name: "CreateLicenseConversionTaskForResourceRequest")
    CreateLicenseConversionTaskForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseConversionTaskForResourceResponse", name: "CreateLicenseConversionTaskForResourceResponse")
    CreateLicenseManagerReportGeneratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseManagerReportGeneratorRequest", name: "CreateLicenseManagerReportGeneratorRequest")
    CreateLicenseManagerReportGeneratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseManagerReportGeneratorResponse", name: "CreateLicenseManagerReportGeneratorResponse")
    CreateLicenseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseRequest", name: "CreateLicenseRequest")
    CreateLicenseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseResponse", name: "CreateLicenseResponse")
    CreateLicenseVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseVersionRequest", name: "CreateLicenseVersionRequest")
    CreateLicenseVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateLicenseVersionResponse", name: "CreateLicenseVersionResponse")
    CreateTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateTokenRequest", name: "CreateTokenRequest")
    CreateTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#CreateTokenResponse", name: "CreateTokenResponse")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.licensemanager#DateTime", name: "DateTime")
    DatetimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DatetimeRange", name: "DatetimeRange")
    DeleteGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteGrantRequest", name: "DeleteGrantRequest")
    DeleteGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteGrantResponse", name: "DeleteGrantResponse")
    DeleteLicenseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteLicenseConfigurationRequest", name: "DeleteLicenseConfigurationRequest")
    DeleteLicenseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteLicenseConfigurationResponse", name: "DeleteLicenseConfigurationResponse")
    DeleteLicenseManagerReportGeneratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteLicenseManagerReportGeneratorRequest", name: "DeleteLicenseManagerReportGeneratorRequest")
    DeleteLicenseManagerReportGeneratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteLicenseManagerReportGeneratorResponse", name: "DeleteLicenseManagerReportGeneratorResponse")
    DeleteLicenseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteLicenseRequest", name: "DeleteLicenseRequest")
    DeleteLicenseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteLicenseResponse", name: "DeleteLicenseResponse")
    DeleteTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteTokenRequest", name: "DeleteTokenRequest")
    DeleteTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#DeleteTokenResponse", name: "DeleteTokenResponse")
    DigitalSignatureMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#DigitalSignatureMethod", name: "DigitalSignatureMethod")
    Entitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#Entitlement", name: "Entitlement")
    EntitlementData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#EntitlementData", name: "EntitlementData")
    EntitlementDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#EntitlementDataList", name: "EntitlementDataList")
    EntitlementDataUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#EntitlementDataUnit", name: "EntitlementDataUnit")
    EntitlementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#EntitlementList", name: "EntitlementList")
    EntitlementNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#EntitlementNotAllowedException", name: "EntitlementNotAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EntitlementUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#EntitlementUnit", name: "EntitlementUnit")
    EntitlementUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#EntitlementUsage", name: "EntitlementUsage")
    EntitlementUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#EntitlementUsageList", name: "EntitlementUsageList")
    ExtendLicenseConsumptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ExtendLicenseConsumptionRequest", name: "ExtendLicenseConsumptionRequest")
    ExtendLicenseConsumptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ExtendLicenseConsumptionResponse", name: "ExtendLicenseConsumptionResponse")
    FailedDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#FailedDependencyException", name: "FailedDependencyException", traits: {"aws.protocols#awsQueryError" => {"code" => "FailedDependency", "httpResponseCode" => 424}, "smithy.api#error" => "client", "smithy.api#httpError" => 424})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#Filter", name: "Filter")
    FilterLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#FilterLimitExceededException", name: "FilterLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "FilterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#FilterList", name: "FilterList")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#FilterName", name: "FilterName")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#FilterValue", name: "FilterValue")
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#FilterValues", name: "FilterValues")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#Filters", name: "Filters")
    GetAccessTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetAccessTokenRequest", name: "GetAccessTokenRequest")
    GetAccessTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetAccessTokenResponse", name: "GetAccessTokenResponse")
    GetGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetGrantRequest", name: "GetGrantRequest")
    GetGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetGrantResponse", name: "GetGrantResponse")
    GetLicenseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseConfigurationRequest", name: "GetLicenseConfigurationRequest")
    GetLicenseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseConfigurationResponse", name: "GetLicenseConfigurationResponse")
    GetLicenseConversionTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseConversionTaskRequest", name: "GetLicenseConversionTaskRequest")
    GetLicenseConversionTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseConversionTaskResponse", name: "GetLicenseConversionTaskResponse")
    GetLicenseManagerReportGeneratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseManagerReportGeneratorRequest", name: "GetLicenseManagerReportGeneratorRequest")
    GetLicenseManagerReportGeneratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseManagerReportGeneratorResponse", name: "GetLicenseManagerReportGeneratorResponse")
    GetLicenseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseRequest", name: "GetLicenseRequest")
    GetLicenseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseResponse", name: "GetLicenseResponse")
    GetLicenseUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseUsageRequest", name: "GetLicenseUsageRequest")
    GetLicenseUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetLicenseUsageResponse", name: "GetLicenseUsageResponse")
    GetServiceSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetServiceSettingsRequest", name: "GetServiceSettingsRequest")
    GetServiceSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GetServiceSettingsResponse", name: "GetServiceSettingsResponse")
    Grant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#Grant", name: "Grant")
    GrantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#GrantList", name: "GrantList")
    GrantStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#GrantStatus", name: "GrantStatus")
    GrantedLicense = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#GrantedLicense", name: "GrantedLicense")
    GrantedLicenseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#GrantedLicenseList", name: "GrantedLicenseList")
    ISO8601DateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#ISO8601DateTime", name: "ISO8601DateTime", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^(-?(?:[1-9][0-9]*)?[0-9]{4})-(1[0-2]|0[1-9])-(3[0-1]|0[1-9]|[1-2][0-9])T(2[0-3]|[0-1][0-9]):([0-5][0-9]):([0-5][0-9])(\\.[0-9]+)?(Z|[+-](?:2[ 0-3]|[0-1][0-9]):[0-5][0-9])+$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanager#Integer", name: "Integer")
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValueProvided", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#InvalidResourceStateException", name: "InvalidResourceStateException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InventoryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#InventoryFilter", name: "InventoryFilter")
    InventoryFilterCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#InventoryFilterCondition", name: "InventoryFilterCondition")
    InventoryFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#InventoryFilterList", name: "InventoryFilterList")
    Issuer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#Issuer", name: "Issuer")
    IssuerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#IssuerDetails", name: "IssuerDetails")
    License = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#License", name: "License")
    LicenseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseConfiguration", name: "LicenseConfiguration")
    LicenseConfigurationAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseConfigurationAssociation", name: "LicenseConfigurationAssociation")
    LicenseConfigurationAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#LicenseConfigurationAssociations", name: "LicenseConfigurationAssociations")
    LicenseConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#LicenseConfigurationStatus", name: "LicenseConfigurationStatus")
    LicenseConfigurationUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseConfigurationUsage", name: "LicenseConfigurationUsage")
    LicenseConfigurationUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#LicenseConfigurationUsageList", name: "LicenseConfigurationUsageList")
    LicenseConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#LicenseConfigurations", name: "LicenseConfigurations")
    LicenseConversionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseConversionContext", name: "LicenseConversionContext")
    LicenseConversionTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseConversionTask", name: "LicenseConversionTask")
    LicenseConversionTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#LicenseConversionTaskId", name: "LicenseConversionTaskId", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^lct-[a-zA-Z0-9]*$"})
    LicenseConversionTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#LicenseConversionTaskStatus", name: "LicenseConversionTaskStatus")
    LicenseConversionTasks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#LicenseConversionTasks", name: "LicenseConversionTasks")
    LicenseCountingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#LicenseCountingType", name: "LicenseCountingType")
    LicenseDeletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#LicenseDeletionStatus", name: "LicenseDeletionStatus")
    LicenseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#LicenseList", name: "LicenseList")
    LicenseOperationFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseOperationFailure", name: "LicenseOperationFailure")
    LicenseOperationFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#LicenseOperationFailureList", name: "LicenseOperationFailureList")
    LicenseSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseSpecification", name: "LicenseSpecification")
    LicenseSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#LicenseSpecifications", name: "LicenseSpecifications")
    LicenseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#LicenseStatus", name: "LicenseStatus")
    LicenseUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseUsage", name: "LicenseUsage")
    LicenseUsageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#LicenseUsageException", name: "LicenseUsageException", traits: {"aws.protocols#awsQueryError" => {"code" => "LicenseUsageFailure", "httpResponseCode" => 412}, "smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ListAssociationsForLicenseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListAssociationsForLicenseConfigurationRequest", name: "ListAssociationsForLicenseConfigurationRequest")
    ListAssociationsForLicenseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListAssociationsForLicenseConfigurationResponse", name: "ListAssociationsForLicenseConfigurationResponse")
    ListDistributedGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListDistributedGrantsRequest", name: "ListDistributedGrantsRequest")
    ListDistributedGrantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListDistributedGrantsResponse", name: "ListDistributedGrantsResponse")
    ListFailuresForLicenseConfigurationOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListFailuresForLicenseConfigurationOperationsRequest", name: "ListFailuresForLicenseConfigurationOperationsRequest")
    ListFailuresForLicenseConfigurationOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListFailuresForLicenseConfigurationOperationsResponse", name: "ListFailuresForLicenseConfigurationOperationsResponse")
    ListLicenseConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseConfigurationsRequest", name: "ListLicenseConfigurationsRequest")
    ListLicenseConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseConfigurationsResponse", name: "ListLicenseConfigurationsResponse")
    ListLicenseConversionTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseConversionTasksRequest", name: "ListLicenseConversionTasksRequest")
    ListLicenseConversionTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseConversionTasksResponse", name: "ListLicenseConversionTasksResponse")
    ListLicenseManagerReportGeneratorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseManagerReportGeneratorsRequest", name: "ListLicenseManagerReportGeneratorsRequest")
    ListLicenseManagerReportGeneratorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseManagerReportGeneratorsResponse", name: "ListLicenseManagerReportGeneratorsResponse")
    ListLicenseSpecificationsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseSpecificationsForResourceRequest", name: "ListLicenseSpecificationsForResourceRequest")
    ListLicenseSpecificationsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseSpecificationsForResourceResponse", name: "ListLicenseSpecificationsForResourceResponse")
    ListLicenseVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseVersionsRequest", name: "ListLicenseVersionsRequest")
    ListLicenseVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicenseVersionsResponse", name: "ListLicenseVersionsResponse")
    ListLicensesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicensesRequest", name: "ListLicensesRequest")
    ListLicensesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListLicensesResponse", name: "ListLicensesResponse")
    ListReceivedGrantsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedGrantsForOrganizationRequest", name: "ListReceivedGrantsForOrganizationRequest")
    ListReceivedGrantsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedGrantsForOrganizationResponse", name: "ListReceivedGrantsForOrganizationResponse")
    ListReceivedGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedGrantsRequest", name: "ListReceivedGrantsRequest")
    ListReceivedGrantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedGrantsResponse", name: "ListReceivedGrantsResponse")
    ListReceivedLicensesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedLicensesForOrganizationRequest", name: "ListReceivedLicensesForOrganizationRequest")
    ListReceivedLicensesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedLicensesForOrganizationResponse", name: "ListReceivedLicensesForOrganizationResponse")
    ListReceivedLicensesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedLicensesRequest", name: "ListReceivedLicensesRequest")
    ListReceivedLicensesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListReceivedLicensesResponse", name: "ListReceivedLicensesResponse")
    ListResourceInventoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListResourceInventoryRequest", name: "ListResourceInventoryRequest")
    ListResourceInventoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListResourceInventoryResponse", name: "ListResourceInventoryResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTokensRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListTokensRequest", name: "ListTokensRequest")
    ListTokensResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListTokensResponse", name: "ListTokensResponse")
    ListUsageForLicenseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListUsageForLicenseConfigurationRequest", name: "ListUsageForLicenseConfigurationRequest")
    ListUsageForLicenseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ListUsageForLicenseConfigurationResponse", name: "ListUsageForLicenseConfigurationResponse")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#Location", name: "Location")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanager#Long", name: "Long")
    ManagedResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ManagedResourceSummary", name: "ManagedResourceSummary")
    ManagedResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ManagedResourceSummaryList", name: "ManagedResourceSummaryList")
    MaxSize100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.licensemanager#MaxSize100", name: "MaxSize100", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSize3StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#MaxSize3StringList", name: "MaxSize3StringList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#Message", name: "Message")
    Metadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#Metadata", name: "Metadata")
    MetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#MetadataList", name: "MetadataList")
    NoEntitlementsAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#NoEntitlementsAllowedException", name: "NoEntitlementsAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Options = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#Options", name: "Options")
    OrganizationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#OrganizationConfiguration", name: "OrganizationConfiguration")
    PrincipalArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#PrincipalArnList", name: "PrincipalArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProductCodeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#ProductCodeId", name: "ProductCodeId", traits: {"smithy.api#pattern" => "^[A-Za-z0-9]{1,25}$"})
    ProductCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ProductCodeList", name: "ProductCodeList")
    ProductCodeListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ProductCodeListItem", name: "ProductCodeListItem")
    ProductCodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#ProductCodeType", name: "ProductCodeType")
    ProductInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ProductInformation", name: "ProductInformation")
    ProductInformationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ProductInformationFilter", name: "ProductInformationFilter")
    ProductInformationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ProductInformationFilterList", name: "ProductInformationFilterList")
    ProductInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ProductInformationList", name: "ProductInformationList")
    ProvisionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ProvisionalConfiguration", name: "ProvisionalConfiguration")
    RateLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#RateLimitExceededException", name: "RateLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "RateLimitExceeded", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ReceivedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ReceivedMetadata", name: "ReceivedMetadata")
    ReceivedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#ReceivedStatus", name: "ReceivedStatus")
    RedirectException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#RedirectException", name: "RedirectException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 308})
    RejectGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#RejectGrantRequest", name: "RejectGrantRequest")
    RejectGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#RejectGrantResponse", name: "RejectGrantResponse")
    RenewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#RenewType", name: "RenewType")
    ReportContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ReportContext", name: "ReportContext")
    ReportFrequency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ReportFrequency", name: "ReportFrequency")
    ReportFrequencyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#ReportFrequencyType", name: "ReportFrequencyType")
    ReportGenerator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ReportGenerator", name: "ReportGenerator")
    ReportGeneratorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ReportGeneratorList", name: "ReportGeneratorList")
    ReportGeneratorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#ReportGeneratorName", name: "ReportGeneratorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReportType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#ReportType", name: "ReportType")
    ReportTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ReportTypeList", name: "ReportTypeList")
    ResourceInventory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ResourceInventory", name: "ResourceInventory")
    ResourceInventoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#ResourceInventoryList", name: "ResourceInventoryList")
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResource.NotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#ResourceType", name: "ResourceType")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#S3Location", name: "S3Location")
    ServerInternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ServerInternalException", name: "ServerInternalException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SignedToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#SignedToken", name: "SignedToken", traits: {"smithy.api#length" => {"min" => 4096}})
    StatusReasonMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#StatusReasonMessage", name: "StatusReasonMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#StringList", name: "StringList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#Tag", name: "Tag")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#TagResourceResponse", name: "TagResourceResponse")
    TokenData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#TokenData", name: "TokenData")
    TokenList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.licensemanager#TokenList", name: "TokenList")
    TokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#TokenString", name: "TokenString", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^\\S+$"})
    TokenType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.licensemanager#TokenType", name: "TokenType")
    UnsupportedDigitalSignatureMethodException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UnsupportedDigitalSignatureMethodException", name: "UnsupportedDigitalSignatureMethodException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateLicenseConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateLicenseConfigurationRequest", name: "UpdateLicenseConfigurationRequest")
    UpdateLicenseConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateLicenseConfigurationResponse", name: "UpdateLicenseConfigurationResponse")
    UpdateLicenseManagerReportGeneratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateLicenseManagerReportGeneratorRequest", name: "UpdateLicenseManagerReportGeneratorRequest")
    UpdateLicenseManagerReportGeneratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateLicenseManagerReportGeneratorResponse", name: "UpdateLicenseManagerReportGeneratorResponse")
    UpdateLicenseSpecificationsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateLicenseSpecificationsForResourceRequest", name: "UpdateLicenseSpecificationsForResourceRequest")
    UpdateLicenseSpecificationsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateLicenseSpecificationsForResourceResponse", name: "UpdateLicenseSpecificationsForResourceResponse")
    UpdateServiceSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateServiceSettingsRequest", name: "UpdateServiceSettingsRequest")
    UpdateServiceSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#UpdateServiceSettingsResponse", name: "UpdateServiceSettingsResponse")
    UsageOperation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.licensemanager#UsageOperation", name: "UsageOperation", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.licensemanager#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AcceptGrantRequest.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn", traits: {"smithy.api#required" => {}}))
    AcceptGrantRequest.type = Types::AcceptGrantRequest
    AcceptGrantResponse.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn"))
    AcceptGrantResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantStatus, name: "Status"))
    AcceptGrantResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    AcceptGrantResponse.type = Types::AcceptGrantResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivationOverrideBehavior.add_member(:distributed_grants_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTED_GRANTS_ONLY", traits: {"smithy.api#enumValue" => "DISTRIBUTED_GRANTS_ONLY"}))
    ActivationOverrideBehavior.add_member(:all_grants_permitted_by_issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_GRANTS_PERMITTED_BY_ISSUER", traits: {"smithy.api#enumValue" => "ALL_GRANTS_PERMITTED_BY_ISSUER"}))
    AllowedOperation.add_member(:create_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_GRANT", traits: {"smithy.api#enumValue" => "CreateGrant"}))
    AllowedOperation.add_member(:checkout_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHECKOUT_LICENSE", traits: {"smithy.api#enumValue" => "CheckoutLicense"}))
    AllowedOperation.add_member(:checkout_borrow_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHECKOUT_BORROW_LICENSE", traits: {"smithy.api#enumValue" => "CheckoutBorrowLicense"}))
    AllowedOperation.add_member(:check_in_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHECK_IN_LICENSE", traits: {"smithy.api#enumValue" => "CheckInLicense"}))
    AllowedOperation.add_member(:extend_consumption_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTEND_CONSUMPTION_LICENSE", traits: {"smithy.api#enumValue" => "ExtendConsumptionLicense"}))
    AllowedOperation.add_member(:list_purchased_licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIST_PURCHASED_LICENSES", traits: {"smithy.api#enumValue" => "ListPurchasedLicenses"}))
    AllowedOperation.add_member(:create_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_TOKEN", traits: {"smithy.api#enumValue" => "CreateToken"}))
    AllowedOperationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOperation, name: "member")
    ArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member")
    AuthorizationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    AuthorizationException.type = Types::AuthorizationException
    AutomatedDiscoveryInformation.add_member(:last_run_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastRunTime"))
    AutomatedDiscoveryInformation.type = Types::AutomatedDiscoveryInformation
    BorrowConfiguration.add_member(:allow_early_check_in, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "AllowEarlyCheckIn", traits: {"smithy.api#required" => {}}))
    BorrowConfiguration.add_member(:max_time_to_live_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxTimeToLiveInMinutes", traits: {"smithy.api#required" => {}}))
    BorrowConfiguration.type = Types::BorrowConfiguration
    CheckInLicenseRequest.add_member(:license_consumption_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConsumptionToken", traits: {"smithy.api#required" => {}}))
    CheckInLicenseRequest.add_member(:beneficiary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Beneficiary"))
    CheckInLicenseRequest.type = Types::CheckInLicenseRequest
    CheckInLicenseResponse.type = Types::CheckInLicenseResponse
    CheckoutBorrowLicenseRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementDataList, name: "Entitlements", traits: {"smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.add_member(:digital_signature_method, ::Smithy::Schema::Shapes::MemberShape.new(target: DigitalSignatureMethod, name: "DigitalSignatureMethod", traits: {"smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeId"))
    CheckoutBorrowLicenseRequest.add_member(:checkout_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataList, name: "CheckoutMetadata"))
    CheckoutBorrowLicenseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.type = Types::CheckoutBorrowLicenseRequest
    CheckoutBorrowLicenseResponse.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn"))
    CheckoutBorrowLicenseResponse.add_member(:license_consumption_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConsumptionToken"))
    CheckoutBorrowLicenseResponse.add_member(:entitlements_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementDataList, name: "EntitlementsAllowed"))
    CheckoutBorrowLicenseResponse.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeId"))
    CheckoutBorrowLicenseResponse.add_member(:signed_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SignedToken, name: "SignedToken"))
    CheckoutBorrowLicenseResponse.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "IssuedAt"))
    CheckoutBorrowLicenseResponse.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "Expiration"))
    CheckoutBorrowLicenseResponse.add_member(:checkout_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataList, name: "CheckoutMetadata"))
    CheckoutBorrowLicenseResponse.type = Types::CheckoutBorrowLicenseResponse
    CheckoutLicenseRequest.add_member(:product_sku, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductSKU", traits: {"smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:checkout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckoutType, name: "CheckoutType", traits: {"smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:key_fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyFingerprint", traits: {"smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementDataList, name: "Entitlements", traits: {"smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:beneficiary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Beneficiary"))
    CheckoutLicenseRequest.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeId"))
    CheckoutLicenseRequest.type = Types::CheckoutLicenseRequest
    CheckoutLicenseResponse.add_member(:checkout_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckoutType, name: "CheckoutType"))
    CheckoutLicenseResponse.add_member(:license_consumption_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConsumptionToken"))
    CheckoutLicenseResponse.add_member(:entitlements_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementDataList, name: "EntitlementsAllowed"))
    CheckoutLicenseResponse.add_member(:signed_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SignedToken, name: "SignedToken"))
    CheckoutLicenseResponse.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeId"))
    CheckoutLicenseResponse.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "IssuedAt"))
    CheckoutLicenseResponse.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "Expiration"))
    CheckoutLicenseResponse.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseArn"))
    CheckoutLicenseResponse.type = Types::CheckoutLicenseResponse
    CheckoutType.add_member(:provisional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONAL", traits: {"smithy.api#enumValue" => "PROVISIONAL"}))
    CheckoutType.add_member(:perpetual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERPETUAL", traits: {"smithy.api#enumValue" => "PERPETUAL"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ConflictException.type = Types::ConflictException
    ConsumedLicenseSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ConsumedLicenseSummary.add_member(:consumed_licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "ConsumedLicenses"))
    ConsumedLicenseSummary.type = Types::ConsumedLicenseSummary
    ConsumedLicenseSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedLicenseSummary, name: "member")
    ConsumptionConfiguration.add_member(:renew_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewType, name: "RenewType"))
    ConsumptionConfiguration.add_member(:provisional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionalConfiguration, name: "ProvisionalConfiguration"))
    ConsumptionConfiguration.add_member(:borrow_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BorrowConfiguration, name: "BorrowConfiguration"))
    ConsumptionConfiguration.type = Types::ConsumptionConfiguration
    CreateGrantRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GrantName", traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArnList, name: "Principals", traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:allowed_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOperationList, name: "AllowedOperations", traits: {"smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateGrantRequest.type = Types::CreateGrantRequest
    CreateGrantResponse.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn"))
    CreateGrantResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantStatus, name: "Status"))
    CreateGrantResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateGrantResponse.type = Types::CreateGrantResponse
    CreateGrantVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateGrantVersionRequest.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn", traits: {"smithy.api#required" => {}}))
    CreateGrantVersionRequest.add_member(:grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GrantName"))
    CreateGrantVersionRequest.add_member(:allowed_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOperationList, name: "AllowedOperations"))
    CreateGrantVersionRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantStatus, name: "Status"))
    CreateGrantVersionRequest.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonMessage, name: "StatusReason"))
    CreateGrantVersionRequest.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceVersion"))
    CreateGrantVersionRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "Options"))
    CreateGrantVersionRequest.type = Types::CreateGrantVersionRequest
    CreateGrantVersionResponse.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn"))
    CreateGrantVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantStatus, name: "Status"))
    CreateGrantVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateGrantVersionResponse.type = Types::CreateGrantVersionResponse
    CreateLicenseConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateLicenseConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateLicenseConfigurationRequest.add_member(:license_counting_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseCountingType, name: "LicenseCountingType", traits: {"smithy.api#required" => {}}))
    CreateLicenseConfigurationRequest.add_member(:license_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "LicenseCount"))
    CreateLicenseConfigurationRequest.add_member(:license_count_hard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "LicenseCountHardLimit"))
    CreateLicenseConfigurationRequest.add_member(:license_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "LicenseRules"))
    CreateLicenseConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateLicenseConfigurationRequest.add_member(:disassociate_when_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "DisassociateWhenNotFound"))
    CreateLicenseConfigurationRequest.add_member(:product_information_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformationList, name: "ProductInformationList"))
    CreateLicenseConfigurationRequest.type = Types::CreateLicenseConfigurationRequest
    CreateLicenseConfigurationResponse.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn"))
    CreateLicenseConfigurationResponse.type = Types::CreateLicenseConfigurationResponse
    CreateLicenseConversionTaskForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    CreateLicenseConversionTaskForResourceRequest.add_member(:source_license_context, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionContext, name: "SourceLicenseContext", traits: {"smithy.api#required" => {}}))
    CreateLicenseConversionTaskForResourceRequest.add_member(:destination_license_context, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionContext, name: "DestinationLicenseContext", traits: {"smithy.api#required" => {}}))
    CreateLicenseConversionTaskForResourceRequest.type = Types::CreateLicenseConversionTaskForResourceRequest
    CreateLicenseConversionTaskForResourceResponse.add_member(:license_conversion_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTaskId, name: "LicenseConversionTaskId"))
    CreateLicenseConversionTaskForResourceResponse.type = Types::CreateLicenseConversionTaskForResourceResponse
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_generator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGeneratorName, name: "ReportGeneratorName", traits: {"smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportTypeList, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportContext, name: "ReportContext", traits: {"smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFrequency, name: "ReportFrequency", traits: {"smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateLicenseManagerReportGeneratorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateLicenseManagerReportGeneratorRequest.type = Types::CreateLicenseManagerReportGeneratorRequest
    CreateLicenseManagerReportGeneratorResponse.add_member(:license_manager_report_generator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseManagerReportGeneratorArn"))
    CreateLicenseManagerReportGeneratorResponse.type = Types::CreateLicenseManagerReportGeneratorResponse
    CreateLicenseRequest.add_member(:license_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseName", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductName", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:product_sku, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductSKU", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "Issuer", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeRange, name: "Validity", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementList, name: "Entitlements", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:beneficiary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Beneficiary", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:consumption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumptionConfiguration, name: "ConsumptionConfiguration", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:license_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataList, name: "LicenseMetadata"))
    CreateLicenseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateLicenseRequest.type = Types::CreateLicenseRequest
    CreateLicenseResponse.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn"))
    CreateLicenseResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseStatus, name: "Status"))
    CreateLicenseResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateLicenseResponse.type = Types::CreateLicenseResponse
    CreateLicenseVersionRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:license_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseName", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductName", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "Issuer", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeRange, name: "Validity", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:license_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataList, name: "LicenseMetadata"))
    CreateLicenseVersionRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementList, name: "Entitlements", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:consumption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumptionConfiguration, name: "ConsumptionConfiguration", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceVersion"))
    CreateLicenseVersionRequest.type = Types::CreateLicenseVersionRequest
    CreateLicenseVersionResponse.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn"))
    CreateLicenseVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    CreateLicenseVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseStatus, name: "Status"))
    CreateLicenseVersionResponse.type = Types::CreateLicenseVersionResponse
    CreateTokenRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:role_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "RoleArns"))
    CreateTokenRequest.add_member(:expiration_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ExpirationInDays"))
    CreateTokenRequest.add_member(:token_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize3StringList, name: "TokenProperties"))
    CreateTokenRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreateTokenRequest.type = Types::CreateTokenRequest
    CreateTokenResponse.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenId"))
    CreateTokenResponse.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenType, name: "TokenType"))
    CreateTokenResponse.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, name: "Token"))
    CreateTokenResponse.type = Types::CreateTokenResponse
    DatetimeRange.add_member(:begin, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "Begin", traits: {"smithy.api#required" => {}}))
    DatetimeRange.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "End"))
    DatetimeRange.type = Types::DatetimeRange
    DeleteGrantRequest.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn", traits: {"smithy.api#required" => {}}))
    DeleteGrantRequest.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonMessage, name: "StatusReason"))
    DeleteGrantRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#required" => {}}))
    DeleteGrantRequest.type = Types::DeleteGrantRequest
    DeleteGrantResponse.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn"))
    DeleteGrantResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantStatus, name: "Status"))
    DeleteGrantResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    DeleteGrantResponse.type = Types::DeleteGrantResponse
    DeleteLicenseConfigurationRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn", traits: {"smithy.api#required" => {}}))
    DeleteLicenseConfigurationRequest.type = Types::DeleteLicenseConfigurationRequest
    DeleteLicenseConfigurationResponse.type = Types::DeleteLicenseConfigurationResponse
    DeleteLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseManagerReportGeneratorArn", traits: {"smithy.api#required" => {}}))
    DeleteLicenseManagerReportGeneratorRequest.type = Types::DeleteLicenseManagerReportGeneratorRequest
    DeleteLicenseManagerReportGeneratorResponse.type = Types::DeleteLicenseManagerReportGeneratorResponse
    DeleteLicenseRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    DeleteLicenseRequest.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceVersion", traits: {"smithy.api#required" => {}}))
    DeleteLicenseRequest.type = Types::DeleteLicenseRequest
    DeleteLicenseResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseDeletionStatus, name: "Status"))
    DeleteLicenseResponse.add_member(:deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "DeletionDate"))
    DeleteLicenseResponse.type = Types::DeleteLicenseResponse
    DeleteTokenRequest.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenId", traits: {"smithy.api#required" => {}}))
    DeleteTokenRequest.type = Types::DeleteTokenRequest
    DeleteTokenResponse.type = Types::DeleteTokenResponse
    DigitalSignatureMethod.add_member(:jwt_ps384, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JWT_PS384", traits: {"smithy.api#enumValue" => "JWT_PS384"}))
    Entitlement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    Entitlement.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Entitlement.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxCount"))
    Entitlement.add_member(:overage, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "Overage"))
    Entitlement.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementUnit, name: "Unit", traits: {"smithy.api#required" => {}}))
    Entitlement.add_member(:allow_check_in, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "AllowCheckIn"))
    Entitlement.type = Types::Entitlement
    EntitlementData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    EntitlementData.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    EntitlementData.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementDataUnit, name: "Unit", traits: {"smithy.api#required" => {}}))
    EntitlementData.type = Types::EntitlementData
    EntitlementDataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementData, name: "member")
    EntitlementDataUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "Count"}))
    EntitlementDataUnit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    EntitlementDataUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "Seconds"}))
    EntitlementDataUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICROSECONDS", traits: {"smithy.api#enumValue" => "Microseconds"}))
    EntitlementDataUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILLISECONDS", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    EntitlementDataUnit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES", traits: {"smithy.api#enumValue" => "Bytes"}))
    EntitlementDataUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBYTES", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    EntitlementDataUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABYTES", traits: {"smithy.api#enumValue" => "Megabytes"}))
    EntitlementDataUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABYTES", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    EntitlementDataUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABYTES", traits: {"smithy.api#enumValue" => "Terabytes"}))
    EntitlementDataUnit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS", traits: {"smithy.api#enumValue" => "Bits"}))
    EntitlementDataUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBITS", traits: {"smithy.api#enumValue" => "Kilobits"}))
    EntitlementDataUnit.add_member(:megabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABITS", traits: {"smithy.api#enumValue" => "Megabits"}))
    EntitlementDataUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABITS", traits: {"smithy.api#enumValue" => "Gigabits"}))
    EntitlementDataUnit.add_member(:terabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABITS", traits: {"smithy.api#enumValue" => "Terabits"}))
    EntitlementDataUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT", traits: {"smithy.api#enumValue" => "Percent"}))
    EntitlementDataUnit.add_member(:bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    EntitlementDataUnit.add_member(:kilobytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    EntitlementDataUnit.add_member(:megabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    EntitlementDataUnit.add_member(:gigabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    EntitlementDataUnit.add_member(:terabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    EntitlementDataUnit.add_member(:bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    EntitlementDataUnit.add_member(:kilobits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    EntitlementDataUnit.add_member(:megabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    EntitlementDataUnit.add_member(:gigabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    EntitlementDataUnit.add_member(:terabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    EntitlementDataUnit.add_member(:count_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_PER_SECOND", traits: {"smithy.api#enumValue" => "Count/Second"}))
    EntitlementList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "member")
    EntitlementNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    EntitlementNotAllowedException.type = Types::EntitlementNotAllowedException
    EntitlementUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "Count"}))
    EntitlementUnit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    EntitlementUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "Seconds"}))
    EntitlementUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICROSECONDS", traits: {"smithy.api#enumValue" => "Microseconds"}))
    EntitlementUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILLISECONDS", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    EntitlementUnit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES", traits: {"smithy.api#enumValue" => "Bytes"}))
    EntitlementUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBYTES", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    EntitlementUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABYTES", traits: {"smithy.api#enumValue" => "Megabytes"}))
    EntitlementUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABYTES", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    EntitlementUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABYTES", traits: {"smithy.api#enumValue" => "Terabytes"}))
    EntitlementUnit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS", traits: {"smithy.api#enumValue" => "Bits"}))
    EntitlementUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBITS", traits: {"smithy.api#enumValue" => "Kilobits"}))
    EntitlementUnit.add_member(:megabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABITS", traits: {"smithy.api#enumValue" => "Megabits"}))
    EntitlementUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABITS", traits: {"smithy.api#enumValue" => "Gigabits"}))
    EntitlementUnit.add_member(:terabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABITS", traits: {"smithy.api#enumValue" => "Terabits"}))
    EntitlementUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT", traits: {"smithy.api#enumValue" => "Percent"}))
    EntitlementUnit.add_member(:bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    EntitlementUnit.add_member(:kilobytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    EntitlementUnit.add_member(:megabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    EntitlementUnit.add_member(:gigabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    EntitlementUnit.add_member(:terabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    EntitlementUnit.add_member(:bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    EntitlementUnit.add_member(:kilobits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    EntitlementUnit.add_member(:megabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    EntitlementUnit.add_member(:gigabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    EntitlementUnit.add_member(:terabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    EntitlementUnit.add_member(:count_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_PER_SECOND", traits: {"smithy.api#enumValue" => "Count/Second"}))
    EntitlementUsage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    EntitlementUsage.add_member(:consumed_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumedValue", traits: {"smithy.api#required" => {}}))
    EntitlementUsage.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxCount"))
    EntitlementUsage.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementDataUnit, name: "Unit", traits: {"smithy.api#required" => {}}))
    EntitlementUsage.type = Types::EntitlementUsage
    EntitlementUsageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementUsage, name: "member")
    ExtendLicenseConsumptionRequest.add_member(:license_consumption_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConsumptionToken", traits: {"smithy.api#required" => {}}))
    ExtendLicenseConsumptionRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    ExtendLicenseConsumptionRequest.type = Types::ExtendLicenseConsumptionRequest
    ExtendLicenseConsumptionResponse.add_member(:license_consumption_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConsumptionToken"))
    ExtendLicenseConsumptionResponse.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "Expiration"))
    ExtendLicenseConsumptionResponse.type = Types::ExtendLicenseConsumptionResponse
    FailedDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    FailedDependencyException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    FailedDependencyException.type = Types::FailedDependencyException
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values"))
    Filter.type = Types::Filter
    FilterLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    FilterLimitExceededException.type = Types::FilterLimitExceededException
    FilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member")
    FilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member", traits: {"smithy.api#xmlName" => "item"})
    Filters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member", traits: {"smithy.api#xmlName" => "item"})
    GetAccessTokenRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, name: "Token", traits: {"smithy.api#required" => {}}))
    GetAccessTokenRequest.add_member(:token_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize3StringList, name: "TokenProperties"))
    GetAccessTokenRequest.type = Types::GetAccessTokenRequest
    GetAccessTokenResponse.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenString, name: "AccessToken"))
    GetAccessTokenResponse.type = Types::GetAccessTokenResponse
    GetGrantRequest.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn", traits: {"smithy.api#required" => {}}))
    GetGrantRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetGrantRequest.type = Types::GetGrantRequest
    GetGrantResponse.add_member(:grant, ::Smithy::Schema::Shapes::MemberShape.new(target: Grant, name: "Grant"))
    GetGrantResponse.type = Types::GetGrantResponse
    GetLicenseConfigurationRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn", traits: {"smithy.api#required" => {}}))
    GetLicenseConfigurationRequest.type = Types::GetLicenseConfigurationRequest
    GetLicenseConfigurationResponse.add_member(:license_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationId"))
    GetLicenseConfigurationResponse.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn"))
    GetLicenseConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetLicenseConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    GetLicenseConfigurationResponse.add_member(:license_counting_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseCountingType, name: "LicenseCountingType"))
    GetLicenseConfigurationResponse.add_member(:license_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "LicenseRules"))
    GetLicenseConfigurationResponse.add_member(:license_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "LicenseCount"))
    GetLicenseConfigurationResponse.add_member(:license_count_hard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "LicenseCountHardLimit"))
    GetLicenseConfigurationResponse.add_member(:consumed_licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "ConsumedLicenses"))
    GetLicenseConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    GetLicenseConfigurationResponse.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerAccountId"))
    GetLicenseConfigurationResponse.add_member(:consumed_license_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedLicenseSummaryList, name: "ConsumedLicenseSummaryList"))
    GetLicenseConfigurationResponse.add_member(:managed_resource_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceSummaryList, name: "ManagedResourceSummaryList"))
    GetLicenseConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetLicenseConfigurationResponse.add_member(:product_information_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformationList, name: "ProductInformationList"))
    GetLicenseConfigurationResponse.add_member(:automated_discovery_information, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomatedDiscoveryInformation, name: "AutomatedDiscoveryInformation"))
    GetLicenseConfigurationResponse.add_member(:disassociate_when_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "DisassociateWhenNotFound"))
    GetLicenseConfigurationResponse.type = Types::GetLicenseConfigurationResponse
    GetLicenseConversionTaskRequest.add_member(:license_conversion_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTaskId, name: "LicenseConversionTaskId", traits: {"smithy.api#required" => {}}))
    GetLicenseConversionTaskRequest.type = Types::GetLicenseConversionTaskRequest
    GetLicenseConversionTaskResponse.add_member(:license_conversion_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTaskId, name: "LicenseConversionTaskId"))
    GetLicenseConversionTaskResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    GetLicenseConversionTaskResponse.add_member(:source_license_context, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionContext, name: "SourceLicenseContext"))
    GetLicenseConversionTaskResponse.add_member(:destination_license_context, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionContext, name: "DestinationLicenseContext"))
    GetLicenseConversionTaskResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    GetLicenseConversionTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTaskStatus, name: "Status"))
    GetLicenseConversionTaskResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    GetLicenseConversionTaskResponse.add_member(:license_conversion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LicenseConversionTime"))
    GetLicenseConversionTaskResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    GetLicenseConversionTaskResponse.type = Types::GetLicenseConversionTaskResponse
    GetLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseManagerReportGeneratorArn", traits: {"smithy.api#required" => {}}))
    GetLicenseManagerReportGeneratorRequest.type = Types::GetLicenseManagerReportGeneratorRequest
    GetLicenseManagerReportGeneratorResponse.add_member(:report_generator, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerator, name: "ReportGenerator"))
    GetLicenseManagerReportGeneratorResponse.type = Types::GetLicenseManagerReportGeneratorResponse
    GetLicenseRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    GetLicenseRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GetLicenseRequest.type = Types::GetLicenseRequest
    GetLicenseResponse.add_member(:license, ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "License"))
    GetLicenseResponse.type = Types::GetLicenseResponse
    GetLicenseUsageRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    GetLicenseUsageRequest.type = Types::GetLicenseUsageRequest
    GetLicenseUsageResponse.add_member(:license_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseUsage, name: "LicenseUsage"))
    GetLicenseUsageResponse.type = Types::GetLicenseUsageResponse
    GetServiceSettingsRequest.type = Types::GetServiceSettingsRequest
    GetServiceSettingsResponse.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketArn"))
    GetServiceSettingsResponse.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    GetServiceSettingsResponse.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "OrganizationConfiguration"))
    GetServiceSettingsResponse.add_member(:enable_cross_accounts_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "EnableCrossAccountsDiscovery"))
    GetServiceSettingsResponse.add_member(:license_manager_resource_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseManagerResourceShareArn"))
    GetServiceSettingsResponse.type = Types::GetServiceSettingsResponse
    Grant.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GrantName", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:parent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ParentArn", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:grantee_principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GranteePrincipalArn", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:grant_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantStatus, name: "GrantStatus", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonMessage, name: "StatusReason"))
    Grant.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:granted_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOperationList, name: "GrantedOperations", traits: {"smithy.api#required" => {}}))
    Grant.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "Options"))
    Grant.type = Types::Grant
    GrantList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Grant, name: "member")
    GrantStatus.add_member(:pending_workflow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_WORKFLOW", traits: {"smithy.api#enumValue" => "PENDING_WORKFLOW"}))
    GrantStatus.add_member(:pending_accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ACCEPT", traits: {"smithy.api#enumValue" => "PENDING_ACCEPT"}))
    GrantStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    GrantStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GrantStatus.add_member(:failed_workflow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_WORKFLOW", traits: {"smithy.api#enumValue" => "FAILED_WORKFLOW"}))
    GrantStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    GrantStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETE", traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    GrantStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    GrantStatus.add_member(:workflow_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_COMPLETED", traits: {"smithy.api#enumValue" => "WORKFLOW_COMPLETED"}))
    GrantedLicense.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn"))
    GrantedLicense.add_member(:license_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseName"))
    GrantedLicense.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductName"))
    GrantedLicense.add_member(:product_sku, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductSKU"))
    GrantedLicense.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: IssuerDetails, name: "Issuer"))
    GrantedLicense.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HomeRegion"))
    GrantedLicense.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseStatus, name: "Status"))
    GrantedLicense.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeRange, name: "Validity"))
    GrantedLicense.add_member(:beneficiary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Beneficiary"))
    GrantedLicense.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementList, name: "Entitlements"))
    GrantedLicense.add_member(:consumption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumptionConfiguration, name: "ConsumptionConfiguration"))
    GrantedLicense.add_member(:license_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataList, name: "LicenseMetadata"))
    GrantedLicense.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "CreateTime"))
    GrantedLicense.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    GrantedLicense.add_member(:received_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceivedMetadata, name: "ReceivedMetadata"))
    GrantedLicense.type = Types::GrantedLicense
    GrantedLicenseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GrantedLicense, name: "member")
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidResourceStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    InventoryFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    InventoryFilter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterCondition, name: "Condition", traits: {"smithy.api#required" => {}}))
    InventoryFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    InventoryFilter.type = Types::InventoryFilter
    InventoryFilterCondition.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    InventoryFilterCondition.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    InventoryFilterCondition.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    InventoryFilterCondition.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    InventoryFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilter, name: "member")
    Issuer.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    Issuer.add_member(:sign_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SignKey"))
    Issuer.type = Types::Issuer
    IssuerDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    IssuerDetails.add_member(:sign_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SignKey"))
    IssuerDetails.add_member(:key_fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyFingerprint"))
    IssuerDetails.type = Types::IssuerDetails
    License.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn"))
    License.add_member(:license_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseName"))
    License.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductName"))
    License.add_member(:product_sku, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductSKU"))
    License.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: IssuerDetails, name: "Issuer"))
    License.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HomeRegion"))
    License.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseStatus, name: "Status"))
    License.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeRange, name: "Validity"))
    License.add_member(:beneficiary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Beneficiary"))
    License.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementList, name: "Entitlements"))
    License.add_member(:consumption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumptionConfiguration, name: "ConsumptionConfiguration"))
    License.add_member(:license_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataList, name: "LicenseMetadata"))
    License.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "CreateTime"))
    License.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    License.type = Types::License
    LicenseConfiguration.add_member(:license_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationId"))
    LicenseConfiguration.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn"))
    LicenseConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    LicenseConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    LicenseConfiguration.add_member(:license_counting_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseCountingType, name: "LicenseCountingType"))
    LicenseConfiguration.add_member(:license_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "LicenseRules"))
    LicenseConfiguration.add_member(:license_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "LicenseCount"))
    LicenseConfiguration.add_member(:license_count_hard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "LicenseCountHardLimit"))
    LicenseConfiguration.add_member(:disassociate_when_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "DisassociateWhenNotFound"))
    LicenseConfiguration.add_member(:consumed_licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "ConsumedLicenses"))
    LicenseConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    LicenseConfiguration.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerAccountId"))
    LicenseConfiguration.add_member(:consumed_license_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedLicenseSummaryList, name: "ConsumedLicenseSummaryList"))
    LicenseConfiguration.add_member(:managed_resource_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceSummaryList, name: "ManagedResourceSummaryList"))
    LicenseConfiguration.add_member(:product_information_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformationList, name: "ProductInformationList"))
    LicenseConfiguration.add_member(:automated_discovery_information, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomatedDiscoveryInformation, name: "AutomatedDiscoveryInformation"))
    LicenseConfiguration.type = Types::LicenseConfiguration
    LicenseConfigurationAssociation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    LicenseConfigurationAssociation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    LicenseConfigurationAssociation.add_member(:resource_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwnerId"))
    LicenseConfigurationAssociation.add_member(:association_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "AssociationTime"))
    LicenseConfigurationAssociation.add_member(:ami_association_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmiAssociationScope"))
    LicenseConfigurationAssociation.type = Types::LicenseConfigurationAssociation
    LicenseConfigurationAssociations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationAssociation, name: "member")
    LicenseConfigurationStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LicenseConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LicenseConfigurationUsage.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    LicenseConfigurationUsage.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    LicenseConfigurationUsage.add_member(:resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceStatus"))
    LicenseConfigurationUsage.add_member(:resource_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwnerId"))
    LicenseConfigurationUsage.add_member(:association_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "AssociationTime"))
    LicenseConfigurationUsage.add_member(:consumed_licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "ConsumedLicenses"))
    LicenseConfigurationUsage.type = Types::LicenseConfigurationUsage
    LicenseConfigurationUsageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationUsage, name: "member")
    LicenseConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfiguration, name: "member")
    LicenseConversionContext.add_member(:usage_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageOperation, name: "UsageOperation"))
    LicenseConversionContext.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeList, name: "ProductCodes"))
    LicenseConversionContext.type = Types::LicenseConversionContext
    LicenseConversionTask.add_member(:license_conversion_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTaskId, name: "LicenseConversionTaskId"))
    LicenseConversionTask.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    LicenseConversionTask.add_member(:source_license_context, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionContext, name: "SourceLicenseContext"))
    LicenseConversionTask.add_member(:destination_license_context, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionContext, name: "DestinationLicenseContext"))
    LicenseConversionTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTaskStatus, name: "Status"))
    LicenseConversionTask.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    LicenseConversionTask.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    LicenseConversionTask.add_member(:license_conversion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LicenseConversionTime"))
    LicenseConversionTask.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndTime"))
    LicenseConversionTask.type = Types::LicenseConversionTask
    LicenseConversionTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LicenseConversionTaskStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LicenseConversionTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LicenseConversionTasks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTask, name: "member")
    LicenseCountingType.add_member(:vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VCPU", traits: {"smithy.api#enumValue" => "vCPU"}))
    LicenseCountingType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE", traits: {"smithy.api#enumValue" => "Instance"}))
    LicenseCountingType.add_member(:core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE", traits: {"smithy.api#enumValue" => "Core"}))
    LicenseCountingType.add_member(:socket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOCKET", traits: {"smithy.api#enumValue" => "Socket"}))
    LicenseDeletionStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETE", traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    LicenseDeletionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    LicenseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "member")
    LicenseOperationFailure.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    LicenseOperationFailure.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    LicenseOperationFailure.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    LicenseOperationFailure.add_member(:failure_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "FailureTime"))
    LicenseOperationFailure.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationName"))
    LicenseOperationFailure.add_member(:resource_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwnerId"))
    LicenseOperationFailure.add_member(:operation_requested_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationRequestedBy"))
    LicenseOperationFailure.add_member(:metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataList, name: "MetadataList"))
    LicenseOperationFailure.type = Types::LicenseOperationFailure
    LicenseOperationFailureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseOperationFailure, name: "member")
    LicenseSpecification.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn", traits: {"smithy.api#required" => {}}))
    LicenseSpecification.add_member(:ami_association_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AmiAssociationScope"))
    LicenseSpecification.type = Types::LicenseSpecification
    LicenseSpecifications.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseSpecification, name: "member")
    LicenseStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LicenseStatus.add_member(:pending_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_AVAILABLE", traits: {"smithy.api#enumValue" => "PENDING_AVAILABLE"}))
    LicenseStatus.add_member(:deactivated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATED", traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    LicenseStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    LicenseStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    LicenseStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETE", traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    LicenseStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    LicenseUsage.add_member(:entitlement_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementUsageList, name: "EntitlementUsages"))
    LicenseUsage.type = Types::LicenseUsage
    LicenseUsageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    LicenseUsageException.type = Types::LicenseUsageException
    ListAssociationsForLicenseConfigurationRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn", traits: {"smithy.api#required" => {}}))
    ListAssociationsForLicenseConfigurationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListAssociationsForLicenseConfigurationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAssociationsForLicenseConfigurationRequest.type = Types::ListAssociationsForLicenseConfigurationRequest
    ListAssociationsForLicenseConfigurationResponse.add_member(:license_configuration_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationAssociations, name: "LicenseConfigurationAssociations"))
    ListAssociationsForLicenseConfigurationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAssociationsForLicenseConfigurationResponse.type = Types::ListAssociationsForLicenseConfigurationResponse
    ListDistributedGrantsRequest.add_member(:grant_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "GrantArns"))
    ListDistributedGrantsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListDistributedGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDistributedGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListDistributedGrantsRequest.type = Types::ListDistributedGrantsRequest
    ListDistributedGrantsResponse.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "Grants"))
    ListDistributedGrantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDistributedGrantsResponse.type = Types::ListDistributedGrantsResponse
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn", traits: {"smithy.api#required" => {}}))
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFailuresForLicenseConfigurationOperationsRequest.type = Types::ListFailuresForLicenseConfigurationOperationsRequest
    ListFailuresForLicenseConfigurationOperationsResponse.add_member(:license_operation_failure_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseOperationFailureList, name: "LicenseOperationFailureList"))
    ListFailuresForLicenseConfigurationOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFailuresForLicenseConfigurationOperationsResponse.type = Types::ListFailuresForLicenseConfigurationOperationsResponse
    ListLicenseConfigurationsRequest.add_member(:license_configuration_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "LicenseConfigurationArns"))
    ListLicenseConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListLicenseConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListLicenseConfigurationsRequest.type = Types::ListLicenseConfigurationsRequest
    ListLicenseConfigurationsResponse.add_member(:license_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurations, name: "LicenseConfigurations"))
    ListLicenseConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseConfigurationsResponse.type = Types::ListLicenseConfigurationsResponse
    ListLicenseConversionTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseConversionTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListLicenseConversionTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListLicenseConversionTasksRequest.type = Types::ListLicenseConversionTasksRequest
    ListLicenseConversionTasksResponse.add_member(:license_conversion_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConversionTasks, name: "LicenseConversionTasks"))
    ListLicenseConversionTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseConversionTasksResponse.type = Types::ListLicenseConversionTasksResponse
    ListLicenseManagerReportGeneratorsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListLicenseManagerReportGeneratorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseManagerReportGeneratorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListLicenseManagerReportGeneratorsRequest.type = Types::ListLicenseManagerReportGeneratorsRequest
    ListLicenseManagerReportGeneratorsResponse.add_member(:report_generators, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGeneratorList, name: "ReportGenerators"))
    ListLicenseManagerReportGeneratorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseManagerReportGeneratorsResponse.type = Types::ListLicenseManagerReportGeneratorsResponse
    ListLicenseSpecificationsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListLicenseSpecificationsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListLicenseSpecificationsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseSpecificationsForResourceRequest.type = Types::ListLicenseSpecificationsForResourceRequest
    ListLicenseSpecificationsForResourceResponse.add_member(:license_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseSpecifications, name: "LicenseSpecifications"))
    ListLicenseSpecificationsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseSpecificationsForResourceResponse.type = Types::ListLicenseSpecificationsForResourceResponse
    ListLicenseVersionsRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    ListLicenseVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListLicenseVersionsRequest.type = Types::ListLicenseVersionsRequest
    ListLicenseVersionsResponse.add_member(:licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseList, name: "Licenses"))
    ListLicenseVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicenseVersionsResponse.type = Types::ListLicenseVersionsResponse
    ListLicensesRequest.add_member(:license_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "LicenseArns"))
    ListLicensesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListLicensesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicensesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListLicensesRequest.type = Types::ListLicensesRequest
    ListLicensesResponse.add_member(:licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseList, name: "Licenses"))
    ListLicensesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLicensesResponse.type = Types::ListLicensesResponse
    ListReceivedGrantsForOrganizationRequest.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LicenseArn", traits: {"smithy.api#required" => {}}))
    ListReceivedGrantsForOrganizationRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListReceivedGrantsForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedGrantsForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListReceivedGrantsForOrganizationRequest.type = Types::ListReceivedGrantsForOrganizationRequest
    ListReceivedGrantsForOrganizationResponse.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "Grants"))
    ListReceivedGrantsForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedGrantsForOrganizationResponse.type = Types::ListReceivedGrantsForOrganizationResponse
    ListReceivedGrantsRequest.add_member(:grant_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "GrantArns"))
    ListReceivedGrantsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListReceivedGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListReceivedGrantsRequest.type = Types::ListReceivedGrantsRequest
    ListReceivedGrantsResponse.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantList, name: "Grants"))
    ListReceivedGrantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedGrantsResponse.type = Types::ListReceivedGrantsResponse
    ListReceivedLicensesForOrganizationRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListReceivedLicensesForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedLicensesForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListReceivedLicensesForOrganizationRequest.type = Types::ListReceivedLicensesForOrganizationRequest
    ListReceivedLicensesForOrganizationResponse.add_member(:licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantedLicenseList, name: "Licenses"))
    ListReceivedLicensesForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedLicensesForOrganizationResponse.type = Types::ListReceivedLicensesForOrganizationResponse
    ListReceivedLicensesRequest.add_member(:license_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "LicenseArns"))
    ListReceivedLicensesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListReceivedLicensesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedLicensesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListReceivedLicensesRequest.type = Types::ListReceivedLicensesRequest
    ListReceivedLicensesResponse.add_member(:licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantedLicenseList, name: "Licenses"))
    ListReceivedLicensesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReceivedLicensesResponse.type = Types::ListReceivedLicensesResponse
    ListResourceInventoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListResourceInventoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListResourceInventoryRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilterList, name: "Filters"))
    ListResourceInventoryRequest.type = Types::ListResourceInventoryRequest
    ListResourceInventoryResponse.add_member(:resource_inventory_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceInventoryList, name: "ResourceInventoryList"))
    ListResourceInventoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListResourceInventoryResponse.type = Types::ListResourceInventoryResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTokensRequest.add_member(:token_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "TokenIds"))
    ListTokensRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListTokensRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTokensRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize100, name: "MaxResults"))
    ListTokensRequest.type = Types::ListTokensRequest
    ListTokensResponse.add_member(:tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenList, name: "Tokens"))
    ListTokensResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTokensResponse.type = Types::ListTokensResponse
    ListUsageForLicenseConfigurationRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn", traits: {"smithy.api#required" => {}}))
    ListUsageForLicenseConfigurationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxResults"))
    ListUsageForLicenseConfigurationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListUsageForLicenseConfigurationRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListUsageForLicenseConfigurationRequest.type = Types::ListUsageForLicenseConfigurationRequest
    ListUsageForLicenseConfigurationResponse.add_member(:license_configuration_usage_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationUsageList, name: "LicenseConfigurationUsageList"))
    ListUsageForLicenseConfigurationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListUsageForLicenseConfigurationResponse.type = Types::ListUsageForLicenseConfigurationResponse
    ManagedResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ManagedResourceSummary.add_member(:association_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "AssociationCount"))
    ManagedResourceSummary.type = Types::ManagedResourceSummary
    ManagedResourceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceSummary, name: "member")
    MaxSize3StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    Metadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Metadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Metadata.type = Types::Metadata
    MetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "member")
    NoEntitlementsAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    NoEntitlementsAllowedException.type = Types::NoEntitlementsAllowedException
    Options.add_member(:activation_override_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationOverrideBehavior, name: "ActivationOverrideBehavior"))
    Options.type = Types::Options
    OrganizationConfiguration.add_member(:enable_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableIntegration", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    OrganizationConfiguration.type = Types::OrganizationConfiguration
    PrincipalArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member")
    ProductCodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeListItem, name: "member")
    ProductCodeListItem.add_member(:product_code_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeId, name: "ProductCodeId", traits: {"smithy.api#required" => {}}))
    ProductCodeListItem.add_member(:product_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeType, name: "ProductCodeType", traits: {"smithy.api#required" => {}}))
    ProductCodeListItem.type = Types::ProductCodeListItem
    ProductCodeType.add_member(:marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETPLACE", traits: {"smithy.api#enumValue" => "marketplace"}))
    ProductInformation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ProductInformation.add_member(:product_information_filter_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformationFilterList, name: "ProductInformationFilterList", traits: {"smithy.api#required" => {}}))
    ProductInformation.type = Types::ProductInformation
    ProductInformationFilter.add_member(:product_information_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductInformationFilterName", traits: {"smithy.api#required" => {}}))
    ProductInformationFilter.add_member(:product_information_filter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ProductInformationFilterValue"))
    ProductInformationFilter.add_member(:product_information_filter_comparator, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductInformationFilterComparator", traits: {"smithy.api#required" => {}}))
    ProductInformationFilter.type = Types::ProductInformationFilter
    ProductInformationFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformationFilter, name: "member")
    ProductInformationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformation, name: "member")
    ProvisionalConfiguration.add_member(:max_time_to_live_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxInteger, name: "MaxTimeToLiveInMinutes", traits: {"smithy.api#required" => {}}))
    ProvisionalConfiguration.type = Types::ProvisionalConfiguration
    RateLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    RateLimitExceededException.type = Types::RateLimitExceededException
    ReceivedMetadata.add_member(:received_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceivedStatus, name: "ReceivedStatus"))
    ReceivedMetadata.add_member(:received_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReasonMessage, name: "ReceivedStatusReason"))
    ReceivedMetadata.add_member(:allowed_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOperationList, name: "AllowedOperations"))
    ReceivedMetadata.type = Types::ReceivedMetadata
    ReceivedStatus.add_member(:pending_workflow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_WORKFLOW", traits: {"smithy.api#enumValue" => "PENDING_WORKFLOW"}))
    ReceivedStatus.add_member(:pending_accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ACCEPT", traits: {"smithy.api#enumValue" => "PENDING_ACCEPT"}))
    ReceivedStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    ReceivedStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReceivedStatus.add_member(:failed_workflow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_WORKFLOW", traits: {"smithy.api#enumValue" => "FAILED_WORKFLOW"}))
    ReceivedStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ReceivedStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ReceivedStatus.add_member(:workflow_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_COMPLETED", traits: {"smithy.api#enumValue" => "WORKFLOW_COMPLETED"}))
    RedirectException.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    RedirectException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    RedirectException.type = Types::RedirectException
    RejectGrantRequest.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn", traits: {"smithy.api#required" => {}}))
    RejectGrantRequest.type = Types::RejectGrantRequest
    RejectGrantResponse.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "GrantArn"))
    RejectGrantResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantStatus, name: "Status"))
    RejectGrantResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    RejectGrantResponse.type = Types::RejectGrantResponse
    RenewType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    RenewType.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKLY", traits: {"smithy.api#enumValue" => "Weekly"}))
    RenewType.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "Monthly"}))
    ReportContext.add_member(:license_configuration_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "licenseConfigurationArns", traits: {"smithy.api#required" => {}}))
    ReportContext.type = Types::ReportContext
    ReportFrequency.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "value"))
    ReportFrequency.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFrequencyType, name: "period"))
    ReportFrequency.type = Types::ReportFrequency
    ReportFrequencyType.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAY", traits: {"smithy.api#enumValue" => "DAY"}))
    ReportFrequencyType.add_member(:week, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEK", traits: {"smithy.api#enumValue" => "WEEK"}))
    ReportFrequencyType.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTH", traits: {"smithy.api#enumValue" => "MONTH"}))
    ReportGenerator.add_member(:report_generator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReportGeneratorName"))
    ReportGenerator.add_member(:report_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportTypeList, name: "ReportType"))
    ReportGenerator.add_member(:report_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportContext, name: "ReportContext"))
    ReportGenerator.add_member(:report_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFrequency, name: "ReportFrequency"))
    ReportGenerator.add_member(:license_manager_report_generator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseManagerReportGeneratorArn"))
    ReportGenerator.add_member(:last_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastRunStatus"))
    ReportGenerator.add_member(:last_run_failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastRunFailureReason"))
    ReportGenerator.add_member(:last_report_generation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastReportGenerationTime"))
    ReportGenerator.add_member(:report_creator_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReportCreatorAccount"))
    ReportGenerator.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ReportGenerator.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3Location"))
    ReportGenerator.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreateTime"))
    ReportGenerator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ReportGenerator.type = Types::ReportGenerator
    ReportGeneratorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerator, name: "member")
    ReportType.add_member(:license_configuration_summary_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_CONFIGURATION_SUMMARY_REPORT", traits: {"smithy.api#enumValue" => "LicenseConfigurationSummaryReport"}))
    ReportType.add_member(:license_configuration_usage_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_CONFIGURATION_USAGE_REPORT", traits: {"smithy.api#enumValue" => "LicenseConfigurationUsageReport"}))
    ReportTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReportType, name: "member")
    ResourceInventory.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    ResourceInventory.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceInventory.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    ResourceInventory.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Platform"))
    ResourceInventory.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlatformVersion"))
    ResourceInventory.add_member(:resource_owning_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwningAccountId"))
    ResourceInventory.type = Types::ResourceInventory
    ResourceInventoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceInventory, name: "member")
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "EC2_INSTANCE"}))
    ResourceType.add_member(:ec2_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_HOST", traits: {"smithy.api#enumValue" => "EC2_HOST"}))
    ResourceType.add_member(:ec2_ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_AMI", traits: {"smithy.api#enumValue" => "EC2_AMI"}))
    ResourceType.add_member(:rds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS", traits: {"smithy.api#enumValue" => "RDS"}))
    ResourceType.add_member(:systems_manager_managed_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEMS_MANAGER_MANAGED_INSTANCE", traits: {"smithy.api#enumValue" => "SYSTEMS_MANAGER_MANAGED_INSTANCE"}))
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bucket"))
    S3Location.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyPrefix"))
    S3Location.type = Types::S3Location
    ServerInternalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ServerInternalException.type = Types::ServerInternalException
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TokenData.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenId"))
    TokenData.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenType"))
    TokenData.add_member(:license_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseArn"))
    TokenData.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DateTime, name: "ExpirationTime"))
    TokenData.add_member(:token_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize3StringList, name: "TokenProperties"))
    TokenData.add_member(:role_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "RoleArns"))
    TokenData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    TokenData.type = Types::TokenData
    TokenList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TokenData, name: "member")
    TokenType.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESH_TOKEN", traits: {"smithy.api#enumValue" => "REFRESH_TOKEN"}))
    UnsupportedDigitalSignatureMethodException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    UnsupportedDigitalSignatureMethodException.type = Types::UnsupportedDigitalSignatureMethodException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateLicenseConfigurationRequest.add_member(:license_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateLicenseConfigurationRequest.add_member(:license_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationStatus, name: "LicenseConfigurationStatus"))
    UpdateLicenseConfigurationRequest.add_member(:license_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "LicenseRules"))
    UpdateLicenseConfigurationRequest.add_member(:license_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxLong, name: "LicenseCount"))
    UpdateLicenseConfigurationRequest.add_member(:license_count_hard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "LicenseCountHardLimit"))
    UpdateLicenseConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    UpdateLicenseConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateLicenseConfigurationRequest.add_member(:product_information_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductInformationList, name: "ProductInformationList"))
    UpdateLicenseConfigurationRequest.add_member(:disassociate_when_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "DisassociateWhenNotFound"))
    UpdateLicenseConfigurationRequest.type = Types::UpdateLicenseConfigurationRequest
    UpdateLicenseConfigurationResponse.type = Types::UpdateLicenseConfigurationResponse
    UpdateLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseManagerReportGeneratorArn", traits: {"smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_generator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGeneratorName, name: "ReportGeneratorName", traits: {"smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportTypeList, name: "Type", traits: {"smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportContext, name: "ReportContext", traits: {"smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFrequency, name: "ReportFrequency", traits: {"smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateLicenseManagerReportGeneratorRequest.type = Types::UpdateLicenseManagerReportGeneratorRequest
    UpdateLicenseManagerReportGeneratorResponse.type = Types::UpdateLicenseManagerReportGeneratorResponse
    UpdateLicenseSpecificationsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UpdateLicenseSpecificationsForResourceRequest.add_member(:add_license_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseSpecifications, name: "AddLicenseSpecifications"))
    UpdateLicenseSpecificationsForResourceRequest.add_member(:remove_license_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseSpecifications, name: "RemoveLicenseSpecifications"))
    UpdateLicenseSpecificationsForResourceRequest.type = Types::UpdateLicenseSpecificationsForResourceRequest
    UpdateLicenseSpecificationsForResourceResponse.type = Types::UpdateLicenseSpecificationsForResourceResponse
    UpdateServiceSettingsRequest.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketArn"))
    UpdateServiceSettingsRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    UpdateServiceSettingsRequest.add_member(:organization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfiguration, name: "OrganizationConfiguration"))
    UpdateServiceSettingsRequest.add_member(:enable_cross_accounts_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxBoolean, name: "EnableCrossAccountsDiscovery"))
    UpdateServiceSettingsRequest.type = Types::UpdateServiceSettingsRequest
    UpdateServiceSettingsResponse.type = Types::UpdateServiceSettingsResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ValidationException.type = Types::ValidationException

    AWSLicenseManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.licensemanager#AWSLicenseManager"
      service.name = "AWSLicenseManager"
      service.version = "2018-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "License Manager", "arnNamespace" => "license-manager", "cloudFormationName" => "LicenseManager", "cloudTrailEventSource" => "license-manager.amazonaws.com", "endpointPrefix" => "license-manager"}, "aws.auth#sigv4" => {"name" => "license-manager"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS License Manager", "smithy.api#xmlNamespace" => {"uri" => "https://license-manager.amazonaws.com/doc/2018_08_01"}}
      service.add_operation(:accept_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#AcceptGrant"
        operation.name = "AcceptGrant"
        operation.input = AcceptGrantRequest
        operation.output = AcceptGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:check_in_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CheckInLicense"
        operation.name = "CheckInLicense"
        operation.input = CheckInLicenseRequest
        operation.output = CheckInLicenseResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:checkout_borrow_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CheckoutBorrowLicense"
        operation.name = "CheckoutBorrowLicense"
        operation.input = CheckoutBorrowLicenseRequest
        operation.output = CheckoutBorrowLicenseResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << EntitlementNotAllowedException
        operation.errors << InvalidParameterValueException
        operation.errors << NoEntitlementsAllowedException
        operation.errors << RateLimitExceededException
        operation.errors << RedirectException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << UnsupportedDigitalSignatureMethodException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:checkout_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CheckoutLicense"
        operation.name = "CheckoutLicense"
        operation.input = CheckoutLicenseRequest
        operation.output = CheckoutLicenseResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << NoEntitlementsAllowedException
        operation.errors << RateLimitExceededException
        operation.errors << RedirectException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << UnsupportedDigitalSignatureMethodException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateGrant"
        operation.name = "CreateGrant"
        operation.input = CreateGrantRequest
        operation.output = CreateGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_grant_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateGrantVersion"
        operation.name = "CreateGrantVersion"
        operation.input = CreateGrantVersionRequest
        operation.output = CreateGrantVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicense"
        operation.name = "CreateLicense"
        operation.input = CreateLicenseRequest
        operation.output = CreateLicenseResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << RedirectException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_license_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseConfiguration"
        operation.name = "CreateLicenseConfiguration"
        operation.input = CreateLicenseConfigurationRequest
        operation.output = CreateLicenseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:create_license_conversion_task_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseConversionTaskForResource"
        operation.name = "CreateLicenseConversionTaskForResource"
        operation.input = CreateLicenseConversionTaskForResourceRequest
        operation.output = CreateLicenseConversionTaskForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_license_manager_report_generator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseManagerReportGenerator"
        operation.name = "CreateLicenseManagerReportGenerator"
        operation.input = CreateLicenseManagerReportGeneratorRequest
        operation.output = CreateLicenseManagerReportGeneratorResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_license_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseVersion"
        operation.name = "CreateLicenseVersion"
        operation.input = CreateLicenseVersionRequest
        operation.output = CreateLicenseVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << ConflictException
        operation.errors << RateLimitExceededException
        operation.errors << RedirectException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateToken"
        operation.name = "CreateToken"
        operation.input = CreateTokenRequest
        operation.output = CreateTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << RateLimitExceededException
        operation.errors << RedirectException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteGrant"
        operation.name = "DeleteGrant"
        operation.input = DeleteGrantRequest
        operation.output = DeleteGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteLicense"
        operation.name = "DeleteLicense"
        operation.input = DeleteLicenseRequest
        operation.output = DeleteLicenseResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << RedirectException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_license_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteLicenseConfiguration"
        operation.name = "DeleteLicenseConfiguration"
        operation.input = DeleteLicenseConfigurationRequest
        operation.output = DeleteLicenseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:delete_license_manager_report_generator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteLicenseManagerReportGenerator"
        operation.name = "DeleteLicenseManagerReportGenerator"
        operation.input = DeleteLicenseManagerReportGeneratorRequest
        operation.output = DeleteLicenseManagerReportGeneratorResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteToken"
        operation.name = "DeleteToken"
        operation.input = DeleteTokenRequest
        operation.output = DeleteTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << RateLimitExceededException
        operation.errors << RedirectException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:extend_license_consumption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ExtendLicenseConsumption"
        operation.name = "ExtendLicenseConsumption"
        operation.input = ExtendLicenseConsumptionRequest
        operation.output = ExtendLicenseConsumptionResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetAccessToken"
        operation.name = "GetAccessToken"
        operation.input = GetAccessTokenRequest
        operation.output = GetAccessTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetGrant"
        operation.name = "GetGrant"
        operation.input = GetGrantRequest
        operation.output = GetGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicense"
        operation.name = "GetLicense"
        operation.input = GetLicenseRequest
        operation.output = GetLicenseResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_license_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseConfiguration"
        operation.name = "GetLicenseConfiguration"
        operation.input = GetLicenseConfigurationRequest
        operation.output = GetLicenseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:get_license_conversion_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseConversionTask"
        operation.name = "GetLicenseConversionTask"
        operation.input = GetLicenseConversionTaskRequest
        operation.output = GetLicenseConversionTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:get_license_manager_report_generator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseManagerReportGenerator"
        operation.name = "GetLicenseManagerReportGenerator"
        operation.input = GetLicenseManagerReportGeneratorRequest
        operation.output = GetLicenseManagerReportGeneratorResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_license_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseUsage"
        operation.name = "GetLicenseUsage"
        operation.input = GetLicenseUsageRequest
        operation.output = GetLicenseUsageResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetServiceSettings"
        operation.name = "GetServiceSettings"
        operation.input = GetServiceSettingsRequest
        operation.output = GetServiceSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_associations_for_license_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListAssociationsForLicenseConfiguration"
        operation.name = "ListAssociationsForLicenseConfiguration"
        operation.input = ListAssociationsForLicenseConfigurationRequest
        operation.output = ListAssociationsForLicenseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << FilterLimitExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_distributed_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListDistributedGrants"
        operation.name = "ListDistributedGrants"
        operation.input = ListDistributedGrantsRequest
        operation.output = ListDistributedGrantsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_failures_for_license_configuration_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListFailuresForLicenseConfigurationOperations"
        operation.name = "ListFailuresForLicenseConfigurationOperations"
        operation.input = ListFailuresForLicenseConfigurationOperationsRequest
        operation.output = ListFailuresForLicenseConfigurationOperationsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_license_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseConfigurations"
        operation.name = "ListLicenseConfigurations"
        operation.input = ListLicenseConfigurationsRequest
        operation.output = ListLicenseConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << FilterLimitExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_license_conversion_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseConversionTasks"
        operation.name = "ListLicenseConversionTasks"
        operation.input = ListLicenseConversionTasksRequest
        operation.output = ListLicenseConversionTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_license_manager_report_generators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseManagerReportGenerators"
        operation.name = "ListLicenseManagerReportGenerators"
        operation.input = ListLicenseManagerReportGeneratorsRequest
        operation.output = ListLicenseManagerReportGeneratorsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_license_specifications_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseSpecificationsForResource"
        operation.name = "ListLicenseSpecificationsForResource"
        operation.input = ListLicenseSpecificationsForResourceRequest
        operation.output = ListLicenseSpecificationsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_license_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseVersions"
        operation.name = "ListLicenseVersions"
        operation.input = ListLicenseVersionsRequest
        operation.output = ListLicenseVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_licenses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenses"
        operation.name = "ListLicenses"
        operation.input = ListLicensesRequest
        operation.output = ListLicensesResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_received_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedGrants"
        operation.name = "ListReceivedGrants"
        operation.input = ListReceivedGrantsRequest
        operation.output = ListReceivedGrantsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_received_grants_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedGrantsForOrganization"
        operation.name = "ListReceivedGrantsForOrganization"
        operation.input = ListReceivedGrantsForOrganizationRequest
        operation.output = ListReceivedGrantsForOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_received_licenses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedLicenses"
        operation.name = "ListReceivedLicenses"
        operation.input = ListReceivedLicensesRequest
        operation.output = ListReceivedLicensesResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_received_licenses_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedLicensesForOrganization"
        operation.name = "ListReceivedLicensesForOrganization"
        operation.input = ListReceivedLicensesForOrganizationRequest
        operation.output = ListReceivedLicensesForOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_resource_inventory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListResourceInventory"
        operation.name = "ListResourceInventory"
        operation.input = ListResourceInventoryRequest
        operation.output = ListResourceInventoryResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << FailedDependencyException
        operation.errors << FilterLimitExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:list_tokens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListTokens"
        operation.name = "ListTokens"
        operation.input = ListTokensRequest
        operation.output = ListTokensResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_usage_for_license_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListUsageForLicenseConfiguration"
        operation.name = "ListUsageForLicenseConfiguration"
        operation.input = ListUsageForLicenseConfigurationRequest
        operation.output = ListUsageForLicenseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << FilterLimitExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:reject_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#RejectGrant"
        operation.name = "RejectGrant"
        operation.input = RejectGrantRequest
        operation.output = RejectGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:update_license_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateLicenseConfiguration"
        operation.name = "UpdateLicenseConfiguration"
        operation.input = UpdateLicenseConfigurationRequest
        operation.output = UpdateLicenseConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:update_license_manager_report_generator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateLicenseManagerReportGenerator"
        operation.name = "UpdateLicenseManagerReportGenerator"
        operation.input = UpdateLicenseManagerReportGeneratorRequest
        operation.output = UpdateLicenseManagerReportGeneratorResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_license_specifications_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateLicenseSpecificationsForResource"
        operation.name = "UpdateLicenseSpecificationsForResource"
        operation.input = UpdateLicenseSpecificationsForResourceRequest
        operation.output = UpdateLicenseSpecificationsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << ConflictException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidResourceStateException
        operation.errors << LicenseUsageException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
      end)
      service.add_operation(:update_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateServiceSettings"
        operation.name = "UpdateServiceSettings"
        operation.input = UpdateServiceSettingsRequest
        operation.output = UpdateServiceSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << AuthorizationException
        operation.errors << InvalidParameterValueException
        operation.errors << RateLimitExceededException
        operation.errors << ServerInternalException
        operation.traits = {}
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

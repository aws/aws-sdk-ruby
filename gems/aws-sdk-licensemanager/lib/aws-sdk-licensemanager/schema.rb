# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#AcceptGrantRequest', name: 'AcceptGrantRequest')
    AcceptGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#AcceptGrantResponse', name: 'AcceptGrantResponse')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceAccessDenied", "httpResponseCode" => 401}, "smithy.api#error" => "client", "smithy.api#httpError" => 401})
    ActivationOverrideBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#ActivationOverrideBehavior', name: 'ActivationOverrideBehavior')
    AllowedOperation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#AllowedOperation', name: 'AllowedOperation')
    AllowedOperationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#AllowedOperationList', name: 'AllowedOperationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    ArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ArnList', name: 'ArnList')
    AuthorizationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#AuthorizationException', name: 'AuthorizationException', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationFailure", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AutomatedDiscoveryInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#AutomatedDiscoveryInformation', name: 'AutomatedDiscoveryInformation')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.licensemanager#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BorrowConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#BorrowConfiguration', name: 'BorrowConfiguration')
    BoxBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.licensemanager#BoxBoolean', name: 'BoxBoolean')
    BoxInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanager#BoxInteger', name: 'BoxInteger')
    BoxLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanager#BoxLong', name: 'BoxLong')
    CheckInLicenseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CheckInLicenseRequest', name: 'CheckInLicenseRequest')
    CheckInLicenseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CheckInLicenseResponse', name: 'CheckInLicenseResponse')
    CheckoutBorrowLicenseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CheckoutBorrowLicenseRequest', name: 'CheckoutBorrowLicenseRequest')
    CheckoutBorrowLicenseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CheckoutBorrowLicenseResponse', name: 'CheckoutBorrowLicenseResponse')
    CheckoutLicenseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CheckoutLicenseRequest', name: 'CheckoutLicenseRequest')
    CheckoutLicenseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CheckoutLicenseResponse', name: 'CheckoutLicenseResponse')
    CheckoutType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#CheckoutType', name: 'CheckoutType')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^\\S+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ConflictException', name: 'ConflictException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsumedLicenseSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ConsumedLicenseSummary', name: 'ConsumedLicenseSummary')
    ConsumedLicenseSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ConsumedLicenseSummaryList', name: 'ConsumedLicenseSummaryList')
    ConsumptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ConsumptionConfiguration', name: 'ConsumptionConfiguration')
    CreateGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateGrantRequest', name: 'CreateGrantRequest')
    CreateGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateGrantResponse', name: 'CreateGrantResponse')
    CreateGrantVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateGrantVersionRequest', name: 'CreateGrantVersionRequest')
    CreateGrantVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateGrantVersionResponse', name: 'CreateGrantVersionResponse')
    CreateLicenseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseConfigurationRequest', name: 'CreateLicenseConfigurationRequest')
    CreateLicenseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseConfigurationResponse', name: 'CreateLicenseConfigurationResponse')
    CreateLicenseConversionTaskForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseConversionTaskForResourceRequest', name: 'CreateLicenseConversionTaskForResourceRequest')
    CreateLicenseConversionTaskForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseConversionTaskForResourceResponse', name: 'CreateLicenseConversionTaskForResourceResponse')
    CreateLicenseManagerReportGeneratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseManagerReportGeneratorRequest', name: 'CreateLicenseManagerReportGeneratorRequest')
    CreateLicenseManagerReportGeneratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseManagerReportGeneratorResponse', name: 'CreateLicenseManagerReportGeneratorResponse')
    CreateLicenseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseRequest', name: 'CreateLicenseRequest')
    CreateLicenseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseResponse', name: 'CreateLicenseResponse')
    CreateLicenseVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseVersionRequest', name: 'CreateLicenseVersionRequest')
    CreateLicenseVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateLicenseVersionResponse', name: 'CreateLicenseVersionResponse')
    CreateTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateTokenRequest', name: 'CreateTokenRequest')
    CreateTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#CreateTokenResponse', name: 'CreateTokenResponse')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.licensemanager#DateTime', name: 'DateTime')
    DatetimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DatetimeRange', name: 'DatetimeRange')
    DeleteGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteGrantRequest', name: 'DeleteGrantRequest')
    DeleteGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteGrantResponse', name: 'DeleteGrantResponse')
    DeleteLicenseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteLicenseConfigurationRequest', name: 'DeleteLicenseConfigurationRequest')
    DeleteLicenseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteLicenseConfigurationResponse', name: 'DeleteLicenseConfigurationResponse')
    DeleteLicenseManagerReportGeneratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteLicenseManagerReportGeneratorRequest', name: 'DeleteLicenseManagerReportGeneratorRequest')
    DeleteLicenseManagerReportGeneratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteLicenseManagerReportGeneratorResponse', name: 'DeleteLicenseManagerReportGeneratorResponse')
    DeleteLicenseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteLicenseRequest', name: 'DeleteLicenseRequest')
    DeleteLicenseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteLicenseResponse', name: 'DeleteLicenseResponse')
    DeleteTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteTokenRequest', name: 'DeleteTokenRequest')
    DeleteTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#DeleteTokenResponse', name: 'DeleteTokenResponse')
    DigitalSignatureMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#DigitalSignatureMethod', name: 'DigitalSignatureMethod')
    Entitlement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#Entitlement', name: 'Entitlement')
    EntitlementData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#EntitlementData', name: 'EntitlementData')
    EntitlementDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#EntitlementDataList', name: 'EntitlementDataList')
    EntitlementDataUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#EntitlementDataUnit', name: 'EntitlementDataUnit')
    EntitlementList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#EntitlementList', name: 'EntitlementList')
    EntitlementNotAllowedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#EntitlementNotAllowedException', name: 'EntitlementNotAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EntitlementUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#EntitlementUnit', name: 'EntitlementUnit')
    EntitlementUsage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#EntitlementUsage', name: 'EntitlementUsage')
    EntitlementUsageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#EntitlementUsageList', name: 'EntitlementUsageList')
    ExtendLicenseConsumptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ExtendLicenseConsumptionRequest', name: 'ExtendLicenseConsumptionRequest')
    ExtendLicenseConsumptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ExtendLicenseConsumptionResponse', name: 'ExtendLicenseConsumptionResponse')
    FailedDependencyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#FailedDependencyException', name: 'FailedDependencyException', traits: {"aws.protocols#awsQueryError" => {"code" => "FailedDependency", "httpResponseCode" => 424}, "smithy.api#error" => "client", "smithy.api#httpError" => 424})
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#Filter', name: 'Filter')
    FilterLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#FilterLimitExceededException', name: 'FilterLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "FilterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#FilterList', name: 'FilterList')
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#FilterName', name: 'FilterName')
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#FilterValue', name: 'FilterValue')
    FilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#FilterValues', name: 'FilterValues')
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#Filters', name: 'Filters')
    GetAccessTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetAccessTokenRequest', name: 'GetAccessTokenRequest')
    GetAccessTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetAccessTokenResponse', name: 'GetAccessTokenResponse')
    GetGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetGrantRequest', name: 'GetGrantRequest')
    GetGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetGrantResponse', name: 'GetGrantResponse')
    GetLicenseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseConfigurationRequest', name: 'GetLicenseConfigurationRequest')
    GetLicenseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseConfigurationResponse', name: 'GetLicenseConfigurationResponse')
    GetLicenseConversionTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseConversionTaskRequest', name: 'GetLicenseConversionTaskRequest')
    GetLicenseConversionTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseConversionTaskResponse', name: 'GetLicenseConversionTaskResponse')
    GetLicenseManagerReportGeneratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseManagerReportGeneratorRequest', name: 'GetLicenseManagerReportGeneratorRequest')
    GetLicenseManagerReportGeneratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseManagerReportGeneratorResponse', name: 'GetLicenseManagerReportGeneratorResponse')
    GetLicenseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseRequest', name: 'GetLicenseRequest')
    GetLicenseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseResponse', name: 'GetLicenseResponse')
    GetLicenseUsageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseUsageRequest', name: 'GetLicenseUsageRequest')
    GetLicenseUsageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetLicenseUsageResponse', name: 'GetLicenseUsageResponse')
    GetServiceSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetServiceSettingsRequest', name: 'GetServiceSettingsRequest')
    GetServiceSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GetServiceSettingsResponse', name: 'GetServiceSettingsResponse')
    Grant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#Grant', name: 'Grant')
    GrantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#GrantList', name: 'GrantList')
    GrantStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#GrantStatus', name: 'GrantStatus')
    GrantedLicense = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#GrantedLicense', name: 'GrantedLicense')
    GrantedLicenseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#GrantedLicenseList', name: 'GrantedLicenseList')
    ISO8601DateTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#ISO8601DateTime', name: 'ISO8601DateTime', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^(-?(?:[1-9][0-9]*)?[0-9]{4})-(1[0-2]|0[1-9])-(3[0-1]|0[1-9]|[1-2][0-9])T(2[0-3]|[0-1][0-9]):([0-5][0-9]):([0-5][0-9])(\\.[0-9]+)?(Z|[+-](?:2[ 0-3]|[0-1][0-9]):[0-5][0-9])+$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanager#Integer', name: 'Integer')
    InvalidParameterValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValueProvided", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#InvalidResourceStateException', name: 'InvalidResourceStateException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InventoryFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#InventoryFilter', name: 'InventoryFilter')
    InventoryFilterCondition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#InventoryFilterCondition', name: 'InventoryFilterCondition')
    InventoryFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#InventoryFilterList', name: 'InventoryFilterList')
    Issuer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#Issuer', name: 'Issuer')
    IssuerDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#IssuerDetails', name: 'IssuerDetails')
    License = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#License', name: 'License')
    LicenseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseConfiguration', name: 'LicenseConfiguration')
    LicenseConfigurationAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseConfigurationAssociation', name: 'LicenseConfigurationAssociation')
    LicenseConfigurationAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#LicenseConfigurationAssociations', name: 'LicenseConfigurationAssociations')
    LicenseConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#LicenseConfigurationStatus', name: 'LicenseConfigurationStatus')
    LicenseConfigurationUsage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseConfigurationUsage', name: 'LicenseConfigurationUsage')
    LicenseConfigurationUsageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#LicenseConfigurationUsageList', name: 'LicenseConfigurationUsageList')
    LicenseConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#LicenseConfigurations', name: 'LicenseConfigurations')
    LicenseConversionContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseConversionContext', name: 'LicenseConversionContext')
    LicenseConversionTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseConversionTask', name: 'LicenseConversionTask')
    LicenseConversionTaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#LicenseConversionTaskId', name: 'LicenseConversionTaskId', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^lct-[a-zA-Z0-9]*$"})
    LicenseConversionTaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#LicenseConversionTaskStatus', name: 'LicenseConversionTaskStatus')
    LicenseConversionTasks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#LicenseConversionTasks', name: 'LicenseConversionTasks')
    LicenseCountingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#LicenseCountingType', name: 'LicenseCountingType')
    LicenseDeletionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#LicenseDeletionStatus', name: 'LicenseDeletionStatus')
    LicenseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#LicenseList', name: 'LicenseList')
    LicenseOperationFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseOperationFailure', name: 'LicenseOperationFailure')
    LicenseOperationFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#LicenseOperationFailureList', name: 'LicenseOperationFailureList')
    LicenseSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseSpecification', name: 'LicenseSpecification')
    LicenseSpecifications = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#LicenseSpecifications', name: 'LicenseSpecifications')
    LicenseStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#LicenseStatus', name: 'LicenseStatus')
    LicenseUsage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseUsage', name: 'LicenseUsage')
    LicenseUsageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#LicenseUsageException', name: 'LicenseUsageException', traits: {"aws.protocols#awsQueryError" => {"code" => "LicenseUsageFailure", "httpResponseCode" => 412}, "smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ListAssociationsForLicenseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListAssociationsForLicenseConfigurationRequest', name: 'ListAssociationsForLicenseConfigurationRequest')
    ListAssociationsForLicenseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListAssociationsForLicenseConfigurationResponse', name: 'ListAssociationsForLicenseConfigurationResponse')
    ListDistributedGrantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListDistributedGrantsRequest', name: 'ListDistributedGrantsRequest')
    ListDistributedGrantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListDistributedGrantsResponse', name: 'ListDistributedGrantsResponse')
    ListFailuresForLicenseConfigurationOperationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListFailuresForLicenseConfigurationOperationsRequest', name: 'ListFailuresForLicenseConfigurationOperationsRequest')
    ListFailuresForLicenseConfigurationOperationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListFailuresForLicenseConfigurationOperationsResponse', name: 'ListFailuresForLicenseConfigurationOperationsResponse')
    ListLicenseConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseConfigurationsRequest', name: 'ListLicenseConfigurationsRequest')
    ListLicenseConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseConfigurationsResponse', name: 'ListLicenseConfigurationsResponse')
    ListLicenseConversionTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseConversionTasksRequest', name: 'ListLicenseConversionTasksRequest')
    ListLicenseConversionTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseConversionTasksResponse', name: 'ListLicenseConversionTasksResponse')
    ListLicenseManagerReportGeneratorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseManagerReportGeneratorsRequest', name: 'ListLicenseManagerReportGeneratorsRequest')
    ListLicenseManagerReportGeneratorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseManagerReportGeneratorsResponse', name: 'ListLicenseManagerReportGeneratorsResponse')
    ListLicenseSpecificationsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseSpecificationsForResourceRequest', name: 'ListLicenseSpecificationsForResourceRequest')
    ListLicenseSpecificationsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseSpecificationsForResourceResponse', name: 'ListLicenseSpecificationsForResourceResponse')
    ListLicenseVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseVersionsRequest', name: 'ListLicenseVersionsRequest')
    ListLicenseVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicenseVersionsResponse', name: 'ListLicenseVersionsResponse')
    ListLicensesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicensesRequest', name: 'ListLicensesRequest')
    ListLicensesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListLicensesResponse', name: 'ListLicensesResponse')
    ListReceivedGrantsForOrganizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedGrantsForOrganizationRequest', name: 'ListReceivedGrantsForOrganizationRequest')
    ListReceivedGrantsForOrganizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedGrantsForOrganizationResponse', name: 'ListReceivedGrantsForOrganizationResponse')
    ListReceivedGrantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedGrantsRequest', name: 'ListReceivedGrantsRequest')
    ListReceivedGrantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedGrantsResponse', name: 'ListReceivedGrantsResponse')
    ListReceivedLicensesForOrganizationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedLicensesForOrganizationRequest', name: 'ListReceivedLicensesForOrganizationRequest')
    ListReceivedLicensesForOrganizationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedLicensesForOrganizationResponse', name: 'ListReceivedLicensesForOrganizationResponse')
    ListReceivedLicensesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedLicensesRequest', name: 'ListReceivedLicensesRequest')
    ListReceivedLicensesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListReceivedLicensesResponse', name: 'ListReceivedLicensesResponse')
    ListResourceInventoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListResourceInventoryRequest', name: 'ListResourceInventoryRequest')
    ListResourceInventoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListResourceInventoryResponse', name: 'ListResourceInventoryResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTokensRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListTokensRequest', name: 'ListTokensRequest')
    ListTokensResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListTokensResponse', name: 'ListTokensResponse')
    ListUsageForLicenseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListUsageForLicenseConfigurationRequest', name: 'ListUsageForLicenseConfigurationRequest')
    ListUsageForLicenseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ListUsageForLicenseConfigurationResponse', name: 'ListUsageForLicenseConfigurationResponse')
    Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#Location', name: 'Location')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanager#Long', name: 'Long')
    ManagedResourceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ManagedResourceSummary', name: 'ManagedResourceSummary')
    ManagedResourceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ManagedResourceSummaryList', name: 'ManagedResourceSummaryList')
    MaxSize100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.licensemanager#MaxSize100', name: 'MaxSize100', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSize3StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#MaxSize3StringList', name: 'MaxSize3StringList', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#Message', name: 'Message')
    Metadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#Metadata', name: 'Metadata')
    MetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#MetadataList', name: 'MetadataList')
    NoEntitlementsAllowedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#NoEntitlementsAllowedException', name: 'NoEntitlementsAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Options = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#Options', name: 'Options')
    OrganizationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#OrganizationConfiguration', name: 'OrganizationConfiguration')
    PrincipalArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#PrincipalArnList', name: 'PrincipalArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProductCodeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#ProductCodeId', name: 'ProductCodeId', traits: {"smithy.api#pattern" => "^[A-Za-z0-9]{1,25}$"})
    ProductCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ProductCodeList', name: 'ProductCodeList')
    ProductCodeListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ProductCodeListItem', name: 'ProductCodeListItem')
    ProductCodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#ProductCodeType', name: 'ProductCodeType')
    ProductInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ProductInformation', name: 'ProductInformation')
    ProductInformationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ProductInformationFilter', name: 'ProductInformationFilter')
    ProductInformationFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ProductInformationFilterList', name: 'ProductInformationFilterList')
    ProductInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ProductInformationList', name: 'ProductInformationList')
    ProvisionalConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ProvisionalConfiguration', name: 'ProvisionalConfiguration')
    RateLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#RateLimitExceededException', name: 'RateLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "RateLimitExceeded", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ReceivedMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ReceivedMetadata', name: 'ReceivedMetadata')
    ReceivedStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#ReceivedStatus', name: 'ReceivedStatus')
    RedirectException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#RedirectException', name: 'RedirectException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 308})
    RejectGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#RejectGrantRequest', name: 'RejectGrantRequest')
    RejectGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#RejectGrantResponse', name: 'RejectGrantResponse')
    RenewType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#RenewType', name: 'RenewType')
    ReportContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ReportContext', name: 'ReportContext')
    ReportFrequency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ReportFrequency', name: 'ReportFrequency')
    ReportFrequencyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#ReportFrequencyType', name: 'ReportFrequencyType')
    ReportGenerator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ReportGenerator', name: 'ReportGenerator')
    ReportGeneratorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ReportGeneratorList', name: 'ReportGeneratorList')
    ReportGeneratorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#ReportGeneratorName', name: 'ReportGeneratorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReportType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#ReportType', name: 'ReportType')
    ReportTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ReportTypeList', name: 'ReportTypeList')
    ResourceInventory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ResourceInventory', name: 'ResourceInventory')
    ResourceInventoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#ResourceInventoryList', name: 'ResourceInventoryList')
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResource.NotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#ResourceType', name: 'ResourceType')
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#S3Location', name: 'S3Location')
    ServerInternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ServerInternalException', name: 'ServerInternalException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SignedToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#SignedToken', name: 'SignedToken', traits: {"smithy.api#length" => {"min" => 4096}})
    StatusReasonMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#StatusReasonMessage', name: 'StatusReasonMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 400}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#StringList', name: 'StringList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#Tag', name: 'Tag')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#TagResourceResponse', name: 'TagResourceResponse')
    TokenData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#TokenData', name: 'TokenData')
    TokenList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.licensemanager#TokenList', name: 'TokenList')
    TokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#TokenString', name: 'TokenString', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^\\S+$"})
    TokenType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.licensemanager#TokenType', name: 'TokenType')
    UnsupportedDigitalSignatureMethodException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UnsupportedDigitalSignatureMethodException', name: 'UnsupportedDigitalSignatureMethodException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateLicenseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateLicenseConfigurationRequest', name: 'UpdateLicenseConfigurationRequest')
    UpdateLicenseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateLicenseConfigurationResponse', name: 'UpdateLicenseConfigurationResponse')
    UpdateLicenseManagerReportGeneratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateLicenseManagerReportGeneratorRequest', name: 'UpdateLicenseManagerReportGeneratorRequest')
    UpdateLicenseManagerReportGeneratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateLicenseManagerReportGeneratorResponse', name: 'UpdateLicenseManagerReportGeneratorResponse')
    UpdateLicenseSpecificationsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateLicenseSpecificationsForResourceRequest', name: 'UpdateLicenseSpecificationsForResourceRequest')
    UpdateLicenseSpecificationsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateLicenseSpecificationsForResourceResponse', name: 'UpdateLicenseSpecificationsForResourceResponse')
    UpdateServiceSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateServiceSettingsRequest', name: 'UpdateServiceSettingsRequest')
    UpdateServiceSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#UpdateServiceSettingsResponse', name: 'UpdateServiceSettingsResponse')
    UsageOperation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.licensemanager#UsageOperation', name: 'UsageOperation', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.licensemanager#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AcceptGrantRequest.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the grant.</p>", "smithy.api#required" => {}}))
    AcceptGrantRequest.type = Types::AcceptGrantRequest
    AcceptGrantResponse.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Grant ARN.</p>"}))
    AcceptGrantResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Grant status.</p>"}))
    AcceptGrantResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Grant version.</p>"}))
    AcceptGrantResponse.type = Types::AcceptGrantResponse
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivationOverrideBehavior.add_member(:distributed_grants_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISTRIBUTED_GRANTS_ONLY', traits: {"smithy.api#enumValue" => "DISTRIBUTED_GRANTS_ONLY"}))
    ActivationOverrideBehavior.add_member(:all_grants_permitted_by_issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_GRANTS_PERMITTED_BY_ISSUER', traits: {"smithy.api#enumValue" => "ALL_GRANTS_PERMITTED_BY_ISSUER"}))
    AllowedOperation.add_member(:create_grant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_GRANT', traits: {"smithy.api#enumValue" => "CreateGrant"}))
    AllowedOperation.add_member(:checkout_license, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECKOUT_LICENSE', traits: {"smithy.api#enumValue" => "CheckoutLicense"}))
    AllowedOperation.add_member(:checkout_borrow_license, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECKOUT_BORROW_LICENSE', traits: {"smithy.api#enumValue" => "CheckoutBorrowLicense"}))
    AllowedOperation.add_member(:check_in_license, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHECK_IN_LICENSE', traits: {"smithy.api#enumValue" => "CheckInLicense"}))
    AllowedOperation.add_member(:extend_consumption_license, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTEND_CONSUMPTION_LICENSE', traits: {"smithy.api#enumValue" => "ExtendConsumptionLicense"}))
    AllowedOperation.add_member(:list_purchased_licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIST_PURCHASED_LICENSES', traits: {"smithy.api#enumValue" => "ListPurchasedLicenses"}))
    AllowedOperation.add_member(:create_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_TOKEN', traits: {"smithy.api#enumValue" => "CreateToken"}))
    AllowedOperationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOperation)
    ArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AuthorizationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    AuthorizationException.type = Types::AuthorizationException
    AutomatedDiscoveryInformation.add_member(:last_run_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastRunTime', traits: {"smithy.api#documentation" => "<p>Time that automated discovery last ran.</p>"}))
    AutomatedDiscoveryInformation.type = Types::AutomatedDiscoveryInformation
    BorrowConfiguration.add_member(:allow_early_check_in, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'AllowEarlyCheckIn', traits: {"smithy.api#documentation" => "<p>Indicates whether early check-ins are allowed.</p>", "smithy.api#required" => {}}))
    BorrowConfiguration.add_member(:max_time_to_live_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxTimeToLiveInMinutes', traits: {"smithy.api#documentation" => "<p>Maximum time for the borrow configuration, in minutes.</p>", "smithy.api#required" => {}}))
    BorrowConfiguration.type = Types::BorrowConfiguration
    CheckInLicenseRequest.add_member(:license_consumption_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConsumptionToken', traits: {"smithy.api#documentation" => "<p>License consumption token.</p>", "smithy.api#required" => {}}))
    CheckInLicenseRequest.add_member(:beneficiary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Beneficiary', traits: {"smithy.api#documentation" => "<p>License beneficiary.</p>"}))
    CheckInLicenseRequest.type = Types::CheckInLicenseRequest
    CheckInLicenseResponse.type = Types::CheckInLicenseResponse
    CheckoutBorrowLicenseRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license. The license must use the borrow consumption configuration.</p>", "smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.add_member(:entitlements, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementDataList, location_name: 'Entitlements', traits: {"smithy.api#documentation" => "<p>License entitlements. Partial checkouts are not supported.</p>", "smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.add_member(:digital_signature_method, Smithy::Schema::Shapes::ShapeRef.new(shape: DigitalSignatureMethod, location_name: 'DigitalSignatureMethod', traits: {"smithy.api#documentation" => "<p>Digital signature method. The possible value is JSON Web Signature (JWS) algorithm PS384.\n         For more information, see <a href=\"https://tools.ietf.org/html/rfc7518#section-3.5\">RFC 7518 Digital Signature with RSASSA-PSS</a>.</p>", "smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>Node ID.</p>"}))
    CheckoutBorrowLicenseRequest.add_member(:checkout_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataList, location_name: 'CheckoutMetadata', traits: {"smithy.api#documentation" => "<p>Information about constraints.</p>"}))
    CheckoutBorrowLicenseRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    CheckoutBorrowLicenseRequest.type = Types::CheckoutBorrowLicenseRequest
    CheckoutBorrowLicenseResponse.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>"}))
    CheckoutBorrowLicenseResponse.add_member(:license_consumption_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConsumptionToken', traits: {"smithy.api#documentation" => "<p>License consumption token.</p>"}))
    CheckoutBorrowLicenseResponse.add_member(:entitlements_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementDataList, location_name: 'EntitlementsAllowed', traits: {"smithy.api#documentation" => "<p>Allowed license entitlements.</p>"}))
    CheckoutBorrowLicenseResponse.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>Node ID.</p>"}))
    CheckoutBorrowLicenseResponse.add_member(:signed_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SignedToken, location_name: 'SignedToken', traits: {"smithy.api#documentation" => "<p>Signed token.</p>"}))
    CheckoutBorrowLicenseResponse.add_member(:issued_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'IssuedAt', traits: {"smithy.api#documentation" => "<p>Date and time at which the license checkout is issued.</p>"}))
    CheckoutBorrowLicenseResponse.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>Date and time at which the license checkout expires.</p>"}))
    CheckoutBorrowLicenseResponse.add_member(:checkout_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataList, location_name: 'CheckoutMetadata', traits: {"smithy.api#documentation" => "<p>Information about constraints.</p>"}))
    CheckoutBorrowLicenseResponse.type = Types::CheckoutBorrowLicenseResponse
    CheckoutLicenseRequest.add_member(:product_sku, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductSKU', traits: {"smithy.api#documentation" => "<p>Product SKU.</p>", "smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:checkout_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckoutType, location_name: 'CheckoutType', traits: {"smithy.api#documentation" => "<p>Checkout type.</p>", "smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:key_fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyFingerprint', traits: {"smithy.api#documentation" => "<p>Key fingerprint identifying the license.</p>", "smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:entitlements, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementDataList, location_name: 'Entitlements', traits: {"smithy.api#documentation" => "<p>License entitlements.</p>", "smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    CheckoutLicenseRequest.add_member(:beneficiary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Beneficiary', traits: {"smithy.api#documentation" => "<p>License beneficiary.</p>"}))
    CheckoutLicenseRequest.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>Node ID.</p>"}))
    CheckoutLicenseRequest.type = Types::CheckoutLicenseRequest
    CheckoutLicenseResponse.add_member(:checkout_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckoutType, location_name: 'CheckoutType', traits: {"smithy.api#documentation" => "<p>Checkout type.</p>"}))
    CheckoutLicenseResponse.add_member(:license_consumption_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConsumptionToken', traits: {"smithy.api#documentation" => "<p>License consumption token.</p>"}))
    CheckoutLicenseResponse.add_member(:entitlements_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementDataList, location_name: 'EntitlementsAllowed', traits: {"smithy.api#documentation" => "<p>Allowed license entitlements.</p>"}))
    CheckoutLicenseResponse.add_member(:signed_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SignedToken, location_name: 'SignedToken', traits: {"smithy.api#documentation" => "<p>Signed token.</p>"}))
    CheckoutLicenseResponse.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>Node ID.</p>"}))
    CheckoutLicenseResponse.add_member(:issued_at, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'IssuedAt', traits: {"smithy.api#documentation" => "<p>Date and time at which the license checkout is issued.</p>"}))
    CheckoutLicenseResponse.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>Date and time at which the license checkout expires.</p>"}))
    CheckoutLicenseResponse.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the checkout license.</p>"}))
    CheckoutLicenseResponse.type = Types::CheckoutLicenseResponse
    CheckoutType.add_member(:provisional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONAL', traits: {"smithy.api#enumValue" => "PROVISIONAL"}))
    CheckoutType.add_member(:perpetual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERPETUAL', traits: {"smithy.api#enumValue" => "PERPETUAL"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    ConsumedLicenseSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Resource type of the resource consuming a license.</p>"}))
    ConsumedLicenseSummary.add_member(:consumed_licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'ConsumedLicenses', traits: {"smithy.api#documentation" => "<p>Number of licenses consumed by the resource.</p>"}))
    ConsumedLicenseSummary.type = Types::ConsumedLicenseSummary
    ConsumedLicenseSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedLicenseSummary)
    ConsumptionConfiguration.add_member(:renew_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RenewType, location_name: 'RenewType', traits: {"smithy.api#documentation" => "<p>Renewal frequency.</p>"}))
    ConsumptionConfiguration.add_member(:provisional_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionalConfiguration, location_name: 'ProvisionalConfiguration', traits: {"smithy.api#documentation" => "<p>Details about a provisional configuration.</p>"}))
    ConsumptionConfiguration.add_member(:borrow_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BorrowConfiguration, location_name: 'BorrowConfiguration', traits: {"smithy.api#documentation" => "<p>Details about a borrow configuration.</p>"}))
    ConsumptionConfiguration.type = Types::ConsumptionConfiguration
    CreateGrantRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GrantName', traits: {"smithy.api#documentation" => "<p>Grant name.</p>", "smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>", "smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:principals, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArnList, location_name: 'Principals', traits: {"smithy.api#documentation" => "<p>The grant principals. You can specify one of the following as an Amazon Resource Name\n         (ARN):</p>\n         <ul>\n            <li>\n               <p>An Amazon Web Services account, which includes only the account specified.</p>\n            </li>\n         </ul>\n         <ul>\n            <li>\n               <p>An organizational unit (OU), which includes all accounts in the OU.</p>\n            </li>\n         </ul>\n         <ul>\n            <li>\n               <p>An organization, which will include all accounts across your organization.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>Home Region of the grant.</p>", "smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:allowed_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOperationList, location_name: 'AllowedOperations', traits: {"smithy.api#documentation" => "<p>Allowed operations for the grant.</p>", "smithy.api#required" => {}}))
    CreateGrantRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to add to the grant. For more information about tagging support in\n         License Manager, see the <a href=\"https://docs.aws.amazon.com/license-manager/latest/APIReference/API_TagResource.html\">TagResource</a> operation.</p>"}))
    CreateGrantRequest.type = Types::CreateGrantRequest
    CreateGrantResponse.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Grant ARN.</p>"}))
    CreateGrantResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Grant status.</p>"}))
    CreateGrantResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Grant version.</p>"}))
    CreateGrantResponse.type = Types::CreateGrantResponse
    CreateGrantVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    CreateGrantVersionRequest.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the grant.</p>", "smithy.api#required" => {}}))
    CreateGrantVersionRequest.add_member(:grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GrantName', traits: {"smithy.api#documentation" => "<p>Grant name.</p>"}))
    CreateGrantVersionRequest.add_member(:allowed_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOperationList, location_name: 'AllowedOperations', traits: {"smithy.api#documentation" => "<p>Allowed operations for the grant.</p>"}))
    CreateGrantVersionRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Grant status.</p>"}))
    CreateGrantVersionRequest.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Grant status reason.</p>"}))
    CreateGrantVersionRequest.add_member(:source_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceVersion', traits: {"smithy.api#documentation" => "<p>Current version of the grant.</p>"}))
    CreateGrantVersionRequest.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The options specified for the grant.</p>"}))
    CreateGrantVersionRequest.type = Types::CreateGrantVersionRequest
    CreateGrantVersionResponse.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Grant ARN.</p>"}))
    CreateGrantVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Grant status.</p>"}))
    CreateGrantVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>New version of the grant.</p>"}))
    CreateGrantVersionResponse.type = Types::CreateGrantVersionResponse
    CreateLicenseConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the license configuration.</p>", "smithy.api#required" => {}}))
    CreateLicenseConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the license configuration.</p>"}))
    CreateLicenseConfigurationRequest.add_member(:license_counting_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseCountingType, location_name: 'LicenseCountingType', traits: {"smithy.api#documentation" => "<p>Dimension used to track the license inventory.</p>", "smithy.api#required" => {}}))
    CreateLicenseConfigurationRequest.add_member(:license_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'LicenseCount', traits: {"smithy.api#documentation" => "<p>Number of licenses managed by the license configuration.</p>"}))
    CreateLicenseConfigurationRequest.add_member(:license_count_hard_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'LicenseCountHardLimit', traits: {"smithy.api#documentation" => "<p>Indicates whether hard or soft license enforcement is used. Exceeding a hard limit\n         blocks the launch of new instances.</p>"}))
    CreateLicenseConfigurationRequest.add_member(:license_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'LicenseRules', traits: {"smithy.api#documentation" => "<p>License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). The available rules \n         vary by dimension, as follows.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Cores</code> dimension: <code>allowedTenancy</code> |\n               <code>licenseAffinityToHost</code> |\n               <code>maximumCores</code> | <code>minimumCores</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Instances</code> dimension: <code>allowedTenancy</code> | \n               <code>maximumVcpus</code> | <code>minimumVcpus</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Sockets</code> dimension: <code>allowedTenancy</code> | \n               <code>licenseAffinityToHost</code> |\n               <code>maximumSockets</code> | <code>minimumSockets</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>vCPUs</code> dimension: <code>allowedTenancy</code> | \n               <code>honorVcpuOptimization</code> | \n               <code>maximumVcpus</code> | <code>minimumVcpus</code>\n               </p>\n            </li>\n         </ul>\n         <p>The unit for <code>licenseAffinityToHost</code> is days and the range is 1 to 180. The possible \n         values for <code>allowedTenancy</code> are <code>EC2-Default</code>, <code>EC2-DedicatedHost</code>, and \n         <code>EC2-DedicatedInstance</code>. The possible values for <code>honorVcpuOptimization</code> are \n         <code>True</code> and <code>False</code>.</p>"}))
    CreateLicenseConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to add to the license configuration.</p>"}))
    CreateLicenseConfigurationRequest.add_member(:disassociate_when_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'DisassociateWhenNotFound', traits: {"smithy.api#documentation" => "<p>When true, disassociates a resource when software is uninstalled.</p>"}))
    CreateLicenseConfigurationRequest.add_member(:product_information_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductInformationList, location_name: 'ProductInformationList', traits: {"smithy.api#documentation" => "<p>Product information.</p>"}))
    CreateLicenseConfigurationRequest.type = Types::CreateLicenseConfigurationRequest
    CreateLicenseConfigurationResponse.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration.</p>"}))
    CreateLicenseConfigurationResponse.type = Types::CreateLicenseConfigurationResponse
    CreateLicenseConversionTaskForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource you are converting the license type for.</p>", "smithy.api#required" => {}}))
    CreateLicenseConversionTaskForResourceRequest.add_member(:source_license_context, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: 'SourceLicenseContext', traits: {"smithy.api#documentation" => "<p>Information that identifies the license type you are converting from. \n\n         For the structure of the source license, see <a href=\"https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli\">Convert a license type using the CLI </a> in the <i>License Manager User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateLicenseConversionTaskForResourceRequest.add_member(:destination_license_context, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: 'DestinationLicenseContext', traits: {"smithy.api#documentation" => "<p>Information that identifies the license type you are converting to. For the structure of the destination license, see <a href=\"https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli\">Convert a license type using the CLI </a> in the <i>License Manager User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateLicenseConversionTaskForResourceRequest.type = Types::CreateLicenseConversionTaskForResourceRequest
    CreateLicenseConversionTaskForResourceResponse.add_member(:license_conversion_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTaskId, location_name: 'LicenseConversionTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the created license type conversion task.</p>"}))
    CreateLicenseConversionTaskForResourceResponse.type = Types::CreateLicenseConversionTaskForResourceResponse
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_generator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGeneratorName, location_name: 'ReportGeneratorName', traits: {"smithy.api#documentation" => "<p>Name of the report generator.</p>", "smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTypeList, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of reports to generate. The following report types an be generated:</p>\n         <ul>\n            <li>\n               <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>\n            </li>\n            <li>\n               <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_context, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportContext, location_name: 'ReportContext', traits: {"smithy.api#documentation" => "<p>Defines the type of license configuration the report generator tracks.</p>", "smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:report_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequency, location_name: 'ReportFrequency', traits: {"smithy.api#documentation" => "<p>Frequency by which reports are generated.  Reports can be generated daily, monthly, or weekly.</p>", "smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the report generator.</p>"}))
    CreateLicenseManagerReportGeneratorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to add to the report generator.</p>"}))
    CreateLicenseManagerReportGeneratorRequest.type = Types::CreateLicenseManagerReportGeneratorRequest
    CreateLicenseManagerReportGeneratorResponse.add_member(:license_manager_report_generator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseManagerReportGeneratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the new report generator.</p>"}))
    CreateLicenseManagerReportGeneratorResponse.type = Types::CreateLicenseManagerReportGeneratorResponse
    CreateLicenseRequest.add_member(:license_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseName', traits: {"smithy.api#documentation" => "<p>License name.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>Product name.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:product_sku, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductSKU', traits: {"smithy.api#documentation" => "<p>Product SKU.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: Issuer, location_name: 'Issuer', traits: {"smithy.api#documentation" => "<p>License issuer.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>Home Region for the license.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: DatetimeRange, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:entitlements, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementList, location_name: 'Entitlements', traits: {"smithy.api#documentation" => "<p>License entitlements.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:beneficiary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Beneficiary', traits: {"smithy.api#documentation" => "<p>License beneficiary.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:consumption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumptionConfiguration, location_name: 'ConsumptionConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for consumption of the license. Choose a provisional configuration for workloads\n          running with continuous connectivity. Choose a borrow configuration for workloads with offline\n          usage.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:license_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataList, location_name: 'LicenseMetadata', traits: {"smithy.api#documentation" => "<p>Information about the license.</p>"}))
    CreateLicenseRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    CreateLicenseRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to add to the license. For more information about tagging support in\n         License Manager, see the <a href=\"https://docs.aws.amazon.com/license-manager/latest/APIReference/API_TagResource.html\">TagResource</a> operation.</p>"}))
    CreateLicenseRequest.type = Types::CreateLicenseRequest
    CreateLicenseResponse.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>"}))
    CreateLicenseResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>License status.</p>"}))
    CreateLicenseResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>License version.</p>"}))
    CreateLicenseResponse.type = Types::CreateLicenseResponse
    CreateLicenseVersionRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:license_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseName', traits: {"smithy.api#documentation" => "<p>License name.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>Product name.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: Issuer, location_name: 'Issuer', traits: {"smithy.api#documentation" => "<p>License issuer.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>Home Region of the license.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: DatetimeRange, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:license_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataList, location_name: 'LicenseMetadata', traits: {"smithy.api#documentation" => "<p>Information about the license.</p>"}))
    CreateLicenseVersionRequest.add_member(:entitlements, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementList, location_name: 'Entitlements', traits: {"smithy.api#documentation" => "<p>License entitlements.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:consumption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumptionConfiguration, location_name: 'ConsumptionConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for consumption of the license. Choose a provisional configuration for workloads\n         running with continuous connectivity. Choose a borrow configuration for workloads with offline\n         usage.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>License status.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    CreateLicenseVersionRequest.add_member(:source_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceVersion', traits: {"smithy.api#documentation" => "<p>Current version of the license.</p>"}))
    CreateLicenseVersionRequest.type = Types::CreateLicenseVersionRequest
    CreateLicenseVersionResponse.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>License ARN.</p>"}))
    CreateLicenseVersionResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>New version of the license.</p>"}))
    CreateLicenseVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>License status.</p>"}))
    CreateLicenseVersionResponse.type = Types::CreateLicenseVersionResponse
    CreateTokenRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license. The ARN is mapped to the aud claim of the\n          JWT token.</p>", "smithy.api#required" => {}}))
    CreateTokenRequest.add_member(:role_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'RoleArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the IAM roles to embed in the token. \n         License Manager does not check whether the roles are in use.</p>"}))
    CreateTokenRequest.add_member(:expiration_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExpirationInDays', traits: {"smithy.api#documentation" => "<p>Token expiration, in days, counted from token creation. The default is 365 days.</p>"}))
    CreateTokenRequest.add_member(:token_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize3StringList, location_name: 'TokenProperties', traits: {"smithy.api#documentation" => "<p>Data specified by the caller to be included in the JWT token. The data is mapped\n          to the amr claim of the JWT token.</p>"}))
    CreateTokenRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Idempotency token, valid for 10 minutes.</p>", "smithy.api#required" => {}}))
    CreateTokenRequest.type = Types::CreateTokenRequest
    CreateTokenResponse.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenId', traits: {"smithy.api#documentation" => "<p>Token ID.</p>"}))
    CreateTokenResponse.add_member(:token_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenType, location_name: 'TokenType', traits: {"smithy.api#documentation" => "<p>Token type.</p>"}))
    CreateTokenResponse.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>Refresh token, encoded as a JWT token.</p>"}))
    CreateTokenResponse.type = Types::CreateTokenResponse
    DatetimeRange.add_member(:begin, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'Begin', traits: {"smithy.api#documentation" => "<p>Start of the time range.</p>", "smithy.api#required" => {}}))
    DatetimeRange.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'End', traits: {"smithy.api#documentation" => "<p>End of the time range.</p>"}))
    DatetimeRange.type = Types::DatetimeRange
    DeleteGrantRequest.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the grant.</p>", "smithy.api#required" => {}}))
    DeleteGrantRequest.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>The Status reason for the delete request.</p>"}))
    DeleteGrantRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Current version of the grant.</p>", "smithy.api#required" => {}}))
    DeleteGrantRequest.type = Types::DeleteGrantRequest
    DeleteGrantResponse.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Grant ARN.</p>"}))
    DeleteGrantResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Grant status.</p>"}))
    DeleteGrantResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Grant version.</p>"}))
    DeleteGrantResponse.type = Types::DeleteGrantResponse
    DeleteLicenseConfigurationRequest.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>ID of the license configuration.</p>", "smithy.api#required" => {}}))
    DeleteLicenseConfigurationRequest.type = Types::DeleteLicenseConfigurationRequest
    DeleteLicenseConfigurationResponse.type = Types::DeleteLicenseConfigurationResponse
    DeleteLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseManagerReportGeneratorArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the report generator to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteLicenseManagerReportGeneratorRequest.type = Types::DeleteLicenseManagerReportGeneratorRequest
    DeleteLicenseManagerReportGeneratorResponse.type = Types::DeleteLicenseManagerReportGeneratorResponse
    DeleteLicenseRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>", "smithy.api#required" => {}}))
    DeleteLicenseRequest.add_member(:source_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceVersion', traits: {"smithy.api#documentation" => "<p>Current version of the license.</p>", "smithy.api#required" => {}}))
    DeleteLicenseRequest.type = Types::DeleteLicenseRequest
    DeleteLicenseResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseDeletionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>License status.</p>"}))
    DeleteLicenseResponse.add_member(:deletion_date, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'DeletionDate', traits: {"smithy.api#documentation" => "<p>Date when the license is deleted.</p>"}))
    DeleteLicenseResponse.type = Types::DeleteLicenseResponse
    DeleteTokenRequest.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenId', traits: {"smithy.api#documentation" => "<p>Token ID.</p>", "smithy.api#required" => {}}))
    DeleteTokenRequest.type = Types::DeleteTokenRequest
    DeleteTokenResponse.type = Types::DeleteTokenResponse
    DigitalSignatureMethod.add_member(:jwt_ps384, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JWT_PS384', traits: {"smithy.api#enumValue" => "JWT_PS384"}))
    Entitlement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Entitlement name.</p>", "smithy.api#required" => {}}))
    Entitlement.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Entitlement resource. Use only if the unit is None.</p>"}))
    Entitlement.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxCount', traits: {"smithy.api#documentation" => "<p>Maximum entitlement count. Use if the unit is not None.</p>"}))
    Entitlement.add_member(:overage, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'Overage', traits: {"smithy.api#documentation" => "<p>Indicates whether overages are allowed.</p>"}))
    Entitlement.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>Entitlement unit.</p>", "smithy.api#required" => {}}))
    Entitlement.add_member(:allow_check_in, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'AllowCheckIn', traits: {"smithy.api#documentation" => "<p>Indicates whether check-ins are allowed.</p>"}))
    Entitlement.type = Types::Entitlement
    EntitlementData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Entitlement data name.</p>", "smithy.api#required" => {}}))
    EntitlementData.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Entitlement data value.</p>"}))
    EntitlementData.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementDataUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>Entitlement data unit.</p>", "smithy.api#required" => {}}))
    EntitlementData.type = Types::EntitlementData
    EntitlementDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementData)
    EntitlementDataUnit.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "Count"}))
    EntitlementDataUnit.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    EntitlementDataUnit.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDS', traits: {"smithy.api#enumValue" => "Seconds"}))
    EntitlementDataUnit.add_member(:microseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSECONDS', traits: {"smithy.api#enumValue" => "Microseconds"}))
    EntitlementDataUnit.add_member(:milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MILLISECONDS', traits: {"smithy.api#enumValue" => "Milliseconds"}))
    EntitlementDataUnit.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES', traits: {"smithy.api#enumValue" => "Bytes"}))
    EntitlementDataUnit.add_member(:kilobytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBYTES', traits: {"smithy.api#enumValue" => "Kilobytes"}))
    EntitlementDataUnit.add_member(:megabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABYTES', traits: {"smithy.api#enumValue" => "Megabytes"}))
    EntitlementDataUnit.add_member(:gigabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABYTES', traits: {"smithy.api#enumValue" => "Gigabytes"}))
    EntitlementDataUnit.add_member(:terabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABYTES', traits: {"smithy.api#enumValue" => "Terabytes"}))
    EntitlementDataUnit.add_member(:bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITS', traits: {"smithy.api#enumValue" => "Bits"}))
    EntitlementDataUnit.add_member(:kilobits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBITS', traits: {"smithy.api#enumValue" => "Kilobits"}))
    EntitlementDataUnit.add_member(:megabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABITS', traits: {"smithy.api#enumValue" => "Megabits"}))
    EntitlementDataUnit.add_member(:gigabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABITS', traits: {"smithy.api#enumValue" => "Gigabits"}))
    EntitlementDataUnit.add_member(:terabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABITS', traits: {"smithy.api#enumValue" => "Terabits"}))
    EntitlementDataUnit.add_member(:percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENT', traits: {"smithy.api#enumValue" => "Percent"}))
    EntitlementDataUnit.add_member(:bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    EntitlementDataUnit.add_member(:kilobytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    EntitlementDataUnit.add_member(:megabytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    EntitlementDataUnit.add_member(:gigabytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    EntitlementDataUnit.add_member(:terabytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    EntitlementDataUnit.add_member(:bits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Bits/Second"}))
    EntitlementDataUnit.add_member(:kilobits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    EntitlementDataUnit.add_member(:megabits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    EntitlementDataUnit.add_member(:gigabits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    EntitlementDataUnit.add_member(:terabits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    EntitlementDataUnit.add_member(:count_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT_PER_SECOND', traits: {"smithy.api#enumValue" => "Count/Second"}))
    EntitlementList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Entitlement)
    EntitlementNotAllowedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    EntitlementNotAllowedException.type = Types::EntitlementNotAllowedException
    EntitlementUnit.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "Count"}))
    EntitlementUnit.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    EntitlementUnit.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDS', traits: {"smithy.api#enumValue" => "Seconds"}))
    EntitlementUnit.add_member(:microseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSECONDS', traits: {"smithy.api#enumValue" => "Microseconds"}))
    EntitlementUnit.add_member(:milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MILLISECONDS', traits: {"smithy.api#enumValue" => "Milliseconds"}))
    EntitlementUnit.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES', traits: {"smithy.api#enumValue" => "Bytes"}))
    EntitlementUnit.add_member(:kilobytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBYTES', traits: {"smithy.api#enumValue" => "Kilobytes"}))
    EntitlementUnit.add_member(:megabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABYTES', traits: {"smithy.api#enumValue" => "Megabytes"}))
    EntitlementUnit.add_member(:gigabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABYTES', traits: {"smithy.api#enumValue" => "Gigabytes"}))
    EntitlementUnit.add_member(:terabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABYTES', traits: {"smithy.api#enumValue" => "Terabytes"}))
    EntitlementUnit.add_member(:bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITS', traits: {"smithy.api#enumValue" => "Bits"}))
    EntitlementUnit.add_member(:kilobits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBITS', traits: {"smithy.api#enumValue" => "Kilobits"}))
    EntitlementUnit.add_member(:megabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABITS', traits: {"smithy.api#enumValue" => "Megabits"}))
    EntitlementUnit.add_member(:gigabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABITS', traits: {"smithy.api#enumValue" => "Gigabits"}))
    EntitlementUnit.add_member(:terabits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABITS', traits: {"smithy.api#enumValue" => "Terabits"}))
    EntitlementUnit.add_member(:percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENT', traits: {"smithy.api#enumValue" => "Percent"}))
    EntitlementUnit.add_member(:bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    EntitlementUnit.add_member(:kilobytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    EntitlementUnit.add_member(:megabytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    EntitlementUnit.add_member(:gigabytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    EntitlementUnit.add_member(:terabytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    EntitlementUnit.add_member(:bits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Bits/Second"}))
    EntitlementUnit.add_member(:kilobits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    EntitlementUnit.add_member(:megabits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGABITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    EntitlementUnit.add_member(:gigabits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGABITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    EntitlementUnit.add_member(:terabits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABITS_PER_SECOND', traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    EntitlementUnit.add_member(:count_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT_PER_SECOND', traits: {"smithy.api#enumValue" => "Count/Second"}))
    EntitlementUsage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Entitlement usage name.</p>", "smithy.api#required" => {}}))
    EntitlementUsage.add_member(:consumed_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumedValue', traits: {"smithy.api#documentation" => "<p>Resource usage consumed.</p>", "smithy.api#required" => {}}))
    EntitlementUsage.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaxCount', traits: {"smithy.api#documentation" => "<p>Maximum entitlement usage count.</p>"}))
    EntitlementUsage.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementDataUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>Entitlement usage unit.</p>", "smithy.api#required" => {}}))
    EntitlementUsage.type = Types::EntitlementUsage
    EntitlementUsageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementUsage)
    ExtendLicenseConsumptionRequest.add_member(:license_consumption_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConsumptionToken', traits: {"smithy.api#documentation" => "<p>License consumption token.</p>", "smithy.api#required" => {}}))
    ExtendLicenseConsumptionRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Checks whether you have the required permissions for the action, without actually making the request. Provides an error response if you do not have the required permissions.</p>"}))
    ExtendLicenseConsumptionRequest.type = Types::ExtendLicenseConsumptionRequest
    ExtendLicenseConsumptionResponse.add_member(:license_consumption_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConsumptionToken', traits: {"smithy.api#documentation" => "<p>License consumption token.</p>"}))
    ExtendLicenseConsumptionResponse.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>Date and time at which the license consumption expires.</p>"}))
    ExtendLicenseConsumptionResponse.type = Types::ExtendLicenseConsumptionResponse
    FailedDependencyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    FailedDependencyException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode'))
    FailedDependencyException.type = Types::FailedDependencyException
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the filter. Filter names are case-sensitive.</p>"}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The value of the filter, which is case-sensitive. You can only specify one value for the filter.</p>"}))
    Filter.type = Types::Filter
    FilterLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    FilterLimitExceededException.type = Types::FilterLimitExceededException
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue, traits: {"smithy.api#xmlName" => "item"})
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, traits: {"smithy.api#xmlName" => "item"})
    GetAccessTokenRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'Token', traits: {"smithy.api#documentation" => "<p>Refresh token, encoded as a JWT token.</p>", "smithy.api#required" => {}}))
    GetAccessTokenRequest.add_member(:token_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize3StringList, location_name: 'TokenProperties', traits: {"smithy.api#documentation" => "<p>Token properties to validate against those present in the JWT token.</p>"}))
    GetAccessTokenRequest.type = Types::GetAccessTokenRequest
    GetAccessTokenResponse.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenString, location_name: 'AccessToken', traits: {"smithy.api#documentation" => "<p>Temporary access token.</p>"}))
    GetAccessTokenResponse.type = Types::GetAccessTokenResponse
    GetGrantRequest.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the grant.</p>", "smithy.api#required" => {}}))
    GetGrantRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Grant version.</p>"}))
    GetGrantRequest.type = Types::GetGrantRequest
    GetGrantResponse.add_member(:grant, Smithy::Schema::Shapes::ShapeRef.new(shape: Grant, location_name: 'Grant', traits: {"smithy.api#documentation" => "<p>Grant details.</p>"}))
    GetGrantResponse.type = Types::GetGrantResponse
    GetLicenseConfigurationRequest.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration.</p>", "smithy.api#required" => {}}))
    GetLicenseConfigurationRequest.type = Types::GetLicenseConfigurationRequest
    GetLicenseConfigurationResponse.add_member(:license_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationId', traits: {"smithy.api#documentation" => "<p>Unique ID for the license configuration.</p>"}))
    GetLicenseConfigurationResponse.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration.</p>"}))
    GetLicenseConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the license configuration.</p>"}))
    GetLicenseConfigurationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the license configuration.</p>"}))
    GetLicenseConfigurationResponse.add_member(:license_counting_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseCountingType, location_name: 'LicenseCountingType', traits: {"smithy.api#documentation" => "<p>Dimension for which the licenses are counted.</p>"}))
    GetLicenseConfigurationResponse.add_member(:license_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'LicenseRules', traits: {"smithy.api#documentation" => "<p>License rules.</p>"}))
    GetLicenseConfigurationResponse.add_member(:license_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'LicenseCount', traits: {"smithy.api#documentation" => "<p>Number of available licenses.</p>"}))
    GetLicenseConfigurationResponse.add_member(:license_count_hard_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'LicenseCountHardLimit', traits: {"smithy.api#documentation" => "<p>Sets the number of available licenses as a hard limit.</p>"}))
    GetLicenseConfigurationResponse.add_member(:consumed_licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'ConsumedLicenses', traits: {"smithy.api#documentation" => "<p>Number of licenses assigned to resources.</p>"}))
    GetLicenseConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>License configuration status.</p>"}))
    GetLicenseConfigurationResponse.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>Account ID of the owner of the license configuration.</p>"}))
    GetLicenseConfigurationResponse.add_member(:consumed_license_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedLicenseSummaryList, location_name: 'ConsumedLicenseSummaryList', traits: {"smithy.api#documentation" => "<p>Summaries of the licenses consumed by resources.</p>"}))
    GetLicenseConfigurationResponse.add_member(:managed_resource_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedResourceSummaryList, location_name: 'ManagedResourceSummaryList', traits: {"smithy.api#documentation" => "<p>Summaries of the managed resources.</p>"}))
    GetLicenseConfigurationResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the license configuration.</p>"}))
    GetLicenseConfigurationResponse.add_member(:product_information_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductInformationList, location_name: 'ProductInformationList', traits: {"smithy.api#documentation" => "<p>Product information.</p>"}))
    GetLicenseConfigurationResponse.add_member(:automated_discovery_information, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryInformation, location_name: 'AutomatedDiscoveryInformation', traits: {"smithy.api#documentation" => "<p>Automated discovery information.</p>"}))
    GetLicenseConfigurationResponse.add_member(:disassociate_when_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'DisassociateWhenNotFound', traits: {"smithy.api#documentation" => "<p>When true, disassociates a resource when software is uninstalled.</p>"}))
    GetLicenseConfigurationResponse.type = Types::GetLicenseConfigurationResponse
    GetLicenseConversionTaskRequest.add_member(:license_conversion_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTaskId, location_name: 'LicenseConversionTaskId', traits: {"smithy.api#documentation" => "<p>ID of the license type conversion task to retrieve information on.</p>", "smithy.api#required" => {}}))
    GetLicenseConversionTaskRequest.type = Types::GetLicenseConversionTaskRequest
    GetLicenseConversionTaskResponse.add_member(:license_conversion_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTaskId, location_name: 'LicenseConversionTaskId', traits: {"smithy.api#documentation" => "<p>ID of the license type conversion task.</p>"}))
    GetLicenseConversionTaskResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Names (ARN) of the resources the license conversion task is associated with.</p>"}))
    GetLicenseConversionTaskResponse.add_member(:source_license_context, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: 'SourceLicenseContext', traits: {"smithy.api#documentation" => "<p>Information about the license type converted from.</p>"}))
    GetLicenseConversionTaskResponse.add_member(:destination_license_context, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: 'DestinationLicenseContext', traits: {"smithy.api#documentation" => "<p>Information about the license type converted to.</p>"}))
    GetLicenseConversionTaskResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the conversion task.</p>"}))
    GetLicenseConversionTaskResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTaskStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the license type conversion task.</p>"}))
    GetLicenseConversionTaskResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>Time at which the license type conversion task was started .</p>"}))
    GetLicenseConversionTaskResponse.add_member(:license_conversion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LicenseConversionTime', traits: {"smithy.api#documentation" => "<p>Amount of time to complete the license type conversion.</p>"}))
    GetLicenseConversionTaskResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>Time at which the license type conversion task was completed.</p>"}))
    GetLicenseConversionTaskResponse.type = Types::GetLicenseConversionTaskResponse
    GetLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseManagerReportGeneratorArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the report generator.</p>", "smithy.api#required" => {}}))
    GetLicenseManagerReportGeneratorRequest.type = Types::GetLicenseManagerReportGeneratorRequest
    GetLicenseManagerReportGeneratorResponse.add_member(:report_generator, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGenerator, location_name: 'ReportGenerator', traits: {"smithy.api#documentation" => "<p>A report generator that creates periodic reports about your license configurations.</p>"}))
    GetLicenseManagerReportGeneratorResponse.type = Types::GetLicenseManagerReportGeneratorResponse
    GetLicenseRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>", "smithy.api#required" => {}}))
    GetLicenseRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>License version.</p>"}))
    GetLicenseRequest.type = Types::GetLicenseRequest
    GetLicenseResponse.add_member(:license, Smithy::Schema::Shapes::ShapeRef.new(shape: License, location_name: 'License', traits: {"smithy.api#documentation" => "<p>License details.</p>"}))
    GetLicenseResponse.type = Types::GetLicenseResponse
    GetLicenseUsageRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>", "smithy.api#required" => {}}))
    GetLicenseUsageRequest.type = Types::GetLicenseUsageRequest
    GetLicenseUsageResponse.add_member(:license_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseUsage, location_name: 'LicenseUsage', traits: {"smithy.api#documentation" => "<p>License usage details.</p>"}))
    GetLicenseUsageResponse.type = Types::GetLicenseUsageResponse
    GetServiceSettingsRequest.type = Types::GetServiceSettingsRequest
    GetServiceSettingsResponse.add_member(:s3_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketArn', traits: {"smithy.api#documentation" => "<p>Regional S3 bucket path for storing reports, license trail event data, discovery data,\n         and so on.</p>"}))
    GetServiceSettingsResponse.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>SNS topic configured to receive notifications from License Manager.</p>"}))
    GetServiceSettingsResponse.add_member(:organization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: 'OrganizationConfiguration', traits: {"smithy.api#documentation" => "<p>Indicates whether Organizations is integrated with License Manager for\n         cross-account discovery.</p>"}))
    GetServiceSettingsResponse.add_member(:enable_cross_accounts_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'EnableCrossAccountsDiscovery', traits: {"smithy.api#documentation" => "<p>Indicates whether cross-account discovery is enabled.</p>"}))
    GetServiceSettingsResponse.add_member(:license_manager_resource_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseManagerResourceShareArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource share. The License Manager management account \n         provides member accounts with access to this share.</p>"}))
    GetServiceSettingsResponse.type = Types::GetServiceSettingsResponse
    Grant.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the grant.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GrantName', traits: {"smithy.api#documentation" => "<p>Grant name.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:parent_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ParentArn', traits: {"smithy.api#documentation" => "<p>Parent ARN.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>License ARN.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:grantee_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GranteePrincipalArn', traits: {"smithy.api#documentation" => "<p>The grantee principal ARN.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>Home Region of the grant.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:grant_status, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantStatus, location_name: 'GrantStatus', traits: {"smithy.api#documentation" => "<p>Grant status.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Grant status reason.</p>"}))
    Grant.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Grant version.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:granted_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOperationList, location_name: 'GrantedOperations', traits: {"smithy.api#documentation" => "<p>Granted operations.</p>", "smithy.api#required" => {}}))
    Grant.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The options specified for the grant.</p>"}))
    Grant.type = Types::Grant
    GrantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Grant)
    GrantStatus.add_member(:pending_workflow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_WORKFLOW', traits: {"smithy.api#enumValue" => "PENDING_WORKFLOW"}))
    GrantStatus.add_member(:pending_accept, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPT', traits: {"smithy.api#enumValue" => "PENDING_ACCEPT"}))
    GrantStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    GrantStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GrantStatus.add_member(:failed_workflow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_WORKFLOW', traits: {"smithy.api#enumValue" => "FAILED_WORKFLOW"}))
    GrantStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    GrantStatus.add_member(:pending_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETE', traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    GrantStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    GrantStatus.add_member(:workflow_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKFLOW_COMPLETED', traits: {"smithy.api#enumValue" => "WORKFLOW_COMPLETED"}))
    GrantedLicense.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>"}))
    GrantedLicense.add_member(:license_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseName', traits: {"smithy.api#documentation" => "<p>License name.</p>"}))
    GrantedLicense.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>Product name.</p>"}))
    GrantedLicense.add_member(:product_sku, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductSKU', traits: {"smithy.api#documentation" => "<p>Product SKU.</p>"}))
    GrantedLicense.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: IssuerDetails, location_name: 'Issuer', traits: {"smithy.api#documentation" => "<p>Granted license issuer.</p>"}))
    GrantedLicense.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>Home Region of the granted license.</p>"}))
    GrantedLicense.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Granted license status.</p>"}))
    GrantedLicense.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: DatetimeRange, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>Date and time range during which the granted license is valid, in ISO8601-UTC format.</p>"}))
    GrantedLicense.add_member(:beneficiary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Beneficiary', traits: {"smithy.api#documentation" => "<p>Granted license beneficiary.</p>"}))
    GrantedLicense.add_member(:entitlements, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementList, location_name: 'Entitlements', traits: {"smithy.api#documentation" => "<p>License entitlements.</p>"}))
    GrantedLicense.add_member(:consumption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumptionConfiguration, location_name: 'ConsumptionConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for consumption of the license.</p>"}))
    GrantedLicense.add_member(:license_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataList, location_name: 'LicenseMetadata', traits: {"smithy.api#documentation" => "<p>Granted license metadata.</p>"}))
    GrantedLicense.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>Creation time of the granted license.</p>"}))
    GrantedLicense.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Version of the granted license.</p>"}))
    GrantedLicense.add_member(:received_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceivedMetadata, location_name: 'ReceivedMetadata', traits: {"smithy.api#documentation" => "<p>Granted license received metadata.</p>"}))
    GrantedLicense.type = Types::GrantedLicense
    GrantedLicenseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantedLicense)
    InvalidParameterValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidResourceStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    InventoryFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the filter.</p>", "smithy.api#required" => {}}))
    InventoryFilter.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: InventoryFilterCondition, location_name: 'Condition', traits: {"smithy.api#documentation" => "<p>Condition of the filter.</p>", "smithy.api#required" => {}}))
    InventoryFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of the filter.</p>"}))
    InventoryFilter.type = Types::InventoryFilter
    InventoryFilterCondition.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    InventoryFilterCondition.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    InventoryFilterCondition.add_member(:begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEGINS_WITH', traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    InventoryFilterCondition.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    InventoryFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InventoryFilter)
    Issuer.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Issuer name.</p>", "smithy.api#required" => {}}))
    Issuer.add_member(:sign_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SignKey', traits: {"smithy.api#documentation" => "<p>Asymmetric KMS key from Key Management Service. The KMS key must have a key usage of sign and verify, \n         and support the RSASSA-PSS SHA-256 signing algorithm.</p>"}))
    Issuer.type = Types::Issuer
    IssuerDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Issuer name.</p>"}))
    IssuerDetails.add_member(:sign_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SignKey', traits: {"smithy.api#documentation" => "<p>Asymmetric KMS key from Key Management Service. The KMS key must have a key usage of sign and verify, \n         and support the RSASSA-PSS SHA-256 signing algorithm.</p>"}))
    IssuerDetails.add_member(:key_fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyFingerprint', traits: {"smithy.api#documentation" => "<p>Issuer key fingerprint.</p>"}))
    IssuerDetails.type = Types::IssuerDetails
    License.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>"}))
    License.add_member(:license_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseName', traits: {"smithy.api#documentation" => "<p>License name.</p>"}))
    License.add_member(:product_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductName', traits: {"smithy.api#documentation" => "<p>Product name.</p>"}))
    License.add_member(:product_sku, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductSKU', traits: {"smithy.api#documentation" => "<p>Product SKU.</p>"}))
    License.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: IssuerDetails, location_name: 'Issuer', traits: {"smithy.api#documentation" => "<p>License issuer.</p>"}))
    License.add_member(:home_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HomeRegion', traits: {"smithy.api#documentation" => "<p>Home Region of the license.</p>"}))
    License.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>License status.</p>"}))
    License.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: DatetimeRange, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>"}))
    License.add_member(:beneficiary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Beneficiary', traits: {"smithy.api#documentation" => "<p>License beneficiary.</p>"}))
    License.add_member(:entitlements, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementList, location_name: 'Entitlements', traits: {"smithy.api#documentation" => "<p>License entitlements.</p>"}))
    License.add_member(:consumption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumptionConfiguration, location_name: 'ConsumptionConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for consumption of the license.</p>"}))
    License.add_member(:license_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataList, location_name: 'LicenseMetadata', traits: {"smithy.api#documentation" => "<p>License metadata.</p>"}))
    License.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>License creation time.</p>"}))
    License.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>License version.</p>"}))
    License.type = Types::License
    LicenseConfiguration.add_member(:license_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationId', traits: {"smithy.api#documentation" => "<p>Unique ID of the license configuration.</p>"}))
    LicenseConfiguration.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration.</p>"}))
    LicenseConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the license configuration.</p>"}))
    LicenseConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the license configuration.</p>"}))
    LicenseConfiguration.add_member(:license_counting_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseCountingType, location_name: 'LicenseCountingType', traits: {"smithy.api#documentation" => "<p>Dimension to use to track the license inventory.</p>"}))
    LicenseConfiguration.add_member(:license_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'LicenseRules', traits: {"smithy.api#documentation" => "<p>License rules.</p>"}))
    LicenseConfiguration.add_member(:license_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'LicenseCount', traits: {"smithy.api#documentation" => "<p>Number of licenses managed by the license configuration.</p>"}))
    LicenseConfiguration.add_member(:license_count_hard_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'LicenseCountHardLimit', traits: {"smithy.api#documentation" => "<p>Number of available licenses as a hard limit.</p>"}))
    LicenseConfiguration.add_member(:disassociate_when_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'DisassociateWhenNotFound', traits: {"smithy.api#documentation" => "<p>When true, disassociates a resource when software is uninstalled.</p>"}))
    LicenseConfiguration.add_member(:consumed_licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'ConsumedLicenses', traits: {"smithy.api#documentation" => "<p>Number of licenses consumed. </p>"}))
    LicenseConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the license configuration.</p>"}))
    LicenseConfiguration.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>Account ID of the license configuration's owner.</p>"}))
    LicenseConfiguration.add_member(:consumed_license_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedLicenseSummaryList, location_name: 'ConsumedLicenseSummaryList', traits: {"smithy.api#documentation" => "<p>Summaries for licenses consumed by various resources.</p>"}))
    LicenseConfiguration.add_member(:managed_resource_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedResourceSummaryList, location_name: 'ManagedResourceSummaryList', traits: {"smithy.api#documentation" => "<p>Summaries for managed resources.</p>"}))
    LicenseConfiguration.add_member(:product_information_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductInformationList, location_name: 'ProductInformationList', traits: {"smithy.api#documentation" => "<p>Product information.</p>"}))
    LicenseConfiguration.add_member(:automated_discovery_information, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryInformation, location_name: 'AutomatedDiscoveryInformation', traits: {"smithy.api#documentation" => "<p>Automated discovery information.</p>"}))
    LicenseConfiguration.type = Types::LicenseConfiguration
    LicenseConfigurationAssociation.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource.</p>"}))
    LicenseConfigurationAssociation.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Type of server resource.</p>"}))
    LicenseConfigurationAssociation.add_member(:resource_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwnerId', traits: {"smithy.api#documentation" => "<p>ID of the Amazon Web Services account that owns the resource consuming licenses.</p>"}))
    LicenseConfigurationAssociation.add_member(:association_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'AssociationTime', traits: {"smithy.api#documentation" => "<p>Time when the license configuration was associated with the resource.</p>"}))
    LicenseConfigurationAssociation.add_member(:ami_association_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiAssociationScope', traits: {"smithy.api#documentation" => "<p>Scope of AMI associations. The possible value is <code>cross-account</code>.</p>"}))
    LicenseConfigurationAssociation.type = Types::LicenseConfigurationAssociation
    LicenseConfigurationAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfigurationAssociation)
    LicenseConfigurationStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LicenseConfigurationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    LicenseConfigurationUsage.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource.</p>"}))
    LicenseConfigurationUsage.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Type of resource.</p>"}))
    LicenseConfigurationUsage.add_member(:resource_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceStatus', traits: {"smithy.api#documentation" => "<p>Status of the resource.</p>"}))
    LicenseConfigurationUsage.add_member(:resource_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwnerId', traits: {"smithy.api#documentation" => "<p>ID of the account that owns the resource.</p>"}))
    LicenseConfigurationUsage.add_member(:association_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'AssociationTime', traits: {"smithy.api#documentation" => "<p>Time when the license configuration was initially associated with the resource.</p>"}))
    LicenseConfigurationUsage.add_member(:consumed_licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'ConsumedLicenses', traits: {"smithy.api#documentation" => "<p>Number of licenses consumed by the resource.</p>"}))
    LicenseConfigurationUsage.type = Types::LicenseConfigurationUsage
    LicenseConfigurationUsageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfigurationUsage)
    LicenseConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfiguration)
    LicenseConversionContext.add_member(:usage_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageOperation, location_name: 'UsageOperation', traits: {"smithy.api#documentation" => "<p>The Usage operation value that corresponds to the license type you are converting your resource from.  For more information about which platforms correspond to which usage operation values see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html#billing-info\">Sample data: usage operation by platform\n      </a>\n         </p>"}))
    LicenseConversionContext.add_member(:product_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeList, location_name: 'ProductCodes', traits: {"smithy.api#documentation" => "<p>Product codes referred to in the license conversion process.</p>"}))
    LicenseConversionContext.type = Types::LicenseConversionContext
    LicenseConversionTask.add_member(:license_conversion_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTaskId, location_name: 'LicenseConversionTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the license type conversion task.</p>"}))
    LicenseConversionTask.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource associated with the license type\n         conversion task.</p>"}))
    LicenseConversionTask.add_member(:source_license_context, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: 'SourceLicenseContext', traits: {"smithy.api#documentation" => "<p>Information about the license type this conversion task converted from.</p>"}))
    LicenseConversionTask.add_member(:destination_license_context, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionContext, location_name: 'DestinationLicenseContext', traits: {"smithy.api#documentation" => "<p>Information about the license type this conversion task converted to.</p>"}))
    LicenseConversionTask.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTaskStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the conversion task.</p>"}))
    LicenseConversionTask.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the conversion task.</p>"}))
    LicenseConversionTask.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time the conversion task was started at.</p>"}))
    LicenseConversionTask.add_member(:license_conversion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LicenseConversionTime', traits: {"smithy.api#documentation" => "<p>The time the usage operation value of the resource was changed.</p>"}))
    LicenseConversionTask.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time the conversion task was completed.</p>"}))
    LicenseConversionTask.type = Types::LicenseConversionTask
    LicenseConversionTaskStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LicenseConversionTaskStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LicenseConversionTaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    LicenseConversionTasks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTask)
    LicenseCountingType.add_member(:vcpu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VCPU', traits: {"smithy.api#enumValue" => "vCPU"}))
    LicenseCountingType.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE', traits: {"smithy.api#enumValue" => "Instance"}))
    LicenseCountingType.add_member(:core, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE', traits: {"smithy.api#enumValue" => "Core"}))
    LicenseCountingType.add_member(:socket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOCKET', traits: {"smithy.api#enumValue" => "Socket"}))
    LicenseDeletionStatus.add_member(:pending_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETE', traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    LicenseDeletionStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    LicenseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: License)
    LicenseOperationFailure.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource.</p>"}))
    LicenseOperationFailure.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Resource type.</p>"}))
    LicenseOperationFailure.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Error message.</p>"}))
    LicenseOperationFailure.add_member(:failure_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'FailureTime', traits: {"smithy.api#documentation" => "<p>Failure time.</p>"}))
    LicenseOperationFailure.add_member(:operation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationName', traits: {"smithy.api#documentation" => "<p>Name of the operation.</p>"}))
    LicenseOperationFailure.add_member(:resource_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwnerId', traits: {"smithy.api#documentation" => "<p>ID of the Amazon Web Services account that owns the resource.</p>"}))
    LicenseOperationFailure.add_member(:operation_requested_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationRequestedBy', traits: {"smithy.api#documentation" => "<p>The requester is \"License Manager Automated Discovery\".</p>"}))
    LicenseOperationFailure.add_member(:metadata_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataList, location_name: 'MetadataList', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    LicenseOperationFailure.type = Types::LicenseOperationFailure
    LicenseOperationFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseOperationFailure)
    LicenseSpecification.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration.</p>", "smithy.api#required" => {}}))
    LicenseSpecification.add_member(:ami_association_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiAssociationScope', traits: {"smithy.api#documentation" => "<p>Scope of AMI associations. The possible value is <code>cross-account</code>.</p>"}))
    LicenseSpecification.type = Types::LicenseSpecification
    LicenseSpecifications.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseSpecification)
    LicenseStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LicenseStatus.add_member(:pending_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_AVAILABLE', traits: {"smithy.api#enumValue" => "PENDING_AVAILABLE"}))
    LicenseStatus.add_member(:deactivated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATED', traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    LicenseStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    LicenseStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    LicenseStatus.add_member(:pending_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETE', traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    LicenseStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    LicenseUsage.add_member(:entitlement_usages, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementUsageList, location_name: 'EntitlementUsages', traits: {"smithy.api#documentation" => "<p>License entitlement usages.</p>"}))
    LicenseUsage.type = Types::LicenseUsage
    LicenseUsageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    LicenseUsageException.type = Types::LicenseUsageException
    ListAssociationsForLicenseConfigurationRequest.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of a license configuration.</p>", "smithy.api#required" => {}}))
    ListAssociationsForLicenseConfigurationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListAssociationsForLicenseConfigurationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListAssociationsForLicenseConfigurationRequest.type = Types::ListAssociationsForLicenseConfigurationRequest
    ListAssociationsForLicenseConfigurationResponse.add_member(:license_configuration_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfigurationAssociations, location_name: 'LicenseConfigurationAssociations', traits: {"smithy.api#documentation" => "<p>Information about the associations for the license configuration.</p>"}))
    ListAssociationsForLicenseConfigurationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListAssociationsForLicenseConfigurationResponse.type = Types::ListAssociationsForLicenseConfigurationResponse
    ListDistributedGrantsRequest.add_member(:grant_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'GrantArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Names (ARNs) of the grants.</p>"}))
    ListDistributedGrantsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LicenseArn</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>GrantStatus</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>GranteePrincipalARN</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ProductSKU</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LicenseIssuerName</code>\n               </p>\n            </li>\n         </ul>"}))
    ListDistributedGrantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListDistributedGrantsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListDistributedGrantsRequest.type = Types::ListDistributedGrantsRequest
    ListDistributedGrantsResponse.add_member(:grants, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantList, location_name: 'Grants', traits: {"smithy.api#documentation" => "<p>Distributed grant details.</p>"}))
    ListDistributedGrantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListDistributedGrantsResponse.type = Types::ListDistributedGrantsResponse
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name of the license configuration.</p>", "smithy.api#required" => {}}))
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListFailuresForLicenseConfigurationOperationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListFailuresForLicenseConfigurationOperationsRequest.type = Types::ListFailuresForLicenseConfigurationOperationsRequest
    ListFailuresForLicenseConfigurationOperationsResponse.add_member(:license_operation_failure_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseOperationFailureList, location_name: 'LicenseOperationFailureList', traits: {"smithy.api#documentation" => "<p>License configuration operations that failed.</p>"}))
    ListFailuresForLicenseConfigurationOperationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListFailuresForLicenseConfigurationOperationsResponse.type = Types::ListFailuresForLicenseConfigurationOperationsResponse
    ListLicenseConfigurationsRequest.add_member(:license_configuration_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'LicenseConfigurationArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Names (ARN) of the license configurations.</p>"}))
    ListLicenseConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListLicenseConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseConfigurationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters and logical operators\n        are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>licenseCountingType</code> - The dimension for which licenses are counted.\n               Possible values are <code>vCPU</code> | <code>Instance</code> | <code>Core</code> | <code>Socket</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>enforceLicenseCount</code> - A Boolean value that indicates whether hard license enforcement is used.</p>\n            </li>\n            <li>\n               <p>\n                  <code>usagelimitExceeded</code> - A Boolean value that indicates whether the available licenses have been exceeded.</p>\n            </li>\n         </ul>"}))
    ListLicenseConfigurationsRequest.type = Types::ListLicenseConfigurationsRequest
    ListLicenseConfigurationsResponse.add_member(:license_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfigurations, location_name: 'LicenseConfigurations', traits: {"smithy.api#documentation" => "<p>Information about the license configurations.</p>"}))
    ListLicenseConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseConfigurationsResponse.type = Types::ListLicenseConfigurationsResponse
    ListLicenseConversionTasksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseConversionTasksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListLicenseConversionTasksRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>\n         Filters to scope the results. Valid filters are <code>ResourceArns</code> and <code>Status</code>.\n      </p>"}))
    ListLicenseConversionTasksRequest.type = Types::ListLicenseConversionTasksRequest
    ListLicenseConversionTasksResponse.add_member(:license_conversion_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConversionTasks, location_name: 'LicenseConversionTasks', traits: {"smithy.api#documentation" => "<p>Information about the license configuration tasks for your account.</p>"}))
    ListLicenseConversionTasksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseConversionTasksResponse.type = Types::ListLicenseConversionTasksResponse
    ListLicenseManagerReportGeneratorsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters are supported: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>LicenseConfigurationArn</code>\n               </p>\n            </li>\n         </ul>"}))
    ListLicenseManagerReportGeneratorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseManagerReportGeneratorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListLicenseManagerReportGeneratorsRequest.type = Types::ListLicenseManagerReportGeneratorsRequest
    ListLicenseManagerReportGeneratorsResponse.add_member(:report_generators, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGeneratorList, location_name: 'ReportGenerators', traits: {"smithy.api#documentation" => "<p>A report generator that creates periodic reports about your license configurations.</p>"}))
    ListLicenseManagerReportGeneratorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseManagerReportGeneratorsResponse.type = Types::ListLicenseManagerReportGeneratorsResponse
    ListLicenseSpecificationsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of a resource that has an associated license configuration.</p>", "smithy.api#required" => {}}))
    ListLicenseSpecificationsForResourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListLicenseSpecificationsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseSpecificationsForResourceRequest.type = Types::ListLicenseSpecificationsForResourceRequest
    ListLicenseSpecificationsForResourceResponse.add_member(:license_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: 'LicenseSpecifications', traits: {"smithy.api#documentation" => "<p>License configurations associated with a resource.</p>"}))
    ListLicenseSpecificationsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseSpecificationsForResourceResponse.type = Types::ListLicenseSpecificationsForResourceResponse
    ListLicenseVersionsRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>", "smithy.api#required" => {}}))
    ListLicenseVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListLicenseVersionsRequest.type = Types::ListLicenseVersionsRequest
    ListLicenseVersionsResponse.add_member(:licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseList, location_name: 'Licenses', traits: {"smithy.api#documentation" => "<p>License details.</p>"}))
    ListLicenseVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicenseVersionsResponse.type = Types::ListLicenseVersionsResponse
    ListLicensesRequest.add_member(:license_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'LicenseArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Names (ARNs) of the licenses.</p>"}))
    ListLicensesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Beneficiary</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ProductSKU</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Fingerprint</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>\n               </p>\n            </li>\n         </ul>"}))
    ListLicensesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicensesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListLicensesRequest.type = Types::ListLicensesRequest
    ListLicensesResponse.add_member(:licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseList, location_name: 'Licenses', traits: {"smithy.api#documentation" => "<p>License details.</p>"}))
    ListLicensesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListLicensesResponse.type = Types::ListLicensesResponse
    ListReceivedGrantsForOrganizationRequest.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the received license.</p>", "smithy.api#required" => {}}))
    ListReceivedGrantsForOrganizationRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ParentArn</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>GranteePrincipalArn</code>\n               </p>\n            </li>\n         </ul>"}))
    ListReceivedGrantsForOrganizationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedGrantsForOrganizationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListReceivedGrantsForOrganizationRequest.type = Types::ListReceivedGrantsForOrganizationRequest
    ListReceivedGrantsForOrganizationResponse.add_member(:grants, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantList, location_name: 'Grants', traits: {"smithy.api#documentation" => "<p>Lists the grants the organization has received.</p>"}))
    ListReceivedGrantsForOrganizationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedGrantsForOrganizationResponse.type = Types::ListReceivedGrantsForOrganizationResponse
    ListReceivedGrantsRequest.add_member(:grant_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'GrantArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Names (ARNs) of the grants.</p>"}))
    ListReceivedGrantsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ProductSKU</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LicenseIssuerName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>LicenseArn</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>GrantStatus</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>GranterAccountId</code>\n               </p>\n            </li>\n         </ul>"}))
    ListReceivedGrantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedGrantsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListReceivedGrantsRequest.type = Types::ListReceivedGrantsRequest
    ListReceivedGrantsResponse.add_member(:grants, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantList, location_name: 'Grants', traits: {"smithy.api#documentation" => "<p>Received grant details.</p>"}))
    ListReceivedGrantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedGrantsResponse.type = Types::ListReceivedGrantsResponse
    ListReceivedLicensesForOrganizationRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Beneficiary</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ProductSKU</code>\n               </p>\n            </li>\n         </ul>"}))
    ListReceivedLicensesForOrganizationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedLicensesForOrganizationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListReceivedLicensesForOrganizationRequest.type = Types::ListReceivedLicensesForOrganizationRequest
    ListReceivedLicensesForOrganizationResponse.add_member(:licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantedLicenseList, location_name: 'Licenses', traits: {"smithy.api#documentation" => "<p>Lists the licenses the organization has received.</p>"}))
    ListReceivedLicensesForOrganizationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedLicensesForOrganizationResponse.type = Types::ListReceivedLicensesForOrganizationResponse
    ListReceivedLicensesRequest.add_member(:license_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'LicenseArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Names (ARNs) of the licenses.</p>"}))
    ListReceivedLicensesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ProductSKU</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Fingerprint</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>IssuerName</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Beneficiary</code>\n               </p>\n            </li>\n         </ul>"}))
    ListReceivedLicensesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedLicensesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListReceivedLicensesRequest.type = Types::ListReceivedLicensesRequest
    ListReceivedLicensesResponse.add_member(:licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantedLicenseList, location_name: 'Licenses', traits: {"smithy.api#documentation" => "<p>Received license details.</p>"}))
    ListReceivedLicensesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListReceivedLicensesResponse.type = Types::ListReceivedLicensesResponse
    ListResourceInventoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListResourceInventoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListResourceInventoryRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: InventoryFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters and logical operators\n        are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>account_id</code> - The ID of the Amazon Web Services account that owns the resource.\n               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>application_name</code> - The name of the application. \n               Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>license_included</code> - The type of license included. \n               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.\n               Possible values are <code>sql-server-enterprise</code> | \n               <code>sql-server-standard</code> | \n               <code>sql-server-web</code> |  \n               <code>windows-server-datacenter</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>platform</code> - The platform of the resource.\n               Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>resource_id</code> - The ID of the resource. \n               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>tag:<key></code> - The key/value combination of a tag assigned \n               to the resource. Logical operators are <code>EQUALS</code> (single account) or\n               <code>EQUALS</code> | <code>NOT_EQUALS</code> (cross account).</p>\n            </li>\n         </ul>"}))
    ListResourceInventoryRequest.type = Types::ListResourceInventoryRequest
    ListResourceInventoryResponse.add_member(:resource_inventory_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInventoryList, location_name: 'ResourceInventoryList', traits: {"smithy.api#documentation" => "<p>Information about the resources.</p>"}))
    ListResourceInventoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListResourceInventoryResponse.type = Types::ListResourceInventoryResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTokensRequest.add_member(:token_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'TokenIds', traits: {"smithy.api#documentation" => "<p>Token IDs.</p>"}))
    ListTokensRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filter is supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LicenseArns</code>\n               </p>\n            </li>\n         </ul>"}))
    ListTokensRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListTokensRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListTokensRequest.type = Types::ListTokensRequest
    ListTokensResponse.add_member(:tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenList, location_name: 'Tokens', traits: {"smithy.api#documentation" => "<p>Received token details.</p>"}))
    ListTokensResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListTokensResponse.type = Types::ListTokensResponse
    ListUsageForLicenseConfigurationRequest.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration.</p>", "smithy.api#required" => {}}))
    ListUsageForLicenseConfigurationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to return in a single call.</p>"}))
    ListUsageForLicenseConfigurationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListUsageForLicenseConfigurationRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters to scope the results. The following filters and logical operators\n        are supported:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>resourceArn</code> - The ARN of the license configuration resource.</p>\n            </li>\n            <li>\n               <p>\n                  <code>resourceType</code> - The resource type (<code>EC2_INSTANCE</code> | \n            \t<code>EC2_HOST</code> | <code>EC2_AMI</code> | <code>SYSTEMS_MANAGER_MANAGED_INSTANCE</code>).</p>\n            </li>\n            <li>\n               <p>\n                  <code>resourceAccount</code> - The ID of the account that owns the resource.</p>\n            </li>\n         </ul>"}))
    ListUsageForLicenseConfigurationRequest.type = Types::ListUsageForLicenseConfigurationRequest
    ListUsageForLicenseConfigurationResponse.add_member(:license_configuration_usage_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfigurationUsageList, location_name: 'LicenseConfigurationUsageList', traits: {"smithy.api#documentation" => "<p>Information about the license configurations.</p>"}))
    ListUsageForLicenseConfigurationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Token for the next set of results.</p>"}))
    ListUsageForLicenseConfigurationResponse.type = Types::ListUsageForLicenseConfigurationResponse
    ManagedResourceSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Type of resource associated with a license.</p>"}))
    ManagedResourceSummary.add_member(:association_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'AssociationCount', traits: {"smithy.api#documentation" => "<p>Number of resources associated with licenses.</p>"}))
    ManagedResourceSummary.type = Types::ManagedResourceSummary
    ManagedResourceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedResourceSummary)
    MaxSize3StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Metadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The key name.</p>"}))
    Metadata.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value.</p>"}))
    Metadata.type = Types::Metadata
    MetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata)
    NoEntitlementsAllowedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    NoEntitlementsAllowedException.type = Types::NoEntitlementsAllowedException
    Options.add_member(:activation_override_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationOverrideBehavior, location_name: 'ActivationOverrideBehavior', traits: {"smithy.api#documentation" => "<p>An activation option for your grant that determines the behavior of activating a grant.\n         Activation options can only be used with granted licenses sourced from the Amazon Web Services Marketplace. Additionally, the operation must specify the value of <code>ACTIVE</code> for the\n            <code>Status</code> parameter.</p>\n         <ul>\n            <li>\n               <p>As a license administrator, you can optionally specify an\n                  <code>ActivationOverrideBehavior</code> when activating a grant.</p>\n            </li>\n            <li>\n               <p>As a grantor, you can optionally specify an\n                  <code>ActivationOverrideBehavior</code> when you activate a grant for a grantee\n               account in your organization.</p>\n            </li>\n            <li>\n               <p>As a grantee, if the grantor creating the distributed grant doesn’t specify an\n                  <code>ActivationOverrideBehavior</code>, you can optionally specify one when you\n               are activating the grant.</p>\n            </li>\n         </ul>\n         <dl>\n            <dt>DISTRIBUTED_GRANTS_ONLY</dt>\n            <dd>\n               <p>Use this value to activate a grant without replacing any member account’s\n                  active grants for the same product.</p>\n            </dd>\n            <dt>ALL_GRANTS_PERMITTED_BY_ISSUER</dt>\n            <dd>\n               <p>Use this value to activate a grant and disable other active grants in any\n                  member accounts for the same product. This action will also replace their\n                  previously activated grants with this activated grant.</p>\n            </dd>\n         </dl>"}))
    Options.type = Types::Options
    OrganizationConfiguration.add_member(:enable_integration, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableIntegration', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables Organizations integration.</p>", "smithy.api#required" => {}}))
    OrganizationConfiguration.type = Types::OrganizationConfiguration
    PrincipalArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ProductCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeListItem)
    ProductCodeListItem.add_member(:product_code_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeId, location_name: 'ProductCodeId', traits: {"smithy.api#documentation" => "<p>The product code ID</p>", "smithy.api#required" => {}}))
    ProductCodeListItem.add_member(:product_code_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeType, location_name: 'ProductCodeType', traits: {"smithy.api#documentation" => "<p>The product code type</p>", "smithy.api#required" => {}}))
    ProductCodeListItem.type = Types::ProductCodeListItem
    ProductCodeType.add_member(:marketplace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MARKETPLACE', traits: {"smithy.api#enumValue" => "marketplace"}))
    ProductInformation.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Resource type. The possible values are <code>SSM_MANAGED</code> | <code>RDS</code>.</p>", "smithy.api#required" => {}}))
    ProductInformation.add_member(:product_information_filter_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductInformationFilterList, location_name: 'ProductInformationFilterList', traits: {"smithy.api#documentation" => "<p>A Product information filter consists of a <code>ProductInformationFilterComparator</code> which is a logical operator, a <code>ProductInformationFilterName</code> which specifies the type of filter being declared, and a <code>ProductInformationFilterValue</code> that specifies the value to filter on. </p>\n         <p>Accepted values for <code>ProductInformationFilterName</code> are listed here along with descriptions and valid options for <code>ProductInformationFilterComparator</code>. </p>\n         <p>The following filters and are supported when the resource type \n         is <code>SSM_MANAGED</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Application Name</code> - The name of the application.\n               Logical operator is <code>EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Application Publisher</code> - The publisher of the application.\n               Logical operator is <code>EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Application Version</code> - The version of the application.\n               Logical operator is <code>EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Platform Name</code> - The name of the platform.\n               Logical operator is <code>EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Platform Type</code> - The platform type.\n               Logical operator is <code>EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Tag:key</code> - The key of a tag attached to an Amazon Web Services resource you wish to exclude from automated discovery. Logical operator is <code>NOT_EQUALS</code>.  The key for your tag must be appended to <code>Tag:</code> following the example: <code>Tag:name-of-your-key</code>. <code>ProductInformationFilterValue</code> is optional if you are not using values for the key.\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>AccountId</code> - The 12-digit ID of an Amazon Web Services account you wish to exclude from automated discovery.\n               Logical operator is <code>NOT_EQUALS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>License Included</code> - The type of license included.\n               Logical operators are <code>EQUALS</code> and <code>NOT_EQUALS</code>.\n               Possible values are: <code>sql-server-enterprise</code> | \n               <code>sql-server-standard</code> | \n               <code>sql-server-web</code> |  \n               <code>windows-server-datacenter</code>.</p>\n            </li>\n         </ul>\n         <p>The following filters and logical operators are supported when the resource type\n         is <code>RDS</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Engine Edition</code> - The edition of the database engine.\n               Logical operator is <code>EQUALS</code>.\n               Possible values are: <code>oracle-ee</code> | <code>oracle-se</code> | <code>oracle-se1</code> | <code>oracle-se2</code> \n            \t| <code>db2-se</code> | <code>db2-ae</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>License Pack</code> - The license pack.\n               Logical operator is <code>EQUALS</code>.\n               Possible values are: <code>data guard</code> | \n               <code>diagnostic pack sqlt</code> | \n               <code>tuning pack sqlt</code> | \n               <code>ols</code> | \n               <code>olap</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ProductInformation.type = Types::ProductInformation
    ProductInformationFilter.add_member(:product_information_filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductInformationFilterName', traits: {"smithy.api#documentation" => "<p>Filter name.</p>", "smithy.api#required" => {}}))
    ProductInformationFilter.add_member(:product_information_filter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ProductInformationFilterValue', traits: {"smithy.api#documentation" => "<p>Filter value.</p>"}))
    ProductInformationFilter.add_member(:product_information_filter_comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductInformationFilterComparator', traits: {"smithy.api#documentation" => "<p>Logical operator.</p>", "smithy.api#required" => {}}))
    ProductInformationFilter.type = Types::ProductInformationFilter
    ProductInformationFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductInformationFilter)
    ProductInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductInformation)
    ProvisionalConfiguration.add_member(:max_time_to_live_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxInteger, location_name: 'MaxTimeToLiveInMinutes', traits: {"smithy.api#documentation" => "<p>Maximum time for the provisional configuration, in minutes.</p>", "smithy.api#required" => {}}))
    ProvisionalConfiguration.type = Types::ProvisionalConfiguration
    RateLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    RateLimitExceededException.type = Types::RateLimitExceededException
    ReceivedMetadata.add_member(:received_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceivedStatus, location_name: 'ReceivedStatus', traits: {"smithy.api#documentation" => "<p>Received status.</p>"}))
    ReceivedMetadata.add_member(:received_status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasonMessage, location_name: 'ReceivedStatusReason', traits: {"smithy.api#documentation" => "<p>Received status reason.</p>"}))
    ReceivedMetadata.add_member(:allowed_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOperationList, location_name: 'AllowedOperations', traits: {"smithy.api#documentation" => "<p>Allowed operations.</p>"}))
    ReceivedMetadata.type = Types::ReceivedMetadata
    ReceivedStatus.add_member(:pending_workflow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_WORKFLOW', traits: {"smithy.api#enumValue" => "PENDING_WORKFLOW"}))
    ReceivedStatus.add_member(:pending_accept, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPT', traits: {"smithy.api#enumValue" => "PENDING_ACCEPT"}))
    ReceivedStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    ReceivedStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReceivedStatus.add_member(:failed_workflow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_WORKFLOW', traits: {"smithy.api#enumValue" => "FAILED_WORKFLOW"}))
    ReceivedStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ReceivedStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ReceivedStatus.add_member(:workflow_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKFLOW_COMPLETED', traits: {"smithy.api#enumValue" => "WORKFLOW_COMPLETED"}))
    RedirectException.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location', traits: {"smithy.api#httpHeader" => "Location"}))
    RedirectException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    RedirectException.type = Types::RedirectException
    RejectGrantRequest.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the grant.</p>", "smithy.api#required" => {}}))
    RejectGrantRequest.type = Types::RejectGrantRequest
    RejectGrantResponse.add_member(:grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'GrantArn', traits: {"smithy.api#documentation" => "<p>Grant ARN.</p>"}))
    RejectGrantResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Grant status.</p>"}))
    RejectGrantResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>Grant version.</p>"}))
    RejectGrantResponse.type = Types::RejectGrantResponse
    RenewType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    RenewType.add_member(:weekly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "Weekly"}))
    RenewType.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "Monthly"}))
    ReportContext.add_member(:license_configuration_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'licenseConfigurationArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration that this generator reports on.</p>", "smithy.api#required" => {}}))
    ReportContext.type = Types::ReportContext
    ReportFrequency.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Number of times within the frequency period that a report is generated.  \n         The only supported value is <code>1</code>.</p>"}))
    ReportFrequency.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequencyType, location_name: 'period', traits: {"smithy.api#documentation" => "<p>Time period between each report. The period can be daily, weekly, or monthly.</p>"}))
    ReportFrequency.type = Types::ReportFrequency
    ReportFrequencyType.add_member(:day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY', traits: {"smithy.api#enumValue" => "DAY"}))
    ReportFrequencyType.add_member(:week, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEK', traits: {"smithy.api#enumValue" => "WEEK"}))
    ReportFrequencyType.add_member(:month, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTH', traits: {"smithy.api#enumValue" => "MONTH"}))
    ReportGenerator.add_member(:report_generator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportGeneratorName', traits: {"smithy.api#documentation" => "<p>Name of the report generator.</p>"}))
    ReportGenerator.add_member(:report_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTypeList, location_name: 'ReportType', traits: {"smithy.api#documentation" => "<p>Type of reports that are generated.</p>"}))
    ReportGenerator.add_member(:report_context, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportContext, location_name: 'ReportContext', traits: {"smithy.api#documentation" => "<p>License configuration type for this generator.</p>"}))
    ReportGenerator.add_member(:report_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequency, location_name: 'ReportFrequency', traits: {"smithy.api#documentation" => "<p>Details about how frequently reports are generated.</p>"}))
    ReportGenerator.add_member(:license_manager_report_generator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseManagerReportGeneratorArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the report generator.</p>"}))
    ReportGenerator.add_member(:last_run_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastRunStatus', traits: {"smithy.api#documentation" => "<p>Status of the last report generation attempt.</p>"}))
    ReportGenerator.add_member(:last_run_failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastRunFailureReason', traits: {"smithy.api#documentation" => "<p>Failure message for the last report generation attempt.</p>"}))
    ReportGenerator.add_member(:last_report_generation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastReportGenerationTime', traits: {"smithy.api#documentation" => "<p>Time the last report was generated at.</p>"}))
    ReportGenerator.add_member(:report_creator_account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportCreatorAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID used to create the report generator.</p>"}))
    ReportGenerator.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the report generator.</p>"}))
    ReportGenerator.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3Location', traits: {"smithy.api#documentation" => "<p>Details of the S3 bucket that report generator reports are published to.</p>"}))
    ReportGenerator.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>Time the report was created.</p>"}))
    ReportGenerator.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags associated with the report generator.</p>"}))
    ReportGenerator.type = Types::ReportGenerator
    ReportGeneratorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGenerator)
    ReportType.add_member(:license_configuration_summary_report, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LICENSE_CONFIGURATION_SUMMARY_REPORT', traits: {"smithy.api#enumValue" => "LicenseConfigurationSummaryReport"}))
    ReportType.add_member(:license_configuration_usage_report, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LICENSE_CONFIGURATION_USAGE_REPORT', traits: {"smithy.api#enumValue" => "LicenseConfigurationUsageReport"}))
    ReportTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportType)
    ResourceInventory.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>ID of the resource.</p>"}))
    ResourceInventory.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>Type of resource.</p>"}))
    ResourceInventory.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource.</p>"}))
    ResourceInventory.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>Platform of the resource.</p>"}))
    ResourceInventory.add_member(:platform_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlatformVersion', traits: {"smithy.api#documentation" => "<p>Platform version of the resource in the inventory.</p>"}))
    ResourceInventory.add_member(:resource_owning_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwningAccountId', traits: {"smithy.api#documentation" => "<p>ID of the account that owns the resource.</p>"}))
    ResourceInventory.type = Types::ResourceInventory
    ResourceInventoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInventory)
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:ec2_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_INSTANCE', traits: {"smithy.api#enumValue" => "EC2_INSTANCE"}))
    ResourceType.add_member(:ec2_host, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_HOST', traits: {"smithy.api#enumValue" => "EC2_HOST"}))
    ResourceType.add_member(:ec2_ami, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_AMI', traits: {"smithy.api#enumValue" => "EC2_AMI"}))
    ResourceType.add_member(:rds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS', traits: {"smithy.api#enumValue" => "RDS"}))
    ResourceType.add_member(:systems_manager_managed_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEMS_MANAGER_MANAGED_INSTANCE', traits: {"smithy.api#enumValue" => "SYSTEMS_MANAGER_MANAGED_INSTANCE"}))
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>Name of the S3 bucket reports are published to.</p>"}))
    S3Location.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>Prefix of the S3 bucket reports are published to.</p>"}))
    S3Location.type = Types::S3Location
    ServerInternalException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ServerInternalException.type = Types::ServerInternalException
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag value.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource. The following examples provide an example\n         ARN for each supported resource in License Manager:</p>\n         <ul>\n            <li>\n               <p>Licenses -\n                  <code>arn:aws:license-manager::111122223333:license:l-EXAMPLE2da7646d6861033667f20e895</code>\n               </p>\n            </li>\n            <li>\n               <p>Grants -\n                  <code>arn:aws:license-manager::111122223333:grant:g-EXAMPLE7b19f4a0ab73679b0beb52707</code>\n               </p>\n            </li>\n            <li>\n               <p>License configurations -\n                  <code>arn:aws:license-manager:us-east-1:111122223333:license-configuration:lic-EXAMPLE6a788d4c8acd4264ff0ecf2ed2d</code>\n               </p>\n            </li>\n            <li>\n               <p>Report generators -\n                  <code>arn:aws:license-manager:us-east-1:111122223333:report-generator:r-EXAMPLE825b4a4f8fe5a3e0c88824e5fc6</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TokenData.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenId', traits: {"smithy.api#documentation" => "<p>Token ID.</p>"}))
    TokenData.add_member(:token_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TokenType', traits: {"smithy.api#documentation" => "<p>Type of token generated. The supported value is <code>REFRESH_TOKEN</code>.</p>"}))
    TokenData.add_member(:license_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license.</p>"}))
    TokenData.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DateTime, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>Token expiration time, in ISO8601-UTC format.</p>"}))
    TokenData.add_member(:token_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize3StringList, location_name: 'TokenProperties', traits: {"smithy.api#documentation" => "<p>Data specified by the caller.</p>"}))
    TokenData.add_member(:role_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'RoleArns', traits: {"smithy.api#documentation" => "<p>Amazon Resource Names (ARN) of the roles included in the token.</p>"}))
    TokenData.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Token status. The possible values are <code>AVAILABLE</code> and <code>DELETED</code>.</p>"}))
    TokenData.type = Types::TokenData
    TokenList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TokenData)
    TokenType.add_member(:refresh_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REFRESH_TOKEN', traits: {"smithy.api#enumValue" => "REFRESH_TOKEN"}))
    UnsupportedDigitalSignatureMethodException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    UnsupportedDigitalSignatureMethodException.type = Types::UnsupportedDigitalSignatureMethodException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Keys identifying the tags to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateLicenseConfigurationRequest.add_member(:license_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseConfigurationArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the license configuration.</p>", "smithy.api#required" => {}}))
    UpdateLicenseConfigurationRequest.add_member(:license_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseConfigurationStatus, location_name: 'LicenseConfigurationStatus', traits: {"smithy.api#documentation" => "<p>New status of the license configuration.</p>"}))
    UpdateLicenseConfigurationRequest.add_member(:license_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'LicenseRules', traits: {"smithy.api#documentation" => "<p>New license rule. The only rule that you can add after you create a license\n          configuration is licenseAffinityToHost.</p>"}))
    UpdateLicenseConfigurationRequest.add_member(:license_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxLong, location_name: 'LicenseCount', traits: {"smithy.api#documentation" => "<p>New number of licenses managed by the license configuration.</p>"}))
    UpdateLicenseConfigurationRequest.add_member(:license_count_hard_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'LicenseCountHardLimit', traits: {"smithy.api#documentation" => "<p>New hard limit of the number of available licenses.</p>"}))
    UpdateLicenseConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>New name of the license configuration.</p>"}))
    UpdateLicenseConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>New description of the license configuration.</p>"}))
    UpdateLicenseConfigurationRequest.add_member(:product_information_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductInformationList, location_name: 'ProductInformationList', traits: {"smithy.api#documentation" => "<p>New product information.</p>"}))
    UpdateLicenseConfigurationRequest.add_member(:disassociate_when_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'DisassociateWhenNotFound', traits: {"smithy.api#documentation" => "<p>When true, disassociates a resource when software is uninstalled.</p>"}))
    UpdateLicenseConfigurationRequest.type = Types::UpdateLicenseConfigurationRequest
    UpdateLicenseConfigurationResponse.type = Types::UpdateLicenseConfigurationResponse
    UpdateLicenseManagerReportGeneratorRequest.add_member(:license_manager_report_generator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseManagerReportGeneratorArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the report generator to update.</p>", "smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_generator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGeneratorName, location_name: 'ReportGeneratorName', traits: {"smithy.api#documentation" => "<p>Name of the report generator.</p>", "smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTypeList, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of reports to generate. The following report types are supported:</p>\n         <ul>\n            <li>\n               <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>\n            </li>\n            <li>\n               <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_context, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportContext, location_name: 'ReportContext', traits: {"smithy.api#documentation" => "<p>The report context.</p>", "smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:report_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFrequency, location_name: 'ReportFrequency', traits: {"smithy.api#documentation" => "<p>Frequency by which reports are generated.</p>", "smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>", "smithy.api#required" => {}}))
    UpdateLicenseManagerReportGeneratorRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description of the report generator.</p>"}))
    UpdateLicenseManagerReportGeneratorRequest.type = Types::UpdateLicenseManagerReportGeneratorRequest
    UpdateLicenseManagerReportGeneratorResponse.type = Types::UpdateLicenseManagerReportGeneratorResponse
    UpdateLicenseSpecificationsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon Web Services resource.</p>", "smithy.api#required" => {}}))
    UpdateLicenseSpecificationsForResourceRequest.add_member(:add_license_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: 'AddLicenseSpecifications', traits: {"smithy.api#documentation" => "<p>ARNs of the license configurations to add.</p>"}))
    UpdateLicenseSpecificationsForResourceRequest.add_member(:remove_license_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseSpecifications, location_name: 'RemoveLicenseSpecifications', traits: {"smithy.api#documentation" => "<p>ARNs of the license configurations to remove.</p>"}))
    UpdateLicenseSpecificationsForResourceRequest.type = Types::UpdateLicenseSpecificationsForResourceRequest
    UpdateLicenseSpecificationsForResourceResponse.type = Types::UpdateLicenseSpecificationsForResourceResponse
    UpdateServiceSettingsRequest.add_member(:s3_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.</p>"}))
    UpdateServiceSettingsRequest.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts.</p>"}))
    UpdateServiceSettingsRequest.add_member(:organization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationConfiguration, location_name: 'OrganizationConfiguration', traits: {"smithy.api#documentation" => "<p>Enables integration with Organizations for cross-account discovery.</p>"}))
    UpdateServiceSettingsRequest.add_member(:enable_cross_accounts_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxBoolean, location_name: 'EnableCrossAccountsDiscovery', traits: {"smithy.api#documentation" => "<p>Activates cross-account discovery.</p>"}))
    UpdateServiceSettingsRequest.type = Types::UpdateServiceSettingsRequest
    UpdateServiceSettingsResponse.type = Types::UpdateServiceSettingsResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    AWSLicenseManager = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.licensemanager#AWSLicenseManager"
      service.name = "AWSLicenseManager"
      service.version = "2018-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "License Manager", "arnNamespace" => "license-manager", "cloudFormationName" => "LicenseManager", "cloudTrailEventSource" => "license-manager.amazonaws.com", "endpointPrefix" => "license-manager"}, "aws.auth#sigv4" => {"name" => "license-manager"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS License Manager", "smithy.api#xmlNamespace" => {"uri" => "https://license-manager.amazonaws.com/doc/2018_08_01"}}
      service.add_operation(:accept_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#AcceptGrant"
        operation.name = "AcceptGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:check_in_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CheckInLicense"
        operation.name = "CheckInLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckInLicenseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckInLicenseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:checkout_borrow_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CheckoutBorrowLicense"
        operation.name = "CheckoutBorrowLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckoutBorrowLicenseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckoutBorrowLicenseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoEntitlementsAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDigitalSignatureMethodException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:checkout_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CheckoutLicense"
        operation.name = "CheckoutLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckoutLicenseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckoutLicenseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoEntitlementsAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDigitalSignatureMethodException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateGrant"
        operation.name = "CreateGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_grant_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateGrantVersion"
        operation.name = "CreateGrantVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGrantVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGrantVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicense"
        operation.name = "CreateLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_license_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseConfiguration"
        operation.name = "CreateLicenseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:create_license_conversion_task_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseConversionTaskForResource"
        operation.name = "CreateLicenseConversionTaskForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseConversionTaskForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseConversionTaskForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_license_manager_report_generator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseManagerReportGenerator"
        operation.name = "CreateLicenseManagerReportGenerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseManagerReportGeneratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseManagerReportGeneratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_license_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateLicenseVersion"
        operation.name = "CreateLicenseVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLicenseVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#CreateToken"
        operation.name = "CreateToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteGrant"
        operation.name = "DeleteGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteLicense"
        operation.name = "DeleteLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_license_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteLicenseConfiguration"
        operation.name = "DeleteLicenseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:delete_license_manager_report_generator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteLicenseManagerReportGenerator"
        operation.name = "DeleteLicenseManagerReportGenerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseManagerReportGeneratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLicenseManagerReportGeneratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#DeleteToken"
        operation.name = "DeleteToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:extend_license_consumption, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ExtendLicenseConsumption"
        operation.name = "ExtendLicenseConsumption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendLicenseConsumptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendLicenseConsumptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_access_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetAccessToken"
        operation.name = "GetAccessToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetGrant"
        operation.name = "GetGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicense"
        operation.name = "GetLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_license_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseConfiguration"
        operation.name = "GetLicenseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:get_license_conversion_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseConversionTask"
        operation.name = "GetLicenseConversionTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseConversionTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseConversionTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:get_license_manager_report_generator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseManagerReportGenerator"
        operation.name = "GetLicenseManagerReportGenerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseManagerReportGeneratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseManagerReportGeneratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_license_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetLicenseUsage"
        operation.name = "GetLicenseUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseUsageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLicenseUsageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_service_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#GetServiceSettings"
        operation.name = "GetServiceSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_associations_for_license_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListAssociationsForLicenseConfiguration"
        operation.name = "ListAssociationsForLicenseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociationsForLicenseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociationsForLicenseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_distributed_grants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListDistributedGrants"
        operation.name = "ListDistributedGrants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributedGrantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDistributedGrantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_failures_for_license_configuration_operations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListFailuresForLicenseConfigurationOperations"
        operation.name = "ListFailuresForLicenseConfigurationOperations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFailuresForLicenseConfigurationOperationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFailuresForLicenseConfigurationOperationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_license_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseConfigurations"
        operation.name = "ListLicenseConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_license_conversion_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseConversionTasks"
        operation.name = "ListLicenseConversionTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseConversionTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseConversionTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_license_manager_report_generators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseManagerReportGenerators"
        operation.name = "ListLicenseManagerReportGenerators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseManagerReportGeneratorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseManagerReportGeneratorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_license_specifications_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseSpecificationsForResource"
        operation.name = "ListLicenseSpecificationsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseSpecificationsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseSpecificationsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_license_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenseVersions"
        operation.name = "ListLicenseVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicenseVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_licenses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListLicenses"
        operation.name = "ListLicenses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicensesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLicensesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_received_grants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedGrants"
        operation.name = "ListReceivedGrants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedGrantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedGrantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_received_grants_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedGrantsForOrganization"
        operation.name = "ListReceivedGrantsForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedGrantsForOrganizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedGrantsForOrganizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_received_licenses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedLicenses"
        operation.name = "ListReceivedLicenses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedLicensesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedLicensesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_received_licenses_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListReceivedLicensesForOrganization"
        operation.name = "ListReceivedLicensesForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedLicensesForOrganizationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedLicensesForOrganizationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_resource_inventory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListResourceInventory"
        operation.name = "ListResourceInventory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceInventoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceInventoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:list_tokens, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListTokens"
        operation.name = "ListTokens"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTokensRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTokensResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_usage_for_license_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#ListUsageForLicenseConfiguration"
        operation.name = "ListUsageForLicenseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageForLicenseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsageForLicenseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FilterLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:reject_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#RejectGrant"
        operation.name = "RejectGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:update_license_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateLicenseConfiguration"
        operation.name = "UpdateLicenseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLicenseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLicenseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:update_license_manager_report_generator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateLicenseManagerReportGenerator"
        operation.name = "UpdateLicenseManagerReportGenerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLicenseManagerReportGeneratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLicenseManagerReportGeneratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_license_specifications_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateLicenseSpecificationsForResource"
        operation.name = "UpdateLicenseSpecificationsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLicenseSpecificationsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLicenseSpecificationsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.licensemanager#UpdateServiceSettings"
        operation.name = "UpdateServiceSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RateLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.traits = {}
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

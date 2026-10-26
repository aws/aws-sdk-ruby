# frozen_string_literal: true

# This is generated code!

module Aws::SocialMessaging
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedByMetaException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#AccessDeniedByMetaException", name: "AccessDeniedByMetaException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddContactNumber = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#AddContactNumber", name: "AddContactNumber")
    AddLearnMoreLink = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#AddLearnMoreLink", name: "AddLearnMoreLink")
    AddSecurityRecommendation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#AddSecurityRecommendation", name: "AddSecurityRecommendation")
    AddTrackPackageLink = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#AddTrackPackageLink", name: "AddTrackPackageLink")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#Arn", name: "Arn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    AssociateInProgressToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#AssociateInProgressToken", name: "AssociateInProgressToken", traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#sensitive" => {}})
    AssociateWhatsAppBusinessAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#AssociateWhatsAppBusinessAccountInput", name: "AssociateWhatsAppBusinessAccountInput")
    AssociateWhatsAppBusinessAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#AssociateWhatsAppBusinessAccountOutput", name: "AssociateWhatsAppBusinessAccountOutput")
    BusinessPublicKeyPem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#BusinessPublicKeyPem", name: "BusinessPublicKeyPem", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    BusinessPublicKeySignatureStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#BusinessPublicKeySignatureStatus", name: "BusinessPublicKeySignatureStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ButtonType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#ButtonType", name: "ButtonType", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    CodeExpirationMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.socialmessaging#CodeExpirationMinutes", name: "CodeExpirationMinutes")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateWhatsAppDatasetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppDatasetInput", name: "CreateWhatsAppDatasetInput")
    CreateWhatsAppDatasetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppDatasetOutput", name: "CreateWhatsAppDatasetOutput")
    CreateWhatsAppFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppFlowInput", name: "CreateWhatsAppFlowInput")
    CreateWhatsAppFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppFlowOutput", name: "CreateWhatsAppFlowOutput")
    CreateWhatsAppMessageTemplateFromLibraryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibraryInput", name: "CreateWhatsAppMessageTemplateFromLibraryInput")
    CreateWhatsAppMessageTemplateFromLibraryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibraryOutput", name: "CreateWhatsAppMessageTemplateFromLibraryOutput")
    CreateWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateInput", name: "CreateWhatsAppMessageTemplateInput")
    CreateWhatsAppMessageTemplateMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMediaInput", name: "CreateWhatsAppMessageTemplateMediaInput")
    CreateWhatsAppMessageTemplateMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMediaOutput", name: "CreateWhatsAppMessageTemplateMediaOutput")
    CreateWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateOutput", name: "CreateWhatsAppMessageTemplateOutput")
    DeleteAllLanguages = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#DeleteAllLanguages", name: "DeleteAllLanguages")
    DeleteWhatsAppFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppFlowInput", name: "DeleteWhatsAppFlowInput")
    DeleteWhatsAppFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppFlowOutput", name: "DeleteWhatsAppFlowOutput")
    DeleteWhatsAppMessageMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageMediaInput", name: "DeleteWhatsAppMessageMediaInput")
    DeleteWhatsAppMessageMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageMediaOutput", name: "DeleteWhatsAppMessageMediaOutput")
    DeleteWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplateInput", name: "DeleteWhatsAppMessageTemplateInput")
    DeleteWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplateOutput", name: "DeleteWhatsAppMessageTemplateOutput")
    DependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DependencyException", name: "DependencyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#retryable" => {}})
    DeprecateWhatsAppFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeprecateWhatsAppFlowInput", name: "DeprecateWhatsAppFlowInput")
    DeprecateWhatsAppFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeprecateWhatsAppFlowOutput", name: "DeprecateWhatsAppFlowOutput")
    DisassociateWhatsAppBusinessAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccountInput", name: "DisassociateWhatsAppBusinessAccountInput")
    DisassociateWhatsAppBusinessAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccountOutput", name: "DisassociateWhatsAppBusinessAccountOutput")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#ErrorMessage", name: "ErrorMessage")
    EventDestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#EventDestinationArn", name: "EventDestinationArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:[a-z-]+([/:](.*))?$"})
    Filter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#Filter", name: "Filter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GetLinkedWhatsAppBusinessAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountInput", name: "GetLinkedWhatsAppBusinessAccountInput")
    GetLinkedWhatsAppBusinessAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountOutput", name: "GetLinkedWhatsAppBusinessAccountOutput")
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumberInput", name: "GetLinkedWhatsAppBusinessAccountPhoneNumberInput")
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumberOutput", name: "GetLinkedWhatsAppBusinessAccountPhoneNumberOutput")
    GetWhatsAppBusinessPublicKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppBusinessPublicKeyInput", name: "GetWhatsAppBusinessPublicKeyInput")
    GetWhatsAppBusinessPublicKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppBusinessPublicKeyOutput", name: "GetWhatsAppBusinessPublicKeyOutput")
    GetWhatsAppCallPermissionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppCallPermissionInput", name: "GetWhatsAppCallPermissionInput")
    GetWhatsAppCallPermissionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppCallPermissionOutput", name: "GetWhatsAppCallPermissionOutput")
    GetWhatsAppFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppFlowInput", name: "GetWhatsAppFlowInput")
    GetWhatsAppFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppFlowOutput", name: "GetWhatsAppFlowOutput")
    GetWhatsAppFlowPreviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppFlowPreviewInput", name: "GetWhatsAppFlowPreviewInput")
    GetWhatsAppFlowPreviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppFlowPreviewOutput", name: "GetWhatsAppFlowPreviewOutput")
    GetWhatsAppMessageMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageMediaInput", name: "GetWhatsAppMessageMediaInput")
    GetWhatsAppMessageMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageMediaOutput", name: "GetWhatsAppMessageMediaOutput")
    GetWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageTemplateInput", name: "GetWhatsAppMessageTemplateInput")
    GetWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageTemplateOutput", name: "GetWhatsAppMessageTemplateOutput")
    Headers = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#Headers", name: "Headers")
    IanaTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#IanaTimezone", name: "IanaTimezone", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidParametersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#InvalidParametersException", name: "InvalidParametersException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Iso8601Duration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#Iso8601Duration", name: "Iso8601Duration", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    IsoCountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#IsoCountryCode", name: "IsoCountryCode", traits: {"smithy.api#pattern" => "^[A-Z]{2}$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws[a-z-]*:kms:[a-z0-9-]+:[0-9]{12}:(key/.+|alias/.+)$"})
    LibraryTemplateBodyInputs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LibraryTemplateBodyInputs", name: "LibraryTemplateBodyInputs")
    LibraryTemplateButtonInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LibraryTemplateButtonInput", name: "LibraryTemplateButtonInput")
    LibraryTemplateButtonList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LibraryTemplateButtonList", name: "LibraryTemplateButtonList")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkedAccountWithIncompleteSetup = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#LinkedAccountWithIncompleteSetup", name: "LinkedAccountWithIncompleteSetup")
    LinkedWhatsAppBusinessAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccount", name: "LinkedWhatsAppBusinessAccount")
    LinkedWhatsAppBusinessAccountArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountArn", name: "LinkedWhatsAppBusinessAccountArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:waba/[0-9a-zA-Z]+$"})
    LinkedWhatsAppBusinessAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountId", name: "LinkedWhatsAppBusinessAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 115}, "smithy.api#pattern" => "(^waba-.*$)|(^arn:.*:waba/[0-9a-zA-Z]+$)"})
    LinkedWhatsAppBusinessAccountIdMetaData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountIdMetaData", name: "LinkedWhatsAppBusinessAccountIdMetaData")
    LinkedWhatsAppBusinessAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountSummary", name: "LinkedWhatsAppBusinessAccountSummary")
    LinkedWhatsAppBusinessAccountSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountSummaryList", name: "LinkedWhatsAppBusinessAccountSummaryList")
    LinkedWhatsAppPhoneNumberArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppPhoneNumberArn", name: "LinkedWhatsAppPhoneNumberArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:phone-number-id/[0-9a-zA-Z]+$"})
    ListLinkedWhatsAppBusinessAccountsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccountsInput", name: "ListLinkedWhatsAppBusinessAccountsInput")
    ListLinkedWhatsAppBusinessAccountsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccountsOutput", name: "ListLinkedWhatsAppBusinessAccountsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListWhatsAppFlowAssetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppFlowAssetsInput", name: "ListWhatsAppFlowAssetsInput")
    ListWhatsAppFlowAssetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppFlowAssetsOutput", name: "ListWhatsAppFlowAssetsOutput")
    ListWhatsAppFlowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppFlowsInput", name: "ListWhatsAppFlowsInput")
    ListWhatsAppFlowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppFlowsOutput", name: "ListWhatsAppFlowsOutput")
    ListWhatsAppMessageTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppMessageTemplatesInput", name: "ListWhatsAppMessageTemplatesInput")
    ListWhatsAppMessageTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppMessageTemplatesOutput", name: "ListWhatsAppMessageTemplatesOutput")
    ListWhatsAppTemplateLibraryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppTemplateLibraryInput", name: "ListWhatsAppTemplateLibraryInput")
    ListWhatsAppTemplateLibraryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppTemplateLibraryOutput", name: "ListWhatsAppTemplateLibraryOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.socialmessaging#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetaFlowApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowApplicationId", name: "MetaFlowApplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetaFlowApplicationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaFlowApplicationInfo", name: "MetaFlowApplicationInfo")
    MetaFlowApplicationLink = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowApplicationLink", name: "MetaFlowApplicationLink", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MetaFlowApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowApplicationName", name: "MetaFlowApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MetaFlowAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaFlowAsset", name: "MetaFlowAsset")
    MetaFlowAssetDownloadUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowAssetDownloadUrl", name: "MetaFlowAssetDownloadUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MetaFlowAssetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaFlowAssetList", name: "MetaFlowAssetList")
    MetaFlowAssetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowAssetName", name: "MetaFlowAssetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetaFlowAssetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowAssetType", name: "MetaFlowAssetType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    MetaFlowCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.socialmessaging#MetaFlowCategory", name: "MetaFlowCategory")
    MetaFlowCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaFlowCategoryList", name: "MetaFlowCategoryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}})
    MetaFlowDataApiVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowDataApiVersion", name: "MetaFlowDataApiVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetaFlowEndpointUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowEndpointUri", name: "MetaFlowEndpointUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MetaFlowHealthEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaFlowHealthEntity", name: "MetaFlowHealthEntity")
    MetaFlowHealthEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaFlowHealthEntityList", name: "MetaFlowHealthEntityList")
    MetaFlowHealthEntityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowHealthEntityType", name: "MetaFlowHealthEntityType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    MetaFlowHealthStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaFlowHealthStatus", name: "MetaFlowHealthStatus")
    MetaFlowHealthStatusAvailability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowHealthStatusAvailability", name: "MetaFlowHealthStatusAvailability", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    MetaFlowId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowId", name: "MetaFlowId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9]+$"})
    MetaFlowJsonBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#MetaFlowJsonBlob", name: "MetaFlowJsonBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    MetaFlowJsonVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowJsonVersion", name: "MetaFlowJsonVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetaFlowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowName", name: "MetaFlowName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MetaFlowPreviewInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaFlowPreviewInfo", name: "MetaFlowPreviewInfo")
    MetaFlowPreviewUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowPreviewUrl", name: "MetaFlowPreviewUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    MetaFlowStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowStatus", name: "MetaFlowStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MetaFlowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaFlowSummary", name: "MetaFlowSummary")
    MetaFlowSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaFlowSummaryList", name: "MetaFlowSummaryList")
    MetaFlowTimestamp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowTimestamp", name: "MetaFlowTimestamp", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    MetaFlowValidationError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowValidationError", name: "MetaFlowValidationError", traits: {"smithy.api#length" => {"max" => 1048576}})
    MetaFlowWabaCurrency = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowWabaCurrency", name: "MetaFlowWabaCurrency", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetaFlowWabaTemplateNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowWabaTemplateNamespace", name: "MetaFlowWabaTemplateNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MetaFlowWabaTimezoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaFlowWabaTimezoneId", name: "MetaFlowWabaTimezoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MetaFlowWhatsAppBusinessAccountInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaFlowWhatsAppBusinessAccountInfo", name: "MetaFlowWhatsAppBusinessAccountInfo")
    MetaIndustries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaIndustries", name: "MetaIndustries")
    MetaIndustry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaIndustry", name: "MetaIndustry", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    MetaLibraryTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplate", name: "MetaLibraryTemplate")
    MetaLibraryTemplateButtonInputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplateButtonInputs", name: "MetaLibraryTemplateButtonInputs")
    MetaLibraryTemplateButtonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplateButtonList", name: "MetaLibraryTemplateButtonList")
    MetaLibraryTemplateDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplateDefinition", name: "MetaLibraryTemplateDefinition")
    MetaLibraryTemplatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplatesList", name: "MetaLibraryTemplatesList")
    MetaParameterFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaParameterFormat", name: "MetaParameterFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    MetaTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplate", name: "MetaTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}})
    MetaTemplateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateBody", name: "MetaTemplateBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MetaTemplateBodyExampleParams = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateBodyExampleParams", name: "MetaTemplateBodyExampleParams")
    MetaTemplateCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateCategory", name: "MetaTemplateCategory", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetaTemplateComponents = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateComponents", name: "MetaTemplateComponents", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    MetaTemplateCtaLinkTrackingOptedOut = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateCtaLinkTrackingOptedOut", name: "MetaTemplateCtaLinkTrackingOptedOut")
    MetaTemplateDefinition = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateDefinition", name: "MetaTemplateDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}})
    MetaTemplateHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateHeader", name: "MetaTemplateHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MetaTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateId", name: "MetaTemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9]+$"})
    MetaTemplateLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateLanguage", name: "MetaTemplateLanguage", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    MetaTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateName", name: "MetaTemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    MetaTemplateQualityScore = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateQualityScore", name: "MetaTemplateQualityScore", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MetaTemplateStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateStatus", name: "MetaTemplateStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MetaTemplateTopic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateTopic", name: "MetaTemplateTopic", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MetaTemplateUseCase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateUseCase", name: "MetaTemplateUseCase", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    MetaText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaText", name: "MetaText", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    MetaUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaUrl", name: "MetaUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    MetaUrlWithSuffixExample = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#MetaUrlWithSuffixExample", name: "MetaUrlWithSuffixExample", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}})
    OtpType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#OtpType", name: "OtpType", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PostWhatsAppMessageMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PostWhatsAppMessageMediaInput", name: "PostWhatsAppMessageMediaInput")
    PostWhatsAppMessageMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PostWhatsAppMessageMediaOutput", name: "PostWhatsAppMessageMediaOutput")
    PublishWhatsAppFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PublishWhatsAppFlowInput", name: "PublishWhatsAppFlowInput")
    PublishWhatsAppFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PublishWhatsAppFlowOutput", name: "PublishWhatsAppFlowOutput")
    PutWhatsAppBusinessAccountEventDestinationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinationsInput", name: "PutWhatsAppBusinessAccountEventDestinationsInput")
    PutWhatsAppBusinessAccountEventDestinationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinationsOutput", name: "PutWhatsAppBusinessAccountEventDestinationsOutput")
    PutWhatsAppBusinessPublicKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PutWhatsAppBusinessPublicKeyInput", name: "PutWhatsAppBusinessPublicKeyInput")
    PutWhatsAppBusinessPublicKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PutWhatsAppBusinessPublicKeyOutput", name: "PutWhatsAppBusinessPublicKeyOutput")
    RegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.socialmessaging#RegistrationStatus", name: "RegistrationStatus")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:.*:iam::\\d{12}:role\\/[a-zA-Z0-9+=,.@\\-_]+$"})
    S3File = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#S3File", name: "S3File", traits: {"smithy.api#sensitive" => {}})
    S3PresignedUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#S3PresignedUrl", name: "S3PresignedUrl", traits: {"smithy.api#sensitive" => {}})
    SendWhatsAppCallEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#SendWhatsAppCallEventInput", name: "SendWhatsAppCallEventInput")
    SendWhatsAppCallEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#SendWhatsAppCallEventOutput", name: "SendWhatsAppCallEventOutput")
    SendWhatsAppConversionEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#SendWhatsAppConversionEventInput", name: "SendWhatsAppConversionEventInput")
    SendWhatsAppConversionEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#SendWhatsAppConversionEventOutput", name: "SendWhatsAppConversionEventOutput")
    SendWhatsAppMessageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#SendWhatsAppMessageInput", name: "SendWhatsAppMessageInput")
    SendWhatsAppMessageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#SendWhatsAppMessageOutput", name: "SendWhatsAppMessageOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#StringList", name: "StringList")
    SupportedApp = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#SupportedApp", name: "SupportedApp", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SupportedApps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#SupportedApps", name: "SupportedApps")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#TagList", name: "TagList")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#TagResourceInput", name: "TagResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppPhoneNumberResource", "ids" => {"OriginationPhoneNumberId" => "resourceArn"}}, {"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountResource", "ids" => {"WabaId" => "resourceArn"}}]})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#TagResourceOutput", name: "TagResourceOutput")
    TemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#TemplateSummary", name: "TemplateSummary")
    TemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#TemplateSummaryList", name: "TemplateSummaryList")
    ThrottledRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ThrottledRequestException", name: "ThrottledRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TwoFactorPin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#TwoFactorPin", name: "TwoFactorPin", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#sensitive" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UntagResourceInput", name: "UntagResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppPhoneNumberResource", "ids" => {"OriginationPhoneNumberId" => "resourceArn"}}, {"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountResource", "ids" => {"WabaId" => "resourceArn"}}]})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput", name: "UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput")
    UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput", name: "UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput")
    UpdateWhatsAppFlowAssetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppFlowAssetsInput", name: "UpdateWhatsAppFlowAssetsInput")
    UpdateWhatsAppFlowAssetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppFlowAssetsOutput", name: "UpdateWhatsAppFlowAssetsOutput")
    UpdateWhatsAppFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppFlowInput", name: "UpdateWhatsAppFlowInput")
    UpdateWhatsAppFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppFlowOutput", name: "UpdateWhatsAppFlowOutput")
    UpdateWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplateInput", name: "UpdateWhatsAppMessageTemplateInput")
    UpdateWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplateOutput", name: "UpdateWhatsAppMessageTemplateOutput")
    ValidationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#ValidationErrorList", name: "ValidationErrorList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WabaPhoneNumberSetupFinalization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WabaPhoneNumberSetupFinalization", name: "WabaPhoneNumberSetupFinalization")
    WabaPhoneNumberSetupFinalizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WabaPhoneNumberSetupFinalizationList", name: "WabaPhoneNumberSetupFinalizationList")
    WabaSetupFinalization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WabaSetupFinalization", name: "WabaSetupFinalization")
    WhatsAppBusinessAccountEventDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountEventDestination", name: "WhatsAppBusinessAccountEventDestination")
    WhatsAppBusinessAccountEventDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountEventDestinations", name: "WhatsAppBusinessAccountEventDestinations", traits: {"smithy.api#length" => {"max" => 1}})
    WhatsAppBusinessAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountId", name: "WhatsAppBusinessAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WhatsAppBusinessAccountLinkDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountLinkDate", name: "WhatsAppBusinessAccountLinkDate")
    WhatsAppBusinessAccountMarketingMessagesOnboardingStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountMarketingMessagesOnboardingStatus", name: "WhatsAppBusinessAccountMarketingMessagesOnboardingStatus", traits: {"smithy.api#length" => {"max" => 100}})
    WhatsAppBusinessAccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountName", name: "WhatsAppBusinessAccountName", traits: {"smithy.api#length" => {"max" => 200}})
    WhatsAppBusinessScopedUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessScopedUserId", name: "WhatsAppBusinessScopedUserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    WhatsAppCallEventBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallEventBlob", name: "WhatsAppCallEventBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048000}, "smithy.api#sensitive" => {}})
    WhatsAppCallHours = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallHours", name: "WhatsAppCallHours")
    WhatsAppCallIconVisibility = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallIconVisibility", name: "WhatsAppCallIconVisibility", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    WhatsAppCallPermission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallPermission", name: "WhatsAppCallPermission")
    WhatsAppCallPermissionAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallPermissionAction", name: "WhatsAppCallPermissionAction")
    WhatsAppCallPermissionActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallPermissionActionList", name: "WhatsAppCallPermissionActionList")
    WhatsAppCallPermissionActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallPermissionActionName", name: "WhatsAppCallPermissionActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    WhatsAppCallPermissionLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallPermissionLimit", name: "WhatsAppCallPermissionLimit")
    WhatsAppCallPermissionLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallPermissionLimitList", name: "WhatsAppCallPermissionLimitList", traits: {"smithy.api#length" => {"max" => 10}})
    WhatsAppCallPermissionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallPermissionStatus", name: "WhatsAppCallPermissionStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    WhatsAppCallSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallSettings", name: "WhatsAppCallSettings")
    WhatsAppCallbackPermissionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppCallbackPermissionStatus", name: "WhatsAppCallbackPermissionStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    WhatsAppConversionEventBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#WhatsAppConversionEventBlob", name: "WhatsAppConversionEventBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024000}, "smithy.api#sensitive" => {}})
    WhatsAppDatasetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppDatasetId", name: "WhatsAppDatasetId", traits: {"smithy.api#length" => {"min" => 10, "max" => 20}, "smithy.api#pattern" => "^[0-9]+$"})
    WhatsAppDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppDate", name: "WhatsAppDate", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9]{4}-[0-9]{2}-[0-9]{2}$"})
    WhatsAppDayOfWeek = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.socialmessaging#WhatsAppDayOfWeek", name: "WhatsAppDayOfWeek")
    WhatsAppDestinationPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppDestinationPhoneNumber", name: "WhatsAppDestinationPhoneNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^\\+[1-9]\\d{1,14}$", "smithy.api#sensitive" => {}})
    WhatsAppDisplayPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppDisplayPhoneNumber", name: "WhatsAppDisplayPhoneNumber", traits: {"smithy.api#length" => {"max" => 20}})
    WhatsAppHolidayScheduleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppHolidayScheduleEntry", name: "WhatsAppHolidayScheduleEntry")
    WhatsAppHolidayScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppHolidayScheduleList", name: "WhatsAppHolidayScheduleList", traits: {"smithy.api#length" => {"max" => 20}})
    WhatsAppMediaId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppMediaId", name: "WhatsAppMediaId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    WhatsAppMessageBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#WhatsAppMessageBlob", name: "WhatsAppMessageBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048000}, "smithy.api#sensitive" => {}})
    WhatsAppPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumber", name: "WhatsAppPhoneNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WhatsAppPhoneNumberDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberDetail", name: "WhatsAppPhoneNumberDetail")
    WhatsAppPhoneNumberDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberDetailList", name: "WhatsAppPhoneNumberDetailList")
    WhatsAppPhoneNumberId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberId", name: "WhatsAppPhoneNumberId", traits: {"smithy.api#length" => {"min" => 1, "max" => 115}, "smithy.api#pattern" => "(^phone-number-id-.*$)|(^arn:.*:phone-number-id/[0-9a-zA-Z]+$)"})
    WhatsAppPhoneNumberName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberName", name: "WhatsAppPhoneNumberName", traits: {"smithy.api#length" => {"max" => 200}})
    WhatsAppPhoneNumberQualityRating = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberQualityRating", name: "WhatsAppPhoneNumberQualityRating", traits: {"smithy.api#length" => {"max" => 10}})
    WhatsAppPhoneNumberSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberSummary", name: "WhatsAppPhoneNumberSummary")
    WhatsAppPhoneNumberSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberSummaryList", name: "WhatsAppPhoneNumberSummaryList")
    WhatsAppSetupFinalization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppSetupFinalization", name: "WhatsAppSetupFinalization")
    WhatsAppSignupCallback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppSignupCallback", name: "WhatsAppSignupCallback")
    WhatsAppSignupCallbackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppSignupCallbackResult", name: "WhatsAppSignupCallbackResult")
    WhatsAppTimeOfDay = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppTimeOfDay", name: "WhatsAppTimeOfDay")
    WhatsAppWeeklyOperatingHoursEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppWeeklyOperatingHoursEntry", name: "WhatsAppWeeklyOperatingHoursEntry")
    WhatsAppWeeklyOperatingHoursList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppWeeklyOperatingHoursList", name: "WhatsAppWeeklyOperatingHoursList", traits: {"smithy.api#length" => {"max" => 14}})
    ZeroTapTermsAccepted = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#ZeroTapTermsAccepted", name: "ZeroTapTermsAccepted")

    AccessDeniedByMetaException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedByMetaException.type = Types::AccessDeniedByMetaException
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateWhatsAppBusinessAccountInput.add_member(:signup_callback, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppSignupCallback, name: "signupCallback"))
    AssociateWhatsAppBusinessAccountInput.add_member(:setup_finalization, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppSetupFinalization, name: "setupFinalization"))
    AssociateWhatsAppBusinessAccountInput.type = Types::AssociateWhatsAppBusinessAccountInput
    AssociateWhatsAppBusinessAccountOutput.add_member(:signup_callback_result, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppSignupCallbackResult, name: "signupCallbackResult"))
    AssociateWhatsAppBusinessAccountOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "statusCode"))
    AssociateWhatsAppBusinessAccountOutput.add_member(:linked_whats_app_business_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "linkedWhatsAppBusinessAccountId"))
    AssociateWhatsAppBusinessAccountOutput.type = Types::AssociateWhatsAppBusinessAccountOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateWhatsAppDatasetInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    CreateWhatsAppDatasetInput.type = Types::CreateWhatsAppDatasetInput
    CreateWhatsAppDatasetOutput.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDatasetId, name: "datasetId", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppDatasetOutput.type = Types::CreateWhatsAppDatasetOutput
    CreateWhatsAppFlowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    CreateWhatsAppFlowInput.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowName, name: "flowName", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppFlowInput.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowCategoryList, name: "categories", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppFlowInput.add_member(:flow_json, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowJsonBlob, name: "flowJson"))
    CreateWhatsAppFlowInput.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publish"))
    CreateWhatsAppFlowInput.add_member(:clone_flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "cloneFlowId"))
    CreateWhatsAppFlowInput.add_member(:endpoint_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowEndpointUri, name: "endpointUri"))
    CreateWhatsAppFlowInput.type = Types::CreateWhatsAppFlowInput
    CreateWhatsAppFlowOutput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId"))
    CreateWhatsAppFlowOutput.add_member(:validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrorList, name: "validationErrors"))
    CreateWhatsAppFlowOutput.type = Types::CreateWhatsAppFlowOutput
    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:meta_library_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplate, name: "metaLibraryTemplate", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    CreateWhatsAppMessageTemplateFromLibraryInput.type = Types::CreateWhatsAppMessageTemplateFromLibraryInput
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, name: "metaTemplateId"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:template_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateStatus"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, name: "category"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.type = Types::CreateWhatsAppMessageTemplateFromLibraryOutput
    CreateWhatsAppMessageTemplateInput.add_member(:template_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateDefinition, name: "templateDefinition", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    CreateWhatsAppMessageTemplateInput.type = Types::CreateWhatsAppMessageTemplateInput
    CreateWhatsAppMessageTemplateMediaInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    CreateWhatsAppMessageTemplateMediaInput.add_member(:source_s3_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3File, name: "sourceS3File"))
    CreateWhatsAppMessageTemplateMediaInput.type = Types::CreateWhatsAppMessageTemplateMediaInput
    CreateWhatsAppMessageTemplateMediaOutput.add_member(:meta_header_handle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "metaHeaderHandle"))
    CreateWhatsAppMessageTemplateMediaOutput.type = Types::CreateWhatsAppMessageTemplateMediaOutput
    CreateWhatsAppMessageTemplateOutput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, name: "metaTemplateId"))
    CreateWhatsAppMessageTemplateOutput.add_member(:template_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "templateStatus"))
    CreateWhatsAppMessageTemplateOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, name: "category"))
    CreateWhatsAppMessageTemplateOutput.type = Types::CreateWhatsAppMessageTemplateOutput
    DeleteWhatsAppFlowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    DeleteWhatsAppFlowInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#httpQuery" => "flowId", "smithy.api#required" => {}}))
    DeleteWhatsAppFlowInput.type = Types::DeleteWhatsAppFlowInput
    DeleteWhatsAppFlowOutput.type = Types::DeleteWhatsAppFlowOutput
    DeleteWhatsAppMessageMediaInput.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMediaId, name: "mediaId", traits: {"smithy.api#httpQuery" => "mediaId", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#httpQuery" => "originationPhoneNumberId", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    DeleteWhatsAppMessageMediaInput.type = Types::DeleteWhatsAppMessageMediaInput
    DeleteWhatsAppMessageMediaOutput.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "success"))
    DeleteWhatsAppMessageMediaOutput.type = Types::DeleteWhatsAppMessageMediaOutput
    DeleteWhatsAppMessageTemplateInput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, name: "metaTemplateId", traits: {"smithy.api#httpQuery" => "metaTemplateId"}))
    DeleteWhatsAppMessageTemplateInput.add_member(:delete_all_languages, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteAllLanguages, name: "deleteAllLanguages", traits: {"smithy.api#httpQuery" => "deleteAllTemplates"}))
    DeleteWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    DeleteWhatsAppMessageTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, name: "templateName", traits: {"smithy.api#httpQuery" => "templateName", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageTemplateInput.type = Types::DeleteWhatsAppMessageTemplateInput
    DeleteWhatsAppMessageTemplateOutput.type = Types::DeleteWhatsAppMessageTemplateOutput
    DependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DependencyException.type = Types::DependencyException
    DeprecateWhatsAppFlowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    DeprecateWhatsAppFlowInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#required" => {}}))
    DeprecateWhatsAppFlowInput.type = Types::DeprecateWhatsAppFlowInput
    DeprecateWhatsAppFlowOutput.type = Types::DeprecateWhatsAppFlowOutput
    DisassociateWhatsAppBusinessAccountInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    DisassociateWhatsAppBusinessAccountInput.type = Types::DisassociateWhatsAppBusinessAccountInput
    DisassociateWhatsAppBusinessAccountOutput.type = Types::DisassociateWhatsAppBusinessAccountOutput
    Filter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    GetLinkedWhatsAppBusinessAccountInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    GetLinkedWhatsAppBusinessAccountInput.type = Types::GetLinkedWhatsAppBusinessAccountInput
    GetLinkedWhatsAppBusinessAccountOutput.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccount, name: "account"))
    GetLinkedWhatsAppBusinessAccountOutput.type = Types::GetLinkedWhatsAppBusinessAccountOutput
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.type = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberInput
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberDetail, name: "phoneNumber"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:linked_whats_app_business_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "linkedWhatsAppBusinessAccountId"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:call_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallSettings, name: "callSettings"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.type = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput
    GetWhatsAppBusinessPublicKeyInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#httpQuery" => "originationPhoneNumberId", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetWhatsAppBusinessPublicKeyInput.type = Types::GetWhatsAppBusinessPublicKeyInput
    GetWhatsAppBusinessPublicKeyOutput.add_member(:business_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessPublicKeyPem, name: "businessPublicKey"))
    GetWhatsAppBusinessPublicKeyOutput.add_member(:business_public_key_signature_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessPublicKeySignatureStatus, name: "businessPublicKeySignatureStatus"))
    GetWhatsAppBusinessPublicKeyOutput.type = Types::GetWhatsAppBusinessPublicKeyOutput
    GetWhatsAppCallPermissionInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetWhatsAppCallPermissionInput.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDestinationPhoneNumber, name: "destinationPhoneNumber"))
    GetWhatsAppCallPermissionInput.add_member(:end_user_bsuid, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessScopedUserId, name: "endUserBsuid"))
    GetWhatsAppCallPermissionInput.type = Types::GetWhatsAppCallPermissionInput
    GetWhatsAppCallPermissionOutput.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    GetWhatsAppCallPermissionOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallPermissionActionList, name: "actions", traits: {"smithy.api#required" => {}}))
    GetWhatsAppCallPermissionOutput.type = Types::GetWhatsAppCallPermissionOutput
    GetWhatsAppFlowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    GetWhatsAppFlowInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#httpQuery" => "flowId", "smithy.api#required" => {}}))
    GetWhatsAppFlowInput.type = Types::GetWhatsAppFlowInput
    GetWhatsAppFlowOutput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#required" => {}}))
    GetWhatsAppFlowOutput.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowName, name: "flowName", traits: {"smithy.api#required" => {}}))
    GetWhatsAppFlowOutput.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowStatus, name: "flowStatus", traits: {"smithy.api#required" => {}}))
    GetWhatsAppFlowOutput.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowCategoryList, name: "categories"))
    GetWhatsAppFlowOutput.add_member(:validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrorList, name: "validationErrors"))
    GetWhatsAppFlowOutput.add_member(:json_version, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowJsonVersion, name: "jsonVersion"))
    GetWhatsAppFlowOutput.add_member(:data_api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowDataApiVersion, name: "dataApiVersion"))
    GetWhatsAppFlowOutput.add_member(:endpoint_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowEndpointUri, name: "endpointUri"))
    GetWhatsAppFlowOutput.add_member(:preview, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowPreviewInfo, name: "preview"))
    GetWhatsAppFlowOutput.add_member(:whats_app_business_account, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowWhatsAppBusinessAccountInfo, name: "whatsAppBusinessAccount"))
    GetWhatsAppFlowOutput.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowApplicationInfo, name: "application"))
    GetWhatsAppFlowOutput.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowHealthStatus, name: "healthStatus"))
    GetWhatsAppFlowOutput.type = Types::GetWhatsAppFlowOutput
    GetWhatsAppFlowPreviewInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    GetWhatsAppFlowPreviewInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#httpQuery" => "flowId", "smithy.api#required" => {}}))
    GetWhatsAppFlowPreviewInput.add_member(:invalidate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "invalidate", traits: {"smithy.api#httpQuery" => "invalidate"}))
    GetWhatsAppFlowPreviewInput.type = Types::GetWhatsAppFlowPreviewInput
    GetWhatsAppFlowPreviewOutput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#required" => {}}))
    GetWhatsAppFlowPreviewOutput.add_member(:preview, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowPreviewInfo, name: "preview", traits: {"smithy.api#required" => {}}))
    GetWhatsAppFlowPreviewOutput.type = Types::GetWhatsAppFlowPreviewOutput
    GetWhatsAppMessageMediaInput.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMediaId, name: "mediaId", traits: {"smithy.api#required" => {}}))
    GetWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetWhatsAppMessageMediaInput.add_member(:metadata_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "metadataOnly"))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PresignedUrl, name: "destinationS3PresignedUrl"))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3File, name: "destinationS3File"))
    GetWhatsAppMessageMediaInput.type = Types::GetWhatsAppMessageMediaInput
    GetWhatsAppMessageMediaOutput.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mimeType"))
    GetWhatsAppMessageMediaOutput.add_member(:file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "fileSize"))
    GetWhatsAppMessageMediaOutput.type = Types::GetWhatsAppMessageMediaOutput
    GetWhatsAppMessageTemplateInput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, name: "metaTemplateId", traits: {"smithy.api#httpQuery" => "metaTemplateId"}))
    GetWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    GetWhatsAppMessageTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, name: "templateName", traits: {"smithy.api#httpQuery" => "templateName"}))
    GetWhatsAppMessageTemplateInput.add_member(:template_language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, name: "templateLanguageCode", traits: {"smithy.api#httpQuery" => "templateLanguageCode"}))
    GetWhatsAppMessageTemplateInput.type = Types::GetWhatsAppMessageTemplateInput
    GetWhatsAppMessageTemplateOutput.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplate, name: "template"))
    GetWhatsAppMessageTemplateOutput.type = Types::GetWhatsAppMessageTemplateOutput
    Headers.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Headers.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidParametersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidParametersException.type = Types::InvalidParametersException
    LibraryTemplateBodyInputs.add_member(:add_contact_number, ::Smithy::Schema::Shapes::MemberShape.new(target: AddContactNumber, name: "addContactNumber"))
    LibraryTemplateBodyInputs.add_member(:add_learn_more_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AddLearnMoreLink, name: "addLearnMoreLink"))
    LibraryTemplateBodyInputs.add_member(:add_security_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: AddSecurityRecommendation, name: "addSecurityRecommendation"))
    LibraryTemplateBodyInputs.add_member(:add_track_package_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AddTrackPackageLink, name: "addTrackPackageLink"))
    LibraryTemplateBodyInputs.add_member(:code_expiration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeExpirationMinutes, name: "codeExpirationMinutes"))
    LibraryTemplateBodyInputs.type = Types::LibraryTemplateBodyInputs
    LibraryTemplateButtonInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonType, name: "type"))
    LibraryTemplateButtonInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber"))
    LibraryTemplateButtonInput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaUrlWithSuffixExample, name: "url"))
    LibraryTemplateButtonInput.add_member(:otp_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OtpType, name: "otpType"))
    LibraryTemplateButtonInput.add_member(:zero_tap_terms_accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroTapTermsAccepted, name: "zeroTapTermsAccepted"))
    LibraryTemplateButtonInput.add_member(:supported_apps, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApps, name: "supportedApps"))
    LibraryTemplateButtonInput.type = Types::LibraryTemplateButtonInput
    LibraryTemplateButtonList.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonType, name: "type"))
    LibraryTemplateButtonList.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaText, name: "text"))
    LibraryTemplateButtonList.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber"))
    LibraryTemplateButtonList.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaUrl, name: "url"))
    LibraryTemplateButtonList.add_member(:otp_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OtpType, name: "otpType"))
    LibraryTemplateButtonList.add_member(:zero_tap_terms_accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroTapTermsAccepted, name: "zeroTapTermsAccepted"))
    LibraryTemplateButtonList.add_member(:supported_apps, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApps, name: "supportedApps"))
    LibraryTemplateButtonList.type = Types::LibraryTemplateButtonList
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    LinkedAccountWithIncompleteSetup.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, name: "key"))
    LinkedAccountWithIncompleteSetup.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountIdMetaData, name: "value"))
    LinkedWhatsAppBusinessAccount.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountArn, name: "arn", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:waba_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, name: "wabaId", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "registrationStatus", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:link_date, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountLinkDate, name: "linkDate", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:waba_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountName, name: "wabaName", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, name: "eventDestinations", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:marketing_messages_onboarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountMarketingMessagesOnboardingStatus, name: "marketingMessagesOnboardingStatus"))
    LinkedWhatsAppBusinessAccount.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDatasetId, name: "datasetId"))
    LinkedWhatsAppBusinessAccount.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberSummaryList, name: "phoneNumbers", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.type = Types::LinkedWhatsAppBusinessAccount
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountName, name: "accountName"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "registrationStatus"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:unregistered_whats_app_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberDetailList, name: "unregisteredWhatsAppPhoneNumbers"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:waba_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "wabaId"))
    LinkedWhatsAppBusinessAccountIdMetaData.type = Types::LinkedWhatsAppBusinessAccountIdMetaData
    LinkedWhatsAppBusinessAccountSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountArn, name: "arn", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, name: "wabaId", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "registrationStatus", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:link_date, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountLinkDate, name: "linkDate", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountName, name: "wabaName", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, name: "eventDestinations", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:marketing_messages_onboarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountMarketingMessagesOnboardingStatus, name: "marketingMessagesOnboardingStatus"))
    LinkedWhatsAppBusinessAccountSummary.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDatasetId, name: "datasetId"))
    LinkedWhatsAppBusinessAccountSummary.type = Types::LinkedWhatsAppBusinessAccountSummary
    LinkedWhatsAppBusinessAccountSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountSummary, name: "member"))
    ListLinkedWhatsAppBusinessAccountsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLinkedWhatsAppBusinessAccountsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLinkedWhatsAppBusinessAccountsInput.type = Types::ListLinkedWhatsAppBusinessAccountsInput
    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountSummaryList, name: "linkedAccounts"))
    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListLinkedWhatsAppBusinessAccountsOutput.type = Types::ListLinkedWhatsAppBusinessAccountsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "statusCode"))
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWhatsAppFlowAssetsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    ListWhatsAppFlowAssetsInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#httpQuery" => "flowId", "smithy.api#required" => {}}))
    ListWhatsAppFlowAssetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWhatsAppFlowAssetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWhatsAppFlowAssetsInput.type = Types::ListWhatsAppFlowAssetsInput
    ListWhatsAppFlowAssetsOutput.add_member(:flow_assets, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowAssetList, name: "flowAssets", traits: {"smithy.api#required" => {}}))
    ListWhatsAppFlowAssetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWhatsAppFlowAssetsOutput.type = Types::ListWhatsAppFlowAssetsOutput
    ListWhatsAppFlowsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    ListWhatsAppFlowsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWhatsAppFlowsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWhatsAppFlowsInput.type = Types::ListWhatsAppFlowsInput
    ListWhatsAppFlowsOutput.add_member(:flows, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowSummaryList, name: "flows", traits: {"smithy.api#required" => {}}))
    ListWhatsAppFlowsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWhatsAppFlowsOutput.type = Types::ListWhatsAppFlowsOutput
    ListWhatsAppMessageTemplatesInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    ListWhatsAppMessageTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWhatsAppMessageTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWhatsAppMessageTemplatesInput.type = Types::ListWhatsAppMessageTemplatesInput
    ListWhatsAppMessageTemplatesOutput.add_member(:templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummaryList, name: "templates"))
    ListWhatsAppMessageTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWhatsAppMessageTemplatesOutput.type = Types::ListWhatsAppMessageTemplatesOutput
    ListWhatsAppTemplateLibraryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWhatsAppTemplateLibraryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListWhatsAppTemplateLibraryInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    ListWhatsAppTemplateLibraryInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "filters"))
    ListWhatsAppTemplateLibraryInput.type = Types::ListWhatsAppTemplateLibraryInput
    ListWhatsAppTemplateLibraryOutput.add_member(:meta_library_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplatesList, name: "metaLibraryTemplates"))
    ListWhatsAppTemplateLibraryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWhatsAppTemplateLibraryOutput.type = Types::ListWhatsAppTemplateLibraryOutput
    MetaFlowApplicationInfo.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowApplicationLink, name: "link"))
    MetaFlowApplicationInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowApplicationName, name: "name", traits: {"smithy.api#required" => {}}))
    MetaFlowApplicationInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowApplicationId, name: "id", traits: {"smithy.api#required" => {}}))
    MetaFlowApplicationInfo.type = Types::MetaFlowApplicationInfo
    MetaFlowAsset.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowAssetName, name: "name", traits: {"smithy.api#required" => {}}))
    MetaFlowAsset.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowAssetType, name: "assetType", traits: {"smithy.api#required" => {}}))
    MetaFlowAsset.add_member(:download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowAssetDownloadUrl, name: "downloadUrl", traits: {"smithy.api#required" => {}}))
    MetaFlowAsset.type = Types::MetaFlowAsset
    MetaFlowAssetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowAsset, name: "member"))
    MetaFlowCategory.add_member(:sign_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGN_UP", traits: {"smithy.api#enumValue" => "SIGN_UP"}))
    MetaFlowCategory.add_member(:sign_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGN_IN", traits: {"smithy.api#enumValue" => "SIGN_IN"}))
    MetaFlowCategory.add_member(:appointment_booking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPOINTMENT_BOOKING", traits: {"smithy.api#enumValue" => "APPOINTMENT_BOOKING"}))
    MetaFlowCategory.add_member(:lead_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEAD_GENERATION", traits: {"smithy.api#enumValue" => "LEAD_GENERATION"}))
    MetaFlowCategory.add_member(:shopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHOPPING", traits: {"smithy.api#enumValue" => "SHOPPING"}))
    MetaFlowCategory.add_member(:contact_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTACT_US", traits: {"smithy.api#enumValue" => "CONTACT_US"}))
    MetaFlowCategory.add_member(:customer_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_SUPPORT", traits: {"smithy.api#enumValue" => "CUSTOMER_SUPPORT"}))
    MetaFlowCategory.add_member(:survey, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SURVEY", traits: {"smithy.api#enumValue" => "SURVEY"}))
    MetaFlowCategory.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    MetaFlowCategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowCategory, name: "member"))
    MetaFlowHealthEntity.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowHealthEntityType, name: "entityType", traits: {"smithy.api#required" => {}}))
    MetaFlowHealthEntity.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    MetaFlowHealthEntity.add_member(:can_send_message, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowHealthStatusAvailability, name: "canSendMessage", traits: {"smithy.api#required" => {}}))
    MetaFlowHealthEntity.type = Types::MetaFlowHealthEntity
    MetaFlowHealthEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowHealthEntity, name: "member"))
    MetaFlowHealthStatus.add_member(:can_send_message, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowHealthStatusAvailability, name: "canSendMessage", traits: {"smithy.api#required" => {}}))
    MetaFlowHealthStatus.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowHealthEntityList, name: "entities"))
    MetaFlowHealthStatus.type = Types::MetaFlowHealthStatus
    MetaFlowPreviewInfo.add_member(:preview_url, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowPreviewUrl, name: "previewUrl", traits: {"smithy.api#required" => {}}))
    MetaFlowPreviewInfo.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowTimestamp, name: "expiresAt", traits: {"smithy.api#required" => {}}))
    MetaFlowPreviewInfo.type = Types::MetaFlowPreviewInfo
    MetaFlowSummary.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#required" => {}}))
    MetaFlowSummary.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowName, name: "flowName", traits: {"smithy.api#required" => {}}))
    MetaFlowSummary.add_member(:flow_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowStatus, name: "flowStatus", traits: {"smithy.api#required" => {}}))
    MetaFlowSummary.add_member(:flow_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowCategoryList, name: "flowCategories", traits: {"smithy.api#required" => {}}))
    MetaFlowSummary.add_member(:validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrorList, name: "validationErrors", traits: {"smithy.api#required" => {}}))
    MetaFlowSummary.type = Types::MetaFlowSummary
    MetaFlowSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowSummary, name: "member"))
    MetaFlowWhatsAppBusinessAccountInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}}))
    MetaFlowWhatsAppBusinessAccountInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountName, name: "name", traits: {"smithy.api#required" => {}}))
    MetaFlowWhatsAppBusinessAccountInfo.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowWabaCurrency, name: "currency"))
    MetaFlowWhatsAppBusinessAccountInfo.add_member(:timezone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowWabaTimezoneId, name: "timezoneId"))
    MetaFlowWhatsAppBusinessAccountInfo.add_member(:message_template_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowWabaTemplateNamespace, name: "messageTemplateNamespace"))
    MetaFlowWhatsAppBusinessAccountInfo.type = Types::MetaFlowWhatsAppBusinessAccountInfo
    MetaIndustries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaIndustry, name: "member"))
    MetaLibraryTemplate.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, name: "templateName", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:library_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, name: "libraryTemplateName", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, name: "templateCategory", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:template_language, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, name: "templateLanguage", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:library_template_button_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplateButtonInputs, name: "libraryTemplateButtonInputs"))
    MetaLibraryTemplate.add_member(:library_template_body_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryTemplateBodyInputs, name: "libraryTemplateBodyInputs"))
    MetaLibraryTemplate.type = Types::MetaLibraryTemplate
    MetaLibraryTemplateButtonInputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryTemplateButtonInput, name: "member"))
    MetaLibraryTemplateButtonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryTemplateButtonList, name: "member"))
    MetaLibraryTemplateDefinition.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, name: "templateName"))
    MetaLibraryTemplateDefinition.add_member(:template_language, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, name: "templateLanguage"))
    MetaLibraryTemplateDefinition.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, name: "templateCategory"))
    MetaLibraryTemplateDefinition.add_member(:template_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateTopic, name: "templateTopic"))
    MetaLibraryTemplateDefinition.add_member(:template_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateUseCase, name: "templateUseCase"))
    MetaLibraryTemplateDefinition.add_member(:template_industry, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaIndustries, name: "templateIndustry"))
    MetaLibraryTemplateDefinition.add_member(:template_header, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateHeader, name: "templateHeader"))
    MetaLibraryTemplateDefinition.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateBody, name: "templateBody"))
    MetaLibraryTemplateDefinition.add_member(:template_buttons, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplateButtonList, name: "templateButtons"))
    MetaLibraryTemplateDefinition.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, name: "templateId"))
    MetaLibraryTemplateDefinition.add_member(:template_body_example_params, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateBodyExampleParams, name: "templateBodyExampleParams"))
    MetaLibraryTemplateDefinition.type = Types::MetaLibraryTemplateDefinition
    MetaLibraryTemplatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplateDefinition, name: "member"))
    MetaTemplateBodyExampleParams.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    MetaUrlWithSuffixExample.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}}))
    MetaUrlWithSuffixExample.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}}))
    PostWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PresignedUrl, name: "sourceS3PresignedUrl"))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3File, name: "sourceS3File"))
    PostWhatsAppMessageMediaInput.type = Types::PostWhatsAppMessageMediaInput
    PostWhatsAppMessageMediaOutput.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMediaId, name: "mediaId"))
    PostWhatsAppMessageMediaOutput.type = Types::PostWhatsAppMessageMediaOutput
    PublishWhatsAppFlowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    PublishWhatsAppFlowInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#required" => {}}))
    PublishWhatsAppFlowInput.type = Types::PublishWhatsAppFlowInput
    PublishWhatsAppFlowOutput.type = Types::PublishWhatsAppFlowOutput
    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, name: "eventDestinations", traits: {"smithy.api#required" => {}}))
    PutWhatsAppBusinessAccountEventDestinationsInput.type = Types::PutWhatsAppBusinessAccountEventDestinationsInput
    PutWhatsAppBusinessAccountEventDestinationsOutput.type = Types::PutWhatsAppBusinessAccountEventDestinationsOutput
    PutWhatsAppBusinessPublicKeyInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    PutWhatsAppBusinessPublicKeyInput.add_member(:business_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessPublicKeyPem, name: "businessPublicKey"))
    PutWhatsAppBusinessPublicKeyInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    PutWhatsAppBusinessPublicKeyInput.type = Types::PutWhatsAppBusinessPublicKeyInput
    PutWhatsAppBusinessPublicKeyOutput.type = Types::PutWhatsAppBusinessPublicKeyOutput
    RegistrationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RegistrationStatus.add_member(:incomplete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPLETE", traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3File.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$", "smithy.api#required" => {}}))
    S3File.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#required" => {}}))
    S3File.type = Types::S3File
    S3PresignedUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^https://(.*)s3(.*).amazonaws.com/(.*)$", "smithy.api#required" => {}}))
    S3PresignedUrl.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, name: "headers", traits: {"smithy.api#required" => {}}))
    S3PresignedUrl.type = Types::S3PresignedUrl
    SendWhatsAppCallEventInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    SendWhatsAppCallEventInput.add_member(:meta_api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "metaApiVersion", traits: {"smithy.api#required" => {}}))
    SendWhatsAppCallEventInput.add_member(:call_event, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallEventBlob, name: "callEvent", traits: {"smithy.api#required" => {}}))
    SendWhatsAppCallEventInput.type = Types::SendWhatsAppCallEventInput
    SendWhatsAppCallEventOutput.add_member(:call_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "callId", traits: {"smithy.api#required" => {}}))
    SendWhatsAppCallEventOutput.type = Types::SendWhatsAppCallEventOutput
    SendWhatsAppConversionEventInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    SendWhatsAppConversionEventInput.add_member(:dataset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDatasetId, name: "datasetId", traits: {"smithy.api#required" => {}}))
    SendWhatsAppConversionEventInput.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppConversionEventBlob, name: "eventData", traits: {"smithy.api#required" => {}}))
    SendWhatsAppConversionEventInput.type = Types::SendWhatsAppConversionEventInput
    SendWhatsAppConversionEventOutput.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "requestId", traits: {"smithy.api#required" => {}}))
    SendWhatsAppConversionEventOutput.type = Types::SendWhatsAppConversionEventOutput
    SendWhatsAppMessageInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    SendWhatsAppMessageInput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageBlob, name: "message", traits: {"smithy.api#required" => {}}))
    SendWhatsAppMessageInput.add_member(:meta_api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "metaApiVersion", traits: {"smithy.api#required" => {}}))
    SendWhatsAppMessageInput.type = Types::SendWhatsAppMessageInput
    SendWhatsAppMessageOutput.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "messageId"))
    SendWhatsAppMessageOutput.type = Types::SendWhatsAppMessageOutput
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SupportedApp.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}}))
    SupportedApp.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    SupportedApps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApp, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"max" => 256}}))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"aws.api#data" => "tagging", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "statusCode"))
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateSummary.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, name: "templateName"))
    TemplateSummary.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, name: "metaTemplateId"))
    TemplateSummary.add_member(:template_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateStatus, name: "templateStatus"))
    TemplateSummary.add_member(:template_quality_score, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateQualityScore, name: "templateQualityScore"))
    TemplateSummary.add_member(:template_language, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, name: "templateLanguage"))
    TemplateSummary.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, name: "templateCategory"))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummary, name: "member"))
    ThrottledRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottledRequestException.type = Types::ThrottledRequestException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"aws.api#data" => "tagging", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "statusCode"))
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput.add_member(:call_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallSettings, name: "callSettings", traits: {"smithy.api#required" => {}}))
    UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput.type = Types::UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput
    UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "phoneNumberId", traits: {"smithy.api#required" => {}}))
    UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput.type = Types::UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput
    UpdateWhatsAppFlowAssetsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    UpdateWhatsAppFlowAssetsInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#required" => {}}))
    UpdateWhatsAppFlowAssetsInput.add_member(:flow_json, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowJsonBlob, name: "flowJson", traits: {"smithy.api#required" => {}}))
    UpdateWhatsAppFlowAssetsInput.type = Types::UpdateWhatsAppFlowAssetsInput
    UpdateWhatsAppFlowAssetsOutput.add_member(:validation_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrorList, name: "validationErrors"))
    UpdateWhatsAppFlowAssetsOutput.type = Types::UpdateWhatsAppFlowAssetsOutput
    UpdateWhatsAppFlowInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    UpdateWhatsAppFlowInput.add_member(:flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowId, name: "flowId", traits: {"smithy.api#required" => {}}))
    UpdateWhatsAppFlowInput.add_member(:flow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowName, name: "flowName"))
    UpdateWhatsAppFlowInput.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowCategoryList, name: "categories"))
    UpdateWhatsAppFlowInput.add_member(:endpoint_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowEndpointUri, name: "endpointUri"))
    UpdateWhatsAppFlowInput.add_member(:meta_app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowApplicationId, name: "metaAppId"))
    UpdateWhatsAppFlowInput.type = Types::UpdateWhatsAppFlowInput
    UpdateWhatsAppFlowOutput.type = Types::UpdateWhatsAppFlowOutput
    UpdateWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    UpdateWhatsAppMessageTemplateInput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, name: "metaTemplateId"))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, name: "templateName"))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, name: "templateLanguageCode"))
    UpdateWhatsAppMessageTemplateInput.add_member(:parameter_format, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaParameterFormat, name: "parameterFormat"))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, name: "templateCategory"))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_components, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateComponents, name: "templateComponents"))
    UpdateWhatsAppMessageTemplateInput.add_member(:cta_url_link_tracking_opted_out, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCtaLinkTrackingOptedOut, name: "ctaUrlLinkTrackingOptedOut"))
    UpdateWhatsAppMessageTemplateInput.type = Types::UpdateWhatsAppMessageTemplateInput
    UpdateWhatsAppMessageTemplateOutput.type = Types::UpdateWhatsAppMessageTemplateOutput
    ValidationErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaFlowValidationError, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    WabaPhoneNumberSetupFinalization.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumber, name: "id", traits: {"smithy.api#required" => {}}))
    WabaPhoneNumberSetupFinalization.add_member(:two_factor_pin, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoFactorPin, name: "twoFactorPin", traits: {"smithy.api#required" => {}}))
    WabaPhoneNumberSetupFinalization.add_member(:data_localization_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "dataLocalizationRegion"))
    WabaPhoneNumberSetupFinalization.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    WabaPhoneNumberSetupFinalization.type = Types::WabaPhoneNumberSetupFinalization
    WabaPhoneNumberSetupFinalizationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WabaPhoneNumberSetupFinalization, name: "member"))
    WabaSetupFinalization.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, name: "id"))
    WabaSetupFinalization.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, name: "eventDestinations"))
    WabaSetupFinalization.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    WabaSetupFinalization.type = Types::WabaSetupFinalization
    WhatsAppBusinessAccountEventDestination.add_member(:event_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationArn, name: "eventDestinationArn", traits: {"smithy.api#required" => {}}))
    WhatsAppBusinessAccountEventDestination.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    WhatsAppBusinessAccountEventDestination.type = Types::WhatsAppBusinessAccountEventDestination
    WhatsAppBusinessAccountEventDestinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestination, name: "member"))
    WhatsAppCallHours.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    WhatsAppCallHours.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: IanaTimezone, name: "timezone", traits: {"smithy.api#required" => {}}))
    WhatsAppCallHours.add_member(:weekly_operating_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppWeeklyOperatingHoursList, name: "weeklyOperatingHours", traits: {"smithy.api#required" => {}}))
    WhatsAppCallHours.add_member(:holiday_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppHolidayScheduleList, name: "holidaySchedule"))
    WhatsAppCallHours.type = Types::WhatsAppCallHours
    WhatsAppCallPermission.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallPermissionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    WhatsAppCallPermission.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expirationTime"))
    WhatsAppCallPermission.type = Types::WhatsAppCallPermission
    WhatsAppCallPermissionAction.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallPermissionActionName, name: "actionName", traits: {"smithy.api#required" => {}}))
    WhatsAppCallPermissionAction.add_member(:can_perform_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "canPerformAction", traits: {"smithy.api#required" => {}}))
    WhatsAppCallPermissionAction.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallPermissionLimitList, name: "limits", traits: {"smithy.api#required" => {}}))
    WhatsAppCallPermissionAction.type = Types::WhatsAppCallPermissionAction
    WhatsAppCallPermissionActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallPermissionAction, name: "member"))
    WhatsAppCallPermissionLimit.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Duration, name: "timePeriod", traits: {"smithy.api#required" => {}}))
    WhatsAppCallPermissionLimit.add_member(:max_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxAllowed", traits: {"smithy.api#required" => {}}))
    WhatsAppCallPermissionLimit.add_member(:current_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "currentUsage", traits: {"smithy.api#required" => {}}))
    WhatsAppCallPermissionLimit.add_member(:limit_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "limitExpirationTime"))
    WhatsAppCallPermissionLimit.type = Types::WhatsAppCallPermissionLimit
    WhatsAppCallPermissionLimitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallPermissionLimit, name: "member"))
    WhatsAppCallSettings.add_member(:call_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "callEnabled", traits: {"smithy.api#required" => {}}))
    WhatsAppCallSettings.add_member(:call_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallHours, name: "callHours"))
    WhatsAppCallSettings.add_member(:call_icon_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallIconVisibility, name: "callIconVisibility"))
    WhatsAppCallSettings.add_member(:callback_permission_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppCallbackPermissionStatus, name: "callbackPermissionStatus"))
    WhatsAppCallSettings.type = Types::WhatsAppCallSettings
    WhatsAppDayOfWeek.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    WhatsAppDayOfWeek.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    WhatsAppDayOfWeek.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    WhatsAppDayOfWeek.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    WhatsAppDayOfWeek.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    WhatsAppDayOfWeek.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    WhatsAppDayOfWeek.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    WhatsAppHolidayScheduleEntry.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDate, name: "date", traits: {"smithy.api#required" => {}}))
    WhatsAppHolidayScheduleEntry.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppTimeOfDay, name: "startTime", traits: {"smithy.api#required" => {}}))
    WhatsAppHolidayScheduleEntry.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppTimeOfDay, name: "endTime", traits: {"smithy.api#required" => {}}))
    WhatsAppHolidayScheduleEntry.type = Types::WhatsAppHolidayScheduleEntry
    WhatsAppHolidayScheduleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppHolidayScheduleEntry, name: "member"))
    WhatsAppPhoneNumberDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppPhoneNumberArn, name: "arn", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "phoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:meta_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumber, name: "metaPhoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberName, name: "displayPhoneNumberName", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDisplayPhoneNumber, name: "displayPhoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:quality_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberQualityRating, name: "qualityRating", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:data_localization_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "dataLocalizationRegion"))
    WhatsAppPhoneNumberDetail.type = Types::WhatsAppPhoneNumberDetail
    WhatsAppPhoneNumberDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberDetail, name: "member"))
    WhatsAppPhoneNumberSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppPhoneNumberArn, name: "arn", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, name: "phoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:meta_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumber, name: "metaPhoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberName, name: "displayPhoneNumberName", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDisplayPhoneNumber, name: "displayPhoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:quality_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberQualityRating, name: "qualityRating", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:data_localization_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, name: "dataLocalizationRegion"))
    WhatsAppPhoneNumberSummary.type = Types::WhatsAppPhoneNumberSummary
    WhatsAppPhoneNumberSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberSummary, name: "member"))
    WhatsAppSetupFinalization.add_member(:associate_in_progress_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateInProgressToken, name: "associateInProgressToken", traits: {"smithy.api#required" => {}}))
    WhatsAppSetupFinalization.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: WabaPhoneNumberSetupFinalizationList, name: "phoneNumbers", traits: {"smithy.api#required" => {}}))
    WhatsAppSetupFinalization.add_member(:phone_number_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, name: "phoneNumberParent"))
    WhatsAppSetupFinalization.add_member(:waba, ::Smithy::Schema::Shapes::MemberShape.new(target: WabaSetupFinalization, name: "waba"))
    WhatsAppSetupFinalization.type = Types::WhatsAppSetupFinalization
    WhatsAppSignupCallback.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accessToken", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#required" => {}}))
    WhatsAppSignupCallback.add_member(:callback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "callbackUrl", traits: {"smithy.api#length" => {"max" => 100}}))
    WhatsAppSignupCallback.type = Types::WhatsAppSignupCallback
    WhatsAppSignupCallbackResult.add_member(:associate_in_progress_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateInProgressToken, name: "associateInProgressToken"))
    WhatsAppSignupCallbackResult.add_member(:linked_accounts_with_incomplete_setup, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountWithIncompleteSetup, name: "linkedAccountsWithIncompleteSetup"))
    WhatsAppSignupCallbackResult.type = Types::WhatsAppSignupCallbackResult
    WhatsAppTimeOfDay.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "hours", traits: {"smithy.api#range" => {"min" => 0, "max" => 23}, "smithy.api#required" => {}}))
    WhatsAppTimeOfDay.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minutes", traits: {"smithy.api#range" => {"min" => 0, "max" => 59}, "smithy.api#required" => {}}))
    WhatsAppTimeOfDay.type = Types::WhatsAppTimeOfDay
    WhatsAppWeeklyOperatingHoursEntry.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDayOfWeek, name: "dayOfWeek", traits: {"smithy.api#required" => {}}))
    WhatsAppWeeklyOperatingHoursEntry.add_member(:open_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppTimeOfDay, name: "openTime", traits: {"smithy.api#required" => {}}))
    WhatsAppWeeklyOperatingHoursEntry.add_member(:close_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppTimeOfDay, name: "closeTime", traits: {"smithy.api#required" => {}}))
    WhatsAppWeeklyOperatingHoursEntry.type = Types::WhatsAppWeeklyOperatingHoursEntry
    WhatsAppWeeklyOperatingHoursList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppWeeklyOperatingHoursEntry, name: "member"))

    SocialMessaging = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.socialmessaging#SocialMessaging"
      service.name = "SocialMessaging"
      service.version = "2024-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SocialMessaging", "arnNamespace" => "social-messaging", "cloudTrailEventSource" => "social-messaging.amazonaws.com", "endpointPrefix" => "social-messaging"}, "aws.auth#sigv4" => {"name" => "social-messaging"}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["authorization", "x-amz-date", "x-amz-security-token", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "content-length", "x-api-key", "amz-sdk-request", "amz-sdk-invocation-id", "Csrf-Token"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "Csrf-Token"]}, "smithy.api#title" => "AWS End User Messaging Social", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://social-messaging-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://social-messaging-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://social-messaging.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://social-messaging.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_whats_app_business_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#AssociateWhatsAppBusinessAccount"
        operation.name = "AssociateWhatsAppBusinessAccount"
        operation.input = AssociateWhatsAppBusinessAccountInput
        operation.output = AssociateWhatsAppBusinessAccountOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << DependencyException
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ThrottledRequestException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/signup", "code" => 200}}
      end)
      service.add_operation(:create_whats_app_dataset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppDataset"
        operation.name = "CreateWhatsAppDataset"
        operation.input = CreateWhatsAppDatasetInput
        operation.output = CreateWhatsAppDatasetOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/waba/dataset", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_whats_app_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppFlow"
        operation.name = "CreateWhatsAppFlow"
        operation.input = CreateWhatsAppFlowInput
        operation.output = CreateWhatsAppFlowOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/flow/create", "code" => 200}}
      end)
      service.add_operation(:create_whats_app_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplate"
        operation.name = "CreateWhatsAppMessageTemplate"
        operation.input = CreateWhatsAppMessageTemplateInput
        operation.output = CreateWhatsAppMessageTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/put", "code" => 200}}
      end)
      service.add_operation(:create_whats_app_message_template_from_library, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibrary"
        operation.name = "CreateWhatsAppMessageTemplateFromLibrary"
        operation.input = CreateWhatsAppMessageTemplateFromLibraryInput
        operation.output = CreateWhatsAppMessageTemplateFromLibraryOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/create", "code" => 200}}
      end)
      service.add_operation(:create_whats_app_message_template_media, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMedia"
        operation.name = "CreateWhatsAppMessageTemplateMedia"
        operation.input = CreateWhatsAppMessageTemplateMediaInput
        operation.output = CreateWhatsAppMessageTemplateMediaOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/media", "code" => 200}}
      end)
      service.add_operation(:delete_whats_app_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DeleteWhatsAppFlow"
        operation.name = "DeleteWhatsAppFlow"
        operation.input = DeleteWhatsAppFlowInput
        operation.output = DeleteWhatsAppFlowOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/flow", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_whats_app_message_media, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DeleteWhatsAppMessageMedia"
        operation.name = "DeleteWhatsAppMessageMedia"
        operation.input = DeleteWhatsAppMessageMediaInput
        operation.output = DeleteWhatsAppMessageMediaOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/media", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_whats_app_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplate"
        operation.name = "DeleteWhatsAppMessageTemplate"
        operation.input = DeleteWhatsAppMessageTemplateInput
        operation.output = DeleteWhatsAppMessageTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/template", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deprecate_whats_app_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DeprecateWhatsAppFlow"
        operation.name = "DeprecateWhatsAppFlow"
        operation.input = DeprecateWhatsAppFlowInput
        operation.output = DeprecateWhatsAppFlowOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/flow/deprecate", "code" => 200}}
      end)
      service.add_operation(:disassociate_whats_app_business_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccount"
        operation.name = "DisassociateWhatsAppBusinessAccount"
        operation.input = DisassociateWhatsAppBusinessAccountInput
        operation.output = DisassociateWhatsAppBusinessAccountOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << DependencyException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/waba/disassociate", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_linked_whats_app_business_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccount"
        operation.name = "GetLinkedWhatsAppBusinessAccount"
        operation.input = GetLinkedWhatsAppBusinessAccountInput
        operation.output = GetLinkedWhatsAppBusinessAccountOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/waba/details", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_linked_whats_app_business_account_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumber"
        operation.name = "GetLinkedWhatsAppBusinessAccountPhoneNumber"
        operation.input = GetLinkedWhatsAppBusinessAccountPhoneNumberInput
        operation.output = GetLinkedWhatsAppBusinessAccountPhoneNumberOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/waba/phone/details", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_whats_app_business_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppBusinessPublicKey"
        operation.name = "GetWhatsAppBusinessPublicKey"
        operation.input = GetWhatsAppBusinessPublicKeyInput
        operation.output = GetWhatsAppBusinessPublicKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/business-public-key", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_whats_app_call_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppCallPermission"
        operation.name = "GetWhatsAppCallPermission"
        operation.input = GetWhatsAppCallPermissionInput
        operation.output = GetWhatsAppCallPermissionOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/call/permission/get", "code" => 200}}
      end)
      service.add_operation(:get_whats_app_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppFlow"
        operation.name = "GetWhatsAppFlow"
        operation.input = GetWhatsAppFlowInput
        operation.output = GetWhatsAppFlowOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/flow", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_whats_app_flow_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppFlowPreview"
        operation.name = "GetWhatsAppFlowPreview"
        operation.input = GetWhatsAppFlowPreviewInput
        operation.output = GetWhatsAppFlowPreviewOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/flow/preview", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_whats_app_message_media, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppMessageMedia"
        operation.name = "GetWhatsAppMessageMedia"
        operation.input = GetWhatsAppMessageMediaInput
        operation.output = GetWhatsAppMessageMediaOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/media/get", "code" => 200}}
      end)
      service.add_operation(:get_whats_app_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppMessageTemplate"
        operation.name = "GetWhatsAppMessageTemplate"
        operation.input = GetWhatsAppMessageTemplateInput
        operation.output = GetWhatsAppMessageTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/template", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_linked_whats_app_business_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccounts"
        operation.name = "ListLinkedWhatsAppBusinessAccounts"
        operation.input = ListLinkedWhatsAppBusinessAccountsInput
        operation.output = ListLinkedWhatsAppBusinessAccountsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/waba/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLinkedWhatsAppBusinessAccounts.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/list", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsFailure", "params" => {"resourceArn" => "arn:aws:social-messaging:us-east-1:9923825:phone-number-id/45c1973a7577"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_whats_app_flow_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListWhatsAppFlowAssets"
        operation.name = "ListWhatsAppFlowAssets"
        operation.input = ListWhatsAppFlowAssetsInput
        operation.output = ListWhatsAppFlowAssetsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/flow/assets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWhatsAppFlowAssets.new
      end)
      service.add_operation(:list_whats_app_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListWhatsAppFlows"
        operation.name = "ListWhatsAppFlows"
        operation.input = ListWhatsAppFlowsInput
        operation.output = ListWhatsAppFlowsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/flow/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWhatsAppFlows.new
      end)
      service.add_operation(:list_whats_app_message_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListWhatsAppMessageTemplates"
        operation.name = "ListWhatsAppMessageTemplates"
        operation.input = ListWhatsAppMessageTemplatesInput
        operation.output = ListWhatsAppMessageTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/template/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWhatsAppMessageTemplates.new
      end)
      service.add_operation(:list_whats_app_template_library, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListWhatsAppTemplateLibrary"
        operation.name = "ListWhatsAppTemplateLibrary"
        operation.input = ListWhatsAppTemplateLibraryInput
        operation.output = ListWhatsAppTemplateLibraryOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/library", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWhatsAppTemplateLibrary.new
      end)
      service.add_operation(:post_whats_app_message_media, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#PostWhatsAppMessageMedia"
        operation.name = "PostWhatsAppMessageMedia"
        operation.input = PostWhatsAppMessageMediaInput
        operation.output = PostWhatsAppMessageMediaOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/media", "code" => 200}}
      end)
      service.add_operation(:publish_whats_app_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#PublishWhatsAppFlow"
        operation.name = "PublishWhatsAppFlow"
        operation.input = PublishWhatsAppFlowInput
        operation.output = PublishWhatsAppFlowOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/flow/publish", "code" => 200}}
      end)
      service.add_operation(:put_whats_app_business_account_event_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinations"
        operation.name = "PutWhatsAppBusinessAccountEventDestinations"
        operation.input = PutWhatsAppBusinessAccountEventDestinationsInput
        operation.output = PutWhatsAppBusinessAccountEventDestinationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ThrottledRequestException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/whatsapp/waba/eventdestinations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_whats_app_business_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#PutWhatsAppBusinessPublicKey"
        operation.name = "PutWhatsAppBusinessPublicKey"
        operation.input = PutWhatsAppBusinessPublicKeyInput
        operation.output = PutWhatsAppBusinessPublicKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/whatsapp/business-public-key", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_whats_app_call_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#SendWhatsAppCallEvent"
        operation.name = "SendWhatsAppCallEvent"
        operation.input = SendWhatsAppCallEventInput
        operation.output = SendWhatsAppCallEventOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << ConflictException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/call/event", "code" => 200}}
      end)
      service.add_operation(:send_whats_app_conversion_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#SendWhatsAppConversionEvent"
        operation.name = "SendWhatsAppConversionEvent"
        operation.input = SendWhatsAppConversionEventInput
        operation.output = SendWhatsAppConversionEventOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/waba/dataset/events", "code" => 200}}
      end)
      service.add_operation(:send_whats_app_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#SendWhatsAppMessage"
        operation.name = "SendWhatsAppMessage"
        operation.input = SendWhatsAppMessageInput
        operation.output = SendWhatsAppMessageOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/send", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ThrottledRequestException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/tag-resource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ThrottledRequestException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/untag-resource", "code" => 200}}
      end)
      service.add_operation(:update_linked_whats_app_business_account_phone_number, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UpdateLinkedWhatsAppBusinessAccountPhoneNumber"
        operation.name = "UpdateLinkedWhatsAppBusinessAccountPhoneNumber"
        operation.input = UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput
        operation.output = UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/whatsapp/waba/phone", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_whats_app_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UpdateWhatsAppFlow"
        operation.name = "UpdateWhatsAppFlow"
        operation.input = UpdateWhatsAppFlowInput
        operation.output = UpdateWhatsAppFlowOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/flow/update", "code" => 200}}
      end)
      service.add_operation(:update_whats_app_flow_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UpdateWhatsAppFlowAssets"
        operation.name = "UpdateWhatsAppFlowAssets"
        operation.input = UpdateWhatsAppFlowAssetsInput
        operation.output = UpdateWhatsAppFlowAssetsOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/flow/assets/update", "code" => 200}}
      end)
      service.add_operation(:update_whats_app_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplate"
        operation.name = "UpdateWhatsAppMessageTemplate"
        operation.input = UpdateWhatsAppMessageTemplateInput
        operation.output = UpdateWhatsAppMessageTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.errors << AccessDeniedByMetaException
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template", "code" => 200}}
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

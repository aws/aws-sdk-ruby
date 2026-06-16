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
    ButtonType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#ButtonType", name: "ButtonType", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    CodeExpirationMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.socialmessaging#CodeExpirationMinutes", name: "CodeExpirationMinutes")
    CreateWhatsAppMessageTemplateFromLibraryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibraryInput", name: "CreateWhatsAppMessageTemplateFromLibraryInput")
    CreateWhatsAppMessageTemplateFromLibraryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibraryOutput", name: "CreateWhatsAppMessageTemplateFromLibraryOutput")
    CreateWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateInput", name: "CreateWhatsAppMessageTemplateInput")
    CreateWhatsAppMessageTemplateMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMediaInput", name: "CreateWhatsAppMessageTemplateMediaInput")
    CreateWhatsAppMessageTemplateMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMediaOutput", name: "CreateWhatsAppMessageTemplateMediaOutput")
    CreateWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateOutput", name: "CreateWhatsAppMessageTemplateOutput")
    DeleteAllLanguages = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#DeleteAllLanguages", name: "DeleteAllLanguages")
    DeleteWhatsAppMessageMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageMediaInput", name: "DeleteWhatsAppMessageMediaInput")
    DeleteWhatsAppMessageMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageMediaOutput", name: "DeleteWhatsAppMessageMediaOutput")
    DeleteWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplateInput", name: "DeleteWhatsAppMessageTemplateInput")
    DeleteWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplateOutput", name: "DeleteWhatsAppMessageTemplateOutput")
    DependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DependencyException", name: "DependencyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#retryable" => {}})
    DisassociateWhatsAppBusinessAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccountInput", name: "DisassociateWhatsAppBusinessAccountInput")
    DisassociateWhatsAppBusinessAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccountOutput", name: "DisassociateWhatsAppBusinessAccountOutput")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#ErrorMessage", name: "ErrorMessage")
    EventDestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#EventDestinationArn", name: "EventDestinationArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:[a-z-]+([/:](.*))?$"})
    Filter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#Filter", name: "Filter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GetLinkedWhatsAppBusinessAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountInput", name: "GetLinkedWhatsAppBusinessAccountInput")
    GetLinkedWhatsAppBusinessAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountOutput", name: "GetLinkedWhatsAppBusinessAccountOutput")
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumberInput", name: "GetLinkedWhatsAppBusinessAccountPhoneNumberInput")
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumberOutput", name: "GetLinkedWhatsAppBusinessAccountPhoneNumberOutput")
    GetWhatsAppMessageMediaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageMediaInput", name: "GetWhatsAppMessageMediaInput")
    GetWhatsAppMessageMediaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageMediaOutput", name: "GetWhatsAppMessageMediaOutput")
    GetWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageTemplateInput", name: "GetWhatsAppMessageTemplateInput")
    GetWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#GetWhatsAppMessageTemplateOutput", name: "GetWhatsAppMessageTemplateOutput")
    Headers = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#Headers", name: "Headers")
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidParametersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#InvalidParametersException", name: "InvalidParametersException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsoCountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#IsoCountryCode", name: "IsoCountryCode", traits: {"smithy.api#pattern" => "^[A-Z]{2}$"})
    LibraryTemplateBodyInputs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LibraryTemplateBodyInputs", name: "LibraryTemplateBodyInputs")
    LibraryTemplateButtonInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LibraryTemplateButtonInput", name: "LibraryTemplateButtonInput")
    LibraryTemplateButtonList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LibraryTemplateButtonList", name: "LibraryTemplateButtonList")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkedAccountWithIncompleteSetup = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.socialmessaging#LinkedAccountWithIncompleteSetup", name: "LinkedAccountWithIncompleteSetup")
    LinkedWhatsAppBusinessAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccount", name: "LinkedWhatsAppBusinessAccount")
    LinkedWhatsAppBusinessAccountArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountArn", name: "LinkedWhatsAppBusinessAccountArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:waba/[0-9a-zA-Z]+$"})
    LinkedWhatsAppBusinessAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountId", name: "LinkedWhatsAppBusinessAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "(^waba-.*$)|(^arn:.*:waba/[0-9a-zA-Z]+$)"})
    LinkedWhatsAppBusinessAccountIdMetaData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountIdMetaData", name: "LinkedWhatsAppBusinessAccountIdMetaData")
    LinkedWhatsAppBusinessAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountSummary", name: "LinkedWhatsAppBusinessAccountSummary")
    LinkedWhatsAppBusinessAccountSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountSummaryList", name: "LinkedWhatsAppBusinessAccountSummaryList")
    LinkedWhatsAppPhoneNumberArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#LinkedWhatsAppPhoneNumberArn", name: "LinkedWhatsAppPhoneNumberArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:phone-number-id/[0-9a-zA-Z]+$"})
    ListLinkedWhatsAppBusinessAccountsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccountsInput", name: "ListLinkedWhatsAppBusinessAccountsInput")
    ListLinkedWhatsAppBusinessAccountsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccountsOutput", name: "ListLinkedWhatsAppBusinessAccountsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListWhatsAppMessageTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppMessageTemplatesInput", name: "ListWhatsAppMessageTemplatesInput")
    ListWhatsAppMessageTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppMessageTemplatesOutput", name: "ListWhatsAppMessageTemplatesOutput")
    ListWhatsAppTemplateLibraryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppTemplateLibraryInput", name: "ListWhatsAppTemplateLibraryInput")
    ListWhatsAppTemplateLibraryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ListWhatsAppTemplateLibraryOutput", name: "ListWhatsAppTemplateLibraryOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.socialmessaging#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetaIndustries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaIndustries", name: "MetaIndustries")
    MetaIndustry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaIndustry", name: "MetaIndustry", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    MetaLibraryTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplate", name: "MetaLibraryTemplate")
    MetaLibraryTemplateButtonInputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplateButtonInputs", name: "MetaLibraryTemplateButtonInputs")
    MetaLibraryTemplateButtonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplateButtonList", name: "MetaLibraryTemplateButtonList")
    MetaLibraryTemplateDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplateDefinition", name: "MetaLibraryTemplateDefinition")
    MetaLibraryTemplatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#MetaLibraryTemplatesList", name: "MetaLibraryTemplatesList")
    MetaTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplate", name: "MetaTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}})
    MetaTemplateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateBody", name: "MetaTemplateBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MetaTemplateCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateCategory", name: "MetaTemplateCategory", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetaTemplateComponents = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#MetaTemplateComponents", name: "MetaTemplateComponents", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
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
    PutWhatsAppBusinessAccountEventDestinationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinationsInput", name: "PutWhatsAppBusinessAccountEventDestinationsInput")
    PutWhatsAppBusinessAccountEventDestinationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinationsOutput", name: "PutWhatsAppBusinessAccountEventDestinationsOutput")
    RegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.socialmessaging#RegistrationStatus", name: "RegistrationStatus")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role\\/[a-zA-Z0-9+=,.@\\-_]+$"})
    S3File = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#S3File", name: "S3File", traits: {"smithy.api#sensitive" => {}})
    S3PresignedUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#S3PresignedUrl", name: "S3PresignedUrl", traits: {"smithy.api#sensitive" => {}})
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
    UpdateWhatsAppMessageTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplateInput", name: "UpdateWhatsAppMessageTemplateInput")
    UpdateWhatsAppMessageTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplateOutput", name: "UpdateWhatsAppMessageTemplateOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WabaPhoneNumberSetupFinalization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WabaPhoneNumberSetupFinalization", name: "WabaPhoneNumberSetupFinalization")
    WabaPhoneNumberSetupFinalizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WabaPhoneNumberSetupFinalizationList", name: "WabaPhoneNumberSetupFinalizationList")
    WabaSetupFinalization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WabaSetupFinalization", name: "WabaSetupFinalization")
    WhatsAppBusinessAccountEventDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountEventDestination", name: "WhatsAppBusinessAccountEventDestination")
    WhatsAppBusinessAccountEventDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountEventDestinations", name: "WhatsAppBusinessAccountEventDestinations", traits: {"smithy.api#length" => {"max" => 1}})
    WhatsAppBusinessAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountId", name: "WhatsAppBusinessAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WhatsAppBusinessAccountLinkDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountLinkDate", name: "WhatsAppBusinessAccountLinkDate")
    WhatsAppBusinessAccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppBusinessAccountName", name: "WhatsAppBusinessAccountName", traits: {"smithy.api#length" => {"max" => 200}})
    WhatsAppDisplayPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppDisplayPhoneNumber", name: "WhatsAppDisplayPhoneNumber", traits: {"smithy.api#length" => {"max" => 20}})
    WhatsAppMediaId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppMediaId", name: "WhatsAppMediaId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    WhatsAppMessageBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.socialmessaging#WhatsAppMessageBlob", name: "WhatsAppMessageBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048000}, "smithy.api#sensitive" => {}})
    WhatsAppPhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumber", name: "WhatsAppPhoneNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WhatsAppPhoneNumberDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberDetail", name: "WhatsAppPhoneNumberDetail")
    WhatsAppPhoneNumberDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberDetailList", name: "WhatsAppPhoneNumberDetailList")
    WhatsAppPhoneNumberId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberId", name: "WhatsAppPhoneNumberId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "(^phone-number-id-.*$)|(^arn:.*:phone-number-id/[0-9a-zA-Z]+$)"})
    WhatsAppPhoneNumberName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberName", name: "WhatsAppPhoneNumberName", traits: {"smithy.api#length" => {"max" => 200}})
    WhatsAppPhoneNumberQualityRating = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberQualityRating", name: "WhatsAppPhoneNumberQualityRating", traits: {"smithy.api#length" => {"max" => 10}})
    WhatsAppPhoneNumberSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberSummary", name: "WhatsAppPhoneNumberSummary")
    WhatsAppPhoneNumberSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.socialmessaging#WhatsAppPhoneNumberSummaryList", name: "WhatsAppPhoneNumberSummaryList")
    WhatsAppSetupFinalization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppSetupFinalization", name: "WhatsAppSetupFinalization")
    WhatsAppSignupCallback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppSignupCallback", name: "WhatsAppSignupCallback")
    WhatsAppSignupCallbackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.socialmessaging#WhatsAppSignupCallbackResult", name: "WhatsAppSignupCallbackResult")
    ZeroTapTermsAccepted = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.socialmessaging#ZeroTapTermsAccepted", name: "ZeroTapTermsAccepted")

    AccessDeniedByMetaException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    AccessDeniedByMetaException.type = Types::AccessDeniedByMetaException
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateWhatsAppBusinessAccountInput.add_member(:signup_callback, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppSignupCallback, location_name: "signupCallback"))
    AssociateWhatsAppBusinessAccountInput.add_member(:setup_finalization, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppSetupFinalization, location_name: "setupFinalization"))
    AssociateWhatsAppBusinessAccountInput.type = Types::AssociateWhatsAppBusinessAccountInput
    AssociateWhatsAppBusinessAccountOutput.add_member(:signup_callback_result, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppSignupCallbackResult, location_name: "signupCallbackResult"))
    AssociateWhatsAppBusinessAccountOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode"))
    AssociateWhatsAppBusinessAccountOutput.type = Types::AssociateWhatsAppBusinessAccountOutput
    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:meta_library_template, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplate, location_name: "metaLibraryTemplate", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateFromLibraryInput.type = Types::CreateWhatsAppMessageTemplateFromLibraryInput
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, location_name: "metaTemplateId"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:template_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateStatus"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, location_name: "category"))
    CreateWhatsAppMessageTemplateFromLibraryOutput.type = Types::CreateWhatsAppMessageTemplateFromLibraryOutput
    CreateWhatsAppMessageTemplateInput.add_member(:template_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateDefinition, location_name: "templateDefinition", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateInput.type = Types::CreateWhatsAppMessageTemplateInput
    CreateWhatsAppMessageTemplateMediaInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateMediaInput.add_member(:source_s3_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3File, location_name: "sourceS3File"))
    CreateWhatsAppMessageTemplateMediaInput.type = Types::CreateWhatsAppMessageTemplateMediaInput
    CreateWhatsAppMessageTemplateMediaOutput.add_member(:meta_header_handle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "metaHeaderHandle"))
    CreateWhatsAppMessageTemplateMediaOutput.type = Types::CreateWhatsAppMessageTemplateMediaOutput
    CreateWhatsAppMessageTemplateOutput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, location_name: "metaTemplateId"))
    CreateWhatsAppMessageTemplateOutput.add_member(:template_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "templateStatus"))
    CreateWhatsAppMessageTemplateOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, location_name: "category"))
    CreateWhatsAppMessageTemplateOutput.type = Types::CreateWhatsAppMessageTemplateOutput
    DeleteWhatsAppMessageMediaInput.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMediaId, location_name: "mediaId", traits: {"smithy.api#httpQuery" => "mediaId", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, location_name: "originationPhoneNumberId", traits: {"smithy.api#httpQuery" => "originationPhoneNumberId", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    DeleteWhatsAppMessageMediaInput.type = Types::DeleteWhatsAppMessageMediaInput
    DeleteWhatsAppMessageMediaOutput.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "success"))
    DeleteWhatsAppMessageMediaOutput.type = Types::DeleteWhatsAppMessageMediaOutput
    DeleteWhatsAppMessageTemplateInput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, location_name: "metaTemplateId", traits: {"smithy.api#httpQuery" => "metaTemplateId"}))
    DeleteWhatsAppMessageTemplateInput.add_member(:delete_all_languages, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteAllLanguages, location_name: "deleteAllLanguages", traits: {"smithy.api#httpQuery" => "deleteAllTemplates"}))
    DeleteWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, location_name: "templateName", traits: {"smithy.api#httpQuery" => "templateName", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageTemplateInput.type = Types::DeleteWhatsAppMessageTemplateInput
    DeleteWhatsAppMessageTemplateOutput.type = Types::DeleteWhatsAppMessageTemplateOutput
    DependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    DependencyException.type = Types::DependencyException
    DisassociateWhatsAppBusinessAccountInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    DisassociateWhatsAppBusinessAccountInput.type = Types::DisassociateWhatsAppBusinessAccountInput
    DisassociateWhatsAppBusinessAccountOutput.type = Types::DisassociateWhatsAppBusinessAccountOutput
    Filter.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Filter.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GetLinkedWhatsAppBusinessAccountInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    GetLinkedWhatsAppBusinessAccountInput.type = Types::GetLinkedWhatsAppBusinessAccountInput
    GetLinkedWhatsAppBusinessAccountOutput.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccount, location_name: "account"))
    GetLinkedWhatsAppBusinessAccountOutput.type = Types::GetLinkedWhatsAppBusinessAccountOutput
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, location_name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.type = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberInput
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberDetail, location_name: "phoneNumber"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:linked_whats_app_business_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "linkedWhatsAppBusinessAccountId"))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.type = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput
    GetWhatsAppMessageMediaInput.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMediaId, location_name: "mediaId", traits: {"smithy.api#required" => {}}))
    GetWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, location_name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetWhatsAppMessageMediaInput.add_member(:metadata_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "metadataOnly"))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PresignedUrl, location_name: "destinationS3PresignedUrl"))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3File, location_name: "destinationS3File"))
    GetWhatsAppMessageMediaInput.type = Types::GetWhatsAppMessageMediaInput
    GetWhatsAppMessageMediaOutput.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "mimeType"))
    GetWhatsAppMessageMediaOutput.add_member(:file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "fileSize"))
    GetWhatsAppMessageMediaOutput.type = Types::GetWhatsAppMessageMediaOutput
    GetWhatsAppMessageTemplateInput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, location_name: "metaTemplateId", traits: {"smithy.api#httpQuery" => "metaTemplateId", "smithy.api#required" => {}}))
    GetWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    GetWhatsAppMessageTemplateInput.type = Types::GetWhatsAppMessageTemplateInput
    GetWhatsAppMessageTemplateOutput.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplate, location_name: "template"))
    GetWhatsAppMessageTemplateOutput.type = Types::GetWhatsAppMessageTemplateOutput
    Headers.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    Headers.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidParametersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidParametersException.type = Types::InvalidParametersException
    LibraryTemplateBodyInputs.add_member(:add_contact_number, ::Smithy::Schema::Shapes::MemberShape.new(target: AddContactNumber, location_name: "addContactNumber"))
    LibraryTemplateBodyInputs.add_member(:add_learn_more_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AddLearnMoreLink, location_name: "addLearnMoreLink"))
    LibraryTemplateBodyInputs.add_member(:add_security_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: AddSecurityRecommendation, location_name: "addSecurityRecommendation"))
    LibraryTemplateBodyInputs.add_member(:add_track_package_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AddTrackPackageLink, location_name: "addTrackPackageLink"))
    LibraryTemplateBodyInputs.add_member(:code_expiration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeExpirationMinutes, location_name: "codeExpirationMinutes"))
    LibraryTemplateBodyInputs.type = Types::LibraryTemplateBodyInputs
    LibraryTemplateButtonInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonType, location_name: "type"))
    LibraryTemplateButtonInput.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, location_name: "phoneNumber"))
    LibraryTemplateButtonInput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaUrlWithSuffixExample, location_name: "url"))
    LibraryTemplateButtonInput.add_member(:otp_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OtpType, location_name: "otpType"))
    LibraryTemplateButtonInput.add_member(:zero_tap_terms_accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroTapTermsAccepted, location_name: "zeroTapTermsAccepted"))
    LibraryTemplateButtonInput.add_member(:supported_apps, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApps, location_name: "supportedApps"))
    LibraryTemplateButtonInput.type = Types::LibraryTemplateButtonInput
    LibraryTemplateButtonList.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonType, location_name: "type"))
    LibraryTemplateButtonList.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaText, location_name: "text"))
    LibraryTemplateButtonList.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, location_name: "phoneNumber"))
    LibraryTemplateButtonList.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaUrl, location_name: "url"))
    LibraryTemplateButtonList.add_member(:otp_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OtpType, location_name: "otpType"))
    LibraryTemplateButtonList.add_member(:zero_tap_terms_accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroTapTermsAccepted, location_name: "zeroTapTermsAccepted"))
    LibraryTemplateButtonList.add_member(:supported_apps, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApps, location_name: "supportedApps"))
    LibraryTemplateButtonList.type = Types::LibraryTemplateButtonList
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    LinkedAccountWithIncompleteSetup.key = ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId)
    LinkedAccountWithIncompleteSetup.value = ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountIdMetaData)
    LinkedWhatsAppBusinessAccount.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:waba_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, location_name: "wabaId", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, location_name: "registrationStatus", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:link_date, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountLinkDate, location_name: "linkDate", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:waba_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountName, location_name: "wabaName", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, location_name: "eventDestinations", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberSummaryList, location_name: "phoneNumbers", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.type = Types::LinkedWhatsAppBusinessAccount
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountName, location_name: "accountName"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, location_name: "registrationStatus"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:unregistered_whats_app_phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberDetailList, location_name: "unregisteredWhatsAppPhoneNumbers"))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:waba_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "wabaId"))
    LinkedWhatsAppBusinessAccountIdMetaData.type = Types::LinkedWhatsAppBusinessAccountIdMetaData
    LinkedWhatsAppBusinessAccountSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, location_name: "wabaId", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, location_name: "registrationStatus", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:link_date, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountLinkDate, location_name: "linkDate", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountName, location_name: "wabaName", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, location_name: "eventDestinations", traits: {"smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.type = Types::LinkedWhatsAppBusinessAccountSummary
    LinkedWhatsAppBusinessAccountSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountSummary)
    ListLinkedWhatsAppBusinessAccountsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLinkedWhatsAppBusinessAccountsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLinkedWhatsAppBusinessAccountsInput.type = Types::ListLinkedWhatsAppBusinessAccountsInput
    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountSummaryList, location_name: "linkedAccounts"))
    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListLinkedWhatsAppBusinessAccountsOutput.type = Types::ListLinkedWhatsAppBusinessAccountsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode"))
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWhatsAppMessageTemplatesInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    ListWhatsAppMessageTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWhatsAppMessageTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListWhatsAppMessageTemplatesInput.type = Types::ListWhatsAppMessageTemplatesInput
    ListWhatsAppMessageTemplatesOutput.add_member(:templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummaryList, location_name: "templates"))
    ListWhatsAppMessageTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListWhatsAppMessageTemplatesOutput.type = Types::ListWhatsAppMessageTemplatesOutput
    ListWhatsAppTemplateLibraryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListWhatsAppTemplateLibraryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListWhatsAppTemplateLibraryInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    ListWhatsAppTemplateLibraryInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, location_name: "filters"))
    ListWhatsAppTemplateLibraryInput.type = Types::ListWhatsAppTemplateLibraryInput
    ListWhatsAppTemplateLibraryOutput.add_member(:meta_library_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplatesList, location_name: "metaLibraryTemplates"))
    ListWhatsAppTemplateLibraryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListWhatsAppTemplateLibraryOutput.type = Types::ListWhatsAppTemplateLibraryOutput
    MetaIndustries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetaIndustry)
    MetaLibraryTemplate.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, location_name: "templateName", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:library_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, location_name: "libraryTemplateName", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, location_name: "templateCategory", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:template_language, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, location_name: "templateLanguage", traits: {"smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:library_template_button_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplateButtonInputs, location_name: "libraryTemplateButtonInputs"))
    MetaLibraryTemplate.add_member(:library_template_body_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryTemplateBodyInputs, location_name: "libraryTemplateBodyInputs"))
    MetaLibraryTemplate.type = Types::MetaLibraryTemplate
    MetaLibraryTemplateButtonInputs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryTemplateButtonInput)
    MetaLibraryTemplateButtonList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryTemplateButtonList)
    MetaLibraryTemplateDefinition.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, location_name: "templateName"))
    MetaLibraryTemplateDefinition.add_member(:template_language, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, location_name: "templateLanguage"))
    MetaLibraryTemplateDefinition.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, location_name: "templateCategory"))
    MetaLibraryTemplateDefinition.add_member(:template_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateTopic, location_name: "templateTopic"))
    MetaLibraryTemplateDefinition.add_member(:template_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateUseCase, location_name: "templateUseCase"))
    MetaLibraryTemplateDefinition.add_member(:template_industry, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaIndustries, location_name: "templateIndustry"))
    MetaLibraryTemplateDefinition.add_member(:template_header, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateHeader, location_name: "templateHeader"))
    MetaLibraryTemplateDefinition.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateBody, location_name: "templateBody"))
    MetaLibraryTemplateDefinition.add_member(:template_buttons, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplateButtonList, location_name: "templateButtons"))
    MetaLibraryTemplateDefinition.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, location_name: "templateId"))
    MetaLibraryTemplateDefinition.type = Types::MetaLibraryTemplateDefinition
    MetaLibraryTemplatesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetaLibraryTemplateDefinition)
    MetaUrlWithSuffixExample.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    MetaUrlWithSuffixExample.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    PostWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, location_name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PresignedUrl, location_name: "sourceS3PresignedUrl"))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3File, location_name: "sourceS3File"))
    PostWhatsAppMessageMediaInput.type = Types::PostWhatsAppMessageMediaInput
    PostWhatsAppMessageMediaOutput.add_member(:media_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMediaId, location_name: "mediaId"))
    PostWhatsAppMessageMediaOutput.type = Types::PostWhatsAppMessageMediaOutput
    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, location_name: "eventDestinations", traits: {"smithy.api#required" => {}}))
    PutWhatsAppBusinessAccountEventDestinationsInput.type = Types::PutWhatsAppBusinessAccountEventDestinationsInput
    PutWhatsAppBusinessAccountEventDestinationsOutput.type = Types::PutWhatsAppBusinessAccountEventDestinationsOutput
    RegistrationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RegistrationStatus.add_member(:incomplete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCOMPLETE", traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3File.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "bucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$", "smithy.api#required" => {}}))
    S3File.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#required" => {}}))
    S3File.type = Types::S3File
    S3PresignedUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^https://(.*)s3(.*).amazonaws.com/(.*)$", "smithy.api#required" => {}}))
    S3PresignedUrl.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: Headers, location_name: "headers", traits: {"smithy.api#required" => {}}))
    S3PresignedUrl.type = Types::S3PresignedUrl
    SendWhatsAppMessageInput.add_member(:origination_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, location_name: "originationPhoneNumberId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    SendWhatsAppMessageInput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppMessageBlob, location_name: "message", traits: {"smithy.api#required" => {}}))
    SendWhatsAppMessageInput.add_member(:meta_api_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "metaApiVersion", traits: {"smithy.api#required" => {}}))
    SendWhatsAppMessageInput.type = Types::SendWhatsAppMessageInput
    SendWhatsAppMessageOutput.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "messageId"))
    SendWhatsAppMessageOutput.type = Types::SendWhatsAppMessageOutput
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    SupportedApp.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    SupportedApp.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SupportedApps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedApp)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "value", traits: {"smithy.api#length" => {"max" => 256}}))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"aws.api#data" => "tagging", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode"))
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateSummary.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateName, location_name: "templateName"))
    TemplateSummary.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, location_name: "metaTemplateId"))
    TemplateSummary.add_member(:template_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateStatus, location_name: "templateStatus"))
    TemplateSummary.add_member(:template_quality_score, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateQualityScore, location_name: "templateQualityScore"))
    TemplateSummary.add_member(:template_language, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateLanguage, location_name: "templateLanguage"))
    TemplateSummary.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, location_name: "templateCategory"))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummary)
    ThrottledRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ThrottledRequestException.type = Types::ThrottledRequestException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"aws.api#data" => "tagging", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode"))
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateWhatsAppMessageTemplateInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateWhatsAppMessageTemplateInput.add_member(:meta_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateId, location_name: "metaTemplateId", traits: {"smithy.api#required" => {}}))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_category, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateCategory, location_name: "templateCategory"))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_components, ::Smithy::Schema::Shapes::MemberShape.new(target: MetaTemplateComponents, location_name: "templateComponents"))
    UpdateWhatsAppMessageTemplateInput.type = Types::UpdateWhatsAppMessageTemplateInput
    UpdateWhatsAppMessageTemplateOutput.type = Types::UpdateWhatsAppMessageTemplateOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ValidationException.type = Types::ValidationException
    WabaPhoneNumberSetupFinalization.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumber, location_name: "id", traits: {"smithy.api#required" => {}}))
    WabaPhoneNumberSetupFinalization.add_member(:two_factor_pin, ::Smithy::Schema::Shapes::MemberShape.new(target: TwoFactorPin, location_name: "twoFactorPin", traits: {"smithy.api#required" => {}}))
    WabaPhoneNumberSetupFinalization.add_member(:data_localization_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, location_name: "dataLocalizationRegion"))
    WabaPhoneNumberSetupFinalization.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags"))
    WabaPhoneNumberSetupFinalization.type = Types::WabaPhoneNumberSetupFinalization
    WabaPhoneNumberSetupFinalizationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WabaPhoneNumberSetupFinalization)
    WabaSetupFinalization.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountId, location_name: "id"))
    WabaSetupFinalization.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestinations, location_name: "eventDestinations"))
    WabaSetupFinalization.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags"))
    WabaSetupFinalization.type = Types::WabaSetupFinalization
    WhatsAppBusinessAccountEventDestination.add_member(:event_destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationArn, location_name: "eventDestinationArn", traits: {"smithy.api#required" => {}}))
    WhatsAppBusinessAccountEventDestination.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn"))
    WhatsAppBusinessAccountEventDestination.type = Types::WhatsAppBusinessAccountEventDestination
    WhatsAppBusinessAccountEventDestinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppBusinessAccountEventDestination)
    WhatsAppPhoneNumberDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppPhoneNumberArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, location_name: "phoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, location_name: "phoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:meta_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumber, location_name: "metaPhoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberName, location_name: "displayPhoneNumberName", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDisplayPhoneNumber, location_name: "displayPhoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:quality_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberQualityRating, location_name: "qualityRating", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:data_localization_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, location_name: "dataLocalizationRegion"))
    WhatsAppPhoneNumberDetail.type = Types::WhatsAppPhoneNumberDetail
    WhatsAppPhoneNumberDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberDetail)
    WhatsAppPhoneNumberSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppPhoneNumberArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, location_name: "phoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberId, location_name: "phoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:meta_phone_number_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumber, location_name: "metaPhoneNumberId", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberName, location_name: "displayPhoneNumberName", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppDisplayPhoneNumber, location_name: "displayPhoneNumber", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:quality_rating, ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberQualityRating, location_name: "qualityRating", traits: {"smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:data_localization_region, ::Smithy::Schema::Shapes::MemberShape.new(target: IsoCountryCode, location_name: "dataLocalizationRegion"))
    WhatsAppPhoneNumberSummary.type = Types::WhatsAppPhoneNumberSummary
    WhatsAppPhoneNumberSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WhatsAppPhoneNumberSummary)
    WhatsAppSetupFinalization.add_member(:associate_in_progress_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateInProgressToken, location_name: "associateInProgressToken", traits: {"smithy.api#required" => {}}))
    WhatsAppSetupFinalization.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: WabaPhoneNumberSetupFinalizationList, location_name: "phoneNumbers", traits: {"smithy.api#required" => {}}))
    WhatsAppSetupFinalization.add_member(:phone_number_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedWhatsAppBusinessAccountId, location_name: "phoneNumberParent"))
    WhatsAppSetupFinalization.add_member(:waba, ::Smithy::Schema::Shapes::MemberShape.new(target: WabaSetupFinalization, location_name: "waba"))
    WhatsAppSetupFinalization.type = Types::WhatsAppSetupFinalization
    WhatsAppSignupCallback.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "accessToken", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#required" => {}}))
    WhatsAppSignupCallback.add_member(:callback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "callbackUrl", traits: {"smithy.api#length" => {"max" => 100}}))
    WhatsAppSignupCallback.type = Types::WhatsAppSignupCallback
    WhatsAppSignupCallbackResult.add_member(:associate_in_progress_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateInProgressToken, location_name: "associateInProgressToken"))
    WhatsAppSignupCallbackResult.add_member(:linked_accounts_with_incomplete_setup, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountWithIncompleteSetup, location_name: "linkedAccountsWithIncompleteSetup"))
    WhatsAppSignupCallbackResult.type = Types::WhatsAppSignupCallbackResult

    SocialMessaging = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.socialmessaging#SocialMessaging"
      service.name = "SocialMessaging"
      service.version = "2024-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SocialMessaging", "arnNamespace" => "social-messaging", "cloudTrailEventSource" => "social-messaging.amazonaws.com", "endpointPrefix" => "social-messaging"}, "aws.auth#sigv4" => {"name" => "social-messaging"}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["authorization", "x-amz-date", "x-amz-security-token", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "content-length", "x-api-key", "amz-sdk-request", "amz-sdk-invocation-id", "Csrf-Token"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "Csrf-Token"]}, "smithy.api#title" => "AWS End User Messaging Social"}
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
      service.add_operation(:create_whats_app_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplate"
        operation.name = "CreateWhatsAppMessageTemplate"
        operation.input = CreateWhatsAppMessageTemplateInput
        operation.output = CreateWhatsAppMessageTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
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
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/media", "code" => 200}}
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
        operation.errors << DependencyException
        operation.errors << InternalServiceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottledRequestException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/template", "code" => 200}, "smithy.api#idempotent" => {}}
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
      service.add_operation(:list_whats_app_message_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListWhatsAppMessageTemplates"
        operation.name = "ListWhatsAppMessageTemplates"
        operation.input = ListWhatsAppMessageTemplatesInput
        operation.output = ListWhatsAppMessageTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
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
      service.add_operation(:update_whats_app_message_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplate"
        operation.name = "UpdateWhatsAppMessageTemplate"
        operation.input = UpdateWhatsAppMessageTemplateInput
        operation.output = UpdateWhatsAppMessageTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
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

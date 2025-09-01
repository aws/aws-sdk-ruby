# frozen_string_literal: true

# This is generated code!

module Aws::SocialMessaging
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedByMetaException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#AccessDeniedByMetaException', name: 'AccessDeniedByMetaException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddContactNumber = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.socialmessaging#AddContactNumber', name: 'AddContactNumber')
    AddLearnMoreLink = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.socialmessaging#AddLearnMoreLink', name: 'AddLearnMoreLink')
    AddSecurityRecommendation = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.socialmessaging#AddSecurityRecommendation', name: 'AddSecurityRecommendation')
    AddTrackPackageLink = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.socialmessaging#AddTrackPackageLink', name: 'AddTrackPackageLink')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#Arn', name: 'Arn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    AssociateInProgressToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#AssociateInProgressToken', name: 'AssociateInProgressToken', traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#sensitive" => {}})
    AssociateWhatsAppBusinessAccountInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#AssociateWhatsAppBusinessAccountInput', name: 'AssociateWhatsAppBusinessAccountInput')
    AssociateWhatsAppBusinessAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#AssociateWhatsAppBusinessAccountOutput', name: 'AssociateWhatsAppBusinessAccountOutput')
    ButtonType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#ButtonType', name: 'ButtonType', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    CodeExpirationMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.socialmessaging#CodeExpirationMinutes', name: 'CodeExpirationMinutes')
    CreateWhatsAppMessageTemplateFromLibraryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibraryInput', name: 'CreateWhatsAppMessageTemplateFromLibraryInput')
    CreateWhatsAppMessageTemplateFromLibraryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibraryOutput', name: 'CreateWhatsAppMessageTemplateFromLibraryOutput')
    CreateWhatsAppMessageTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateInput', name: 'CreateWhatsAppMessageTemplateInput')
    CreateWhatsAppMessageTemplateMediaInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMediaInput', name: 'CreateWhatsAppMessageTemplateMediaInput')
    CreateWhatsAppMessageTemplateMediaOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMediaOutput', name: 'CreateWhatsAppMessageTemplateMediaOutput')
    CreateWhatsAppMessageTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateOutput', name: 'CreateWhatsAppMessageTemplateOutput')
    DeleteAllLanguages = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.socialmessaging#DeleteAllLanguages', name: 'DeleteAllLanguages')
    DeleteWhatsAppMessageMediaInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#DeleteWhatsAppMessageMediaInput', name: 'DeleteWhatsAppMessageMediaInput')
    DeleteWhatsAppMessageMediaOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#DeleteWhatsAppMessageMediaOutput', name: 'DeleteWhatsAppMessageMediaOutput')
    DeleteWhatsAppMessageTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplateInput', name: 'DeleteWhatsAppMessageTemplateInput')
    DeleteWhatsAppMessageTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplateOutput', name: 'DeleteWhatsAppMessageTemplateOutput')
    DependencyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#DependencyException', name: 'DependencyException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#retryable" => {}})
    DisassociateWhatsAppBusinessAccountInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccountInput', name: 'DisassociateWhatsAppBusinessAccountInput')
    DisassociateWhatsAppBusinessAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccountOutput', name: 'DisassociateWhatsAppBusinessAccountOutput')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#ErrorMessage', name: 'ErrorMessage')
    EventDestinationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#EventDestinationArn', name: 'EventDestinationArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:[a-z-]+([/:](.*))?$"})
    Filter = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.socialmessaging#Filter', name: 'Filter', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GetLinkedWhatsAppBusinessAccountInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountInput', name: 'GetLinkedWhatsAppBusinessAccountInput')
    GetLinkedWhatsAppBusinessAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountOutput', name: 'GetLinkedWhatsAppBusinessAccountOutput')
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumberInput', name: 'GetLinkedWhatsAppBusinessAccountPhoneNumberInput')
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumberOutput', name: 'GetLinkedWhatsAppBusinessAccountPhoneNumberOutput')
    GetWhatsAppMessageMediaInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetWhatsAppMessageMediaInput', name: 'GetWhatsAppMessageMediaInput')
    GetWhatsAppMessageMediaOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetWhatsAppMessageMediaOutput', name: 'GetWhatsAppMessageMediaOutput')
    GetWhatsAppMessageTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetWhatsAppMessageTemplateInput', name: 'GetWhatsAppMessageTemplateInput')
    GetWhatsAppMessageTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#GetWhatsAppMessageTemplateOutput', name: 'GetWhatsAppMessageTemplateOutput')
    Headers = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.socialmessaging#Headers', name: 'Headers')
    InternalServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidParametersException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#InvalidParametersException', name: 'InvalidParametersException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsoCountryCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#IsoCountryCode', name: 'IsoCountryCode', traits: {"smithy.api#pattern" => "^[A-Z]{2}$"})
    LibraryTemplateBodyInputs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#LibraryTemplateBodyInputs', name: 'LibraryTemplateBodyInputs')
    LibraryTemplateButtonInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#LibraryTemplateButtonInput', name: 'LibraryTemplateButtonInput')
    LibraryTemplateButtonList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#LibraryTemplateButtonList', name: 'LibraryTemplateButtonList')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LinkedAccountWithIncompleteSetup = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.socialmessaging#LinkedAccountWithIncompleteSetup', name: 'LinkedAccountWithIncompleteSetup')
    LinkedWhatsAppBusinessAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccount', name: 'LinkedWhatsAppBusinessAccount')
    LinkedWhatsAppBusinessAccountArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountArn', name: 'LinkedWhatsAppBusinessAccountArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:waba/[0-9a-zA-Z]+$"})
    LinkedWhatsAppBusinessAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountId', name: 'LinkedWhatsAppBusinessAccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "(^waba-.*$)|(^arn:.*:waba/[0-9a-zA-Z]+$)"})
    LinkedWhatsAppBusinessAccountIdMetaData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountIdMetaData', name: 'LinkedWhatsAppBusinessAccountIdMetaData')
    LinkedWhatsAppBusinessAccountSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountSummary', name: 'LinkedWhatsAppBusinessAccountSummary')
    LinkedWhatsAppBusinessAccountSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountSummaryList', name: 'LinkedWhatsAppBusinessAccountSummaryList')
    LinkedWhatsAppPhoneNumberArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#LinkedWhatsAppPhoneNumberArn', name: 'LinkedWhatsAppPhoneNumberArn', traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:.*:phone-number-id/[0-9a-zA-Z]+$"})
    ListLinkedWhatsAppBusinessAccountsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccountsInput', name: 'ListLinkedWhatsAppBusinessAccountsInput')
    ListLinkedWhatsAppBusinessAccountsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccountsOutput', name: 'ListLinkedWhatsAppBusinessAccountsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWhatsAppMessageTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListWhatsAppMessageTemplatesInput', name: 'ListWhatsAppMessageTemplatesInput')
    ListWhatsAppMessageTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListWhatsAppMessageTemplatesOutput', name: 'ListWhatsAppMessageTemplatesOutput')
    ListWhatsAppTemplateLibraryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListWhatsAppTemplateLibraryInput', name: 'ListWhatsAppTemplateLibraryInput')
    ListWhatsAppTemplateLibraryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ListWhatsAppTemplateLibraryOutput', name: 'ListWhatsAppTemplateLibraryOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.socialmessaging#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetaIndustries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#MetaIndustries', name: 'MetaIndustries')
    MetaIndustry = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaIndustry', name: 'MetaIndustry', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    MetaLibraryTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#MetaLibraryTemplate', name: 'MetaLibraryTemplate')
    MetaLibraryTemplateButtonInputs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#MetaLibraryTemplateButtonInputs', name: 'MetaLibraryTemplateButtonInputs')
    MetaLibraryTemplateButtonList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#MetaLibraryTemplateButtonList', name: 'MetaLibraryTemplateButtonList')
    MetaLibraryTemplateDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#MetaLibraryTemplateDefinition', name: 'MetaLibraryTemplateDefinition')
    MetaLibraryTemplatesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#MetaLibraryTemplatesList', name: 'MetaLibraryTemplatesList')
    MetaTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplate', name: 'MetaTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}})
    MetaTemplateBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateBody', name: 'MetaTemplateBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MetaTemplateCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateCategory', name: 'MetaTemplateCategory', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MetaTemplateComponents = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateComponents', name: 'MetaTemplateComponents', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    MetaTemplateDefinition = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateDefinition', name: 'MetaTemplateDefinition', traits: {"smithy.api#length" => {"min" => 1, "max" => 6000}})
    MetaTemplateHeader = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateHeader', name: 'MetaTemplateHeader', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    MetaTemplateId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateId', name: 'MetaTemplateId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9]+$"})
    MetaTemplateLanguage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateLanguage', name: 'MetaTemplateLanguage', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    MetaTemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateName', name: 'MetaTemplateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    MetaTemplateQualityScore = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateQualityScore', name: 'MetaTemplateQualityScore', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MetaTemplateStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateStatus', name: 'MetaTemplateStatus', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MetaTemplateTopic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateTopic', name: 'MetaTemplateTopic', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MetaTemplateUseCase = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaTemplateUseCase', name: 'MetaTemplateUseCase', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    MetaText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaText', name: 'MetaText', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    MetaUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#MetaUrl', name: 'MetaUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    MetaUrlWithSuffixExample = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.socialmessaging#MetaUrlWithSuffixExample', name: 'MetaUrlWithSuffixExample', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 600}})
    OtpType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#OtpType', name: 'OtpType', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    PhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#PhoneNumber', name: 'PhoneNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PostWhatsAppMessageMediaInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#PostWhatsAppMessageMediaInput', name: 'PostWhatsAppMessageMediaInput')
    PostWhatsAppMessageMediaOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#PostWhatsAppMessageMediaOutput', name: 'PostWhatsAppMessageMediaOutput')
    PutWhatsAppBusinessAccountEventDestinationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinationsInput', name: 'PutWhatsAppBusinessAccountEventDestinationsInput')
    PutWhatsAppBusinessAccountEventDestinationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinationsOutput', name: 'PutWhatsAppBusinessAccountEventDestinationsOutput')
    RegistrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.socialmessaging#RegistrationStatus', name: 'RegistrationStatus')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role\\/[a-zA-Z0-9+=,.@\\-_]+$"})
    S3File = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#S3File', name: 'S3File', traits: {"smithy.api#sensitive" => {}})
    S3PresignedUrl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#S3PresignedUrl', name: 'S3PresignedUrl', traits: {"smithy.api#sensitive" => {}})
    SendWhatsAppMessageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#SendWhatsAppMessageInput', name: 'SendWhatsAppMessageInput')
    SendWhatsAppMessageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#SendWhatsAppMessageOutput', name: 'SendWhatsAppMessageOutput')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#StringList', name: 'StringList')
    SupportedApp = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.socialmessaging#SupportedApp', name: 'SupportedApp', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SupportedApps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#SupportedApps', name: 'SupportedApps')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#Tag', name: 'Tag')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#TagList', name: 'TagList')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#TagResourceInput', name: 'TagResourceInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppPhoneNumberResource", "ids" => {"OriginationPhoneNumberId" => "resourceArn"}}, {"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountResource", "ids" => {"WabaId" => "resourceArn"}}]})
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#TagResourceOutput', name: 'TagResourceOutput')
    TemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#TemplateSummary', name: 'TemplateSummary')
    TemplateSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#TemplateSummaryList', name: 'TemplateSummaryList')
    ThrottledRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ThrottledRequestException', name: 'ThrottledRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TwoFactorPin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#TwoFactorPin', name: 'TwoFactorPin', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#sensitive" => {}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#UntagResourceInput', name: 'UntagResourceInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppPhoneNumberResource", "ids" => {"OriginationPhoneNumberId" => "resourceArn"}}, {"resource" => "com.amazonaws.socialmessaging#LinkedWhatsAppBusinessAccountResource", "ids" => {"WabaId" => "resourceArn"}}]})
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateWhatsAppMessageTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplateInput', name: 'UpdateWhatsAppMessageTemplateInput')
    UpdateWhatsAppMessageTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplateOutput', name: 'UpdateWhatsAppMessageTemplateOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WabaPhoneNumberSetupFinalization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WabaPhoneNumberSetupFinalization', name: 'WabaPhoneNumberSetupFinalization')
    WabaPhoneNumberSetupFinalizationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#WabaPhoneNumberSetupFinalizationList', name: 'WabaPhoneNumberSetupFinalizationList')
    WabaSetupFinalization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WabaSetupFinalization', name: 'WabaSetupFinalization')
    WhatsAppBusinessAccountEventDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppBusinessAccountEventDestination', name: 'WhatsAppBusinessAccountEventDestination')
    WhatsAppBusinessAccountEventDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppBusinessAccountEventDestinations', name: 'WhatsAppBusinessAccountEventDestinations', traits: {"smithy.api#length" => {"max" => 1}})
    WhatsAppBusinessAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppBusinessAccountId', name: 'WhatsAppBusinessAccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WhatsAppBusinessAccountLinkDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppBusinessAccountLinkDate', name: 'WhatsAppBusinessAccountLinkDate')
    WhatsAppBusinessAccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppBusinessAccountName', name: 'WhatsAppBusinessAccountName', traits: {"smithy.api#length" => {"max" => 200}})
    WhatsAppDisplayPhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppDisplayPhoneNumber', name: 'WhatsAppDisplayPhoneNumber', traits: {"smithy.api#length" => {"max" => 20}})
    WhatsAppMediaId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppMediaId', name: 'WhatsAppMediaId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    WhatsAppMessageBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppMessageBlob', name: 'WhatsAppMessageBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048000}, "smithy.api#sensitive" => {}})
    WhatsAppPhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumber', name: 'WhatsAppPhoneNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WhatsAppPhoneNumberDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumberDetail', name: 'WhatsAppPhoneNumberDetail')
    WhatsAppPhoneNumberDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumberDetailList', name: 'WhatsAppPhoneNumberDetailList')
    WhatsAppPhoneNumberId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumberId', name: 'WhatsAppPhoneNumberId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "(^phone-number-id-.*$)|(^arn:.*:phone-number-id/[0-9a-zA-Z]+$)"})
    WhatsAppPhoneNumberName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumberName', name: 'WhatsAppPhoneNumberName', traits: {"smithy.api#length" => {"max" => 200}})
    WhatsAppPhoneNumberQualityRating = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumberQualityRating', name: 'WhatsAppPhoneNumberQualityRating', traits: {"smithy.api#length" => {"max" => 10}})
    WhatsAppPhoneNumberSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumberSummary', name: 'WhatsAppPhoneNumberSummary')
    WhatsAppPhoneNumberSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppPhoneNumberSummaryList', name: 'WhatsAppPhoneNumberSummaryList')
    WhatsAppSetupFinalization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppSetupFinalization', name: 'WhatsAppSetupFinalization')
    WhatsAppSignupCallback = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppSignupCallback', name: 'WhatsAppSignupCallback')
    WhatsAppSignupCallbackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.socialmessaging#WhatsAppSignupCallbackResult', name: 'WhatsAppSignupCallbackResult')
    ZeroTapTermsAccepted = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.socialmessaging#ZeroTapTermsAccepted', name: 'ZeroTapTermsAccepted')

    AccessDeniedByMetaException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedByMetaException.type = Types::AccessDeniedByMetaException
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateWhatsAppBusinessAccountInput.add_member(:signup_callback, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppSignupCallback, location_name: 'signupCallback', traits: {"smithy.api#documentation" => "<p>Contains the callback access token.</p>"}))
    AssociateWhatsAppBusinessAccountInput.add_member(:setup_finalization, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppSetupFinalization, location_name: 'setupFinalization', traits: {"smithy.api#documentation" => "<p>A JSON object that contains the phone numbers and WhatsApp Business Account to link to your account.</p>"}))
    AssociateWhatsAppBusinessAccountInput.type = Types::AssociateWhatsAppBusinessAccountInput
    AssociateWhatsAppBusinessAccountOutput.add_member(:signup_callback_result, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppSignupCallbackResult, location_name: 'signupCallbackResult', traits: {"smithy.api#documentation" => "<p>Contains your WhatsApp registration status.</p>"}))
    AssociateWhatsAppBusinessAccountOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code for the response.</p>"}))
    AssociateWhatsAppBusinessAccountOutput.type = Types::AssociateWhatsAppBusinessAccountOutput
    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:meta_library_template, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaLibraryTemplate, location_name: 'metaLibraryTemplate', traits: {"smithy.api#documentation" => "<p>The template configuration from Meta's library, including customizations for buttons and body text.</p>", "smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateFromLibraryInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account to associate with this template.</p>", "smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateFromLibraryInput.type = Types::CreateWhatsAppMessageTemplateFromLibraryInput
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:meta_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: 'metaTemplateId', traits: {"smithy.api#documentation" => "<p>The numeric ID assigned to the template by Meta.</p>"}))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:template_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'templateStatus', traits: {"smithy.api#documentation" => "<p>The status of the created template (for example, PENDING or APPROVED).</p>"}))
    CreateWhatsAppMessageTemplateFromLibraryOutput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of the template (for example, UTILITY or MARKETING).</p>"}))
    CreateWhatsAppMessageTemplateFromLibraryOutput.type = Types::CreateWhatsAppMessageTemplateFromLibraryOutput
    CreateWhatsAppMessageTemplateInput.add_member(:template_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateDefinition, location_name: 'templateDefinition', traits: {"smithy.api#documentation" => "<p>The complete template definition as a JSON blob.</p>", "smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account to associate with this template.</p>", "smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateInput.type = Types::CreateWhatsAppMessageTemplateInput
    CreateWhatsAppMessageTemplateMediaInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account associated with this media upload.</p>", "smithy.api#required" => {}}))
    CreateWhatsAppMessageTemplateMediaInput.add_member(:source_s3_file, Smithy::Schema::Shapes::ShapeRef.new(shape: S3File, location_name: 'sourceS3File'))
    CreateWhatsAppMessageTemplateMediaInput.type = Types::CreateWhatsAppMessageTemplateMediaInput
    CreateWhatsAppMessageTemplateMediaOutput.add_member(:meta_header_handle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'metaHeaderHandle', traits: {"smithy.api#documentation" => "<p>The handle assigned to the uploaded media by Meta, used to reference the media in templates.</p>"}))
    CreateWhatsAppMessageTemplateMediaOutput.type = Types::CreateWhatsAppMessageTemplateMediaOutput
    CreateWhatsAppMessageTemplateOutput.add_member(:meta_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: 'metaTemplateId', traits: {"smithy.api#documentation" => "<p>The numeric ID assigned to the template by Meta.</p>"}))
    CreateWhatsAppMessageTemplateOutput.add_member(:template_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'templateStatus', traits: {"smithy.api#documentation" => "<p>The status of the created template, such as PENDING or APPROVED..</p>"}))
    CreateWhatsAppMessageTemplateOutput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of the template, such as UTILITY or MARKETING.</p>"}))
    CreateWhatsAppMessageTemplateOutput.type = Types::CreateWhatsAppMessageTemplateOutput
    DeleteWhatsAppMessageMediaInput.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppMediaId, location_name: 'mediaId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the media file to delete. Use the <code>mediaId</code> returned from <a href=\"https://console.aws.amazon.com/social-messaging/latest/APIReference/API_PostWhatsAppMessageMedia.html\">PostWhatsAppMessageMedia</a>.</p>", "smithy.api#httpQuery" => "mediaId", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, location_name: 'originationPhoneNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the originating phone number associated with the media. Phone\n         number identifiers are formatted as\n            <code>phone-number-id-01234567890123456789012345678901</code>. Use\n         <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html\">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's\n         id.</p>", "smithy.api#httpQuery" => "originationPhoneNumberId", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    DeleteWhatsAppMessageMediaInput.type = Types::DeleteWhatsAppMessageMediaInput
    DeleteWhatsAppMessageMediaOutput.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'success', traits: {"smithy.api#documentation" => "<p>Success indicator for deleting the media file.</p>"}))
    DeleteWhatsAppMessageMediaOutput.type = Types::DeleteWhatsAppMessageMediaOutput
    DeleteWhatsAppMessageTemplateInput.add_member(:meta_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: 'metaTemplateId', traits: {"smithy.api#documentation" => "<p>The numeric ID of the template assigned by Meta.</p>", "smithy.api#httpQuery" => "metaTemplateId"}))
    DeleteWhatsAppMessageTemplateInput.add_member(:delete_all_languages, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAllLanguages, location_name: 'deleteAllLanguages', traits: {"smithy.api#documentation" => "<p>If true, deletes all language versions of the template.</p>", "smithy.api#httpQuery" => "deleteAllTemplates"}))
    DeleteWhatsAppMessageTemplateInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account associated with this template.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageTemplateInput.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the template to delete.</p>", "smithy.api#httpQuery" => "templateName", "smithy.api#required" => {}}))
    DeleteWhatsAppMessageTemplateInput.type = Types::DeleteWhatsAppMessageTemplateInput
    DeleteWhatsAppMessageTemplateOutput.type = Types::DeleteWhatsAppMessageTemplateOutput
    DependencyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DependencyException.type = Types::DependencyException
    DisassociateWhatsAppBusinessAccountInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as\n         <code>waba-01234567890123456789012345678901</code>. Use\n         <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html\">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    DisassociateWhatsAppBusinessAccountInput.type = Types::DisassociateWhatsAppBusinessAccountInput
    DisassociateWhatsAppBusinessAccountOutput.type = Types::DisassociateWhatsAppBusinessAccountOutput
    Filter.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Filter.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GetLinkedWhatsAppBusinessAccountInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier, from Amazon Web Services, of the linked WhatsApp Business\n         Account. WABA identifiers are formatted as\n         <code>waba-01234567890123456789012345678901</code>. Use\n         <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html\">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    GetLinkedWhatsAppBusinessAccountInput.type = Types::GetLinkedWhatsAppBusinessAccountInput
    GetLinkedWhatsAppBusinessAccountOutput.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccount, location_name: 'account', traits: {"smithy.api#documentation" => "<p>The details of the linked WhatsApp Business Account.</p>"}))
    GetLinkedWhatsAppBusinessAccountOutput.type = Types::GetLinkedWhatsAppBusinessAccountOutput
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the phone number. Phone number\n         identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.\n         Use <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html\">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's\n         id.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetLinkedWhatsAppBusinessAccountPhoneNumberInput.type = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberInput
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberDetail, location_name: 'phoneNumber'))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.add_member(:linked_whats_app_business_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'linkedWhatsAppBusinessAccountId', traits: {"smithy.api#documentation" => "<p>The WABA identifier linked to the phone number, formatted as\n         <code>waba-01234567890123456789012345678901</code>.</p>"}))
    GetLinkedWhatsAppBusinessAccountPhoneNumberOutput.type = Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput
    GetWhatsAppMessageMediaInput.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppMediaId, location_name: 'mediaId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the media file.</p>", "smithy.api#required" => {}}))
    GetWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, location_name: 'originationPhoneNumberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the originating phone number for the WhatsApp message media.\n         The phone number identifiers are formatted as\n            <code>phone-number-id-01234567890123456789012345678901</code>. Use\n         <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html\">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's\n         id.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    GetWhatsAppMessageMediaInput.add_member(:metadata_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'metadataOnly', traits: {"smithy.api#documentation" => "<p>Set to <code>True</code> to get only the metadata for the file.</p>"}))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_presigned_url, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PresignedUrl, location_name: 'destinationS3PresignedUrl', traits: {"smithy.api#documentation" => "<p>The presign url of the media file.</p>"}))
    GetWhatsAppMessageMediaInput.add_member(:destination_s3_file, Smithy::Schema::Shapes::ShapeRef.new(shape: S3File, location_name: 'destinationS3File', traits: {"smithy.api#documentation" => "<p>The <code>bucketName</code> and <code>key</code> of the S3 media file.</p>"}))
    GetWhatsAppMessageMediaInput.type = Types::GetWhatsAppMessageMediaInput
    GetWhatsAppMessageMediaOutput.add_member(:mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'mimeType', traits: {"smithy.api#documentation" => "<p>The MIME type of the media.</p>"}))
    GetWhatsAppMessageMediaOutput.add_member(:file_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'fileSize', traits: {"smithy.api#documentation" => "<p>The file size of the media, in KB.</p>"}))
    GetWhatsAppMessageMediaOutput.type = Types::GetWhatsAppMessageMediaOutput
    GetWhatsAppMessageTemplateInput.add_member(:meta_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: 'metaTemplateId', traits: {"smithy.api#documentation" => "<p>The numeric ID of the template assigned by Meta.</p>", "smithy.api#httpQuery" => "metaTemplateId", "smithy.api#required" => {}}))
    GetWhatsAppMessageTemplateInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account associated with this template.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    GetWhatsAppMessageTemplateInput.type = Types::GetWhatsAppMessageTemplateInput
    GetWhatsAppMessageTemplateOutput.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplate, location_name: 'template', traits: {"smithy.api#documentation" => "<p>The complete template definition as a JSON string (maximum 6000 characters).</p>"}))
    GetWhatsAppMessageTemplateOutput.type = Types::GetWhatsAppMessageTemplateOutput
    Headers.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Headers.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    InternalServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidParametersException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParametersException.type = Types::InvalidParametersException
    LibraryTemplateBodyInputs.add_member(:add_contact_number, Smithy::Schema::Shapes::ShapeRef.new(shape: AddContactNumber, location_name: 'addContactNumber', traits: {"smithy.api#documentation" => "<p>When true, includes a contact number in the template body.</p>"}))
    LibraryTemplateBodyInputs.add_member(:add_learn_more_link, Smithy::Schema::Shapes::ShapeRef.new(shape: AddLearnMoreLink, location_name: 'addLearnMoreLink', traits: {"smithy.api#documentation" => "<p>When true, includes a \"learn more\" link in the template body.</p>"}))
    LibraryTemplateBodyInputs.add_member(:add_security_recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: AddSecurityRecommendation, location_name: 'addSecurityRecommendation', traits: {"smithy.api#documentation" => "<p>When true, includes security recommendations in the template body.</p>"}))
    LibraryTemplateBodyInputs.add_member(:add_track_package_link, Smithy::Schema::Shapes::ShapeRef.new(shape: AddTrackPackageLink, location_name: 'addTrackPackageLink', traits: {"smithy.api#documentation" => "<p>When true, includes a package tracking link in the template body.</p>"}))
    LibraryTemplateBodyInputs.add_member(:code_expiration_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeExpirationMinutes, location_name: 'codeExpirationMinutes', traits: {"smithy.api#documentation" => "<p>The number of minutes until a verification code or OTP expires.</p>"}))
    LibraryTemplateBodyInputs.type = Types::LibraryTemplateBodyInputs
    LibraryTemplateButtonInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of button (for example, QUICK_REPLY, CALL, or URL).</p>"}))
    LibraryTemplateButtonInput.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'phoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number in E.164 format for CALL-type buttons.</p>"}))
    LibraryTemplateButtonInput.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaUrlWithSuffixExample, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL with dynamic parameters for URL-type buttons.</p>"}))
    LibraryTemplateButtonInput.add_member(:otp_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OtpType, location_name: 'otpType', traits: {"smithy.api#documentation" => "<p>The type of one-time password for OTP buttons.</p>"}))
    LibraryTemplateButtonInput.add_member(:zero_tap_terms_accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroTapTermsAccepted, location_name: 'zeroTapTermsAccepted', traits: {"smithy.api#documentation" => "<p>When true, indicates acceptance of zero-tap terms for the button.</p>"}))
    LibraryTemplateButtonInput.add_member(:supported_apps, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedApps, location_name: 'supportedApps', traits: {"smithy.api#documentation" => "<p>List of supported applications for this button type.</p>"}))
    LibraryTemplateButtonInput.type = Types::LibraryTemplateButtonInput
    LibraryTemplateButtonList.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of button (for example, QUICK_REPLY, CALL, or URL).</p>"}))
    LibraryTemplateButtonList.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The text displayed on the button (maximum 40 characters).</p>"}))
    LibraryTemplateButtonList.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'phoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number in E.164 format for CALL-type buttons.</p>"}))
    LibraryTemplateButtonList.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaUrl, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL for URL-type buttons.</p>"}))
    LibraryTemplateButtonList.add_member(:otp_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OtpType, location_name: 'otpType', traits: {"smithy.api#documentation" => "<p>The type of one-time password for OTP buttons.</p>"}))
    LibraryTemplateButtonList.add_member(:zero_tap_terms_accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroTapTermsAccepted, location_name: 'zeroTapTermsAccepted', traits: {"smithy.api#documentation" => "<p>When true, indicates acceptance of zero-tap terms for the button.</p>"}))
    LibraryTemplateButtonList.add_member(:supported_apps, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedApps, location_name: 'supportedApps', traits: {"smithy.api#documentation" => "<p>List of supported applications for this button type.</p>"}))
    LibraryTemplateButtonList.type = Types::LibraryTemplateButtonList
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    LinkedAccountWithIncompleteSetup.key = Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId)
    LinkedAccountWithIncompleteSetup.value = Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountIdMetaData)
    LinkedWhatsAppBusinessAccount.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the linked WhatsApp Business Account, formatted as <code>waba-01234567890123456789012345678901</code>.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:waba_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId, location_name: 'wabaId', traits: {"smithy.api#documentation" => "<p>The WhatsApp Business Account ID from meta.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'registrationStatus', traits: {"smithy.api#documentation" => "<p>The registration status of the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:link_date, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountLinkDate, location_name: 'linkDate', traits: {"smithy.api#documentation" => "<p>The date the WhatsApp Business Account was linked.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:waba_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountName, location_name: 'wabaName', traits: {"smithy.api#documentation" => "<p>The name of the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, location_name: 'eventDestinations', traits: {"smithy.api#documentation" => "<p>The event destinations for the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.add_member(:phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberSummaryList, location_name: 'phoneNumbers', traits: {"smithy.api#documentation" => "<p>The phone numbers associated with the Linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccount.type = Types::LinkedWhatsAppBusinessAccount
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountName, location_name: 'accountName', traits: {"smithy.api#documentation" => "<p>The name of your account.</p>"}))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'registrationStatus', traits: {"smithy.api#documentation" => "<p>The registration status of the linked WhatsApp Business Account.</p>"}))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:unregistered_whats_app_phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberDetailList, location_name: 'unregisteredWhatsAppPhoneNumbers', traits: {"smithy.api#documentation" => "<p>The details for unregistered WhatsApp phone numbers.</p>"}))
    LinkedWhatsAppBusinessAccountIdMetaData.add_member(:waba_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'wabaId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the WhatsApp Business Account ID.</p>"}))
    LinkedWhatsAppBusinessAccountIdMetaData.type = Types::LinkedWhatsAppBusinessAccountIdMetaData
    LinkedWhatsAppBusinessAccountSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the linked WhatsApp Business Account, formatted as <code>waba-01234567890123456789012345678901</code>.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId, location_name: 'wabaId', traits: {"smithy.api#documentation" => "<p>The WhatsApp Business Account ID provided by Meta.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'registrationStatus', traits: {"smithy.api#documentation" => "<p>The registration status of the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:link_date, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountLinkDate, location_name: 'linkDate', traits: {"smithy.api#documentation" => "<p>The date the WhatsApp Business Account was linked.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:waba_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountName, location_name: 'wabaName', traits: {"smithy.api#documentation" => "<p>The name of the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, location_name: 'eventDestinations', traits: {"smithy.api#documentation" => "<p>The event destinations for the linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    LinkedWhatsAppBusinessAccountSummary.type = Types::LinkedWhatsAppBusinessAccountSummary
    LinkedWhatsAppBusinessAccountSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountSummary)
    ListLinkedWhatsAppBusinessAccountsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The next token for pagination.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListLinkedWhatsAppBusinessAccountsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListLinkedWhatsAppBusinessAccountsInput.type = Types::ListLinkedWhatsAppBusinessAccountsInput
    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:linked_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountSummaryList, location_name: 'linkedAccounts', traits: {"smithy.api#documentation" => "<p>A list of WhatsApp Business Accounts linked to your Amazon Web Services account.</p>"}))
    ListLinkedWhatsAppBusinessAccountsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The next token for pagination.</p>"}))
    ListLinkedWhatsAppBusinessAccountsOutput.type = Types::ListLinkedWhatsAppBusinessAccountsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to retrieve the tags from.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code of the response.</p>"}))
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWhatsAppMessageTemplatesInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account to list templates for.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    ListWhatsAppMessageTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWhatsAppMessageTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page (1-100).</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListWhatsAppMessageTemplatesInput.type = Types::ListWhatsAppMessageTemplatesInput
    ListWhatsAppMessageTemplatesOutput.add_member(:templates, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummaryList, location_name: 'templates', traits: {"smithy.api#documentation" => "<p>A list of template summaries.</p>"}))
    ListWhatsAppMessageTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next page of results, if any.</p>"}))
    ListWhatsAppMessageTemplatesOutput.type = Types::ListWhatsAppMessageTemplatesOutput
    ListWhatsAppTemplateLibraryInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListWhatsAppTemplateLibraryInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page (1-100).</p>"}))
    ListWhatsAppTemplateLibraryInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account to list library templates for.</p>", "smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    ListWhatsAppTemplateLibraryInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Map of filters to apply (searchKey, topic, usecase, industry, language).</p>"}))
    ListWhatsAppTemplateLibraryInput.type = Types::ListWhatsAppTemplateLibraryInput
    ListWhatsAppTemplateLibraryOutput.add_member(:meta_library_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaLibraryTemplatesList, location_name: 'metaLibraryTemplates', traits: {"smithy.api#documentation" => "<p>A list of templates from Meta's library.</p>"}))
    ListWhatsAppTemplateLibraryOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next page of results, if any.</p>"}))
    ListWhatsAppTemplateLibraryOutput.type = Types::ListWhatsAppTemplateLibraryOutput
    MetaIndustries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetaIndustry)
    MetaLibraryTemplate.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name to assign to the template.</p>", "smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:library_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateName, location_name: 'libraryTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template in Meta's library.</p>", "smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:template_category, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: 'templateCategory', traits: {"smithy.api#documentation" => "<p>The category of the template (for example, UTILITY or MARKETING).</p>", "smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:template_language, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateLanguage, location_name: 'templateLanguage', traits: {"smithy.api#documentation" => "<p>The language code for the template (for example, en_US).</p>", "smithy.api#required" => {}}))
    MetaLibraryTemplate.add_member(:library_template_button_inputs, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaLibraryTemplateButtonInputs, location_name: 'libraryTemplateButtonInputs', traits: {"smithy.api#documentation" => "<p>Button customizations for the template.</p>"}))
    MetaLibraryTemplate.add_member(:library_template_body_inputs, Smithy::Schema::Shapes::ShapeRef.new(shape: LibraryTemplateBodyInputs, location_name: 'libraryTemplateBodyInputs', traits: {"smithy.api#documentation" => "<p>Body text customizations for the template.</p>"}))
    MetaLibraryTemplate.type = Types::MetaLibraryTemplate
    MetaLibraryTemplateButtonInputs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LibraryTemplateButtonInput)
    MetaLibraryTemplateButtonList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LibraryTemplateButtonList)
    MetaLibraryTemplateDefinition.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_language, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateLanguage, location_name: 'templateLanguage', traits: {"smithy.api#documentation" => "<p>The language code for the template (for example, en_US).</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_category, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: 'templateCategory', traits: {"smithy.api#documentation" => "<p>The category of the template (for example, UTILITY or MARKETING).</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateTopic, location_name: 'templateTopic', traits: {"smithy.api#documentation" => "<p>The topic or subject matter of the template.</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_use_case, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateUseCase, location_name: 'templateUseCase', traits: {"smithy.api#documentation" => "<p>The intended use case for the template.</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_industry, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaIndustries, location_name: 'templateIndustry', traits: {"smithy.api#documentation" => "<p>The industries the template is designed for.</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_header, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateHeader, location_name: 'templateHeader', traits: {"smithy.api#documentation" => "<p>The header text of the template.</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_body, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateBody, location_name: 'templateBody', traits: {"smithy.api#documentation" => "<p>The body text of the template.</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_buttons, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaLibraryTemplateButtonList, location_name: 'templateButtons', traits: {"smithy.api#documentation" => "<p>The buttons included in the template.</p>"}))
    MetaLibraryTemplateDefinition.add_member(:template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: 'templateId', traits: {"smithy.api#documentation" => "<p>The ID of the template in Meta's library.</p>"}))
    MetaLibraryTemplateDefinition.type = Types::MetaLibraryTemplateDefinition
    MetaLibraryTemplatesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetaLibraryTemplateDefinition)
    MetaUrlWithSuffixExample.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    MetaUrlWithSuffixExample.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    PostWhatsAppMessageMediaInput.add_member(:origination_phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, location_name: 'originationPhoneNumberId', traits: {"smithy.api#documentation" => "<p>The ID of the phone number to associate with the WhatsApp media file. The phone number\n         identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.\n         Use <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html\">GetLinkedWhatsAppBusinessAccount</a>  to find a phone number's\n         id.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_presigned_url, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PresignedUrl, location_name: 'sourceS3PresignedUrl', traits: {"smithy.api#documentation" => "<p>The source presign url of the media file.</p>"}))
    PostWhatsAppMessageMediaInput.add_member(:source_s3_file, Smithy::Schema::Shapes::ShapeRef.new(shape: S3File, location_name: 'sourceS3File', traits: {"smithy.api#documentation" => "<p>The source S3 url for the media file.</p>"}))
    PostWhatsAppMessageMediaInput.type = Types::PostWhatsAppMessageMediaInput
    PostWhatsAppMessageMediaOutput.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppMediaId, location_name: 'mediaId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the posted WhatsApp message.</p>"}))
    PostWhatsAppMessageMediaOutput.type = Types::PostWhatsAppMessageMediaOutput
    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as\n         <code>waba-01234567890123456789012345678901</code>. Use\n         <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html\">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "WabaId"}))
    PutWhatsAppBusinessAccountEventDestinationsInput.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, location_name: 'eventDestinations', traits: {"smithy.api#documentation" => "<p>An array of <code>WhatsAppBusinessAccountEventDestination</code> event destinations.</p>", "smithy.api#required" => {}}))
    PutWhatsAppBusinessAccountEventDestinationsInput.type = Types::PutWhatsAppBusinessAccountEventDestinationsInput
    PutWhatsAppBusinessAccountEventDestinationsOutput.type = Types::PutWhatsAppBusinessAccountEventDestinationsOutput
    RegistrationStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    RegistrationStatus.add_member(:incomplete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPLETE', traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3File.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The bucket name.</p>", "smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$", "smithy.api#required" => {}}))
    S3File.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The object key of the media file.</p>", "smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#required" => {}}))
    S3File.type = Types::S3File
    S3PresignedUrl.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The presign url to the object.</p>", "smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^https://(.*)s3(.*).amazonaws.com/(.*)$", "smithy.api#required" => {}}))
    S3PresignedUrl.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: Headers, location_name: 'headers', traits: {"smithy.api#documentation" => "<p>A map of headers and their values. You must specify the <code>Content-Type</code> header when using <code>PostWhatsAppMessageMedia</code>. For a list of common headers, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html\">Common Request Headers</a> in the <i>Amazon S3\n         API Reference</i>\n         </p>", "smithy.api#required" => {}}))
    S3PresignedUrl.type = Types::S3PresignedUrl
    SendWhatsAppMessageInput.add_member(:origination_phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, location_name: 'originationPhoneNumberId', traits: {"smithy.api#documentation" => "<p>The ID of the phone number used to send the WhatsApp message. If you are sending a media\n         file only the <code>originationPhoneNumberId</code> used to upload the file can be used.\n         Phone number identifiers are formatted as\n            <code>phone-number-id-01234567890123456789012345678901</code>. Use\n         <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html\">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's\n         id.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "OriginationPhoneNumberId"}))
    SendWhatsAppMessageInput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppMessageBlob, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message to send through WhatsApp. The length is in KB. The message field passes through a WhatsApp\n         Message object, see <a href=\"https://developers.facebook.com/docs/whatsapp/cloud-api/reference/messages\">Messages</a> in the <i>WhatsApp Business Platform Cloud API\n               Reference</i>.</p>", "smithy.api#required" => {}}))
    SendWhatsAppMessageInput.add_member(:meta_api_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'metaApiVersion', traits: {"smithy.api#documentation" => "<p>The API version for the request formatted as <code>v{VersionNumber}</code>. For a list of supported API versions and Amazon Web Services Regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html\">\n               <i>Amazon Web Services End User Messaging Social API</i> Service Endpoints</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#required" => {}}))
    SendWhatsAppMessageInput.type = Types::SendWhatsAppMessageInput
    SendWhatsAppMessageOutput.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the message.</p>"}))
    SendWhatsAppMessageOutput.type = Types::SendWhatsAppMessageOutput
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SupportedApp.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    SupportedApp.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SupportedApps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedApp)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value.</p>", "smithy.api#length" => {"max" => 256}}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"aws.api#data" => "tagging", "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to tag.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code of the tag resource operation.</p>"}))
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateSummary.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateName, location_name: 'templateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>"}))
    TemplateSummary.add_member(:meta_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: 'metaTemplateId', traits: {"smithy.api#documentation" => "<p>The numeric ID assigned to the template by Meta.</p>"}))
    TemplateSummary.add_member(:template_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateStatus, location_name: 'templateStatus', traits: {"smithy.api#documentation" => "<p>The current status of the template (for example, APPROVED, PENDING, or REJECTED).</p>"}))
    TemplateSummary.add_member(:template_quality_score, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateQualityScore, location_name: 'templateQualityScore', traits: {"smithy.api#documentation" => "<p>The quality score assigned to the template by Meta.</p>"}))
    TemplateSummary.add_member(:template_language, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateLanguage, location_name: 'templateLanguage', traits: {"smithy.api#documentation" => "<p>The language code of the template (for example, en_US).</p>"}))
    TemplateSummary.add_member(:template_category, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: 'templateCategory', traits: {"smithy.api#documentation" => "<p>The category of the template (for example, UTILITY or MARKETING).</p>"}))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummary)
    ThrottledRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottledRequestException.type = Types::ThrottledRequestException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"aws.api#data" => "tagging", "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'statusCode', traits: {"smithy.api#documentation" => "<p>The status code of the untag resource operation.</p>"}))
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateWhatsAppMessageTemplateInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the WhatsApp Business Account associated with this template.</p>", "smithy.api#required" => {}}))
    UpdateWhatsAppMessageTemplateInput.add_member(:meta_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateId, location_name: 'metaTemplateId', traits: {"smithy.api#documentation" => "<p>The numeric ID of the template assigned by Meta.</p>", "smithy.api#required" => {}}))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_category, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateCategory, location_name: 'templateCategory', traits: {"smithy.api#documentation" => "<p>The new category for the template (for example, UTILITY or MARKETING).</p>"}))
    UpdateWhatsAppMessageTemplateInput.add_member(:template_components, Smithy::Schema::Shapes::ShapeRef.new(shape: MetaTemplateComponents, location_name: 'templateComponents', traits: {"smithy.api#documentation" => "<p>The updated components of the template as a JSON blob (maximum 3000 characters).</p>"}))
    UpdateWhatsAppMessageTemplateInput.type = Types::UpdateWhatsAppMessageTemplateInput
    UpdateWhatsAppMessageTemplateOutput.type = Types::UpdateWhatsAppMessageTemplateOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    WabaPhoneNumberSetupFinalization.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumber, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the originating phone number associated with the media. Phone\n         number identifiers are formatted as\n         <code>phone-number-id-01234567890123456789012345678901</code>. Use\n         <a href=\"https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html\">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's\n         id.</p>", "smithy.api#required" => {}}))
    WabaPhoneNumberSetupFinalization.add_member(:two_factor_pin, Smithy::Schema::Shapes::ShapeRef.new(shape: TwoFactorPin, location_name: 'twoFactorPin', traits: {"smithy.api#documentation" => "<p>The PIN to use for two-step verification. To reset your PIN follow the directions in\n         <a href=\"https://developers.facebook.com/docs/whatsapp/cloud-api/reference/two-step-verification/#updating-pin\">Updating PIN</a> in the <i>WhatsApp Business Platform Cloud API\n               Reference</i>.</p>", "smithy.api#required" => {}}))
    WabaPhoneNumberSetupFinalization.add_member(:data_localization_region, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'dataLocalizationRegion', traits: {"smithy.api#documentation" => "<p>The two letter ISO region for the location of where Meta will store data.</p>\n         <p class=\"title\">\n            <b>Asia–Pacific (APAC)</b>\n         </p>\n         <ul>\n            <li>\n               <p>Australia <b>AU</b>\n               </p>\n            </li>\n            <li>\n               <p>Indonesia <b>ID</b>\n               </p>\n            </li>\n            <li>\n               <p>India <b>IN</b>\n               </p>\n            </li>\n            <li>\n               <p>Japan <b>JP</b>\n               </p>\n            </li>\n            <li>\n               <p>Singapore <b>SG</b>\n               </p>\n            </li>\n            <li>\n               <p>South Korea <b>KR</b>\n               </p>\n            </li>\n         </ul>\n         <p class=\"title\">\n            <b>Europe</b>\n         </p>\n         <ul>\n            <li>\n               <p>Germany <b>DE</b>\n               </p>\n            </li>\n            <li>\n               <p>Switzerland <b>CH</b>\n               </p>\n            </li>\n            <li>\n               <p>United Kingdom <b>GB</b>\n               </p>\n            </li>\n         </ul>\n         <p class=\"title\">\n            <b>Latin America (LATAM)</b>\n         </p>\n         <ul>\n            <li>\n               <p>Brazil <b>BR</b>\n               </p>\n            </li>\n         </ul>\n         <p class=\"title\">\n            <b>Middle East and Africa (MEA)</b>\n         </p>\n         <ul>\n            <li>\n               <p>Bahrain <b>BH</b>\n               </p>\n            </li>\n            <li>\n               <p>South Africa <b>ZA</b>\n               </p>\n            </li>\n            <li>\n               <p>United Arab Emirates <b>AE</b>\n               </p>\n            </li>\n         </ul>\n         <p class=\"title\">\n            <b>North America (NORAM)</b>\n         </p>\n         <ul>\n            <li>\n               <p>Canada <b>CA</b>\n               </p>\n            </li>\n         </ul>"}))
    WabaPhoneNumberSetupFinalization.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags.</p>"}))
    WabaPhoneNumberSetupFinalization.type = Types::WabaPhoneNumberSetupFinalization
    WabaPhoneNumberSetupFinalizationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WabaPhoneNumberSetupFinalization)
    WabaSetupFinalization.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the linked WhatsApp Business Account, formatted as <code>waba-01234567890123456789012345678901</code>.</p>"}))
    WabaSetupFinalization.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestinations, location_name: 'eventDestinations', traits: {"smithy.api#documentation" => "<p>The event destinations for the linked WhatsApp Business Account.</p>"}))
    WabaSetupFinalization.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of key and value pair tags.</p>"}))
    WabaSetupFinalization.type = Types::WabaSetupFinalization
    WhatsAppBusinessAccountEventDestination.add_member(:event_destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationArn, location_name: 'eventDestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the event destination.</p>", "smithy.api#required" => {}}))
    WhatsAppBusinessAccountEventDestination.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an Identity and Access Management role\n         that is able to import phone numbers and write events.</p>"}))
    WhatsAppBusinessAccountEventDestination.type = Types::WhatsAppBusinessAccountEventDestination
    WhatsAppBusinessAccountEventDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppBusinessAccountEventDestination)
    WhatsAppPhoneNumberDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppPhoneNumberArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the WhatsApp phone number.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'phoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number for sending WhatsApp.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, location_name: 'phoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID. Phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>. </p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:meta_phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumber, location_name: 'metaPhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID from Meta.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberName, location_name: 'displayPhoneNumberName', traits: {"smithy.api#documentation" => "<p>The display name for this phone number.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:display_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppDisplayPhoneNumber, location_name: 'displayPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number that appears in the recipients display.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:quality_rating, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberQualityRating, location_name: 'qualityRating', traits: {"smithy.api#documentation" => "<p>The quality rating of the phone number.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberDetail.add_member(:data_localization_region, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'dataLocalizationRegion', traits: {"smithy.api#documentation" => "<p>The geographic region where the WhatsApp phone number's data is stored and processed.</p>"}))
    WhatsAppPhoneNumberDetail.type = Types::WhatsAppPhoneNumberDetail
    WhatsAppPhoneNumberDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberDetail)
    WhatsAppPhoneNumberSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppPhoneNumberArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The full Amazon Resource Name (ARN) for the phone number.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'phoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number associated with the Linked WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberId, location_name: 'phoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID. Phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>. </p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:meta_phone_number_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumber, location_name: 'metaPhoneNumberId', traits: {"smithy.api#documentation" => "<p>The phone number ID from Meta.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberName, location_name: 'displayPhoneNumberName', traits: {"smithy.api#documentation" => "<p>The display name for this phone number.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:display_phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppDisplayPhoneNumber, location_name: 'displayPhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number that appears in the recipients display.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:quality_rating, Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberQualityRating, location_name: 'qualityRating', traits: {"smithy.api#documentation" => "<p>The quality rating of the phone number. This is from Meta.</p>", "smithy.api#required" => {}}))
    WhatsAppPhoneNumberSummary.add_member(:data_localization_region, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoCountryCode, location_name: 'dataLocalizationRegion', traits: {"smithy.api#documentation" => "<p>The geographic region where the WhatsApp phone number's data is stored and processed.</p>"}))
    WhatsAppPhoneNumberSummary.type = Types::WhatsAppPhoneNumberSummary
    WhatsAppPhoneNumberSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WhatsAppPhoneNumberSummary)
    WhatsAppSetupFinalization.add_member(:associate_in_progress_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateInProgressToken, location_name: 'associateInProgressToken', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services access token generated by <code>WhatsAppSignupCallback</code> and used by <code>WhatsAppSetupFinalization</code>.</p>", "smithy.api#required" => {}}))
    WhatsAppSetupFinalization.add_member(:phone_numbers, Smithy::Schema::Shapes::ShapeRef.new(shape: WabaPhoneNumberSetupFinalizationList, location_name: 'phoneNumbers', traits: {"smithy.api#documentation" => "<p>An array of WabaPhoneNumberSetupFinalization objects containing the details of each phone number associated with the WhatsApp Business Account.</p>", "smithy.api#required" => {}}))
    WhatsAppSetupFinalization.add_member(:phone_number_parent, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedWhatsAppBusinessAccountId, location_name: 'phoneNumberParent', traits: {"smithy.api#documentation" => "<p>Used to add a new phone number to an existing WhatsApp Business Account. This field can't be used when the <code>waba</code> field is present.</p>"}))
    WhatsAppSetupFinalization.add_member(:waba, Smithy::Schema::Shapes::ShapeRef.new(shape: WabaSetupFinalization, location_name: 'waba', traits: {"smithy.api#documentation" => "<p>Used to create a new WhatsApp Business Account and add a phone number. This field can't be used when the <code>phoneNumberParent</code> field is present.</p>"}))
    WhatsAppSetupFinalization.type = Types::WhatsAppSetupFinalization
    WhatsAppSignupCallback.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The access token for your WhatsApp Business Account. The <code>accessToken</code> value is provided by Meta.</p>", "smithy.api#length" => {"max" => 1000}, "smithy.api#required" => {}}))
    WhatsAppSignupCallback.add_member(:callback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'callbackUrl', traits: {"smithy.api#documentation" => "<p>The URL where WhatsApp will send callback notifications for this account.</p>", "smithy.api#length" => {"max" => 100}}))
    WhatsAppSignupCallback.type = Types::WhatsAppSignupCallback
    WhatsAppSignupCallbackResult.add_member(:associate_in_progress_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateInProgressToken, location_name: 'associateInProgressToken', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services access token generated by <code>WhatsAppSignupCallback</code> and used by <code>WhatsAppSetupFinalization</code>.</p>"}))
    WhatsAppSignupCallbackResult.add_member(:linked_accounts_with_incomplete_setup, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedAccountWithIncompleteSetup, location_name: 'linkedAccountsWithIncompleteSetup', traits: {"smithy.api#documentation" => "<p>A LinkedWhatsAppBusinessAccountIdMetaData object map containing the details of any WhatsAppBusiness accounts that have incomplete setup.</p>"}))
    WhatsAppSignupCallbackResult.type = Types::WhatsAppSignupCallbackResult

    SocialMessaging = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.socialmessaging#SocialMessaging"
      service.name = "SocialMessaging"
      service.version = "2024-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SocialMessaging", "arnNamespace" => "social-messaging", "cloudTrailEventSource" => "social-messaging.amazonaws.com", "endpointPrefix" => "social-messaging"}, "aws.auth#sigv4" => {"name" => "social-messaging"}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["authorization", "x-amz-date", "x-amz-security-token", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "content-length", "x-api-key", "amz-sdk-request", "amz-sdk-invocation-id", "Csrf-Token"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "Csrf-Token"]}, "smithy.api#title" => "AWS End User Messaging Social"}
      service.add_operation(:associate_whats_app_business_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#AssociateWhatsAppBusinessAccount"
        operation.name = "AssociateWhatsAppBusinessAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateWhatsAppBusinessAccountInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateWhatsAppBusinessAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/signup", "code" => 200}}
      end)
      service.add_operation(:create_whats_app_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplate"
        operation.name = "CreateWhatsAppMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/put", "code" => 200}}
      end)
      service.add_operation(:create_whats_app_message_template_from_library, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateFromLibrary"
        operation.name = "CreateWhatsAppMessageTemplateFromLibrary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateFromLibraryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateFromLibraryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/create", "code" => 200}}
      end)
      service.add_operation(:create_whats_app_message_template_media, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#CreateWhatsAppMessageTemplateMedia"
        operation.name = "CreateWhatsAppMessageTemplateMedia"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateMediaInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWhatsAppMessageTemplateMediaOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/media", "code" => 200}}
      end)
      service.add_operation(:delete_whats_app_message_media, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DeleteWhatsAppMessageMedia"
        operation.name = "DeleteWhatsAppMessageMedia"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageMediaInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageMediaOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedByMetaException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/media", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_whats_app_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DeleteWhatsAppMessageTemplate"
        operation.name = "DeleteWhatsAppMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWhatsAppMessageTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/template", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_whats_app_business_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#DisassociateWhatsAppBusinessAccount"
        operation.name = "DisassociateWhatsAppBusinessAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateWhatsAppBusinessAccountInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateWhatsAppBusinessAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/whatsapp/waba/disassociate", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_linked_whats_app_business_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccount"
        operation.name = "GetLinkedWhatsAppBusinessAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/waba/details", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_linked_whats_app_business_account_phone_number, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetLinkedWhatsAppBusinessAccountPhoneNumber"
        operation.name = "GetLinkedWhatsAppBusinessAccountPhoneNumber"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountPhoneNumberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkedWhatsAppBusinessAccountPhoneNumberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/waba/phone/details", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_whats_app_message_media, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppMessageMedia"
        operation.name = "GetWhatsAppMessageMedia"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWhatsAppMessageMediaInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWhatsAppMessageMediaOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedByMetaException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/media/get", "code" => 200}}
      end)
      service.add_operation(:get_whats_app_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#GetWhatsAppMessageTemplate"
        operation.name = "GetWhatsAppMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWhatsAppMessageTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWhatsAppMessageTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/template", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_linked_whats_app_business_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListLinkedWhatsAppBusinessAccounts"
        operation.name = "ListLinkedWhatsAppBusinessAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinkedWhatsAppBusinessAccountsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinkedWhatsAppBusinessAccountsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/waba/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLinkedWhatsAppBusinessAccounts.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/list", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsFailure", "params" => {"resourceArn" => "arn:aws:social-messaging:us-east-1:9923825:phone-number-id/45c1973a7577"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_whats_app_message_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListWhatsAppMessageTemplates"
        operation.name = "ListWhatsAppMessageTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWhatsAppMessageTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWhatsAppMessageTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/whatsapp/template/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWhatsAppMessageTemplates.new
      end)
      service.add_operation(:list_whats_app_template_library, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#ListWhatsAppTemplateLibrary"
        operation.name = "ListWhatsAppTemplateLibrary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWhatsAppTemplateLibraryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWhatsAppTemplateLibraryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template/library", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWhatsAppTemplateLibrary.new
      end)
      service.add_operation(:post_whats_app_message_media, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#PostWhatsAppMessageMedia"
        operation.name = "PostWhatsAppMessageMedia"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PostWhatsAppMessageMediaInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PostWhatsAppMessageMediaOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedByMetaException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/media", "code" => 200}}
      end)
      service.add_operation(:put_whats_app_business_account_event_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#PutWhatsAppBusinessAccountEventDestinations"
        operation.name = "PutWhatsAppBusinessAccountEventDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutWhatsAppBusinessAccountEventDestinationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutWhatsAppBusinessAccountEventDestinationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/whatsapp/waba/eventdestinations", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_whats_app_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#SendWhatsAppMessage"
        operation.name = "SendWhatsAppMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendWhatsAppMessageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendWhatsAppMessageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/send", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/tag-resource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/untag-resource", "code" => 200}}
      end)
      service.add_operation(:update_whats_app_message_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.socialmessaging#UpdateWhatsAppMessageTemplate"
        operation.name = "UpdateWhatsAppMessageTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWhatsAppMessageTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWhatsAppMessageTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/whatsapp/template", "code" => 200}}
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

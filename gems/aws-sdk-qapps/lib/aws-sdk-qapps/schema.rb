# frozen_string_literal: true

# This is generated code!

module Aws::QApps
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Action = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#Action', name: 'Action')
    ActionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#ActionIdentifier', name: 'ActionIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AppArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#AppArn', name: 'AppArn')
    AppDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#AppDefinition', name: 'AppDefinition')
    AppDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#AppDefinitionInput', name: 'AppDefinitionInput')
    AppRequiredCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#AppRequiredCapabilities', name: 'AppRequiredCapabilities')
    AppRequiredCapability = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#AppRequiredCapability', name: 'AppRequiredCapability')
    AppStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#AppStatus', name: 'AppStatus')
    AppVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qapps#AppVersion', name: 'AppVersion', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    AssociateLibraryItemReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#AssociateLibraryItemReviewInput', name: 'AssociateLibraryItemReviewInput')
    AssociateQAppWithUserInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#AssociateQAppWithUserInput', name: 'AssociateQAppWithUserInput')
    AttributeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#AttributeFilter', name: 'AttributeFilter')
    AttributeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#AttributeFilters', name: 'AttributeFilters')
    BatchCreateCategoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#BatchCreateCategoryInput', name: 'BatchCreateCategoryInput')
    BatchCreateCategoryInputCategory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#BatchCreateCategoryInputCategory', name: 'BatchCreateCategoryInputCategory')
    BatchCreateCategoryInputCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#BatchCreateCategoryInputCategoryList', name: 'BatchCreateCategoryInputCategoryList', traits: {"smithy.api#length" => {"max" => 10}})
    BatchDeleteCategoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#BatchDeleteCategoryInput', name: 'BatchDeleteCategoryInput')
    BatchUpdateCategoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#BatchUpdateCategoryInput', name: 'BatchUpdateCategoryInput')
    Card = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qapps#Card', name: 'Card')
    CardInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qapps#CardInput', name: 'CardInput')
    CardList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#CardList', name: 'CardList', traits: {"smithy.api#length" => {"max" => 20}})
    CardModelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#CardModelList', name: 'CardModelList', traits: {"smithy.api#length" => {"max" => 20}})
    CardOutputSource = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#CardOutputSource', name: 'CardOutputSource')
    CardStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CardStatus', name: 'CardStatus')
    CardStatusMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qapps#CardStatusMap', name: 'CardStatusMap')
    CardType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#CardType', name: 'CardType')
    CardValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CardValue', name: 'CardValue')
    CardValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#CardValueList', name: 'CardValueList', traits: {"smithy.api#length" => {"max" => 20}})
    CategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#CategoriesList', name: 'CategoriesList', traits: {"smithy.api#length" => {"max" => 10}})
    Category = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#Category', name: 'Category')
    CategoryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#CategoryIdList', name: 'CategoryIdList', traits: {"smithy.api#length" => {"max" => 3}})
    CategoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CategoryInput', name: 'CategoryInput')
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#CategoryList', name: 'CategoryList', traits: {"smithy.api#length" => {"max" => 3}})
    CategoryListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#CategoryListInput', name: 'CategoryListInput', traits: {"smithy.api#length" => {"max" => 10}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ContentTooLargeException', name: 'ContentTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ConversationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ConversationMessage', name: 'ConversationMessage')
    CreateLibraryItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CreateLibraryItemInput', name: 'CreateLibraryItemInput')
    CreateLibraryItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CreateLibraryItemOutput', name: 'CreateLibraryItemOutput')
    CreatePresignedUrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CreatePresignedUrlInput', name: 'CreatePresignedUrlInput')
    CreatePresignedUrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CreatePresignedUrlOutput', name: 'CreatePresignedUrlOutput')
    CreateQAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CreateQAppInput', name: 'CreateQAppInput')
    CreateQAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#CreateQAppOutput', name: 'CreateQAppOutput')
    Default = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#Default', name: 'Default', traits: {"smithy.api#length" => {"max" => 500}})
    DeleteCategoryInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#DeleteCategoryInputList', name: 'DeleteCategoryInputList', traits: {"smithy.api#length" => {"max" => 10}})
    DeleteLibraryItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#DeleteLibraryItemInput', name: 'DeleteLibraryItemInput')
    DeleteQAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#DeleteQAppInput', name: 'DeleteQAppInput')
    DependencyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#DependencyList', name: 'DependencyList')
    DescribeQAppPermissionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#DescribeQAppPermissionsInput', name: 'DescribeQAppPermissionsInput')
    DescribeQAppPermissionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#DescribeQAppPermissionsOutput', name: 'DescribeQAppPermissionsOutput')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#Description', name: 'Description', traits: {"smithy.api#length" => {"max" => 500}})
    DisassociateLibraryItemReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#DisassociateLibraryItemReviewInput', name: 'DisassociateLibraryItemReviewInput')
    DisassociateQAppFromUserInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#DisassociateQAppFromUserInput', name: 'DisassociateQAppFromUserInput')
    DocumentAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#DocumentAttribute', name: 'DocumentAttribute')
    DocumentAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#DocumentAttributeKey', name: 'DocumentAttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z0-9_-]*$"})
    DocumentAttributeStringListValue = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#DocumentAttributeStringListValue', name: 'DocumentAttributeStringListValue')
    DocumentAttributeStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#DocumentAttributeStringValue', name: 'DocumentAttributeStringValue', traits: {"smithy.api#length" => {"max" => 2048}})
    DocumentAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qapps#DocumentAttributeValue', name: 'DocumentAttributeValue')
    DocumentScope = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#DocumentScope', name: 'DocumentScope')
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#ExecutionStatus', name: 'ExecutionStatus')
    ExportQAppSessionDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ExportQAppSessionDataInput', name: 'ExportQAppSessionDataInput')
    ExportQAppSessionDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ExportQAppSessionDataOutput', name: 'ExportQAppSessionDataOutput')
    FileUploadCard = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#FileUploadCard', name: 'FileUploadCard')
    FileUploadCardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#FileUploadCardInput', name: 'FileUploadCardInput')
    Filename = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#Filename', name: 'Filename', traits: {"smithy.api#length" => {"max" => 100}})
    FormInputCard = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#FormInputCard', name: 'FormInputCard')
    FormInputCardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#FormInputCardInput', name: 'FormInputCardInput')
    FormInputCardMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#FormInputCardMetadata', name: 'FormInputCardMetadata')
    FormInputCardMetadataSchema = ::Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.qapps#FormInputCardMetadataSchema', name: 'FormInputCardMetadataSchema')
    GetLibraryItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetLibraryItemInput', name: 'GetLibraryItemInput')
    GetLibraryItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetLibraryItemOutput', name: 'GetLibraryItemOutput')
    GetQAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetQAppInput', name: 'GetQAppInput')
    GetQAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetQAppOutput', name: 'GetQAppOutput')
    GetQAppSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetQAppSessionInput', name: 'GetQAppSessionInput')
    GetQAppSessionMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetQAppSessionMetadataInput', name: 'GetQAppSessionMetadataInput')
    GetQAppSessionMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetQAppSessionMetadataOutput', name: 'GetQAppSessionMetadataOutput')
    GetQAppSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#GetQAppSessionOutput', name: 'GetQAppSessionOutput')
    ImportDocumentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ImportDocumentInput', name: 'ImportDocumentInput')
    ImportDocumentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ImportDocumentOutput', name: 'ImportDocumentOutput')
    InitialPrompt = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#InitialPrompt', name: 'InitialPrompt', traits: {"smithy.api#length" => {"max" => 10000}})
    InputCardComputeMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#InputCardComputeMode', name: 'InputCardComputeMode')
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#InstanceId', name: 'InstanceId')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LibraryItemList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#LibraryItemList', name: 'LibraryItemList')
    LibraryItemMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#LibraryItemMember', name: 'LibraryItemMember')
    LibraryItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#LibraryItemStatus', name: 'LibraryItemStatus')
    ListCategoriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListCategoriesInput', name: 'ListCategoriesInput')
    ListCategoriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListCategoriesOutput', name: 'ListCategoriesOutput')
    ListLibraryItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListLibraryItemsInput', name: 'ListLibraryItemsInput')
    ListLibraryItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListLibraryItemsOutput', name: 'ListLibraryItemsOutput')
    ListQAppSessionDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListQAppSessionDataInput', name: 'ListQAppSessionDataInput')
    ListQAppSessionDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListQAppSessionDataOutput', name: 'ListQAppSessionDataOutput')
    ListQAppsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListQAppsInput', name: 'ListQAppsInput')
    ListQAppsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListQAppsOutput', name: 'ListQAppsOutput')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qapps#Long', name: 'Long')
    MemoryReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#MemoryReferenceList', name: 'MemoryReferenceList')
    MessageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#MessageList', name: 'MessageList')
    PageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qapps#PageLimit', name: 'PageLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"max" => 300}})
    PermissionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#PermissionInput', name: 'PermissionInput')
    PermissionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#PermissionOutput', name: 'PermissionOutput')
    PermissionsInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#PermissionsInputList', name: 'PermissionsInputList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    PermissionsOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#PermissionsOutputList', name: 'PermissionsOutputList')
    Placeholder = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#Placeholder', name: 'Placeholder', traits: {"smithy.api#length" => {"max" => 500}})
    PlatoString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#PlatoString', name: 'PlatoString', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PluginId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#PluginId', name: 'PluginId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    PluginType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#PluginType', name: 'PluginType')
    PredictAppDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#PredictAppDefinition', name: 'PredictAppDefinition')
    PredictQAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#PredictQAppInput', name: 'PredictQAppInput')
    PredictQAppInputOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qapps#PredictQAppInputOptions', name: 'PredictQAppInputOptions')
    PredictQAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#PredictQAppOutput', name: 'PredictQAppOutput')
    PresignedUrlFields = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qapps#PresignedUrlFields', name: 'PresignedUrlFields')
    PrincipalOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#PrincipalOutput', name: 'PrincipalOutput')
    Prompt = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#Prompt', name: 'Prompt', traits: {"smithy.api#length" => {"max" => 50000}})
    QAppSessionData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#QAppSessionData', name: 'QAppSessionData')
    QAppSessionDataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#QAppSessionDataList', name: 'QAppSessionDataList')
    QAppsTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.qapps#QAppsTimestamp', name: 'QAppsTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    QPluginCard = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#QPluginCard', name: 'QPluginCard')
    QPluginCardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#QPluginCardInput', name: 'QPluginCardInput')
    QQueryCard = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#QQueryCard', name: 'QQueryCard')
    QQueryCardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#QQueryCardInput', name: 'QQueryCardInput')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Sender = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#Sender', name: 'Sender')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#SessionName', name: 'SessionName', traits: {"smithy.api#length" => {"max" => 100}})
    SessionSharingAcceptResponses = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.qapps#SessionSharingAcceptResponses', name: 'SessionSharingAcceptResponses')
    SessionSharingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#SessionSharingConfiguration', name: 'SessionSharingConfiguration')
    SessionSharingEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.qapps#SessionSharingEnabled', name: 'SessionSharingEnabled')
    SessionSharingRevealCards = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.qapps#SessionSharingRevealCards', name: 'SessionSharingRevealCards')
    StartQAppSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#StartQAppSessionInput', name: 'StartQAppSessionInput')
    StartQAppSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#StartQAppSessionOutput', name: 'StartQAppSessionOutput')
    StopQAppSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#StopQAppSessionInput', name: 'StopQAppSessionInput')
    Submission = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#Submission', name: 'Submission')
    SubmissionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#SubmissionList', name: 'SubmissionList')
    SubmissionMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#SubmissionMutation', name: 'SubmissionMutation')
    SubmissionMutationKind = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#SubmissionMutationKind', name: 'SubmissionMutationKind')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qapps#TagMap', name: 'TagMap')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qapps#Tags', name: 'Tags')
    TextInputCard = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#TextInputCard', name: 'TextInputCard')
    TextInputCardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#TextInputCardInput', name: 'TextInputCardInput')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.qapps#Timestamp', name: 'Timestamp')
    Title = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#Title', name: 'Title', traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^[^{}\\\\\"<>]+$"})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[\\da-f]{8}-[\\da-f]{4}-[45][\\da-f]{3}-[89ABab][\\da-f]{3}-[\\da-f]{12}$"})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateLibraryItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateLibraryItemInput', name: 'UpdateLibraryItemInput')
    UpdateLibraryItemMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateLibraryItemMetadataInput', name: 'UpdateLibraryItemMetadataInput')
    UpdateLibraryItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateLibraryItemOutput', name: 'UpdateLibraryItemOutput')
    UpdateQAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppInput', name: 'UpdateQAppInput')
    UpdateQAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppOutput', name: 'UpdateQAppOutput')
    UpdateQAppPermissionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppPermissionsInput', name: 'UpdateQAppPermissionsInput')
    UpdateQAppPermissionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppPermissionsOutput', name: 'UpdateQAppPermissionsOutput')
    UpdateQAppSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppSessionInput', name: 'UpdateQAppSessionInput')
    UpdateQAppSessionMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppSessionMetadataInput', name: 'UpdateQAppSessionMetadataInput')
    UpdateQAppSessionMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppSessionMetadataOutput', name: 'UpdateQAppSessionMetadataOutput')
    UpdateQAppSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UpdateQAppSessionOutput', name: 'UpdateQAppSessionOutput')
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#User', name: 'User')
    UserAppItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#UserAppItem', name: 'UserAppItem')
    UserAppsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qapps#UserAppsList', name: 'UserAppsList')
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qapps#UserId', name: 'UserId')
    UserType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qapps#UserType', name: 'UserType')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qapps#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ', traits: {"smithy.api#enumValue" => "read"}))
    Action.add_member(:write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WRITE', traits: {"smithy.api#enumValue" => "write"}))
    AppDefinition.add_member(:app_definition_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'appDefinitionVersion', traits: {"smithy.api#required" => {}}))
    AppDefinition.add_member(:cards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardModelList, location_name: 'cards', traits: {"smithy.api#required" => {}}))
    AppDefinition.add_member(:can_edit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'canEdit'))
    AppDefinition.type = Types::AppDefinition
    AppDefinitionInput.add_member(:cards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardList, location_name: 'cards', traits: {"smithy.api#required" => {}}))
    AppDefinitionInput.add_member(:initial_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialPrompt, location_name: 'initialPrompt'))
    AppDefinitionInput.type = Types::AppDefinitionInput
    AppRequiredCapabilities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppRequiredCapability)
    AppRequiredCapability.add_member(:file_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_UPLOAD', traits: {"smithy.api#enumValue" => "FileUpload"}))
    AppRequiredCapability.add_member(:creator_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATOR_MODE', traits: {"smithy.api#enumValue" => "CreatorMode"}))
    AppRequiredCapability.add_member(:retrieval_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRIEVAL_MODE', traits: {"smithy.api#enumValue" => "RetrievalMode"}))
    AppRequiredCapability.add_member(:plugin_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLUGIN_MODE', traits: {"smithy.api#enumValue" => "PluginMode"}))
    AppStatus.add_member(:published, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISHED', traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    AppStatus.add_member(:draft, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    AppStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    AssociateLibraryItemReviewInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    AssociateLibraryItemReviewInput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    AssociateLibraryItemReviewInput.type = Types::AssociateLibraryItemReviewInput
    AssociateQAppWithUserInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    AssociateQAppWithUserInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    AssociateQAppWithUserInput.type = Types::AssociateQAppWithUserInput
    AttributeFilter.add_member(:and_all_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilters, location_name: 'andAllFilters'))
    AttributeFilter.add_member(:or_all_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilters, location_name: 'orAllFilters'))
    AttributeFilter.add_member(:not_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'notFilter'))
    AttributeFilter.add_member(:equals_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'equalsTo'))
    AttributeFilter.add_member(:contains_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'containsAll'))
    AttributeFilter.add_member(:contains_any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'containsAny'))
    AttributeFilter.add_member(:greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'greaterThan'))
    AttributeFilter.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'greaterThanOrEquals'))
    AttributeFilter.add_member(:less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'lessThan'))
    AttributeFilter.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'lessThanOrEquals'))
    AttributeFilter.type = Types::AttributeFilter
    AttributeFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter)
    BatchCreateCategoryInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    BatchCreateCategoryInput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateCategoryInputCategoryList, location_name: 'categories', traits: {"smithy.api#required" => {}}))
    BatchCreateCategoryInput.type = Types::BatchCreateCategoryInput
    BatchCreateCategoryInputCategory.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id'))
    BatchCreateCategoryInputCategory.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'title', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+( [a-zA-Z0-9_]+)*$", "smithy.api#required" => {}}))
    BatchCreateCategoryInputCategory.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'color', traits: {"smithy.api#length" => {"min" => 4, "max" => 7}, "smithy.api#pattern" => "^#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{6})$"}))
    BatchCreateCategoryInputCategory.type = Types::BatchCreateCategoryInputCategory
    BatchCreateCategoryInputCategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateCategoryInputCategory)
    BatchDeleteCategoryInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    BatchDeleteCategoryInput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCategoryInputList, location_name: 'categories', traits: {"smithy.api#required" => {}}))
    BatchDeleteCategoryInput.type = Types::BatchDeleteCategoryInput
    BatchUpdateCategoryInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    BatchUpdateCategoryInput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryListInput, location_name: 'categories', traits: {"smithy.api#required" => {}}))
    BatchUpdateCategoryInput.type = Types::BatchUpdateCategoryInput
    Card.add_member(:text_input, Types::Card::TextInput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextInputCard, location_name: 'textInput'))
    Card.add_member(:q_query, Types::Card::QQuery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QQueryCard, location_name: 'qQuery'))
    Card.add_member(:q_plugin, Types::Card::QPlugin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QPluginCard, location_name: 'qPlugin'))
    Card.add_member(:file_upload, Types::Card::FileUpload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileUploadCard, location_name: 'fileUpload'))
    Card.add_member(:form_input, Types::Card::FormInput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputCard, location_name: 'formInput'))
    Card.add_member(:unknown, Types::Card::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Card.type = Types::Card
    CardInput.add_member(:text_input, Types::CardInput::TextInput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextInputCardInput, location_name: 'textInput'))
    CardInput.add_member(:q_query, Types::CardInput::QQuery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QQueryCardInput, location_name: 'qQuery'))
    CardInput.add_member(:q_plugin, Types::CardInput::QPlugin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QPluginCardInput, location_name: 'qPlugin'))
    CardInput.add_member(:file_upload, Types::CardInput::FileUpload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileUploadCardInput, location_name: 'fileUpload'))
    CardInput.add_member(:form_input, Types::CardInput::FormInput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputCardInput, location_name: 'formInput'))
    CardInput.add_member(:unknown, Types::CardInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CardInput.type = Types::CardInput
    CardList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardInput)
    CardModelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Card)
    CardOutputSource.add_member(:approved_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED_SOURCES', traits: {"smithy.api#enumValue" => "approved-sources"}))
    CardOutputSource.add_member(:llm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LLM', traits: {"smithy.api#enumValue" => "llm"}))
    CardStatus.add_member(:current_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'currentState', traits: {"smithy.api#required" => {}}))
    CardStatus.add_member(:current_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'currentValue', traits: {"smithy.api#required" => {}}))
    CardStatus.add_member(:submissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmissionList, location_name: 'submissions'))
    CardStatus.type = Types::CardStatus
    CardStatusMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    CardStatusMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardStatus)
    CardType.add_member(:text_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT_INPUT', traits: {"smithy.api#enumValue" => "text-input"}))
    CardType.add_member(:q_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Q_QUERY', traits: {"smithy.api#enumValue" => "q-query"}))
    CardType.add_member(:file_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_UPLOAD', traits: {"smithy.api#enumValue" => "file-upload"}))
    CardType.add_member(:q_plugin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Q_PLUGIN', traits: {"smithy.api#enumValue" => "q-plugin"}))
    CardType.add_member(:form_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORM_INPUT', traits: {"smithy.api#enumValue" => "form-input"}))
    CardValue.add_member(:card_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'cardId', traits: {"smithy.api#required" => {}}))
    CardValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#length" => {"max" => 40000}, "smithy.api#required" => {}}))
    CardValue.add_member(:submission_mutation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmissionMutation, location_name: 'submissionMutation'))
    CardValue.type = Types::CardValue
    CardValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardValue)
    CategoriesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category)
    Category.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Category.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'title', traits: {"smithy.api#required" => {}}))
    Category.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'color'))
    Category.add_member(:app_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'appCount'))
    Category.type = Types::Category
    CategoryIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    CategoryInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CategoryInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'title', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+( [a-zA-Z0-9_]+)*$", "smithy.api#required" => {}}))
    CategoryInput.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'color', traits: {"smithy.api#length" => {"min" => 4, "max" => 7}, "smithy.api#pattern" => "^#([A-Fa-f0-9]{3}|[A-Fa-f0-9]{6})$"}))
    CategoryInput.type = Types::CategoryInput
    CategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category)
    CategoryListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryInput)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContentTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ContentTooLargeException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ContentTooLargeException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ContentTooLargeException.type = Types::ContentTooLargeException
    ConversationMessage.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'body', traits: {"smithy.api#length" => {"max" => 7000}, "smithy.api#required" => {}}))
    ConversationMessage.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sender, location_name: 'type', traits: {"smithy.api#required" => {}}))
    ConversationMessage.type = Types::ConversationMessage
    CreateLibraryItemInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    CreateLibraryItemInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemInput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemInput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryIdList, location_name: 'categories', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemInput.type = Types::CreateLibraryItemInput
    CreateLibraryItemOutput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'updatedAt'))
    CreateLibraryItemOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'updatedBy'))
    CreateLibraryItemOutput.add_member(:rating_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ratingCount', traits: {"smithy.api#required" => {}}))
    CreateLibraryItemOutput.add_member(:is_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isVerified'))
    CreateLibraryItemOutput.type = Types::CreateLibraryItemOutput
    CreatePresignedUrlInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    CreatePresignedUrlInput.add_member(:card_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'cardId', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlInput.add_member(:file_contents_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileContentsSha256', traits: {"smithy.api#pattern" => "^[A-Za-z0-9+/]{43}=$|^[A-Za-z0-9+/]{42}==$|^[A-Za-z0-9+/]{44}$", "smithy.api#required" => {}}))
    CreatePresignedUrlInput.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'fileName', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlInput.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentScope, location_name: 'scope', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId'))
    CreatePresignedUrlInput.type = Types::CreatePresignedUrlInput
    CreatePresignedUrlOutput.add_member(:file_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileId', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlOutput.add_member(:presigned_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'presignedUrl', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlOutput.add_member(:presigned_url_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PresignedUrlFields, location_name: 'presignedUrlFields', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlOutput.add_member(:presigned_url_expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'presignedUrlExpiration', traits: {"smithy.api#required" => {}}))
    CreatePresignedUrlOutput.type = Types::CreatePresignedUrlOutput
    CreateQAppInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    CreateQAppInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    CreateQAppInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateQAppInput.add_member(:app_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppDefinitionInput, location_name: 'appDefinition', traits: {"smithy.api#required" => {}}))
    CreateQAppInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateQAppInput.type = Types::CreateQAppInput
    CreateQAppOutput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppArn, location_name: 'appArn', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateQAppOutput.add_member(:initial_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialPrompt, location_name: 'initialPrompt'))
    CreateQAppOutput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'updatedBy', traits: {"smithy.api#required" => {}}))
    CreateQAppOutput.add_member(:required_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppRequiredCapabilities, location_name: 'requiredCapabilities'))
    CreateQAppOutput.type = Types::CreateQAppOutput
    DeleteCategoryInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    DeleteLibraryItemInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    DeleteLibraryItemInput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    DeleteLibraryItemInput.type = Types::DeleteLibraryItemInput
    DeleteQAppInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    DeleteQAppInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    DeleteQAppInput.type = Types::DeleteQAppInput
    DependencyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    DescribeQAppPermissionsInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    DescribeQAppPermissionsInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#httpQuery" => "appId", "smithy.api#required" => {}}))
    DescribeQAppPermissionsInput.type = Types::DescribeQAppPermissionsInput
    DescribeQAppPermissionsOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn'))
    DescribeQAppPermissionsOutput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'appId'))
    DescribeQAppPermissionsOutput.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsOutputList, location_name: 'permissions'))
    DescribeQAppPermissionsOutput.type = Types::DescribeQAppPermissionsOutput
    DisassociateLibraryItemReviewInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    DisassociateLibraryItemReviewInput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    DisassociateLibraryItemReviewInput.type = Types::DisassociateLibraryItemReviewInput
    DisassociateQAppFromUserInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    DisassociateQAppFromUserInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    DisassociateQAppFromUserInput.type = Types::DisassociateQAppFromUserInput
    DocumentAttribute.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DocumentAttribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    DocumentAttribute.type = Types::DocumentAttribute
    DocumentAttributeStringListValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatoString)
    DocumentAttributeValue.add_member(:string_value, Types::DocumentAttributeValue::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeStringValue, location_name: 'stringValue', traits: {"smithy.api#length" => {"max" => 2048}}))
    DocumentAttributeValue.add_member(:string_list_value, Types::DocumentAttributeValue::StringListValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeStringListValue, location_name: 'stringListValue'))
    DocumentAttributeValue.add_member(:long_value, Types::DocumentAttributeValue::LongValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'longValue'))
    DocumentAttributeValue.add_member(:date_value, Types::DocumentAttributeValue::DateValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'dateValue'))
    DocumentAttributeValue.add_member(:unknown, Types::DocumentAttributeValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DocumentAttributeValue.type = Types::DocumentAttributeValue
    DocumentScope.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    DocumentScope.add_member(:session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION', traits: {"smithy.api#enumValue" => "SESSION"}))
    ExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExecutionStatus.add_member(:waiting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING', traits: {"smithy.api#enumValue" => "WAITING"}))
    ExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExecutionStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ExportQAppSessionDataInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    ExportQAppSessionDataInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    ExportQAppSessionDataInput.type = Types::ExportQAppSessionDataInput
    ExportQAppSessionDataOutput.add_member(:csv_file_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'csvFileLink', traits: {"smithy.api#required" => {}}))
    ExportQAppSessionDataOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'expiresAt', traits: {"smithy.api#required" => {}}))
    ExportQAppSessionDataOutput.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    ExportQAppSessionDataOutput.type = Types::ExportQAppSessionDataOutput
    FileUploadCard.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FileUploadCard.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    FileUploadCard.add_member(:dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyList, location_name: 'dependencies', traits: {"smithy.api#required" => {}}))
    FileUploadCard.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    FileUploadCard.add_member(:filename, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'filename'))
    FileUploadCard.add_member(:file_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileId'))
    FileUploadCard.add_member(:allow_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowOverride'))
    FileUploadCard.type = Types::FileUploadCard
    FileUploadCardInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    FileUploadCardInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FileUploadCardInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#default" => "file-upload", "smithy.api#required" => {}}))
    FileUploadCardInput.add_member(:filename, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'filename'))
    FileUploadCardInput.add_member(:file_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'fileId'))
    FileUploadCardInput.add_member(:allow_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allowOverride'))
    FileUploadCardInput.type = Types::FileUploadCardInput
    FormInputCard.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FormInputCard.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    FormInputCard.add_member(:dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyList, location_name: 'dependencies', traits: {"smithy.api#required" => {}}))
    FormInputCard.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    FormInputCard.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputCardMetadata, location_name: 'metadata', traits: {"smithy.api#required" => {}}))
    FormInputCard.add_member(:compute_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputCardComputeMode, location_name: 'computeMode'))
    FormInputCard.type = Types::FormInputCard
    FormInputCardInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    FormInputCardInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FormInputCardInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#default" => "form-input", "smithy.api#required" => {}}))
    FormInputCardInput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputCardMetadata, location_name: 'metadata', traits: {"smithy.api#required" => {}}))
    FormInputCardInput.add_member(:compute_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputCardComputeMode, location_name: 'computeMode'))
    FormInputCardInput.type = Types::FormInputCardInput
    FormInputCardMetadata.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputCardMetadataSchema, location_name: 'schema', traits: {"smithy.api#required" => {}}))
    FormInputCardMetadata.type = Types::FormInputCardMetadata
    GetLibraryItemInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    GetLibraryItemInput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#httpQuery" => "libraryItemId", "smithy.api#required" => {}}))
    GetLibraryItemInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#httpQuery" => "appId"}))
    GetLibraryItemInput.type = Types::GetLibraryItemInput
    GetLibraryItemOutput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryList, location_name: 'categories', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'updatedAt'))
    GetLibraryItemOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'updatedBy'))
    GetLibraryItemOutput.add_member(:rating_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ratingCount', traits: {"smithy.api#required" => {}}))
    GetLibraryItemOutput.add_member(:is_rated_by_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isRatedByUser'))
    GetLibraryItemOutput.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'userCount'))
    GetLibraryItemOutput.add_member(:is_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isVerified'))
    GetLibraryItemOutput.type = Types::GetLibraryItemOutput
    GetQAppInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    GetQAppInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#httpQuery" => "appId", "smithy.api#required" => {}}))
    GetQAppInput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#httpQuery" => "appVersion"}))
    GetQAppInput.type = Types::GetQAppInput
    GetQAppOutput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppArn, location_name: 'appArn', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetQAppOutput.add_member(:initial_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialPrompt, location_name: 'initialPrompt'))
    GetQAppOutput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'updatedBy', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.add_member(:required_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppRequiredCapabilities, location_name: 'requiredCapabilities'))
    GetQAppOutput.add_member(:app_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppDefinition, location_name: 'appDefinition', traits: {"smithy.api#required" => {}}))
    GetQAppOutput.type = Types::GetQAppOutput
    GetQAppSessionInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    GetQAppSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    GetQAppSessionInput.type = Types::GetQAppSessionInput
    GetQAppSessionMetadataInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    GetQAppSessionMetadataInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    GetQAppSessionMetadataInput.type = Types::GetQAppSessionMetadataInput
    GetQAppSessionMetadataOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    GetQAppSessionMetadataOutput.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    GetQAppSessionMetadataOutput.add_member(:session_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionName, location_name: 'sessionName'))
    GetQAppSessionMetadataOutput.add_member(:sharing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSharingConfiguration, location_name: 'sharingConfiguration', traits: {"smithy.api#required" => {}}))
    GetQAppSessionMetadataOutput.add_member(:session_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'sessionOwner'))
    GetQAppSessionMetadataOutput.type = Types::GetQAppSessionMetadataOutput
    GetQAppSessionOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    GetQAppSessionOutput.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    GetQAppSessionOutput.add_member(:session_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionName, location_name: 'sessionName'))
    GetQAppSessionOutput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion'))
    GetQAppSessionOutput.add_member(:latest_published_app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'latestPublishedAppVersion'))
    GetQAppSessionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetQAppSessionOutput.add_member(:card_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardStatusMap, location_name: 'cardStatus', traits: {"smithy.api#required" => {}}))
    GetQAppSessionOutput.add_member(:user_is_host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'userIsHost'))
    GetQAppSessionOutput.type = Types::GetQAppSessionOutput
    ImportDocumentInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    ImportDocumentInput.add_member(:card_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'cardId', traits: {"smithy.api#required" => {}}))
    ImportDocumentInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    ImportDocumentInput.add_member(:file_contents_base64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileContentsBase64', traits: {"smithy.api#required" => {}}))
    ImportDocumentInput.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filename, location_name: 'fileName', traits: {"smithy.api#required" => {}}))
    ImportDocumentInput.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentScope, location_name: 'scope', traits: {"smithy.api#required" => {}}))
    ImportDocumentInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId'))
    ImportDocumentInput.type = Types::ImportDocumentInput
    ImportDocumentOutput.add_member(:file_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileId'))
    ImportDocumentOutput.type = Types::ImportDocumentOutput
    InputCardComputeMode.add_member(:append, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPEND', traits: {"smithy.api#enumValue" => "append"}))
    InputCardComputeMode.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "replace"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    LibraryItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LibraryItemMember)
    LibraryItemMember.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryList, location_name: 'categories', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'updatedAt'))
    LibraryItemMember.add_member(:updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'updatedBy'))
    LibraryItemMember.add_member(:rating_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ratingCount', traits: {"smithy.api#required" => {}}))
    LibraryItemMember.add_member(:is_rated_by_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isRatedByUser'))
    LibraryItemMember.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'userCount'))
    LibraryItemMember.add_member(:is_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isVerified'))
    LibraryItemMember.type = Types::LibraryItemMember
    LibraryItemStatus.add_member(:published, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISHED', traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    LibraryItemStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ListCategoriesInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    ListCategoriesInput.type = Types::ListCategoriesInput
    ListCategoriesOutput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoriesList, location_name: 'categories'))
    ListCategoriesOutput.type = Types::ListCategoriesOutput
    ListLibraryItemsInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    ListLibraryItemsInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: 'limit', traits: {"smithy.api#httpQuery" => "limit"}))
    ListLibraryItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLibraryItemsInput.add_member(:category_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'categoryId', traits: {"smithy.api#httpQuery" => "categoryId"}))
    ListLibraryItemsInput.type = Types::ListLibraryItemsInput
    ListLibraryItemsOutput.add_member(:library_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LibraryItemList, location_name: 'libraryItems'))
    ListLibraryItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListLibraryItemsOutput.type = Types::ListLibraryItemsOutput
    ListQAppSessionDataInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    ListQAppSessionDataInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    ListQAppSessionDataInput.type = Types::ListQAppSessionDataInput
    ListQAppSessionDataOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    ListQAppSessionDataOutput.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    ListQAppSessionDataOutput.add_member(:session_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppSessionDataList, location_name: 'sessionData'))
    ListQAppSessionDataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListQAppSessionDataOutput.type = Types::ListQAppSessionDataOutput
    ListQAppsInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    ListQAppsInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageLimit, location_name: 'limit', traits: {"smithy.api#httpQuery" => "limit"}))
    ListQAppsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQAppsInput.type = Types::ListQAppsInput
    ListQAppsOutput.add_member(:apps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAppsList, location_name: 'apps', traits: {"smithy.api#required" => {}}))
    ListQAppsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListQAppsOutput.type = Types::ListQAppsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MemoryReferenceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    MessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationMessage)
    PermissionInput.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'action', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#required" => {}}))
    PermissionInput.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'principal', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    PermissionInput.type = Types::PermissionInput
    PermissionOutput.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'action', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#required" => {}}))
    PermissionOutput.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalOutput, location_name: 'principal', traits: {"smithy.api#required" => {}}))
    PermissionOutput.type = Types::PermissionOutput
    PermissionsInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionInput)
    PermissionsOutputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionOutput)
    PluginType.add_member(:service_now, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_NOW', traits: {"smithy.api#enumValue" => "SERVICE_NOW"}))
    PluginType.add_member(:salesforce, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SALESFORCE', traits: {"smithy.api#enumValue" => "SALESFORCE"}))
    PluginType.add_member(:jira, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JIRA', traits: {"smithy.api#enumValue" => "JIRA"}))
    PluginType.add_member(:zendesk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZENDESK', traits: {"smithy.api#enumValue" => "ZENDESK"}))
    PluginType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    PluginType.add_member(:asana, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASANA', traits: {"smithy.api#enumValue" => "ASANA"}))
    PluginType.add_member(:atlassian_confluence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATLASSIAN_CONFLUENCE', traits: {"smithy.api#enumValue" => "ATLASSIAN_CONFLUENCE"}))
    PluginType.add_member(:google_calendar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOOGLE_CALENDAR', traits: {"smithy.api#enumValue" => "GOOGLE_CALENDAR"}))
    PluginType.add_member(:jira_cloud, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JIRA_CLOUD', traits: {"smithy.api#enumValue" => "JIRA_CLOUD"}))
    PluginType.add_member(:microsoft_exchange, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_EXCHANGE', traits: {"smithy.api#enumValue" => "MICROSOFT_EXCHANGE"}))
    PluginType.add_member(:microsoft_teams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_TEAMS', traits: {"smithy.api#enumValue" => "MICROSOFT_TEAMS"}))
    PluginType.add_member(:pagerduty_advance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGERDUTY_ADVANCE', traits: {"smithy.api#enumValue" => "PAGERDUTY_ADVANCE"}))
    PluginType.add_member(:salesforce_crm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SALESFORCE_CRM', traits: {"smithy.api#enumValue" => "SALESFORCE_CRM"}))
    PluginType.add_member(:servicenow_now_platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICENOW_NOW_PLATFORM', traits: {"smithy.api#enumValue" => "SERVICENOW_NOW_PLATFORM"}))
    PluginType.add_member(:smartsheet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMARTSHEET', traits: {"smithy.api#enumValue" => "SMARTSHEET"}))
    PluginType.add_member(:zendesk_suite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZENDESK_SUITE', traits: {"smithy.api#enumValue" => "ZENDESK_SUITE"}))
    PredictAppDefinition.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    PredictAppDefinition.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    PredictAppDefinition.add_member(:app_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppDefinitionInput, location_name: 'appDefinition', traits: {"smithy.api#required" => {}}))
    PredictAppDefinition.type = Types::PredictAppDefinition
    PredictQAppInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    PredictQAppInput.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictQAppInputOptions, location_name: 'options'))
    PredictQAppInput.type = Types::PredictQAppInput
    PredictQAppInputOptions.add_member(:conversation, Types::PredictQAppInputOptions::Conversation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageList, location_name: 'conversation', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}}))
    PredictQAppInputOptions.add_member(:problem_statement, Types::PredictQAppInputOptions::ProblemStatement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'problemStatement', traits: {"smithy.api#length" => {"max" => 10000}}))
    PredictQAppInputOptions.add_member(:unknown, Types::PredictQAppInputOptions::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    PredictQAppInputOptions.type = Types::PredictQAppInputOptions
    PredictQAppOutput.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictAppDefinition, location_name: 'app', traits: {"smithy.api#required" => {}}))
    PredictQAppOutput.add_member(:problem_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'problemStatement', traits: {"smithy.api#required" => {}}))
    PredictQAppOutput.type = Types::PredictQAppOutput
    PresignedUrlFields.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    PresignedUrlFields.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    PrincipalOutput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'userId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    PrincipalOutput.add_member(:user_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'userType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    PrincipalOutput.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'email', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    PrincipalOutput.type = Types::PrincipalOutput
    QAppSessionData.add_member(:card_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'cardId', traits: {"smithy.api#required" => {}}))
    QAppSessionData.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'value'))
    QAppSessionData.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'user', traits: {"smithy.api#required" => {}}))
    QAppSessionData.add_member(:submission_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'submissionId'))
    QAppSessionData.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'timestamp'))
    QAppSessionData.type = Types::QAppSessionData
    QAppSessionDataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppSessionData)
    QPluginCard.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    QPluginCard.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    QPluginCard.add_member(:dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyList, location_name: 'dependencies', traits: {"smithy.api#required" => {}}))
    QPluginCard.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    QPluginCard.add_member(:prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'prompt', traits: {"smithy.api#required" => {}}))
    QPluginCard.add_member(:plugin_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'pluginType', traits: {"smithy.api#required" => {}}))
    QPluginCard.add_member(:plugin_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'pluginId', traits: {"smithy.api#required" => {}}))
    QPluginCard.add_member(:action_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionIdentifier, location_name: 'actionIdentifier'))
    QPluginCard.type = Types::QPluginCard
    QPluginCardInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    QPluginCardInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    QPluginCardInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#default" => "q-plugin", "smithy.api#required" => {}}))
    QPluginCardInput.add_member(:prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'prompt', traits: {"smithy.api#required" => {}}))
    QPluginCardInput.add_member(:plugin_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#required" => {}}))
    QPluginCardInput.add_member(:action_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionIdentifier, location_name: 'actionIdentifier'))
    QPluginCardInput.type = Types::QPluginCardInput
    QQueryCard.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    QQueryCard.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    QQueryCard.add_member(:dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyList, location_name: 'dependencies', traits: {"smithy.api#required" => {}}))
    QQueryCard.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    QQueryCard.add_member(:prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'prompt', traits: {"smithy.api#required" => {}}))
    QQueryCard.add_member(:output_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardOutputSource, location_name: 'outputSource', traits: {"smithy.api#required" => {}}))
    QQueryCard.add_member(:attribute_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'attributeFilter'))
    QQueryCard.add_member(:memory_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryReferenceList, location_name: 'memoryReferences'))
    QQueryCard.type = Types::QQueryCard
    QQueryCardInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    QQueryCardInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    QQueryCardInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#default" => "q-query", "smithy.api#required" => {}}))
    QQueryCardInput.add_member(:prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'prompt', traits: {"smithy.api#required" => {}}))
    QQueryCardInput.add_member(:output_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardOutputSource, location_name: 'outputSource', traits: {"smithy.api#default" => "approved-sources"}))
    QQueryCardInput.add_member(:attribute_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'attributeFilter'))
    QQueryCardInput.type = Types::QQueryCardInput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Sender.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    Sender.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionSharingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSharingEnabled, location_name: 'enabled', traits: {"smithy.api#required" => {}}))
    SessionSharingConfiguration.add_member(:accept_responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSharingAcceptResponses, location_name: 'acceptResponses'))
    SessionSharingConfiguration.add_member(:reveal_cards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSharingRevealCards, location_name: 'revealCards'))
    SessionSharingConfiguration.type = Types::SessionSharingConfiguration
    StartQAppSessionInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    StartQAppSessionInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    StartQAppSessionInput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    StartQAppSessionInput.add_member(:initial_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardValueList, location_name: 'initialValues'))
    StartQAppSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId'))
    StartQAppSessionInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    StartQAppSessionInput.type = Types::StartQAppSessionInput
    StartQAppSessionOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    StartQAppSessionOutput.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    StartQAppSessionOutput.type = Types::StartQAppSessionOutput
    StopQAppSessionInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    StopQAppSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    StopQAppSessionInput.type = Types::StopQAppSessionInput
    Submission.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'value'))
    Submission.add_member(:submission_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'submissionId'))
    Submission.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'timestamp'))
    Submission.type = Types::Submission
    SubmissionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Submission)
    SubmissionMutation.add_member(:submission_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'submissionId', traits: {"smithy.api#required" => {}}))
    SubmissionMutation.add_member(:mutation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmissionMutationKind, location_name: 'mutationType', traits: {"smithy.api#required" => {}}))
    SubmissionMutation.type = Types::SubmissionMutation
    SubmissionMutationKind.add_member(:edit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'edit', traits: {"smithy.api#enumValue" => "edit"}))
    SubmissionMutationKind.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'delete', traits: {"smithy.api#enumValue" => "delete"}))
    SubmissionMutationKind.add_member(:add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'add', traits: {"smithy.api#enumValue" => "add"}))
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TextInputCard.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    TextInputCard.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    TextInputCard.add_member(:dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyList, location_name: 'dependencies', traits: {"smithy.api#required" => {}}))
    TextInputCard.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    TextInputCard.add_member(:placeholder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Placeholder, location_name: 'placeholder'))
    TextInputCard.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Default, location_name: 'defaultValue'))
    TextInputCard.type = Types::TextInputCard
    TextInputCardInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    TextInputCardInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'id', traits: {"smithy.api#required" => {}}))
    TextInputCardInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardType, location_name: 'type', traits: {"smithy.api#default" => "text-input", "smithy.api#required" => {}}))
    TextInputCardInput.add_member(:placeholder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Placeholder, location_name: 'placeholder'))
    TextInputCardInput.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Default, location_name: 'defaultValue'))
    TextInputCardInput.type = Types::TextInputCardInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceARN', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateLibraryItemInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    UpdateLibraryItemInput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LibraryItemStatus, location_name: 'status'))
    UpdateLibraryItemInput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryIdList, location_name: 'categories'))
    UpdateLibraryItemInput.type = Types::UpdateLibraryItemInput
    UpdateLibraryItemMetadataInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    UpdateLibraryItemMetadataInput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemMetadataInput.add_member(:is_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isVerified'))
    UpdateLibraryItemMetadataInput.type = Types::UpdateLibraryItemMetadataInput
    UpdateLibraryItemOutput.add_member(:library_item_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'libraryItemId', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryList, location_name: 'categories', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'updatedAt'))
    UpdateLibraryItemOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'updatedBy'))
    UpdateLibraryItemOutput.add_member(:rating_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ratingCount', traits: {"smithy.api#required" => {}}))
    UpdateLibraryItemOutput.add_member(:is_rated_by_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isRatedByUser'))
    UpdateLibraryItemOutput.add_member(:user_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'userCount'))
    UpdateLibraryItemOutput.add_member(:is_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isVerified'))
    UpdateLibraryItemOutput.type = Types::UpdateLibraryItemOutput
    UpdateQAppInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    UpdateQAppInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    UpdateQAppInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title'))
    UpdateQAppInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateQAppInput.add_member(:app_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppDefinitionInput, location_name: 'appDefinition'))
    UpdateQAppInput.type = Types::UpdateQAppInput
    UpdateQAppOutput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppArn, location_name: 'appArn', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateQAppOutput.add_member(:initial_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InitialPrompt, location_name: 'initialPrompt'))
    UpdateQAppOutput.add_member(:app_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppVersion, location_name: 'appVersion', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:created_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'createdBy', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'updatedBy', traits: {"smithy.api#required" => {}}))
    UpdateQAppOutput.add_member(:required_capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppRequiredCapabilities, location_name: 'requiredCapabilities'))
    UpdateQAppOutput.type = Types::UpdateQAppOutput
    UpdateQAppPermissionsInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    UpdateQAppPermissionsInput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    UpdateQAppPermissionsInput.add_member(:grant_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsInputList, location_name: 'grantPermissions', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}}))
    UpdateQAppPermissionsInput.add_member(:revoke_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsInputList, location_name: 'revokePermissions', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}}))
    UpdateQAppPermissionsInput.type = Types::UpdateQAppPermissionsInput
    UpdateQAppPermissionsOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn'))
    UpdateQAppPermissionsOutput.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'appId'))
    UpdateQAppPermissionsOutput.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsOutputList, location_name: 'permissions'))
    UpdateQAppPermissionsOutput.type = Types::UpdateQAppPermissionsOutput
    UpdateQAppSessionInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    UpdateQAppSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionInput.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CardValueList, location_name: 'values'))
    UpdateQAppSessionInput.type = Types::UpdateQAppSessionInput
    UpdateQAppSessionMetadataInput.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#httpHeader" => "instance-id", "smithy.api#required" => {}}))
    UpdateQAppSessionMetadataInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionMetadataInput.add_member(:session_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionName, location_name: 'sessionName'))
    UpdateQAppSessionMetadataInput.add_member(:sharing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSharingConfiguration, location_name: 'sharingConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionMetadataInput.type = Types::UpdateQAppSessionMetadataInput
    UpdateQAppSessionMetadataOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionMetadataOutput.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionMetadataOutput.add_member(:session_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionName, location_name: 'sessionName'))
    UpdateQAppSessionMetadataOutput.add_member(:sharing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSharingConfiguration, location_name: 'sharingConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionMetadataOutput.type = Types::UpdateQAppSessionMetadataOutput
    UpdateQAppSessionOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionOutput.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionArn', traits: {"smithy.api#required" => {}}))
    UpdateQAppSessionOutput.type = Types::UpdateQAppSessionOutput
    User.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId'))
    User.type = Types::User
    UserAppItem.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'appId', traits: {"smithy.api#required" => {}}))
    UserAppItem.add_member(:app_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppArn, location_name: 'appArn', traits: {"smithy.api#required" => {}}))
    UserAppItem.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#required" => {}}))
    UserAppItem.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UserAppItem.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UserAppItem.add_member(:can_edit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'canEdit'))
    UserAppItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'status'))
    UserAppItem.add_member(:is_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isVerified', traits: {"smithy.api#default" => false}))
    UserAppItem.type = Types::UserAppItem
    UserAppsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAppItem)
    UserType.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OWNER', traits: {"smithy.api#enumValue" => "owner"}))
    UserType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "user"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    QAppsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qapps#QAppsService"
      service.name = "QAppsService"
      service.version = "2023-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "QApps", "arnNamespace" => "qapps", "endpointPrefix" => "data.qapps"}, "aws.auth#sigv4" => {"name" => "qapps"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "QApps"}
      service.add_operation(:associate_library_item_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#AssociateLibraryItemReview"
        operation.name = "AssociateLibraryItemReview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLibraryItemReviewInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.associateItemRating"}}
      end)
      service.add_operation(:associate_q_app_with_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#AssociateQAppWithUser"
        operation.name = "AssociateQAppWithUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateQAppWithUserInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.install"}}
      end)
      service.add_operation(:batch_create_category, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#BatchCreateCategory"
        operation.name = "BatchCreateCategory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateCategoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.createCategories"}}
      end)
      service.add_operation(:batch_delete_category, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#BatchDeleteCategory"
        operation.name = "BatchDeleteCategory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteCategoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.deleteCategories"}}
      end)
      service.add_operation(:batch_update_category, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#BatchUpdateCategory"
        operation.name = "BatchUpdateCategory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateCategoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.updateCategories"}}
      end)
      service.add_operation(:create_library_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#CreateLibraryItem"
        operation.name = "CreateLibraryItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLibraryItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLibraryItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.createItem"}}
      end)
      service.add_operation(:create_presigned_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#CreatePresignedUrl"
        operation.name = "CreatePresignedUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresignedUrlInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresignedUrlOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.createPresignedUrl"}}
      end)
      service.add_operation(:create_q_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#CreateQApp"
        operation.name = "CreateQApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQAppInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQAppOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.create"}}
      end)
      service.add_operation(:delete_library_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#DeleteLibraryItem"
        operation.name = "DeleteLibraryItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLibraryItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.deleteItem"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_q_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#DeleteQApp"
        operation.name = "DeleteQApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQAppInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.delete"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_q_app_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#DescribeQAppPermissions"
        operation.name = "DescribeQAppPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQAppPermissionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeQAppPermissionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps.describeQAppPermissions"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:disassociate_library_item_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#DisassociateLibraryItemReview"
        operation.name = "DisassociateLibraryItemReview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLibraryItemReviewInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.disassociateItemRating"}}
      end)
      service.add_operation(:disassociate_q_app_from_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#DisassociateQAppFromUser"
        operation.name = "DisassociateQAppFromUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateQAppFromUserInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.uninstall"}}
      end)
      service.add_operation(:export_q_app_session_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#ExportQAppSessionData"
        operation.name = "ExportQAppSessionData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportQAppSessionDataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportQAppSessionDataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtime.exportQAppSessionData"}}
      end)
      service.add_operation(:get_library_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#GetLibraryItem"
        operation.name = "GetLibraryItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLibraryItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLibraryItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/catalog.getItem"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_q_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#GetQApp"
        operation.name = "GetQApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQAppInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQAppOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps.get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_q_app_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#GetQAppSession"
        operation.name = "GetQAppSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQAppSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQAppSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/runtime.getQAppSession"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_q_app_session_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#GetQAppSessionMetadata"
        operation.name = "GetQAppSessionMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQAppSessionMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQAppSessionMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/runtime.getQAppSessionMetadata"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#ImportDocument"
        operation.name = "ImportDocument"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDocumentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDocumentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.importDocument"}}
      end)
      service.add_operation(:list_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#ListCategories"
        operation.name = "ListCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCategoriesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCategoriesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/catalog.listCategories"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_library_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#ListLibraryItems"
        operation.name = "ListLibraryItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLibraryItemsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLibraryItemsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/catalog.list"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLibraryItems.new
      end)
      service.add_operation(:list_q_app_session_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#ListQAppSessionData"
        operation.name = "ListQAppSessionData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQAppSessionDataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQAppSessionDataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/runtime.listQAppSessionData"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_q_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#ListQApps"
        operation.name = "ListQApps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQAppsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQAppsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps.list"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["new"]}
        operation[:paginator] = Paginators::ListQApps.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceARN}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:predict_q_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#PredictQApp"
        operation.name = "PredictQApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictQAppInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictQAppOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.predictQApp"}, "smithy.api#tags" => ["new"]}
      end)
      service.add_operation(:start_q_app_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#StartQAppSession"
        operation.name = "StartQAppSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartQAppSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartQAppSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtime.startQAppSession"}}
      end)
      service.add_operation(:stop_q_app_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#StopQAppSession"
        operation.name = "StopQAppSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopQAppSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtime.deleteMiniAppRun"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"uri" => "/tags/{resourceARN}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"uri" => "/tags/{resourceARN}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_library_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#UpdateLibraryItem"
        operation.name = "UpdateLibraryItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLibraryItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLibraryItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.updateItem"}}
      end)
      service.add_operation(:update_library_item_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#UpdateLibraryItemMetadata"
        operation.name = "UpdateLibraryItemMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLibraryItemMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalog.updateItemMetadata"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_q_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#UpdateQApp"
        operation.name = "UpdateQApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.update"}}
      end)
      service.add_operation(:update_q_app_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#UpdateQAppPermissions"
        operation.name = "UpdateQAppPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppPermissionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppPermissionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps.updateQAppPermissions"}}
      end)
      service.add_operation(:update_q_app_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#UpdateQAppSession"
        operation.name = "UpdateQAppSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtime.updateQAppSession"}}
      end)
      service.add_operation(:update_q_app_session_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qapps#UpdateQAppSessionMetadata"
        operation.name = "UpdateQAppSessionMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppSessionMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQAppSessionMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtime.updateQAppSessionMetadata"}}
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

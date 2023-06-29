# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexModelsV2
  # @api private
  module ClientApi

    include Seahorse::Model

    ActiveContext = Shapes::StructureShape.new(name: 'ActiveContext')
    ActiveContextList = Shapes::ListShape.new(name: 'ActiveContextList')
    ActiveContextName = Shapes::StringShape.new(name: 'ActiveContextName')
    AdvancedRecognitionSetting = Shapes::StructureShape.new(name: 'AdvancedRecognitionSetting')
    AgentTurnResult = Shapes::StructureShape.new(name: 'AgentTurnResult')
    AgentTurnSpecification = Shapes::StructureShape.new(name: 'AgentTurnSpecification')
    AggregatedUtterancesFilter = Shapes::StructureShape.new(name: 'AggregatedUtterancesFilter')
    AggregatedUtterancesFilterName = Shapes::StringShape.new(name: 'AggregatedUtterancesFilterName')
    AggregatedUtterancesFilterOperator = Shapes::StringShape.new(name: 'AggregatedUtterancesFilterOperator')
    AggregatedUtterancesFilters = Shapes::ListShape.new(name: 'AggregatedUtterancesFilters')
    AggregatedUtterancesSortAttribute = Shapes::StringShape.new(name: 'AggregatedUtterancesSortAttribute')
    AggregatedUtterancesSortBy = Shapes::StructureShape.new(name: 'AggregatedUtterancesSortBy')
    AggregatedUtterancesSummary = Shapes::StructureShape.new(name: 'AggregatedUtterancesSummary')
    AggregatedUtterancesSummaryList = Shapes::ListShape.new(name: 'AggregatedUtterancesSummaryList')
    AllowedInputTypes = Shapes::StructureShape.new(name: 'AllowedInputTypes')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssociatedTranscript = Shapes::StructureShape.new(name: 'AssociatedTranscript')
    AssociatedTranscriptFilter = Shapes::StructureShape.new(name: 'AssociatedTranscriptFilter')
    AssociatedTranscriptFilterName = Shapes::StringShape.new(name: 'AssociatedTranscriptFilterName')
    AssociatedTranscriptFilters = Shapes::ListShape.new(name: 'AssociatedTranscriptFilters')
    AssociatedTranscriptList = Shapes::ListShape.new(name: 'AssociatedTranscriptList')
    AttachmentTitle = Shapes::StringShape.new(name: 'AttachmentTitle')
    AttachmentUrl = Shapes::StringShape.new(name: 'AttachmentUrl')
    AudioAndDTMFInputSpecification = Shapes::StructureShape.new(name: 'AudioAndDTMFInputSpecification')
    AudioFileS3Location = Shapes::StringShape.new(name: 'AudioFileS3Location')
    AudioLogDestination = Shapes::StructureShape.new(name: 'AudioLogDestination')
    AudioLogSetting = Shapes::StructureShape.new(name: 'AudioLogSetting')
    AudioLogSettingsList = Shapes::ListShape.new(name: 'AudioLogSettingsList')
    AudioRecognitionStrategy = Shapes::StringShape.new(name: 'AudioRecognitionStrategy')
    AudioSpecification = Shapes::StructureShape.new(name: 'AudioSpecification')
    BatchCreateCustomVocabularyItemRequest = Shapes::StructureShape.new(name: 'BatchCreateCustomVocabularyItemRequest')
    BatchCreateCustomVocabularyItemResponse = Shapes::StructureShape.new(name: 'BatchCreateCustomVocabularyItemResponse')
    BatchDeleteCustomVocabularyItemRequest = Shapes::StructureShape.new(name: 'BatchDeleteCustomVocabularyItemRequest')
    BatchDeleteCustomVocabularyItemResponse = Shapes::StructureShape.new(name: 'BatchDeleteCustomVocabularyItemResponse')
    BatchUpdateCustomVocabularyItemRequest = Shapes::StructureShape.new(name: 'BatchUpdateCustomVocabularyItemRequest')
    BatchUpdateCustomVocabularyItemResponse = Shapes::StructureShape.new(name: 'BatchUpdateCustomVocabularyItemResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BotAliasHistoryEvent = Shapes::StructureShape.new(name: 'BotAliasHistoryEvent')
    BotAliasHistoryEventsList = Shapes::ListShape.new(name: 'BotAliasHistoryEventsList')
    BotAliasId = Shapes::StringShape.new(name: 'BotAliasId')
    BotAliasLocaleSettings = Shapes::StructureShape.new(name: 'BotAliasLocaleSettings')
    BotAliasLocaleSettingsMap = Shapes::MapShape.new(name: 'BotAliasLocaleSettingsMap')
    BotAliasName = Shapes::StringShape.new(name: 'BotAliasName')
    BotAliasStatus = Shapes::StringShape.new(name: 'BotAliasStatus')
    BotAliasSummary = Shapes::StructureShape.new(name: 'BotAliasSummary')
    BotAliasSummaryList = Shapes::ListShape.new(name: 'BotAliasSummaryList')
    BotAliasTestExecutionTarget = Shapes::StructureShape.new(name: 'BotAliasTestExecutionTarget')
    BotExportSpecification = Shapes::StructureShape.new(name: 'BotExportSpecification')
    BotFilter = Shapes::StructureShape.new(name: 'BotFilter')
    BotFilterName = Shapes::StringShape.new(name: 'BotFilterName')
    BotFilterOperator = Shapes::StringShape.new(name: 'BotFilterOperator')
    BotFilters = Shapes::ListShape.new(name: 'BotFilters')
    BotImportSpecification = Shapes::StructureShape.new(name: 'BotImportSpecification')
    BotLocaleExportSpecification = Shapes::StructureShape.new(name: 'BotLocaleExportSpecification')
    BotLocaleFilter = Shapes::StructureShape.new(name: 'BotLocaleFilter')
    BotLocaleFilterName = Shapes::StringShape.new(name: 'BotLocaleFilterName')
    BotLocaleFilterOperator = Shapes::StringShape.new(name: 'BotLocaleFilterOperator')
    BotLocaleFilters = Shapes::ListShape.new(name: 'BotLocaleFilters')
    BotLocaleHistoryEvent = Shapes::StructureShape.new(name: 'BotLocaleHistoryEvent')
    BotLocaleHistoryEventDescription = Shapes::StringShape.new(name: 'BotLocaleHistoryEventDescription')
    BotLocaleHistoryEventsList = Shapes::ListShape.new(name: 'BotLocaleHistoryEventsList')
    BotLocaleImportSpecification = Shapes::StructureShape.new(name: 'BotLocaleImportSpecification')
    BotLocaleSortAttribute = Shapes::StringShape.new(name: 'BotLocaleSortAttribute')
    BotLocaleSortBy = Shapes::StructureShape.new(name: 'BotLocaleSortBy')
    BotLocaleStatus = Shapes::StringShape.new(name: 'BotLocaleStatus')
    BotLocaleSummary = Shapes::StructureShape.new(name: 'BotLocaleSummary')
    BotLocaleSummaryList = Shapes::ListShape.new(name: 'BotLocaleSummaryList')
    BotMember = Shapes::StructureShape.new(name: 'BotMember')
    BotMembers = Shapes::ListShape.new(name: 'BotMembers')
    BotRecommendationResultStatistics = Shapes::StructureShape.new(name: 'BotRecommendationResultStatistics')
    BotRecommendationResults = Shapes::StructureShape.new(name: 'BotRecommendationResults')
    BotRecommendationStatus = Shapes::StringShape.new(name: 'BotRecommendationStatus')
    BotRecommendationSummary = Shapes::StructureShape.new(name: 'BotRecommendationSummary')
    BotRecommendationSummaryList = Shapes::ListShape.new(name: 'BotRecommendationSummaryList')
    BotSortAttribute = Shapes::StringShape.new(name: 'BotSortAttribute')
    BotSortBy = Shapes::StructureShape.new(name: 'BotSortBy')
    BotStatus = Shapes::StringShape.new(name: 'BotStatus')
    BotSummary = Shapes::StructureShape.new(name: 'BotSummary')
    BotSummaryList = Shapes::ListShape.new(name: 'BotSummaryList')
    BotType = Shapes::StringShape.new(name: 'BotType')
    BotVersion = Shapes::StringShape.new(name: 'BotVersion')
    BotVersionLocaleDetails = Shapes::StructureShape.new(name: 'BotVersionLocaleDetails')
    BotVersionLocaleSpecification = Shapes::MapShape.new(name: 'BotVersionLocaleSpecification')
    BotVersionSortAttribute = Shapes::StringShape.new(name: 'BotVersionSortAttribute')
    BotVersionSortBy = Shapes::StructureShape.new(name: 'BotVersionSortBy')
    BotVersionSummary = Shapes::StructureShape.new(name: 'BotVersionSummary')
    BotVersionSummaryList = Shapes::ListShape.new(name: 'BotVersionSummaryList')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BuildBotLocaleRequest = Shapes::StructureShape.new(name: 'BuildBotLocaleRequest')
    BuildBotLocaleResponse = Shapes::StructureShape.new(name: 'BuildBotLocaleResponse')
    BuiltInIntentSortAttribute = Shapes::StringShape.new(name: 'BuiltInIntentSortAttribute')
    BuiltInIntentSortBy = Shapes::StructureShape.new(name: 'BuiltInIntentSortBy')
    BuiltInIntentSummary = Shapes::StructureShape.new(name: 'BuiltInIntentSummary')
    BuiltInIntentSummaryList = Shapes::ListShape.new(name: 'BuiltInIntentSummaryList')
    BuiltInOrCustomSlotTypeId = Shapes::StringShape.new(name: 'BuiltInOrCustomSlotTypeId')
    BuiltInSlotTypeSortAttribute = Shapes::StringShape.new(name: 'BuiltInSlotTypeSortAttribute')
    BuiltInSlotTypeSortBy = Shapes::StructureShape.new(name: 'BuiltInSlotTypeSortBy')
    BuiltInSlotTypeSummary = Shapes::StructureShape.new(name: 'BuiltInSlotTypeSummary')
    BuiltInSlotTypeSummaryList = Shapes::ListShape.new(name: 'BuiltInSlotTypeSummaryList')
    BuiltInsMaxResults = Shapes::IntegerShape.new(name: 'BuiltInsMaxResults')
    Button = Shapes::StructureShape.new(name: 'Button')
    ButtonText = Shapes::StringShape.new(name: 'ButtonText')
    ButtonValue = Shapes::StringShape.new(name: 'ButtonValue')
    ButtonsList = Shapes::ListShape.new(name: 'ButtonsList')
    ChildDirected = Shapes::BooleanShape.new(name: 'ChildDirected')
    CloudWatchLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogGroupArn')
    CloudWatchLogGroupLogDestination = Shapes::StructureShape.new(name: 'CloudWatchLogGroupLogDestination')
    CodeHookInterfaceVersion = Shapes::StringShape.new(name: 'CodeHookInterfaceVersion')
    CodeHookSpecification = Shapes::StructureShape.new(name: 'CodeHookSpecification')
    CompositeSlotTypeSetting = Shapes::StructureShape.new(name: 'CompositeSlotTypeSetting')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionExpression = Shapes::StringShape.new(name: 'ConditionExpression')
    ConditionKey = Shapes::StringShape.new(name: 'ConditionKey')
    ConditionKeyValueMap = Shapes::MapShape.new(name: 'ConditionKeyValueMap')
    ConditionMap = Shapes::MapShape.new(name: 'ConditionMap')
    ConditionOperator = Shapes::StringShape.new(name: 'ConditionOperator')
    ConditionValue = Shapes::StringShape.new(name: 'ConditionValue')
    ConditionalBranch = Shapes::StructureShape.new(name: 'ConditionalBranch')
    ConditionalBranches = Shapes::ListShape.new(name: 'ConditionalBranches')
    ConditionalSpecification = Shapes::StructureShape.new(name: 'ConditionalSpecification')
    ConfidenceThreshold = Shapes::FloatShape.new(name: 'ConfidenceThreshold')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContextTimeToLiveInSeconds = Shapes::IntegerShape.new(name: 'ContextTimeToLiveInSeconds')
    ContextTurnsToLive = Shapes::IntegerShape.new(name: 'ContextTurnsToLive')
    ConversationLevelIntentClassificationResultItem = Shapes::StructureShape.new(name: 'ConversationLevelIntentClassificationResultItem')
    ConversationLevelIntentClassificationResults = Shapes::ListShape.new(name: 'ConversationLevelIntentClassificationResults')
    ConversationLevelResultDetail = Shapes::StructureShape.new(name: 'ConversationLevelResultDetail')
    ConversationLevelSlotResolutionResultItem = Shapes::StructureShape.new(name: 'ConversationLevelSlotResolutionResultItem')
    ConversationLevelSlotResolutionResults = Shapes::ListShape.new(name: 'ConversationLevelSlotResolutionResults')
    ConversationLevelTestResultItem = Shapes::StructureShape.new(name: 'ConversationLevelTestResultItem')
    ConversationLevelTestResultItemList = Shapes::ListShape.new(name: 'ConversationLevelTestResultItemList')
    ConversationLevelTestResults = Shapes::StructureShape.new(name: 'ConversationLevelTestResults')
    ConversationLevelTestResultsFilterBy = Shapes::StructureShape.new(name: 'ConversationLevelTestResultsFilterBy')
    ConversationLogSettings = Shapes::StructureShape.new(name: 'ConversationLogSettings')
    ConversationLogsDataSource = Shapes::StructureShape.new(name: 'ConversationLogsDataSource')
    ConversationLogsDataSourceFilterBy = Shapes::StructureShape.new(name: 'ConversationLogsDataSourceFilterBy')
    ConversationLogsInputModeFilter = Shapes::StringShape.new(name: 'ConversationLogsInputModeFilter')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateBotAliasRequest = Shapes::StructureShape.new(name: 'CreateBotAliasRequest')
    CreateBotAliasResponse = Shapes::StructureShape.new(name: 'CreateBotAliasResponse')
    CreateBotLocaleRequest = Shapes::StructureShape.new(name: 'CreateBotLocaleRequest')
    CreateBotLocaleResponse = Shapes::StructureShape.new(name: 'CreateBotLocaleResponse')
    CreateBotRequest = Shapes::StructureShape.new(name: 'CreateBotRequest')
    CreateBotResponse = Shapes::StructureShape.new(name: 'CreateBotResponse')
    CreateBotVersionRequest = Shapes::StructureShape.new(name: 'CreateBotVersionRequest')
    CreateBotVersionResponse = Shapes::StructureShape.new(name: 'CreateBotVersionResponse')
    CreateCustomVocabularyItemsList = Shapes::ListShape.new(name: 'CreateCustomVocabularyItemsList')
    CreateExportRequest = Shapes::StructureShape.new(name: 'CreateExportRequest')
    CreateExportResponse = Shapes::StructureShape.new(name: 'CreateExportResponse')
    CreateIntentRequest = Shapes::StructureShape.new(name: 'CreateIntentRequest')
    CreateIntentResponse = Shapes::StructureShape.new(name: 'CreateIntentResponse')
    CreateResourcePolicyRequest = Shapes::StructureShape.new(name: 'CreateResourcePolicyRequest')
    CreateResourcePolicyResponse = Shapes::StructureShape.new(name: 'CreateResourcePolicyResponse')
    CreateResourcePolicyStatementRequest = Shapes::StructureShape.new(name: 'CreateResourcePolicyStatementRequest')
    CreateResourcePolicyStatementResponse = Shapes::StructureShape.new(name: 'CreateResourcePolicyStatementResponse')
    CreateSlotRequest = Shapes::StructureShape.new(name: 'CreateSlotRequest')
    CreateSlotResponse = Shapes::StructureShape.new(name: 'CreateSlotResponse')
    CreateSlotTypeRequest = Shapes::StructureShape.new(name: 'CreateSlotTypeRequest')
    CreateSlotTypeResponse = Shapes::StructureShape.new(name: 'CreateSlotTypeResponse')
    CreateTestSetDiscrepancyReportRequest = Shapes::StructureShape.new(name: 'CreateTestSetDiscrepancyReportRequest')
    CreateTestSetDiscrepancyReportResponse = Shapes::StructureShape.new(name: 'CreateTestSetDiscrepancyReportResponse')
    CreateUploadUrlRequest = Shapes::StructureShape.new(name: 'CreateUploadUrlRequest')
    CreateUploadUrlResponse = Shapes::StructureShape.new(name: 'CreateUploadUrlResponse')
    CustomPayload = Shapes::StructureShape.new(name: 'CustomPayload')
    CustomPayloadValue = Shapes::StringShape.new(name: 'CustomPayloadValue')
    CustomVocabularyEntryId = Shapes::StructureShape.new(name: 'CustomVocabularyEntryId')
    CustomVocabularyExportSpecification = Shapes::StructureShape.new(name: 'CustomVocabularyExportSpecification')
    CustomVocabularyImportSpecification = Shapes::StructureShape.new(name: 'CustomVocabularyImportSpecification')
    CustomVocabularyItem = Shapes::StructureShape.new(name: 'CustomVocabularyItem')
    CustomVocabularyItems = Shapes::ListShape.new(name: 'CustomVocabularyItems')
    CustomVocabularyStatus = Shapes::StringShape.new(name: 'CustomVocabularyStatus')
    DTMFCharacter = Shapes::StringShape.new(name: 'DTMFCharacter')
    DTMFSpecification = Shapes::StructureShape.new(name: 'DTMFSpecification')
    DataPrivacy = Shapes::StructureShape.new(name: 'DataPrivacy')
    DateRangeFilter = Shapes::StructureShape.new(name: 'DateRangeFilter')
    DefaultConditionalBranch = Shapes::StructureShape.new(name: 'DefaultConditionalBranch')
    DeleteBotAliasRequest = Shapes::StructureShape.new(name: 'DeleteBotAliasRequest')
    DeleteBotAliasResponse = Shapes::StructureShape.new(name: 'DeleteBotAliasResponse')
    DeleteBotLocaleRequest = Shapes::StructureShape.new(name: 'DeleteBotLocaleRequest')
    DeleteBotLocaleResponse = Shapes::StructureShape.new(name: 'DeleteBotLocaleResponse')
    DeleteBotRequest = Shapes::StructureShape.new(name: 'DeleteBotRequest')
    DeleteBotResponse = Shapes::StructureShape.new(name: 'DeleteBotResponse')
    DeleteBotVersionRequest = Shapes::StructureShape.new(name: 'DeleteBotVersionRequest')
    DeleteBotVersionResponse = Shapes::StructureShape.new(name: 'DeleteBotVersionResponse')
    DeleteCustomVocabularyItemsList = Shapes::ListShape.new(name: 'DeleteCustomVocabularyItemsList')
    DeleteCustomVocabularyRequest = Shapes::StructureShape.new(name: 'DeleteCustomVocabularyRequest')
    DeleteCustomVocabularyResponse = Shapes::StructureShape.new(name: 'DeleteCustomVocabularyResponse')
    DeleteExportRequest = Shapes::StructureShape.new(name: 'DeleteExportRequest')
    DeleteExportResponse = Shapes::StructureShape.new(name: 'DeleteExportResponse')
    DeleteImportRequest = Shapes::StructureShape.new(name: 'DeleteImportRequest')
    DeleteImportResponse = Shapes::StructureShape.new(name: 'DeleteImportResponse')
    DeleteIntentRequest = Shapes::StructureShape.new(name: 'DeleteIntentRequest')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteResourcePolicyStatementRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyStatementRequest')
    DeleteResourcePolicyStatementResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyStatementResponse')
    DeleteSlotRequest = Shapes::StructureShape.new(name: 'DeleteSlotRequest')
    DeleteSlotTypeRequest = Shapes::StructureShape.new(name: 'DeleteSlotTypeRequest')
    DeleteTestSetRequest = Shapes::StructureShape.new(name: 'DeleteTestSetRequest')
    DeleteUtterancesRequest = Shapes::StructureShape.new(name: 'DeleteUtterancesRequest')
    DeleteUtterancesResponse = Shapes::StructureShape.new(name: 'DeleteUtterancesResponse')
    DescribeBotAliasRequest = Shapes::StructureShape.new(name: 'DescribeBotAliasRequest')
    DescribeBotAliasResponse = Shapes::StructureShape.new(name: 'DescribeBotAliasResponse')
    DescribeBotLocaleRequest = Shapes::StructureShape.new(name: 'DescribeBotLocaleRequest')
    DescribeBotLocaleResponse = Shapes::StructureShape.new(name: 'DescribeBotLocaleResponse')
    DescribeBotRecommendationRequest = Shapes::StructureShape.new(name: 'DescribeBotRecommendationRequest')
    DescribeBotRecommendationResponse = Shapes::StructureShape.new(name: 'DescribeBotRecommendationResponse')
    DescribeBotRequest = Shapes::StructureShape.new(name: 'DescribeBotRequest')
    DescribeBotResponse = Shapes::StructureShape.new(name: 'DescribeBotResponse')
    DescribeBotVersionRequest = Shapes::StructureShape.new(name: 'DescribeBotVersionRequest')
    DescribeBotVersionResponse = Shapes::StructureShape.new(name: 'DescribeBotVersionResponse')
    DescribeCustomVocabularyMetadataRequest = Shapes::StructureShape.new(name: 'DescribeCustomVocabularyMetadataRequest')
    DescribeCustomVocabularyMetadataResponse = Shapes::StructureShape.new(name: 'DescribeCustomVocabularyMetadataResponse')
    DescribeExportRequest = Shapes::StructureShape.new(name: 'DescribeExportRequest')
    DescribeExportResponse = Shapes::StructureShape.new(name: 'DescribeExportResponse')
    DescribeImportRequest = Shapes::StructureShape.new(name: 'DescribeImportRequest')
    DescribeImportResponse = Shapes::StructureShape.new(name: 'DescribeImportResponse')
    DescribeIntentRequest = Shapes::StructureShape.new(name: 'DescribeIntentRequest')
    DescribeIntentResponse = Shapes::StructureShape.new(name: 'DescribeIntentResponse')
    DescribeResourcePolicyRequest = Shapes::StructureShape.new(name: 'DescribeResourcePolicyRequest')
    DescribeResourcePolicyResponse = Shapes::StructureShape.new(name: 'DescribeResourcePolicyResponse')
    DescribeSlotRequest = Shapes::StructureShape.new(name: 'DescribeSlotRequest')
    DescribeSlotResponse = Shapes::StructureShape.new(name: 'DescribeSlotResponse')
    DescribeSlotTypeRequest = Shapes::StructureShape.new(name: 'DescribeSlotTypeRequest')
    DescribeSlotTypeResponse = Shapes::StructureShape.new(name: 'DescribeSlotTypeResponse')
    DescribeTestExecutionRequest = Shapes::StructureShape.new(name: 'DescribeTestExecutionRequest')
    DescribeTestExecutionResponse = Shapes::StructureShape.new(name: 'DescribeTestExecutionResponse')
    DescribeTestSetDiscrepancyReportRequest = Shapes::StructureShape.new(name: 'DescribeTestSetDiscrepancyReportRequest')
    DescribeTestSetDiscrepancyReportResponse = Shapes::StructureShape.new(name: 'DescribeTestSetDiscrepancyReportResponse')
    DescribeTestSetGenerationRequest = Shapes::StructureShape.new(name: 'DescribeTestSetGenerationRequest')
    DescribeTestSetGenerationResponse = Shapes::StructureShape.new(name: 'DescribeTestSetGenerationResponse')
    DescribeTestSetRequest = Shapes::StructureShape.new(name: 'DescribeTestSetRequest')
    DescribeTestSetResponse = Shapes::StructureShape.new(name: 'DescribeTestSetResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DialogAction = Shapes::StructureShape.new(name: 'DialogAction')
    DialogActionType = Shapes::StringShape.new(name: 'DialogActionType')
    DialogCodeHookInvocationSetting = Shapes::StructureShape.new(name: 'DialogCodeHookInvocationSetting')
    DialogCodeHookSettings = Shapes::StructureShape.new(name: 'DialogCodeHookSettings')
    DialogState = Shapes::StructureShape.new(name: 'DialogState')
    DraftBotVersion = Shapes::StringShape.new(name: 'DraftBotVersion')
    Effect = Shapes::StringShape.new(name: 'Effect')
    ElicitationCodeHookInvocationSetting = Shapes::StructureShape.new(name: 'ElicitationCodeHookInvocationSetting')
    EncryptionSetting = Shapes::StructureShape.new(name: 'EncryptionSetting')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExecutionErrorDetails = Shapes::StructureShape.new(name: 'ExecutionErrorDetails')
    ExportFilter = Shapes::StructureShape.new(name: 'ExportFilter')
    ExportFilterName = Shapes::StringShape.new(name: 'ExportFilterName')
    ExportFilterOperator = Shapes::StringShape.new(name: 'ExportFilterOperator')
    ExportFilters = Shapes::ListShape.new(name: 'ExportFilters')
    ExportResourceSpecification = Shapes::StructureShape.new(name: 'ExportResourceSpecification')
    ExportSortAttribute = Shapes::StringShape.new(name: 'ExportSortAttribute')
    ExportSortBy = Shapes::StructureShape.new(name: 'ExportSortBy')
    ExportStatus = Shapes::StringShape.new(name: 'ExportStatus')
    ExportSummary = Shapes::StructureShape.new(name: 'ExportSummary')
    ExportSummaryList = Shapes::ListShape.new(name: 'ExportSummaryList')
    ExternalSourceSetting = Shapes::StructureShape.new(name: 'ExternalSourceSetting')
    FailedCustomVocabularyItem = Shapes::StructureShape.new(name: 'FailedCustomVocabularyItem')
    FailedCustomVocabularyItems = Shapes::ListShape.new(name: 'FailedCustomVocabularyItems')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FailureReasons = Shapes::ListShape.new(name: 'FailureReasons')
    FilePassword = Shapes::StringShape.new(name: 'FilePassword')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    FulfillmentCodeHookSettings = Shapes::StructureShape.new(name: 'FulfillmentCodeHookSettings')
    FulfillmentStartResponseDelay = Shapes::IntegerShape.new(name: 'FulfillmentStartResponseDelay')
    FulfillmentStartResponseSpecification = Shapes::StructureShape.new(name: 'FulfillmentStartResponseSpecification')
    FulfillmentTimeout = Shapes::IntegerShape.new(name: 'FulfillmentTimeout')
    FulfillmentUpdateResponseFrequency = Shapes::IntegerShape.new(name: 'FulfillmentUpdateResponseFrequency')
    FulfillmentUpdateResponseSpecification = Shapes::StructureShape.new(name: 'FulfillmentUpdateResponseSpecification')
    FulfillmentUpdatesSpecification = Shapes::StructureShape.new(name: 'FulfillmentUpdatesSpecification')
    GetTestExecutionArtifactsUrlRequest = Shapes::StructureShape.new(name: 'GetTestExecutionArtifactsUrlRequest')
    GetTestExecutionArtifactsUrlResponse = Shapes::StructureShape.new(name: 'GetTestExecutionArtifactsUrlResponse')
    GrammarSlotTypeSetting = Shapes::StructureShape.new(name: 'GrammarSlotTypeSetting')
    GrammarSlotTypeSource = Shapes::StructureShape.new(name: 'GrammarSlotTypeSource')
    HitCount = Shapes::IntegerShape.new(name: 'HitCount')
    Id = Shapes::StringShape.new(name: 'Id')
    ImageResponseCard = Shapes::StructureShape.new(name: 'ImageResponseCard')
    ImportExportFileFormat = Shapes::StringShape.new(name: 'ImportExportFileFormat')
    ImportExportFilePassword = Shapes::StringShape.new(name: 'ImportExportFilePassword')
    ImportFilter = Shapes::StructureShape.new(name: 'ImportFilter')
    ImportFilterName = Shapes::StringShape.new(name: 'ImportFilterName')
    ImportFilterOperator = Shapes::StringShape.new(name: 'ImportFilterOperator')
    ImportFilters = Shapes::ListShape.new(name: 'ImportFilters')
    ImportResourceSpecification = Shapes::StructureShape.new(name: 'ImportResourceSpecification')
    ImportResourceType = Shapes::StringShape.new(name: 'ImportResourceType')
    ImportSortAttribute = Shapes::StringShape.new(name: 'ImportSortAttribute')
    ImportSortBy = Shapes::StructureShape.new(name: 'ImportSortBy')
    ImportStatus = Shapes::StringShape.new(name: 'ImportStatus')
    ImportSummary = Shapes::StructureShape.new(name: 'ImportSummary')
    ImportSummaryList = Shapes::ListShape.new(name: 'ImportSummaryList')
    ImportedResourceId = Shapes::StringShape.new(name: 'ImportedResourceId')
    InitialResponseSetting = Shapes::StructureShape.new(name: 'InitialResponseSetting')
    InputContext = Shapes::StructureShape.new(name: 'InputContext')
    InputContextsList = Shapes::ListShape.new(name: 'InputContextsList')
    InputSessionStateSpecification = Shapes::StructureShape.new(name: 'InputSessionStateSpecification')
    IntentClassificationTestResultItem = Shapes::StructureShape.new(name: 'IntentClassificationTestResultItem')
    IntentClassificationTestResultItemCounts = Shapes::StructureShape.new(name: 'IntentClassificationTestResultItemCounts')
    IntentClassificationTestResultItemList = Shapes::ListShape.new(name: 'IntentClassificationTestResultItemList')
    IntentClassificationTestResults = Shapes::StructureShape.new(name: 'IntentClassificationTestResults')
    IntentClosingSetting = Shapes::StructureShape.new(name: 'IntentClosingSetting')
    IntentConfirmationSetting = Shapes::StructureShape.new(name: 'IntentConfirmationSetting')
    IntentFilter = Shapes::StructureShape.new(name: 'IntentFilter')
    IntentFilterName = Shapes::StringShape.new(name: 'IntentFilterName')
    IntentFilterOperator = Shapes::StringShape.new(name: 'IntentFilterOperator')
    IntentFilters = Shapes::ListShape.new(name: 'IntentFilters')
    IntentLevelSlotResolutionTestResultItem = Shapes::StructureShape.new(name: 'IntentLevelSlotResolutionTestResultItem')
    IntentLevelSlotResolutionTestResultItemList = Shapes::ListShape.new(name: 'IntentLevelSlotResolutionTestResultItemList')
    IntentLevelSlotResolutionTestResults = Shapes::StructureShape.new(name: 'IntentLevelSlotResolutionTestResults')
    IntentOverride = Shapes::StructureShape.new(name: 'IntentOverride')
    IntentSignature = Shapes::StringShape.new(name: 'IntentSignature')
    IntentSortAttribute = Shapes::StringShape.new(name: 'IntentSortAttribute')
    IntentSortBy = Shapes::StructureShape.new(name: 'IntentSortBy')
    IntentStatistics = Shapes::StructureShape.new(name: 'IntentStatistics')
    IntentSummary = Shapes::StructureShape.new(name: 'IntentSummary')
    IntentSummaryList = Shapes::ListShape.new(name: 'IntentSummaryList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ItemId = Shapes::StringShape.new(name: 'ItemId')
    KendraConfiguration = Shapes::StructureShape.new(name: 'KendraConfiguration')
    KendraIndexArn = Shapes::StringShape.new(name: 'KendraIndexArn')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LambdaARN = Shapes::StringShape.new(name: 'LambdaARN')
    LambdaCodeHook = Shapes::StructureShape.new(name: 'LambdaCodeHook')
    LexTranscriptFilter = Shapes::StructureShape.new(name: 'LexTranscriptFilter')
    ListAggregatedUtterancesRequest = Shapes::StructureShape.new(name: 'ListAggregatedUtterancesRequest')
    ListAggregatedUtterancesResponse = Shapes::StructureShape.new(name: 'ListAggregatedUtterancesResponse')
    ListBotAliasesRequest = Shapes::StructureShape.new(name: 'ListBotAliasesRequest')
    ListBotAliasesResponse = Shapes::StructureShape.new(name: 'ListBotAliasesResponse')
    ListBotLocalesRequest = Shapes::StructureShape.new(name: 'ListBotLocalesRequest')
    ListBotLocalesResponse = Shapes::StructureShape.new(name: 'ListBotLocalesResponse')
    ListBotRecommendationsRequest = Shapes::StructureShape.new(name: 'ListBotRecommendationsRequest')
    ListBotRecommendationsResponse = Shapes::StructureShape.new(name: 'ListBotRecommendationsResponse')
    ListBotVersionsRequest = Shapes::StructureShape.new(name: 'ListBotVersionsRequest')
    ListBotVersionsResponse = Shapes::StructureShape.new(name: 'ListBotVersionsResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListBuiltInIntentsRequest = Shapes::StructureShape.new(name: 'ListBuiltInIntentsRequest')
    ListBuiltInIntentsResponse = Shapes::StructureShape.new(name: 'ListBuiltInIntentsResponse')
    ListBuiltInSlotTypesRequest = Shapes::StructureShape.new(name: 'ListBuiltInSlotTypesRequest')
    ListBuiltInSlotTypesResponse = Shapes::StructureShape.new(name: 'ListBuiltInSlotTypesResponse')
    ListCustomVocabularyItemsRequest = Shapes::StructureShape.new(name: 'ListCustomVocabularyItemsRequest')
    ListCustomVocabularyItemsResponse = Shapes::StructureShape.new(name: 'ListCustomVocabularyItemsResponse')
    ListExportsRequest = Shapes::StructureShape.new(name: 'ListExportsRequest')
    ListExportsResponse = Shapes::StructureShape.new(name: 'ListExportsResponse')
    ListImportsRequest = Shapes::StructureShape.new(name: 'ListImportsRequest')
    ListImportsResponse = Shapes::StructureShape.new(name: 'ListImportsResponse')
    ListIntentsRequest = Shapes::StructureShape.new(name: 'ListIntentsRequest')
    ListIntentsResponse = Shapes::StructureShape.new(name: 'ListIntentsResponse')
    ListRecommendedIntentsRequest = Shapes::StructureShape.new(name: 'ListRecommendedIntentsRequest')
    ListRecommendedIntentsResponse = Shapes::StructureShape.new(name: 'ListRecommendedIntentsResponse')
    ListSlotTypesRequest = Shapes::StructureShape.new(name: 'ListSlotTypesRequest')
    ListSlotTypesResponse = Shapes::StructureShape.new(name: 'ListSlotTypesResponse')
    ListSlotsRequest = Shapes::StructureShape.new(name: 'ListSlotsRequest')
    ListSlotsResponse = Shapes::StructureShape.new(name: 'ListSlotsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTestExecutionResultItemsRequest = Shapes::StructureShape.new(name: 'ListTestExecutionResultItemsRequest')
    ListTestExecutionResultItemsResponse = Shapes::StructureShape.new(name: 'ListTestExecutionResultItemsResponse')
    ListTestExecutionsRequest = Shapes::StructureShape.new(name: 'ListTestExecutionsRequest')
    ListTestExecutionsResponse = Shapes::StructureShape.new(name: 'ListTestExecutionsResponse')
    ListTestSetRecordsRequest = Shapes::StructureShape.new(name: 'ListTestSetRecordsRequest')
    ListTestSetRecordsResponse = Shapes::StructureShape.new(name: 'ListTestSetRecordsResponse')
    ListTestSetsRequest = Shapes::StructureShape.new(name: 'ListTestSetsRequest')
    ListTestSetsResponse = Shapes::StructureShape.new(name: 'ListTestSetsResponse')
    LocaleId = Shapes::StringShape.new(name: 'LocaleId')
    LocaleName = Shapes::StringShape.new(name: 'LocaleName')
    LogPrefix = Shapes::StringShape.new(name: 'LogPrefix')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxUtteranceDigits = Shapes::IntegerShape.new(name: 'MaxUtteranceDigits')
    MergeStrategy = Shapes::StringShape.new(name: 'MergeStrategy')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageGroup = Shapes::StructureShape.new(name: 'MessageGroup')
    MessageGroupsList = Shapes::ListShape.new(name: 'MessageGroupsList')
    MessageSelectionStrategy = Shapes::StringShape.new(name: 'MessageSelectionStrategy')
    MessageVariationsList = Shapes::ListShape.new(name: 'MessageVariationsList')
    MissedCount = Shapes::IntegerShape.new(name: 'MissedCount')
    MultipleValuesSetting = Shapes::StructureShape.new(name: 'MultipleValuesSetting')
    Name = Shapes::StringShape.new(name: 'Name')
    NewCustomVocabularyItem = Shapes::StructureShape.new(name: 'NewCustomVocabularyItem')
    NextIndex = Shapes::IntegerShape.new(name: 'NextIndex')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NumericalBotVersion = Shapes::StringShape.new(name: 'NumericalBotVersion')
    ObfuscationSetting = Shapes::StructureShape.new(name: 'ObfuscationSetting')
    ObfuscationSettingType = Shapes::StringShape.new(name: 'ObfuscationSettingType')
    ObjectPrefix = Shapes::StringShape.new(name: 'ObjectPrefix')
    ObjectPrefixes = Shapes::ListShape.new(name: 'ObjectPrefixes')
    Operation = Shapes::StringShape.new(name: 'Operation')
    OperationList = Shapes::ListShape.new(name: 'OperationList')
    OutputContext = Shapes::StructureShape.new(name: 'OutputContext')
    OutputContextsList = Shapes::ListShape.new(name: 'OutputContextsList')
    OverallTestResultItem = Shapes::StructureShape.new(name: 'OverallTestResultItem')
    OverallTestResultItemList = Shapes::ListShape.new(name: 'OverallTestResultItemList')
    OverallTestResults = Shapes::StructureShape.new(name: 'OverallTestResults')
    ParentBotNetwork = Shapes::StructureShape.new(name: 'ParentBotNetwork')
    ParentBotNetworks = Shapes::ListShape.new(name: 'ParentBotNetworks')
    PathFormat = Shapes::StructureShape.new(name: 'PathFormat')
    Phrase = Shapes::StringShape.new(name: 'Phrase')
    PlainTextMessage = Shapes::StructureShape.new(name: 'PlainTextMessage')
    PlainTextMessageValue = Shapes::StringShape.new(name: 'PlainTextMessageValue')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PostDialogCodeHookInvocationSpecification = Shapes::StructureShape.new(name: 'PostDialogCodeHookInvocationSpecification')
    PostFulfillmentStatusSpecification = Shapes::StructureShape.new(name: 'PostFulfillmentStatusSpecification')
    PreconditionFailedException = Shapes::StructureShape.new(name: 'PreconditionFailedException')
    PresignedS3Url = Shapes::StringShape.new(name: 'PresignedS3Url')
    Principal = Shapes::StructureShape.new(name: 'Principal')
    PrincipalArn = Shapes::StringShape.new(name: 'PrincipalArn')
    PrincipalList = Shapes::ListShape.new(name: 'PrincipalList')
    PriorityValue = Shapes::IntegerShape.new(name: 'PriorityValue')
    PromptAttempt = Shapes::StringShape.new(name: 'PromptAttempt')
    PromptAttemptSpecification = Shapes::StructureShape.new(name: 'PromptAttemptSpecification')
    PromptAttemptsSpecificationMap = Shapes::MapShape.new(name: 'PromptAttemptsSpecificationMap')
    PromptMaxRetries = Shapes::IntegerShape.new(name: 'PromptMaxRetries')
    PromptSpecification = Shapes::StructureShape.new(name: 'PromptSpecification')
    QueryFilterString = Shapes::StringShape.new(name: 'QueryFilterString')
    RecommendedAction = Shapes::StringShape.new(name: 'RecommendedAction')
    RecommendedActions = Shapes::ListShape.new(name: 'RecommendedActions')
    RecommendedIntentSummary = Shapes::StructureShape.new(name: 'RecommendedIntentSummary')
    RecommendedIntentSummaryList = Shapes::ListShape.new(name: 'RecommendedIntentSummaryList')
    RecordNumber = Shapes::IntegerShape.new(name: 'RecordNumber')
    RegexPattern = Shapes::StringShape.new(name: 'RegexPattern')
    RelativeAggregationDuration = Shapes::StructureShape.new(name: 'RelativeAggregationDuration')
    ResourceCount = Shapes::IntegerShape.new(name: 'ResourceCount')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseSpecification = Shapes::StructureShape.new(name: 'ResponseSpecification')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RevisionId = Shapes::StringShape.new(name: 'RevisionId')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuntimeHintDetails = Shapes::StructureShape.new(name: 'RuntimeHintDetails')
    RuntimeHintPhrase = Shapes::StringShape.new(name: 'RuntimeHintPhrase')
    RuntimeHintValue = Shapes::StructureShape.new(name: 'RuntimeHintValue')
    RuntimeHintValuesList = Shapes::ListShape.new(name: 'RuntimeHintValuesList')
    RuntimeHints = Shapes::StructureShape.new(name: 'RuntimeHints')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3BucketLogDestination = Shapes::StructureShape.new(name: 'S3BucketLogDestination')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3BucketTranscriptSource = Shapes::StructureShape.new(name: 'S3BucketTranscriptSource')
    S3ObjectPath = Shapes::StringShape.new(name: 'S3ObjectPath')
    SSMLMessage = Shapes::StructureShape.new(name: 'SSMLMessage')
    SSMLMessageValue = Shapes::StringShape.new(name: 'SSMLMessageValue')
    SampleUtterance = Shapes::StructureShape.new(name: 'SampleUtterance')
    SampleUtterancesCount = Shapes::IntegerShape.new(name: 'SampleUtterancesCount')
    SampleUtterancesList = Shapes::ListShape.new(name: 'SampleUtterancesList')
    SampleValue = Shapes::StructureShape.new(name: 'SampleValue')
    SearchAssociatedTranscriptsRequest = Shapes::StructureShape.new(name: 'SearchAssociatedTranscriptsRequest')
    SearchAssociatedTranscriptsResponse = Shapes::StructureShape.new(name: 'SearchAssociatedTranscriptsResponse')
    SearchOrder = Shapes::StringShape.new(name: 'SearchOrder')
    SentimentAnalysisSettings = Shapes::StructureShape.new(name: 'SentimentAnalysisSettings')
    ServicePrincipal = Shapes::StringShape.new(name: 'ServicePrincipal')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionTTL = Shapes::IntegerShape.new(name: 'SessionTTL')
    SkipResourceInUseCheck = Shapes::BooleanShape.new(name: 'SkipResourceInUseCheck')
    SlotCaptureSetting = Shapes::StructureShape.new(name: 'SlotCaptureSetting')
    SlotConstraint = Shapes::StringShape.new(name: 'SlotConstraint')
    SlotDefaultValue = Shapes::StructureShape.new(name: 'SlotDefaultValue')
    SlotDefaultValueList = Shapes::ListShape.new(name: 'SlotDefaultValueList')
    SlotDefaultValueSpecification = Shapes::StructureShape.new(name: 'SlotDefaultValueSpecification')
    SlotDefaultValueString = Shapes::StringShape.new(name: 'SlotDefaultValueString')
    SlotFilter = Shapes::StructureShape.new(name: 'SlotFilter')
    SlotFilterName = Shapes::StringShape.new(name: 'SlotFilterName')
    SlotFilterOperator = Shapes::StringShape.new(name: 'SlotFilterOperator')
    SlotFilters = Shapes::ListShape.new(name: 'SlotFilters')
    SlotHintsIntentMap = Shapes::MapShape.new(name: 'SlotHintsIntentMap')
    SlotHintsSlotMap = Shapes::MapShape.new(name: 'SlotHintsSlotMap')
    SlotPrioritiesList = Shapes::ListShape.new(name: 'SlotPrioritiesList')
    SlotPriority = Shapes::StructureShape.new(name: 'SlotPriority')
    SlotResolutionTestResultItem = Shapes::StructureShape.new(name: 'SlotResolutionTestResultItem')
    SlotResolutionTestResultItemCounts = Shapes::StructureShape.new(name: 'SlotResolutionTestResultItemCounts')
    SlotResolutionTestResultItems = Shapes::ListShape.new(name: 'SlotResolutionTestResultItems')
    SlotShape = Shapes::StringShape.new(name: 'SlotShape')
    SlotSortAttribute = Shapes::StringShape.new(name: 'SlotSortAttribute')
    SlotSortBy = Shapes::StructureShape.new(name: 'SlotSortBy')
    SlotSummary = Shapes::StructureShape.new(name: 'SlotSummary')
    SlotSummaryList = Shapes::ListShape.new(name: 'SlotSummaryList')
    SlotTypeCategory = Shapes::StringShape.new(name: 'SlotTypeCategory')
    SlotTypeFilter = Shapes::StructureShape.new(name: 'SlotTypeFilter')
    SlotTypeFilterName = Shapes::StringShape.new(name: 'SlotTypeFilterName')
    SlotTypeFilterOperator = Shapes::StringShape.new(name: 'SlotTypeFilterOperator')
    SlotTypeFilters = Shapes::ListShape.new(name: 'SlotTypeFilters')
    SlotTypeSignature = Shapes::StringShape.new(name: 'SlotTypeSignature')
    SlotTypeSortAttribute = Shapes::StringShape.new(name: 'SlotTypeSortAttribute')
    SlotTypeSortBy = Shapes::StructureShape.new(name: 'SlotTypeSortBy')
    SlotTypeStatistics = Shapes::StructureShape.new(name: 'SlotTypeStatistics')
    SlotTypeSummary = Shapes::StructureShape.new(name: 'SlotTypeSummary')
    SlotTypeSummaryList = Shapes::ListShape.new(name: 'SlotTypeSummaryList')
    SlotTypeValue = Shapes::StructureShape.new(name: 'SlotTypeValue')
    SlotTypeValues = Shapes::ListShape.new(name: 'SlotTypeValues')
    SlotValue = Shapes::StructureShape.new(name: 'SlotValue')
    SlotValueElicitationSetting = Shapes::StructureShape.new(name: 'SlotValueElicitationSetting')
    SlotValueOverride = Shapes::StructureShape.new(name: 'SlotValueOverride')
    SlotValueOverrideMap = Shapes::MapShape.new(name: 'SlotValueOverrideMap')
    SlotValueRegexFilter = Shapes::StructureShape.new(name: 'SlotValueRegexFilter')
    SlotValueResolutionStrategy = Shapes::StringShape.new(name: 'SlotValueResolutionStrategy')
    SlotValueSelectionSetting = Shapes::StructureShape.new(name: 'SlotValueSelectionSetting')
    SlotValues = Shapes::ListShape.new(name: 'SlotValues')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    Specifications = Shapes::StructureShape.new(name: 'Specifications')
    StartBotRecommendationRequest = Shapes::StructureShape.new(name: 'StartBotRecommendationRequest')
    StartBotRecommendationResponse = Shapes::StructureShape.new(name: 'StartBotRecommendationResponse')
    StartImportRequest = Shapes::StructureShape.new(name: 'StartImportRequest')
    StartImportResponse = Shapes::StructureShape.new(name: 'StartImportResponse')
    StartTestExecutionRequest = Shapes::StructureShape.new(name: 'StartTestExecutionRequest')
    StartTestExecutionResponse = Shapes::StructureShape.new(name: 'StartTestExecutionResponse')
    StartTestSetGenerationRequest = Shapes::StructureShape.new(name: 'StartTestSetGenerationRequest')
    StartTestSetGenerationResponse = Shapes::StructureShape.new(name: 'StartTestSetGenerationResponse')
    StillWaitingResponseFrequency = Shapes::IntegerShape.new(name: 'StillWaitingResponseFrequency')
    StillWaitingResponseSpecification = Shapes::StructureShape.new(name: 'StillWaitingResponseSpecification')
    StillWaitingResponseTimeout = Shapes::IntegerShape.new(name: 'StillWaitingResponseTimeout')
    StopBotRecommendationRequest = Shapes::StructureShape.new(name: 'StopBotRecommendationRequest')
    StopBotRecommendationResponse = Shapes::StructureShape.new(name: 'StopBotRecommendationResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SubSlotExpression = Shapes::StringShape.new(name: 'SubSlotExpression')
    SubSlotSetting = Shapes::StructureShape.new(name: 'SubSlotSetting')
    SubSlotSpecificationMap = Shapes::MapShape.new(name: 'SubSlotSpecificationMap')
    SubSlotTypeComposition = Shapes::StructureShape.new(name: 'SubSlotTypeComposition')
    SubSlotTypeList = Shapes::ListShape.new(name: 'SubSlotTypeList')
    SubSlotValueElicitationSetting = Shapes::StructureShape.new(name: 'SubSlotValueElicitationSetting')
    SynonymList = Shapes::ListShape.new(name: 'SynonymList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TestExecutionApiMode = Shapes::StringShape.new(name: 'TestExecutionApiMode')
    TestExecutionModality = Shapes::StringShape.new(name: 'TestExecutionModality')
    TestExecutionResultFilterBy = Shapes::StructureShape.new(name: 'TestExecutionResultFilterBy')
    TestExecutionResultItems = Shapes::StructureShape.new(name: 'TestExecutionResultItems')
    TestExecutionSortAttribute = Shapes::StringShape.new(name: 'TestExecutionSortAttribute')
    TestExecutionSortBy = Shapes::StructureShape.new(name: 'TestExecutionSortBy')
    TestExecutionStatus = Shapes::StringShape.new(name: 'TestExecutionStatus')
    TestExecutionSummary = Shapes::StructureShape.new(name: 'TestExecutionSummary')
    TestExecutionSummaryList = Shapes::ListShape.new(name: 'TestExecutionSummaryList')
    TestExecutionTarget = Shapes::StructureShape.new(name: 'TestExecutionTarget')
    TestResultMatchStatus = Shapes::StringShape.new(name: 'TestResultMatchStatus')
    TestResultMatchStatusCountMap = Shapes::MapShape.new(name: 'TestResultMatchStatusCountMap')
    TestResultSlotName = Shapes::StringShape.new(name: 'TestResultSlotName')
    TestResultTypeFilter = Shapes::StringShape.new(name: 'TestResultTypeFilter')
    TestSetAgentPrompt = Shapes::StringShape.new(name: 'TestSetAgentPrompt')
    TestSetConversationId = Shapes::StringShape.new(name: 'TestSetConversationId')
    TestSetDiscrepancyErrors = Shapes::StructureShape.new(name: 'TestSetDiscrepancyErrors')
    TestSetDiscrepancyReportBotAliasTarget = Shapes::StructureShape.new(name: 'TestSetDiscrepancyReportBotAliasTarget')
    TestSetDiscrepancyReportResourceTarget = Shapes::StructureShape.new(name: 'TestSetDiscrepancyReportResourceTarget')
    TestSetDiscrepancyReportStatus = Shapes::StringShape.new(name: 'TestSetDiscrepancyReportStatus')
    TestSetExportSpecification = Shapes::StructureShape.new(name: 'TestSetExportSpecification')
    TestSetGenerationDataSource = Shapes::StructureShape.new(name: 'TestSetGenerationDataSource')
    TestSetGenerationStatus = Shapes::StringShape.new(name: 'TestSetGenerationStatus')
    TestSetImportInputLocation = Shapes::StructureShape.new(name: 'TestSetImportInputLocation')
    TestSetImportResourceSpecification = Shapes::StructureShape.new(name: 'TestSetImportResourceSpecification')
    TestSetIntentDiscrepancyItem = Shapes::StructureShape.new(name: 'TestSetIntentDiscrepancyItem')
    TestSetIntentDiscrepancyList = Shapes::ListShape.new(name: 'TestSetIntentDiscrepancyList')
    TestSetModality = Shapes::StringShape.new(name: 'TestSetModality')
    TestSetSlotDiscrepancyItem = Shapes::StructureShape.new(name: 'TestSetSlotDiscrepancyItem')
    TestSetSlotDiscrepancyList = Shapes::ListShape.new(name: 'TestSetSlotDiscrepancyList')
    TestSetSortAttribute = Shapes::StringShape.new(name: 'TestSetSortAttribute')
    TestSetSortBy = Shapes::StructureShape.new(name: 'TestSetSortBy')
    TestSetStatus = Shapes::StringShape.new(name: 'TestSetStatus')
    TestSetStorageLocation = Shapes::StructureShape.new(name: 'TestSetStorageLocation')
    TestSetSummary = Shapes::StructureShape.new(name: 'TestSetSummary')
    TestSetSummaryList = Shapes::ListShape.new(name: 'TestSetSummaryList')
    TestSetTurnRecord = Shapes::StructureShape.new(name: 'TestSetTurnRecord')
    TestSetTurnRecordList = Shapes::ListShape.new(name: 'TestSetTurnRecordList')
    TestSetTurnResult = Shapes::StructureShape.new(name: 'TestSetTurnResult')
    TestSetUtteranceText = Shapes::StringShape.new(name: 'TestSetUtteranceText')
    TextInputSpecification = Shapes::StructureShape.new(name: 'TextInputSpecification')
    TextLogDestination = Shapes::StructureShape.new(name: 'TextLogDestination')
    TextLogSetting = Shapes::StructureShape.new(name: 'TextLogSetting')
    TextLogSettingsList = Shapes::ListShape.new(name: 'TextLogSettingsList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeDimension = Shapes::StringShape.new(name: 'TimeDimension')
    TimeInMilliSeconds = Shapes::IntegerShape.new(name: 'TimeInMilliSeconds')
    TimeValue = Shapes::IntegerShape.new(name: 'TimeValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Transcript = Shapes::StringShape.new(name: 'Transcript')
    TranscriptFilter = Shapes::StructureShape.new(name: 'TranscriptFilter')
    TranscriptFormat = Shapes::StringShape.new(name: 'TranscriptFormat')
    TranscriptSourceSetting = Shapes::StructureShape.new(name: 'TranscriptSourceSetting')
    TurnNumber = Shapes::IntegerShape.new(name: 'TurnNumber')
    TurnSpecification = Shapes::StructureShape.new(name: 'TurnSpecification')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBotAliasRequest = Shapes::StructureShape.new(name: 'UpdateBotAliasRequest')
    UpdateBotAliasResponse = Shapes::StructureShape.new(name: 'UpdateBotAliasResponse')
    UpdateBotLocaleRequest = Shapes::StructureShape.new(name: 'UpdateBotLocaleRequest')
    UpdateBotLocaleResponse = Shapes::StructureShape.new(name: 'UpdateBotLocaleResponse')
    UpdateBotRecommendationRequest = Shapes::StructureShape.new(name: 'UpdateBotRecommendationRequest')
    UpdateBotRecommendationResponse = Shapes::StructureShape.new(name: 'UpdateBotRecommendationResponse')
    UpdateBotRequest = Shapes::StructureShape.new(name: 'UpdateBotRequest')
    UpdateBotResponse = Shapes::StructureShape.new(name: 'UpdateBotResponse')
    UpdateCustomVocabularyItemsList = Shapes::ListShape.new(name: 'UpdateCustomVocabularyItemsList')
    UpdateExportRequest = Shapes::StructureShape.new(name: 'UpdateExportRequest')
    UpdateExportResponse = Shapes::StructureShape.new(name: 'UpdateExportResponse')
    UpdateIntentRequest = Shapes::StructureShape.new(name: 'UpdateIntentRequest')
    UpdateIntentResponse = Shapes::StructureShape.new(name: 'UpdateIntentResponse')
    UpdateResourcePolicyRequest = Shapes::StructureShape.new(name: 'UpdateResourcePolicyRequest')
    UpdateResourcePolicyResponse = Shapes::StructureShape.new(name: 'UpdateResourcePolicyResponse')
    UpdateSlotRequest = Shapes::StructureShape.new(name: 'UpdateSlotRequest')
    UpdateSlotResponse = Shapes::StructureShape.new(name: 'UpdateSlotResponse')
    UpdateSlotTypeRequest = Shapes::StructureShape.new(name: 'UpdateSlotTypeRequest')
    UpdateSlotTypeResponse = Shapes::StructureShape.new(name: 'UpdateSlotTypeResponse')
    UpdateTestSetRequest = Shapes::StructureShape.new(name: 'UpdateTestSetRequest')
    UpdateTestSetResponse = Shapes::StructureShape.new(name: 'UpdateTestSetResponse')
    UserTurnInputSpecification = Shapes::StructureShape.new(name: 'UserTurnInputSpecification')
    UserTurnIntentOutput = Shapes::StructureShape.new(name: 'UserTurnIntentOutput')
    UserTurnOutputSpecification = Shapes::StructureShape.new(name: 'UserTurnOutputSpecification')
    UserTurnResult = Shapes::StructureShape.new(name: 'UserTurnResult')
    UserTurnSlotOutput = Shapes::StructureShape.new(name: 'UserTurnSlotOutput')
    UserTurnSlotOutputList = Shapes::ListShape.new(name: 'UserTurnSlotOutputList')
    UserTurnSlotOutputMap = Shapes::MapShape.new(name: 'UserTurnSlotOutputMap')
    UserTurnSpecification = Shapes::StructureShape.new(name: 'UserTurnSpecification')
    Utterance = Shapes::StringShape.new(name: 'Utterance')
    UtteranceAggregationDuration = Shapes::StructureShape.new(name: 'UtteranceAggregationDuration')
    UtteranceAudioInputSpecification = Shapes::StructureShape.new(name: 'UtteranceAudioInputSpecification')
    UtteranceInputSpecification = Shapes::StructureShape.new(name: 'UtteranceInputSpecification')
    UtteranceLevelTestResultItem = Shapes::StructureShape.new(name: 'UtteranceLevelTestResultItem')
    UtteranceLevelTestResultItemList = Shapes::ListShape.new(name: 'UtteranceLevelTestResultItemList')
    UtteranceLevelTestResults = Shapes::StructureShape.new(name: 'UtteranceLevelTestResults')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    VoiceEngine = Shapes::StringShape.new(name: 'VoiceEngine')
    VoiceId = Shapes::StringShape.new(name: 'VoiceId')
    VoiceSettings = Shapes::StructureShape.new(name: 'VoiceSettings')
    WaitAndContinueSpecification = Shapes::StructureShape.new(name: 'WaitAndContinueSpecification')
    Weight = Shapes::IntegerShape.new(name: 'Weight')

    ActiveContext.add_member(:name, Shapes::ShapeRef.new(shape: ActiveContextName, required: true, location_name: "name"))
    ActiveContext.struct_class = Types::ActiveContext

    ActiveContextList.member = Shapes::ShapeRef.new(shape: ActiveContext)

    AdvancedRecognitionSetting.add_member(:audio_recognition_strategy, Shapes::ShapeRef.new(shape: AudioRecognitionStrategy, location_name: "audioRecognitionStrategy"))
    AdvancedRecognitionSetting.struct_class = Types::AdvancedRecognitionSetting

    AgentTurnResult.add_member(:expected_agent_prompt, Shapes::ShapeRef.new(shape: TestSetAgentPrompt, required: true, location_name: "expectedAgentPrompt"))
    AgentTurnResult.add_member(:actual_agent_prompt, Shapes::ShapeRef.new(shape: TestSetAgentPrompt, location_name: "actualAgentPrompt"))
    AgentTurnResult.add_member(:error_details, Shapes::ShapeRef.new(shape: ExecutionErrorDetails, location_name: "errorDetails"))
    AgentTurnResult.add_member(:actual_elicited_slot, Shapes::ShapeRef.new(shape: TestResultSlotName, location_name: "actualElicitedSlot"))
    AgentTurnResult.add_member(:actual_intent, Shapes::ShapeRef.new(shape: Name, location_name: "actualIntent"))
    AgentTurnResult.struct_class = Types::AgentTurnResult

    AgentTurnSpecification.add_member(:agent_prompt, Shapes::ShapeRef.new(shape: TestSetAgentPrompt, required: true, location_name: "agentPrompt"))
    AgentTurnSpecification.struct_class = Types::AgentTurnSpecification

    AggregatedUtterancesFilter.add_member(:name, Shapes::ShapeRef.new(shape: AggregatedUtterancesFilterName, required: true, location_name: "name"))
    AggregatedUtterancesFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    AggregatedUtterancesFilter.add_member(:operator, Shapes::ShapeRef.new(shape: AggregatedUtterancesFilterOperator, required: true, location_name: "operator"))
    AggregatedUtterancesFilter.struct_class = Types::AggregatedUtterancesFilter

    AggregatedUtterancesFilters.member = Shapes::ShapeRef.new(shape: AggregatedUtterancesFilter)

    AggregatedUtterancesSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: AggregatedUtterancesSortAttribute, required: true, location_name: "attribute"))
    AggregatedUtterancesSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    AggregatedUtterancesSortBy.struct_class = Types::AggregatedUtterancesSortBy

    AggregatedUtterancesSummary.add_member(:utterance, Shapes::ShapeRef.new(shape: Utterance, location_name: "utterance"))
    AggregatedUtterancesSummary.add_member(:hit_count, Shapes::ShapeRef.new(shape: HitCount, location_name: "hitCount"))
    AggregatedUtterancesSummary.add_member(:missed_count, Shapes::ShapeRef.new(shape: MissedCount, location_name: "missedCount"))
    AggregatedUtterancesSummary.add_member(:utterance_first_recorded_in_aggregation_duration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "utteranceFirstRecordedInAggregationDuration"))
    AggregatedUtterancesSummary.add_member(:utterance_last_recorded_in_aggregation_duration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "utteranceLastRecordedInAggregationDuration"))
    AggregatedUtterancesSummary.add_member(:contains_data_from_deleted_resources, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "containsDataFromDeletedResources"))
    AggregatedUtterancesSummary.struct_class = Types::AggregatedUtterancesSummary

    AggregatedUtterancesSummaryList.member = Shapes::ShapeRef.new(shape: AggregatedUtterancesSummary)

    AllowedInputTypes.add_member(:allow_audio_input, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "allowAudioInput"))
    AllowedInputTypes.add_member(:allow_dtmf_input, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "allowDTMFInput"))
    AllowedInputTypes.struct_class = Types::AllowedInputTypes

    AssociatedTranscript.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "transcript"))
    AssociatedTranscript.struct_class = Types::AssociatedTranscript

    AssociatedTranscriptFilter.add_member(:name, Shapes::ShapeRef.new(shape: AssociatedTranscriptFilterName, required: true, location_name: "name"))
    AssociatedTranscriptFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    AssociatedTranscriptFilter.struct_class = Types::AssociatedTranscriptFilter

    AssociatedTranscriptFilters.member = Shapes::ShapeRef.new(shape: AssociatedTranscriptFilter)

    AssociatedTranscriptList.member = Shapes::ShapeRef.new(shape: AssociatedTranscript)

    AudioAndDTMFInputSpecification.add_member(:start_timeout_ms, Shapes::ShapeRef.new(shape: TimeInMilliSeconds, required: true, location_name: "startTimeoutMs"))
    AudioAndDTMFInputSpecification.add_member(:audio_specification, Shapes::ShapeRef.new(shape: AudioSpecification, location_name: "audioSpecification"))
    AudioAndDTMFInputSpecification.add_member(:dtmf_specification, Shapes::ShapeRef.new(shape: DTMFSpecification, location_name: "dtmfSpecification"))
    AudioAndDTMFInputSpecification.struct_class = Types::AudioAndDTMFInputSpecification

    AudioLogDestination.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketLogDestination, required: true, location_name: "s3Bucket"))
    AudioLogDestination.struct_class = Types::AudioLogDestination

    AudioLogSetting.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    AudioLogSetting.add_member(:destination, Shapes::ShapeRef.new(shape: AudioLogDestination, required: true, location_name: "destination"))
    AudioLogSetting.struct_class = Types::AudioLogSetting

    AudioLogSettingsList.member = Shapes::ShapeRef.new(shape: AudioLogSetting)

    AudioSpecification.add_member(:max_length_ms, Shapes::ShapeRef.new(shape: TimeInMilliSeconds, required: true, location_name: "maxLengthMs"))
    AudioSpecification.add_member(:end_timeout_ms, Shapes::ShapeRef.new(shape: TimeInMilliSeconds, required: true, location_name: "endTimeoutMs"))
    AudioSpecification.struct_class = Types::AudioSpecification

    BatchCreateCustomVocabularyItemRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    BatchCreateCustomVocabularyItemRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    BatchCreateCustomVocabularyItemRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    BatchCreateCustomVocabularyItemRequest.add_member(:custom_vocabulary_item_list, Shapes::ShapeRef.new(shape: CreateCustomVocabularyItemsList, required: true, location_name: "customVocabularyItemList"))
    BatchCreateCustomVocabularyItemRequest.struct_class = Types::BatchCreateCustomVocabularyItemRequest

    BatchCreateCustomVocabularyItemResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    BatchCreateCustomVocabularyItemResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    BatchCreateCustomVocabularyItemResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    BatchCreateCustomVocabularyItemResponse.add_member(:errors, Shapes::ShapeRef.new(shape: FailedCustomVocabularyItems, location_name: "errors"))
    BatchCreateCustomVocabularyItemResponse.add_member(:resources, Shapes::ShapeRef.new(shape: CustomVocabularyItems, location_name: "resources"))
    BatchCreateCustomVocabularyItemResponse.struct_class = Types::BatchCreateCustomVocabularyItemResponse

    BatchDeleteCustomVocabularyItemRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    BatchDeleteCustomVocabularyItemRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    BatchDeleteCustomVocabularyItemRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    BatchDeleteCustomVocabularyItemRequest.add_member(:custom_vocabulary_item_list, Shapes::ShapeRef.new(shape: DeleteCustomVocabularyItemsList, required: true, location_name: "customVocabularyItemList"))
    BatchDeleteCustomVocabularyItemRequest.struct_class = Types::BatchDeleteCustomVocabularyItemRequest

    BatchDeleteCustomVocabularyItemResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:errors, Shapes::ShapeRef.new(shape: FailedCustomVocabularyItems, location_name: "errors"))
    BatchDeleteCustomVocabularyItemResponse.add_member(:resources, Shapes::ShapeRef.new(shape: CustomVocabularyItems, location_name: "resources"))
    BatchDeleteCustomVocabularyItemResponse.struct_class = Types::BatchDeleteCustomVocabularyItemResponse

    BatchUpdateCustomVocabularyItemRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    BatchUpdateCustomVocabularyItemRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    BatchUpdateCustomVocabularyItemRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    BatchUpdateCustomVocabularyItemRequest.add_member(:custom_vocabulary_item_list, Shapes::ShapeRef.new(shape: UpdateCustomVocabularyItemsList, required: true, location_name: "customVocabularyItemList"))
    BatchUpdateCustomVocabularyItemRequest.struct_class = Types::BatchUpdateCustomVocabularyItemRequest

    BatchUpdateCustomVocabularyItemResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:errors, Shapes::ShapeRef.new(shape: FailedCustomVocabularyItems, location_name: "errors"))
    BatchUpdateCustomVocabularyItemResponse.add_member(:resources, Shapes::ShapeRef.new(shape: CustomVocabularyItems, location_name: "resources"))
    BatchUpdateCustomVocabularyItemResponse.struct_class = Types::BatchUpdateCustomVocabularyItemResponse

    BotAliasHistoryEvent.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    BotAliasHistoryEvent.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startDate"))
    BotAliasHistoryEvent.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDate"))
    BotAliasHistoryEvent.struct_class = Types::BotAliasHistoryEvent

    BotAliasHistoryEventsList.member = Shapes::ShapeRef.new(shape: BotAliasHistoryEvent)

    BotAliasLocaleSettings.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    BotAliasLocaleSettings.add_member(:code_hook_specification, Shapes::ShapeRef.new(shape: CodeHookSpecification, location_name: "codeHookSpecification"))
    BotAliasLocaleSettings.struct_class = Types::BotAliasLocaleSettings

    BotAliasLocaleSettingsMap.key = Shapes::ShapeRef.new(shape: LocaleId)
    BotAliasLocaleSettingsMap.value = Shapes::ShapeRef.new(shape: BotAliasLocaleSettings)

    BotAliasSummary.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, location_name: "botAliasId"))
    BotAliasSummary.add_member(:bot_alias_name, Shapes::ShapeRef.new(shape: Name, location_name: "botAliasName"))
    BotAliasSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BotAliasSummary.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    BotAliasSummary.add_member(:bot_alias_status, Shapes::ShapeRef.new(shape: BotAliasStatus, location_name: "botAliasStatus"))
    BotAliasSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    BotAliasSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    BotAliasSummary.struct_class = Types::BotAliasSummary

    BotAliasSummaryList.member = Shapes::ShapeRef.new(shape: BotAliasSummary)

    BotAliasTestExecutionTarget.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    BotAliasTestExecutionTarget.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, required: true, location_name: "botAliasId"))
    BotAliasTestExecutionTarget.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    BotAliasTestExecutionTarget.struct_class = Types::BotAliasTestExecutionTarget

    BotExportSpecification.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    BotExportSpecification.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location_name: "botVersion"))
    BotExportSpecification.struct_class = Types::BotExportSpecification

    BotFilter.add_member(:name, Shapes::ShapeRef.new(shape: BotFilterName, required: true, location_name: "name"))
    BotFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    BotFilter.add_member(:operator, Shapes::ShapeRef.new(shape: BotFilterOperator, required: true, location_name: "operator"))
    BotFilter.struct_class = Types::BotFilter

    BotFilters.member = Shapes::ShapeRef.new(shape: BotFilter)

    BotImportSpecification.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "botName"))
    BotImportSpecification.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    BotImportSpecification.add_member(:data_privacy, Shapes::ShapeRef.new(shape: DataPrivacy, required: true, location_name: "dataPrivacy"))
    BotImportSpecification.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    BotImportSpecification.add_member(:bot_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "botTags"))
    BotImportSpecification.add_member(:test_bot_alias_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "testBotAliasTags"))
    BotImportSpecification.struct_class = Types::BotImportSpecification

    BotLocaleExportSpecification.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    BotLocaleExportSpecification.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location_name: "botVersion"))
    BotLocaleExportSpecification.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    BotLocaleExportSpecification.struct_class = Types::BotLocaleExportSpecification

    BotLocaleFilter.add_member(:name, Shapes::ShapeRef.new(shape: BotLocaleFilterName, required: true, location_name: "name"))
    BotLocaleFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    BotLocaleFilter.add_member(:operator, Shapes::ShapeRef.new(shape: BotLocaleFilterOperator, required: true, location_name: "operator"))
    BotLocaleFilter.struct_class = Types::BotLocaleFilter

    BotLocaleFilters.member = Shapes::ShapeRef.new(shape: BotLocaleFilter)

    BotLocaleHistoryEvent.add_member(:event, Shapes::ShapeRef.new(shape: BotLocaleHistoryEventDescription, required: true, location_name: "event"))
    BotLocaleHistoryEvent.add_member(:event_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventDate"))
    BotLocaleHistoryEvent.struct_class = Types::BotLocaleHistoryEvent

    BotLocaleHistoryEventsList.member = Shapes::ShapeRef.new(shape: BotLocaleHistoryEvent)

    BotLocaleImportSpecification.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    BotLocaleImportSpecification.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location_name: "botVersion"))
    BotLocaleImportSpecification.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    BotLocaleImportSpecification.add_member(:nlu_intent_confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "nluIntentConfidenceThreshold"))
    BotLocaleImportSpecification.add_member(:voice_settings, Shapes::ShapeRef.new(shape: VoiceSettings, location_name: "voiceSettings"))
    BotLocaleImportSpecification.struct_class = Types::BotLocaleImportSpecification

    BotLocaleSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: BotLocaleSortAttribute, required: true, location_name: "attribute"))
    BotLocaleSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    BotLocaleSortBy.struct_class = Types::BotLocaleSortBy

    BotLocaleSummary.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    BotLocaleSummary.add_member(:locale_name, Shapes::ShapeRef.new(shape: LocaleName, location_name: "localeName"))
    BotLocaleSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BotLocaleSummary.add_member(:bot_locale_status, Shapes::ShapeRef.new(shape: BotLocaleStatus, location_name: "botLocaleStatus"))
    BotLocaleSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    BotLocaleSummary.add_member(:last_build_submitted_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastBuildSubmittedDateTime"))
    BotLocaleSummary.struct_class = Types::BotLocaleSummary

    BotLocaleSummaryList.member = Shapes::ShapeRef.new(shape: BotLocaleSummary)

    BotMember.add_member(:bot_member_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botMemberId"))
    BotMember.add_member(:bot_member_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "botMemberName"))
    BotMember.add_member(:bot_member_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, required: true, location_name: "botMemberAliasId"))
    BotMember.add_member(:bot_member_alias_name, Shapes::ShapeRef.new(shape: BotAliasName, required: true, location_name: "botMemberAliasName"))
    BotMember.add_member(:bot_member_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location_name: "botMemberVersion"))
    BotMember.struct_class = Types::BotMember

    BotMembers.member = Shapes::ShapeRef.new(shape: BotMember)

    BotRecommendationResultStatistics.add_member(:intents, Shapes::ShapeRef.new(shape: IntentStatistics, location_name: "intents"))
    BotRecommendationResultStatistics.add_member(:slot_types, Shapes::ShapeRef.new(shape: SlotTypeStatistics, location_name: "slotTypes"))
    BotRecommendationResultStatistics.struct_class = Types::BotRecommendationResultStatistics

    BotRecommendationResults.add_member(:bot_locale_export_url, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "botLocaleExportUrl"))
    BotRecommendationResults.add_member(:associated_transcripts_url, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "associatedTranscriptsUrl"))
    BotRecommendationResults.add_member(:statistics, Shapes::ShapeRef.new(shape: BotRecommendationResultStatistics, location_name: "statistics"))
    BotRecommendationResults.struct_class = Types::BotRecommendationResults

    BotRecommendationSummary.add_member(:bot_recommendation_status, Shapes::ShapeRef.new(shape: BotRecommendationStatus, required: true, location_name: "botRecommendationStatus"))
    BotRecommendationSummary.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botRecommendationId"))
    BotRecommendationSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    BotRecommendationSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    BotRecommendationSummary.struct_class = Types::BotRecommendationSummary

    BotRecommendationSummaryList.member = Shapes::ShapeRef.new(shape: BotRecommendationSummary)

    BotSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: BotSortAttribute, required: true, location_name: "attribute"))
    BotSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    BotSortBy.struct_class = Types::BotSortBy

    BotSummary.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    BotSummary.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, location_name: "botName"))
    BotSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BotSummary.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    BotSummary.add_member(:latest_bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, location_name: "latestBotVersion"))
    BotSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    BotSummary.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "botType"))
    BotSummary.struct_class = Types::BotSummary

    BotSummaryList.member = Shapes::ShapeRef.new(shape: BotSummary)

    BotVersionLocaleDetails.add_member(:source_bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location_name: "sourceBotVersion"))
    BotVersionLocaleDetails.struct_class = Types::BotVersionLocaleDetails

    BotVersionLocaleSpecification.key = Shapes::ShapeRef.new(shape: LocaleId)
    BotVersionLocaleSpecification.value = Shapes::ShapeRef.new(shape: BotVersionLocaleDetails)

    BotVersionSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: BotVersionSortAttribute, required: true, location_name: "attribute"))
    BotVersionSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    BotVersionSortBy.struct_class = Types::BotVersionSortBy

    BotVersionSummary.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, location_name: "botName"))
    BotVersionSummary.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    BotVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BotVersionSummary.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    BotVersionSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    BotVersionSummary.struct_class = Types::BotVersionSummary

    BotVersionSummaryList.member = Shapes::ShapeRef.new(shape: BotVersionSummary)

    BuildBotLocaleRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    BuildBotLocaleRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    BuildBotLocaleRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    BuildBotLocaleRequest.struct_class = Types::BuildBotLocaleRequest

    BuildBotLocaleResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    BuildBotLocaleResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    BuildBotLocaleResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    BuildBotLocaleResponse.add_member(:bot_locale_status, Shapes::ShapeRef.new(shape: BotLocaleStatus, location_name: "botLocaleStatus"))
    BuildBotLocaleResponse.add_member(:last_build_submitted_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastBuildSubmittedDateTime"))
    BuildBotLocaleResponse.struct_class = Types::BuildBotLocaleResponse

    BuiltInIntentSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: BuiltInIntentSortAttribute, required: true, location_name: "attribute"))
    BuiltInIntentSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    BuiltInIntentSortBy.struct_class = Types::BuiltInIntentSortBy

    BuiltInIntentSummary.add_member(:intent_signature, Shapes::ShapeRef.new(shape: IntentSignature, location_name: "intentSignature"))
    BuiltInIntentSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BuiltInIntentSummary.struct_class = Types::BuiltInIntentSummary

    BuiltInIntentSummaryList.member = Shapes::ShapeRef.new(shape: BuiltInIntentSummary)

    BuiltInSlotTypeSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: BuiltInSlotTypeSortAttribute, required: true, location_name: "attribute"))
    BuiltInSlotTypeSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    BuiltInSlotTypeSortBy.struct_class = Types::BuiltInSlotTypeSortBy

    BuiltInSlotTypeSummary.add_member(:slot_type_signature, Shapes::ShapeRef.new(shape: SlotTypeSignature, location_name: "slotTypeSignature"))
    BuiltInSlotTypeSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BuiltInSlotTypeSummary.struct_class = Types::BuiltInSlotTypeSummary

    BuiltInSlotTypeSummaryList.member = Shapes::ShapeRef.new(shape: BuiltInSlotTypeSummary)

    Button.add_member(:text, Shapes::ShapeRef.new(shape: ButtonText, required: true, location_name: "text"))
    Button.add_member(:value, Shapes::ShapeRef.new(shape: ButtonValue, required: true, location_name: "value"))
    Button.struct_class = Types::Button

    ButtonsList.member = Shapes::ShapeRef.new(shape: Button)

    CloudWatchLogGroupLogDestination.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, required: true, location_name: "cloudWatchLogGroupArn"))
    CloudWatchLogGroupLogDestination.add_member(:log_prefix, Shapes::ShapeRef.new(shape: LogPrefix, required: true, location_name: "logPrefix"))
    CloudWatchLogGroupLogDestination.struct_class = Types::CloudWatchLogGroupLogDestination

    CodeHookSpecification.add_member(:lambda_code_hook, Shapes::ShapeRef.new(shape: LambdaCodeHook, required: true, location_name: "lambdaCodeHook"))
    CodeHookSpecification.struct_class = Types::CodeHookSpecification

    CompositeSlotTypeSetting.add_member(:sub_slots, Shapes::ShapeRef.new(shape: SubSlotTypeList, location_name: "subSlots"))
    CompositeSlotTypeSetting.struct_class = Types::CompositeSlotTypeSetting

    Condition.add_member(:expression_string, Shapes::ShapeRef.new(shape: ConditionExpression, required: true, location_name: "expressionString"))
    Condition.struct_class = Types::Condition

    ConditionKeyValueMap.key = Shapes::ShapeRef.new(shape: ConditionKey)
    ConditionKeyValueMap.value = Shapes::ShapeRef.new(shape: ConditionValue)

    ConditionMap.key = Shapes::ShapeRef.new(shape: ConditionOperator)
    ConditionMap.value = Shapes::ShapeRef.new(shape: ConditionKeyValueMap)

    ConditionalBranch.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ConditionalBranch.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "condition"))
    ConditionalBranch.add_member(:next_step, Shapes::ShapeRef.new(shape: DialogState, required: true, location_name: "nextStep"))
    ConditionalBranch.add_member(:response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "response"))
    ConditionalBranch.struct_class = Types::ConditionalBranch

    ConditionalBranches.member = Shapes::ShapeRef.new(shape: ConditionalBranch)

    ConditionalSpecification.add_member(:active, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "active"))
    ConditionalSpecification.add_member(:conditional_branches, Shapes::ShapeRef.new(shape: ConditionalBranches, required: true, location_name: "conditionalBranches"))
    ConditionalSpecification.add_member(:default_branch, Shapes::ShapeRef.new(shape: DefaultConditionalBranch, required: true, location_name: "defaultBranch"))
    ConditionalSpecification.struct_class = Types::ConditionalSpecification

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConversationLevelIntentClassificationResultItem.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    ConversationLevelIntentClassificationResultItem.add_member(:match_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, required: true, location_name: "matchResult"))
    ConversationLevelIntentClassificationResultItem.struct_class = Types::ConversationLevelIntentClassificationResultItem

    ConversationLevelIntentClassificationResults.member = Shapes::ShapeRef.new(shape: ConversationLevelIntentClassificationResultItem)

    ConversationLevelResultDetail.add_member(:end_to_end_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, required: true, location_name: "endToEndResult"))
    ConversationLevelResultDetail.add_member(:speech_transcription_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, location_name: "speechTranscriptionResult"))
    ConversationLevelResultDetail.struct_class = Types::ConversationLevelResultDetail

    ConversationLevelSlotResolutionResultItem.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    ConversationLevelSlotResolutionResultItem.add_member(:slot_name, Shapes::ShapeRef.new(shape: TestResultSlotName, required: true, location_name: "slotName"))
    ConversationLevelSlotResolutionResultItem.add_member(:match_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, required: true, location_name: "matchResult"))
    ConversationLevelSlotResolutionResultItem.struct_class = Types::ConversationLevelSlotResolutionResultItem

    ConversationLevelSlotResolutionResults.member = Shapes::ShapeRef.new(shape: ConversationLevelSlotResolutionResultItem)

    ConversationLevelTestResultItem.add_member(:conversation_id, Shapes::ShapeRef.new(shape: TestSetConversationId, required: true, location_name: "conversationId"))
    ConversationLevelTestResultItem.add_member(:end_to_end_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, required: true, location_name: "endToEndResult"))
    ConversationLevelTestResultItem.add_member(:speech_transcription_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, location_name: "speechTranscriptionResult"))
    ConversationLevelTestResultItem.add_member(:intent_classification_results, Shapes::ShapeRef.new(shape: ConversationLevelIntentClassificationResults, required: true, location_name: "intentClassificationResults"))
    ConversationLevelTestResultItem.add_member(:slot_resolution_results, Shapes::ShapeRef.new(shape: ConversationLevelSlotResolutionResults, required: true, location_name: "slotResolutionResults"))
    ConversationLevelTestResultItem.struct_class = Types::ConversationLevelTestResultItem

    ConversationLevelTestResultItemList.member = Shapes::ShapeRef.new(shape: ConversationLevelTestResultItem)

    ConversationLevelTestResults.add_member(:items, Shapes::ShapeRef.new(shape: ConversationLevelTestResultItemList, required: true, location_name: "items"))
    ConversationLevelTestResults.struct_class = Types::ConversationLevelTestResults

    ConversationLevelTestResultsFilterBy.add_member(:end_to_end_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, location_name: "endToEndResult"))
    ConversationLevelTestResultsFilterBy.struct_class = Types::ConversationLevelTestResultsFilterBy

    ConversationLogSettings.add_member(:text_log_settings, Shapes::ShapeRef.new(shape: TextLogSettingsList, location_name: "textLogSettings"))
    ConversationLogSettings.add_member(:audio_log_settings, Shapes::ShapeRef.new(shape: AudioLogSettingsList, location_name: "audioLogSettings"))
    ConversationLogSettings.struct_class = Types::ConversationLogSettings

    ConversationLogsDataSource.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    ConversationLogsDataSource.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, required: true, location_name: "botAliasId"))
    ConversationLogsDataSource.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    ConversationLogsDataSource.add_member(:filter, Shapes::ShapeRef.new(shape: ConversationLogsDataSourceFilterBy, required: true, location_name: "filter"))
    ConversationLogsDataSource.struct_class = Types::ConversationLogsDataSource

    ConversationLogsDataSourceFilterBy.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ConversationLogsDataSourceFilterBy.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    ConversationLogsDataSourceFilterBy.add_member(:input_mode, Shapes::ShapeRef.new(shape: ConversationLogsInputModeFilter, required: true, location_name: "inputMode"))
    ConversationLogsDataSourceFilterBy.struct_class = Types::ConversationLogsDataSourceFilterBy

    CreateBotAliasRequest.add_member(:bot_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "botAliasName"))
    CreateBotAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotAliasRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, location_name: "botVersion"))
    CreateBotAliasRequest.add_member(:bot_alias_locale_settings, Shapes::ShapeRef.new(shape: BotAliasLocaleSettingsMap, location_name: "botAliasLocaleSettings"))
    CreateBotAliasRequest.add_member(:conversation_log_settings, Shapes::ShapeRef.new(shape: ConversationLogSettings, location_name: "conversationLogSettings"))
    CreateBotAliasRequest.add_member(:sentiment_analysis_settings, Shapes::ShapeRef.new(shape: SentimentAnalysisSettings, location_name: "sentimentAnalysisSettings"))
    CreateBotAliasRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    CreateBotAliasRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateBotAliasRequest.struct_class = Types::CreateBotAliasRequest

    CreateBotAliasResponse.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, location_name: "botAliasId"))
    CreateBotAliasResponse.add_member(:bot_alias_name, Shapes::ShapeRef.new(shape: Name, location_name: "botAliasName"))
    CreateBotAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotAliasResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, location_name: "botVersion"))
    CreateBotAliasResponse.add_member(:bot_alias_locale_settings, Shapes::ShapeRef.new(shape: BotAliasLocaleSettingsMap, location_name: "botAliasLocaleSettings"))
    CreateBotAliasResponse.add_member(:conversation_log_settings, Shapes::ShapeRef.new(shape: ConversationLogSettings, location_name: "conversationLogSettings"))
    CreateBotAliasResponse.add_member(:sentiment_analysis_settings, Shapes::ShapeRef.new(shape: SentimentAnalysisSettings, location_name: "sentimentAnalysisSettings"))
    CreateBotAliasResponse.add_member(:bot_alias_status, Shapes::ShapeRef.new(shape: BotAliasStatus, location_name: "botAliasStatus"))
    CreateBotAliasResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    CreateBotAliasResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateBotAliasResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateBotAliasResponse.struct_class = Types::CreateBotAliasResponse

    CreateBotLocaleRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    CreateBotLocaleRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    CreateBotLocaleRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    CreateBotLocaleRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotLocaleRequest.add_member(:nlu_intent_confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, required: true, location_name: "nluIntentConfidenceThreshold"))
    CreateBotLocaleRequest.add_member(:voice_settings, Shapes::ShapeRef.new(shape: VoiceSettings, location_name: "voiceSettings"))
    CreateBotLocaleRequest.struct_class = Types::CreateBotLocaleRequest

    CreateBotLocaleResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    CreateBotLocaleResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    CreateBotLocaleResponse.add_member(:locale_name, Shapes::ShapeRef.new(shape: LocaleName, location_name: "localeName"))
    CreateBotLocaleResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    CreateBotLocaleResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotLocaleResponse.add_member(:nlu_intent_confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "nluIntentConfidenceThreshold"))
    CreateBotLocaleResponse.add_member(:voice_settings, Shapes::ShapeRef.new(shape: VoiceSettings, location_name: "voiceSettings"))
    CreateBotLocaleResponse.add_member(:bot_locale_status, Shapes::ShapeRef.new(shape: BotLocaleStatus, location_name: "botLocaleStatus"))
    CreateBotLocaleResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateBotLocaleResponse.struct_class = Types::CreateBotLocaleResponse

    CreateBotRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "botName"))
    CreateBotRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateBotRequest.add_member(:data_privacy, Shapes::ShapeRef.new(shape: DataPrivacy, required: true, location_name: "dataPrivacy"))
    CreateBotRequest.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, required: true, location_name: "idleSessionTTLInSeconds"))
    CreateBotRequest.add_member(:bot_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "botTags"))
    CreateBotRequest.add_member(:test_bot_alias_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "testBotAliasTags"))
    CreateBotRequest.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "botType"))
    CreateBotRequest.add_member(:bot_members, Shapes::ShapeRef.new(shape: BotMembers, location_name: "botMembers"))
    CreateBotRequest.struct_class = Types::CreateBotRequest

    CreateBotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    CreateBotResponse.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, location_name: "botName"))
    CreateBotResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateBotResponse.add_member(:data_privacy, Shapes::ShapeRef.new(shape: DataPrivacy, location_name: "dataPrivacy"))
    CreateBotResponse.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    CreateBotResponse.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    CreateBotResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateBotResponse.add_member(:bot_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "botTags"))
    CreateBotResponse.add_member(:test_bot_alias_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "testBotAliasTags"))
    CreateBotResponse.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "botType"))
    CreateBotResponse.add_member(:bot_members, Shapes::ShapeRef.new(shape: BotMembers, location_name: "botMembers"))
    CreateBotResponse.struct_class = Types::CreateBotResponse

    CreateBotVersionRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    CreateBotVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotVersionRequest.add_member(:bot_version_locale_specification, Shapes::ShapeRef.new(shape: BotVersionLocaleSpecification, required: true, location_name: "botVersionLocaleSpecification"))
    CreateBotVersionRequest.struct_class = Types::CreateBotVersionRequest

    CreateBotVersionResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    CreateBotVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBotVersionResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, location_name: "botVersion"))
    CreateBotVersionResponse.add_member(:bot_version_locale_specification, Shapes::ShapeRef.new(shape: BotVersionLocaleSpecification, location_name: "botVersionLocaleSpecification"))
    CreateBotVersionResponse.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    CreateBotVersionResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateBotVersionResponse.struct_class = Types::CreateBotVersionResponse

    CreateCustomVocabularyItemsList.member = Shapes::ShapeRef.new(shape: NewCustomVocabularyItem)

    CreateExportRequest.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ExportResourceSpecification, required: true, location_name: "resourceSpecification"))
    CreateExportRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: ImportExportFileFormat, required: true, location_name: "fileFormat"))
    CreateExportRequest.add_member(:file_password, Shapes::ShapeRef.new(shape: ImportExportFilePassword, location_name: "filePassword"))
    CreateExportRequest.struct_class = Types::CreateExportRequest

    CreateExportResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, location_name: "exportId"))
    CreateExportResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ExportResourceSpecification, location_name: "resourceSpecification"))
    CreateExportResponse.add_member(:file_format, Shapes::ShapeRef.new(shape: ImportExportFileFormat, location_name: "fileFormat"))
    CreateExportResponse.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "exportStatus"))
    CreateExportResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateExportResponse.struct_class = Types::CreateExportResponse

    CreateIntentRequest.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    CreateIntentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIntentRequest.add_member(:parent_intent_signature, Shapes::ShapeRef.new(shape: IntentSignature, location_name: "parentIntentSignature"))
    CreateIntentRequest.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterancesList, location_name: "sampleUtterances"))
    CreateIntentRequest.add_member(:dialog_code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookSettings, location_name: "dialogCodeHook"))
    CreateIntentRequest.add_member(:fulfillment_code_hook, Shapes::ShapeRef.new(shape: FulfillmentCodeHookSettings, location_name: "fulfillmentCodeHook"))
    CreateIntentRequest.add_member(:intent_confirmation_setting, Shapes::ShapeRef.new(shape: IntentConfirmationSetting, location_name: "intentConfirmationSetting"))
    CreateIntentRequest.add_member(:intent_closing_setting, Shapes::ShapeRef.new(shape: IntentClosingSetting, location_name: "intentClosingSetting"))
    CreateIntentRequest.add_member(:input_contexts, Shapes::ShapeRef.new(shape: InputContextsList, location_name: "inputContexts"))
    CreateIntentRequest.add_member(:output_contexts, Shapes::ShapeRef.new(shape: OutputContextsList, location_name: "outputContexts"))
    CreateIntentRequest.add_member(:kendra_configuration, Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    CreateIntentRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    CreateIntentRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    CreateIntentRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    CreateIntentRequest.add_member(:initial_response_setting, Shapes::ShapeRef.new(shape: InitialResponseSetting, location_name: "initialResponseSetting"))
    CreateIntentRequest.struct_class = Types::CreateIntentRequest

    CreateIntentResponse.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    CreateIntentResponse.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, location_name: "intentName"))
    CreateIntentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIntentResponse.add_member(:parent_intent_signature, Shapes::ShapeRef.new(shape: IntentSignature, location_name: "parentIntentSignature"))
    CreateIntentResponse.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterancesList, location_name: "sampleUtterances"))
    CreateIntentResponse.add_member(:dialog_code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookSettings, location_name: "dialogCodeHook"))
    CreateIntentResponse.add_member(:fulfillment_code_hook, Shapes::ShapeRef.new(shape: FulfillmentCodeHookSettings, location_name: "fulfillmentCodeHook"))
    CreateIntentResponse.add_member(:intent_confirmation_setting, Shapes::ShapeRef.new(shape: IntentConfirmationSetting, location_name: "intentConfirmationSetting"))
    CreateIntentResponse.add_member(:intent_closing_setting, Shapes::ShapeRef.new(shape: IntentClosingSetting, location_name: "intentClosingSetting"))
    CreateIntentResponse.add_member(:input_contexts, Shapes::ShapeRef.new(shape: InputContextsList, location_name: "inputContexts"))
    CreateIntentResponse.add_member(:output_contexts, Shapes::ShapeRef.new(shape: OutputContextsList, location_name: "outputContexts"))
    CreateIntentResponse.add_member(:kendra_configuration, Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    CreateIntentResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    CreateIntentResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    CreateIntentResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    CreateIntentResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateIntentResponse.add_member(:initial_response_setting, Shapes::ShapeRef.new(shape: InitialResponseSetting, location_name: "initialResponseSetting"))
    CreateIntentResponse.struct_class = Types::CreateIntentResponse

    CreateResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    CreateResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policy"))
    CreateResourcePolicyRequest.struct_class = Types::CreateResourcePolicyRequest

    CreateResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn"))
    CreateResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    CreateResourcePolicyResponse.struct_class = Types::CreateResourcePolicyResponse

    CreateResourcePolicyStatementRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    CreateResourcePolicyStatementRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "statementId"))
    CreateResourcePolicyStatementRequest.add_member(:effect, Shapes::ShapeRef.new(shape: Effect, required: true, location_name: "effect"))
    CreateResourcePolicyStatementRequest.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalList, required: true, location_name: "principal"))
    CreateResourcePolicyStatementRequest.add_member(:action, Shapes::ShapeRef.new(shape: OperationList, required: true, location_name: "action"))
    CreateResourcePolicyStatementRequest.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionMap, location_name: "condition"))
    CreateResourcePolicyStatementRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location: "querystring", location_name: "expectedRevisionId"))
    CreateResourcePolicyStatementRequest.struct_class = Types::CreateResourcePolicyStatementRequest

    CreateResourcePolicyStatementResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn"))
    CreateResourcePolicyStatementResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    CreateResourcePolicyStatementResponse.struct_class = Types::CreateResourcePolicyStatementResponse

    CreateSlotRequest.add_member(:slot_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "slotName"))
    CreateSlotRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSlotRequest.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, location_name: "slotTypeId"))
    CreateSlotRequest.add_member(:value_elicitation_setting, Shapes::ShapeRef.new(shape: SlotValueElicitationSetting, required: true, location_name: "valueElicitationSetting"))
    CreateSlotRequest.add_member(:obfuscation_setting, Shapes::ShapeRef.new(shape: ObfuscationSetting, location_name: "obfuscationSetting"))
    CreateSlotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    CreateSlotRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    CreateSlotRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    CreateSlotRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    CreateSlotRequest.add_member(:multiple_values_setting, Shapes::ShapeRef.new(shape: MultipleValuesSetting, location_name: "multipleValuesSetting"))
    CreateSlotRequest.add_member(:sub_slot_setting, Shapes::ShapeRef.new(shape: SubSlotSetting, location_name: "subSlotSetting"))
    CreateSlotRequest.struct_class = Types::CreateSlotRequest

    CreateSlotResponse.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotId"))
    CreateSlotResponse.add_member(:slot_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotName"))
    CreateSlotResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSlotResponse.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, location_name: "slotTypeId"))
    CreateSlotResponse.add_member(:value_elicitation_setting, Shapes::ShapeRef.new(shape: SlotValueElicitationSetting, location_name: "valueElicitationSetting"))
    CreateSlotResponse.add_member(:obfuscation_setting, Shapes::ShapeRef.new(shape: ObfuscationSetting, location_name: "obfuscationSetting"))
    CreateSlotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    CreateSlotResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    CreateSlotResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    CreateSlotResponse.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    CreateSlotResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateSlotResponse.add_member(:multiple_values_setting, Shapes::ShapeRef.new(shape: MultipleValuesSetting, location_name: "multipleValuesSetting"))
    CreateSlotResponse.add_member(:sub_slot_setting, Shapes::ShapeRef.new(shape: SubSlotSetting, location_name: "subSlotSetting"))
    CreateSlotResponse.struct_class = Types::CreateSlotResponse

    CreateSlotTypeRequest.add_member(:slot_type_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "slotTypeName"))
    CreateSlotTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSlotTypeRequest.add_member(:slot_type_values, Shapes::ShapeRef.new(shape: SlotTypeValues, location_name: "slotTypeValues"))
    CreateSlotTypeRequest.add_member(:value_selection_setting, Shapes::ShapeRef.new(shape: SlotValueSelectionSetting, location_name: "valueSelectionSetting"))
    CreateSlotTypeRequest.add_member(:parent_slot_type_signature, Shapes::ShapeRef.new(shape: SlotTypeSignature, location_name: "parentSlotTypeSignature"))
    CreateSlotTypeRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    CreateSlotTypeRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    CreateSlotTypeRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    CreateSlotTypeRequest.add_member(:external_source_setting, Shapes::ShapeRef.new(shape: ExternalSourceSetting, location_name: "externalSourceSetting"))
    CreateSlotTypeRequest.add_member(:composite_slot_type_setting, Shapes::ShapeRef.new(shape: CompositeSlotTypeSetting, location_name: "compositeSlotTypeSetting"))
    CreateSlotTypeRequest.struct_class = Types::CreateSlotTypeRequest

    CreateSlotTypeResponse.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotTypeId"))
    CreateSlotTypeResponse.add_member(:slot_type_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotTypeName"))
    CreateSlotTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSlotTypeResponse.add_member(:slot_type_values, Shapes::ShapeRef.new(shape: SlotTypeValues, location_name: "slotTypeValues"))
    CreateSlotTypeResponse.add_member(:value_selection_setting, Shapes::ShapeRef.new(shape: SlotValueSelectionSetting, location_name: "valueSelectionSetting"))
    CreateSlotTypeResponse.add_member(:parent_slot_type_signature, Shapes::ShapeRef.new(shape: SlotTypeSignature, location_name: "parentSlotTypeSignature"))
    CreateSlotTypeResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    CreateSlotTypeResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    CreateSlotTypeResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    CreateSlotTypeResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateSlotTypeResponse.add_member(:external_source_setting, Shapes::ShapeRef.new(shape: ExternalSourceSetting, location_name: "externalSourceSetting"))
    CreateSlotTypeResponse.add_member(:composite_slot_type_setting, Shapes::ShapeRef.new(shape: CompositeSlotTypeSetting, location_name: "compositeSlotTypeSetting"))
    CreateSlotTypeResponse.struct_class = Types::CreateSlotTypeResponse

    CreateTestSetDiscrepancyReportRequest.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetId"))
    CreateTestSetDiscrepancyReportRequest.add_member(:target, Shapes::ShapeRef.new(shape: TestSetDiscrepancyReportResourceTarget, required: true, location_name: "target"))
    CreateTestSetDiscrepancyReportRequest.struct_class = Types::CreateTestSetDiscrepancyReportRequest

    CreateTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_report_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetDiscrepancyReportId"))
    CreateTestSetDiscrepancyReportResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    CreateTestSetDiscrepancyReportResponse.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    CreateTestSetDiscrepancyReportResponse.add_member(:target, Shapes::ShapeRef.new(shape: TestSetDiscrepancyReportResourceTarget, location_name: "target"))
    CreateTestSetDiscrepancyReportResponse.struct_class = Types::CreateTestSetDiscrepancyReportResponse

    CreateUploadUrlRequest.struct_class = Types::CreateUploadUrlRequest

    CreateUploadUrlResponse.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, location_name: "importId"))
    CreateUploadUrlResponse.add_member(:upload_url, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "uploadUrl"))
    CreateUploadUrlResponse.struct_class = Types::CreateUploadUrlResponse

    CustomPayload.add_member(:value, Shapes::ShapeRef.new(shape: CustomPayloadValue, required: true, location_name: "value"))
    CustomPayload.struct_class = Types::CustomPayload

    CustomVocabularyEntryId.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemId, required: true, location_name: "itemId"))
    CustomVocabularyEntryId.struct_class = Types::CustomVocabularyEntryId

    CustomVocabularyExportSpecification.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    CustomVocabularyExportSpecification.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location_name: "botVersion"))
    CustomVocabularyExportSpecification.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    CustomVocabularyExportSpecification.struct_class = Types::CustomVocabularyExportSpecification

    CustomVocabularyImportSpecification.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    CustomVocabularyImportSpecification.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location_name: "botVersion"))
    CustomVocabularyImportSpecification.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    CustomVocabularyImportSpecification.struct_class = Types::CustomVocabularyImportSpecification

    CustomVocabularyItem.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemId, required: true, location_name: "itemId"))
    CustomVocabularyItem.add_member(:phrase, Shapes::ShapeRef.new(shape: Phrase, required: true, location_name: "phrase"))
    CustomVocabularyItem.add_member(:weight, Shapes::ShapeRef.new(shape: Weight, location_name: "weight"))
    CustomVocabularyItem.add_member(:display_as, Shapes::ShapeRef.new(shape: Phrase, location_name: "displayAs"))
    CustomVocabularyItem.struct_class = Types::CustomVocabularyItem

    CustomVocabularyItems.member = Shapes::ShapeRef.new(shape: CustomVocabularyItem)

    DTMFSpecification.add_member(:max_length, Shapes::ShapeRef.new(shape: MaxUtteranceDigits, required: true, location_name: "maxLength"))
    DTMFSpecification.add_member(:end_timeout_ms, Shapes::ShapeRef.new(shape: TimeInMilliSeconds, required: true, location_name: "endTimeoutMs"))
    DTMFSpecification.add_member(:deletion_character, Shapes::ShapeRef.new(shape: DTMFCharacter, required: true, location_name: "deletionCharacter"))
    DTMFSpecification.add_member(:end_character, Shapes::ShapeRef.new(shape: DTMFCharacter, required: true, location_name: "endCharacter"))
    DTMFSpecification.struct_class = Types::DTMFSpecification

    DataPrivacy.add_member(:child_directed, Shapes::ShapeRef.new(shape: ChildDirected, required: true, location_name: "childDirected"))
    DataPrivacy.struct_class = Types::DataPrivacy

    DateRangeFilter.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDateTime"))
    DateRangeFilter.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endDateTime"))
    DateRangeFilter.struct_class = Types::DateRangeFilter

    DefaultConditionalBranch.add_member(:next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "nextStep"))
    DefaultConditionalBranch.add_member(:response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "response"))
    DefaultConditionalBranch.struct_class = Types::DefaultConditionalBranch

    DeleteBotAliasRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, required: true, location: "uri", location_name: "botAliasId"))
    DeleteBotAliasRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteBotAliasRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: SkipResourceInUseCheck, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteBotAliasRequest.struct_class = Types::DeleteBotAliasRequest

    DeleteBotAliasResponse.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, location_name: "botAliasId"))
    DeleteBotAliasResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DeleteBotAliasResponse.add_member(:bot_alias_status, Shapes::ShapeRef.new(shape: BotAliasStatus, location_name: "botAliasStatus"))
    DeleteBotAliasResponse.struct_class = Types::DeleteBotAliasResponse

    DeleteBotLocaleRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteBotLocaleRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DeleteBotLocaleRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DeleteBotLocaleRequest.struct_class = Types::DeleteBotLocaleRequest

    DeleteBotLocaleResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DeleteBotLocaleResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    DeleteBotLocaleResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DeleteBotLocaleResponse.add_member(:bot_locale_status, Shapes::ShapeRef.new(shape: BotLocaleStatus, location_name: "botLocaleStatus"))
    DeleteBotLocaleResponse.struct_class = Types::DeleteBotLocaleResponse

    DeleteBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteBotRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: SkipResourceInUseCheck, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteBotRequest.struct_class = Types::DeleteBotRequest

    DeleteBotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DeleteBotResponse.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    DeleteBotResponse.struct_class = Types::DeleteBotResponse

    DeleteBotVersionRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteBotVersionRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DeleteBotVersionRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: SkipResourceInUseCheck, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteBotVersionRequest.struct_class = Types::DeleteBotVersionRequest

    DeleteBotVersionResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DeleteBotVersionResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, location_name: "botVersion"))
    DeleteBotVersionResponse.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    DeleteBotVersionResponse.struct_class = Types::DeleteBotVersionResponse

    DeleteCustomVocabularyItemsList.member = Shapes::ShapeRef.new(shape: CustomVocabularyEntryId)

    DeleteCustomVocabularyRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteCustomVocabularyRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DeleteCustomVocabularyRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DeleteCustomVocabularyRequest.struct_class = Types::DeleteCustomVocabularyRequest

    DeleteCustomVocabularyResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DeleteCustomVocabularyResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    DeleteCustomVocabularyResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DeleteCustomVocabularyResponse.add_member(:custom_vocabulary_status, Shapes::ShapeRef.new(shape: CustomVocabularyStatus, location_name: "customVocabularyStatus"))
    DeleteCustomVocabularyResponse.struct_class = Types::DeleteCustomVocabularyResponse

    DeleteExportRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "exportId"))
    DeleteExportRequest.struct_class = Types::DeleteExportRequest

    DeleteExportResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, location_name: "exportId"))
    DeleteExportResponse.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "exportStatus"))
    DeleteExportResponse.struct_class = Types::DeleteExportResponse

    DeleteImportRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "importId"))
    DeleteImportRequest.struct_class = Types::DeleteImportRequest

    DeleteImportResponse.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, location_name: "importId"))
    DeleteImportResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "importStatus"))
    DeleteImportResponse.struct_class = Types::DeleteImportResponse

    DeleteIntentRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    DeleteIntentRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteIntentRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DeleteIntentRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DeleteIntentRequest.struct_class = Types::DeleteIntentRequest

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    DeleteResourcePolicyRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location: "querystring", location_name: "expectedRevisionId"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn"))
    DeleteResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteResourcePolicyStatementRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    DeleteResourcePolicyStatementRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "statementId"))
    DeleteResourcePolicyStatementRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location: "querystring", location_name: "expectedRevisionId"))
    DeleteResourcePolicyStatementRequest.struct_class = Types::DeleteResourcePolicyStatementRequest

    DeleteResourcePolicyStatementResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn"))
    DeleteResourcePolicyStatementResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    DeleteResourcePolicyStatementResponse.struct_class = Types::DeleteResourcePolicyStatementResponse

    DeleteSlotRequest.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "slotId"))
    DeleteSlotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteSlotRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DeleteSlotRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DeleteSlotRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    DeleteSlotRequest.struct_class = Types::DeleteSlotRequest

    DeleteSlotTypeRequest.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "slotTypeId"))
    DeleteSlotTypeRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteSlotTypeRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DeleteSlotTypeRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DeleteSlotTypeRequest.add_member(:skip_resource_in_use_check, Shapes::ShapeRef.new(shape: SkipResourceInUseCheck, location: "querystring", location_name: "skipResourceInUseCheck"))
    DeleteSlotTypeRequest.struct_class = Types::DeleteSlotTypeRequest

    DeleteTestSetRequest.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetId"))
    DeleteTestSetRequest.struct_class = Types::DeleteTestSetRequest

    DeleteUtterancesRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DeleteUtterancesRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location: "querystring", location_name: "localeId"))
    DeleteUtterancesRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "querystring", location_name: "sessionId"))
    DeleteUtterancesRequest.struct_class = Types::DeleteUtterancesRequest

    DeleteUtterancesResponse.struct_class = Types::DeleteUtterancesResponse

    DescribeBotAliasRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, required: true, location: "uri", location_name: "botAliasId"))
    DescribeBotAliasRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeBotAliasRequest.struct_class = Types::DescribeBotAliasRequest

    DescribeBotAliasResponse.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, location_name: "botAliasId"))
    DescribeBotAliasResponse.add_member(:bot_alias_name, Shapes::ShapeRef.new(shape: Name, location_name: "botAliasName"))
    DescribeBotAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeBotAliasResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    DescribeBotAliasResponse.add_member(:bot_alias_locale_settings, Shapes::ShapeRef.new(shape: BotAliasLocaleSettingsMap, location_name: "botAliasLocaleSettings"))
    DescribeBotAliasResponse.add_member(:conversation_log_settings, Shapes::ShapeRef.new(shape: ConversationLogSettings, location_name: "conversationLogSettings"))
    DescribeBotAliasResponse.add_member(:sentiment_analysis_settings, Shapes::ShapeRef.new(shape: SentimentAnalysisSettings, location_name: "sentimentAnalysisSettings"))
    DescribeBotAliasResponse.add_member(:bot_alias_history_events, Shapes::ShapeRef.new(shape: BotAliasHistoryEventsList, location_name: "botAliasHistoryEvents"))
    DescribeBotAliasResponse.add_member(:bot_alias_status, Shapes::ShapeRef.new(shape: BotAliasStatus, location_name: "botAliasStatus"))
    DescribeBotAliasResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeBotAliasResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeBotAliasResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeBotAliasResponse.add_member(:parent_bot_networks, Shapes::ShapeRef.new(shape: ParentBotNetworks, location_name: "parentBotNetworks"))
    DescribeBotAliasResponse.struct_class = Types::DescribeBotAliasResponse

    DescribeBotLocaleRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeBotLocaleRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    DescribeBotLocaleRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DescribeBotLocaleRequest.struct_class = Types::DescribeBotLocaleRequest

    DescribeBotLocaleResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeBotLocaleResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    DescribeBotLocaleResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DescribeBotLocaleResponse.add_member(:locale_name, Shapes::ShapeRef.new(shape: LocaleName, location_name: "localeName"))
    DescribeBotLocaleResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeBotLocaleResponse.add_member(:nlu_intent_confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "nluIntentConfidenceThreshold"))
    DescribeBotLocaleResponse.add_member(:voice_settings, Shapes::ShapeRef.new(shape: VoiceSettings, location_name: "voiceSettings"))
    DescribeBotLocaleResponse.add_member(:intents_count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "intentsCount"))
    DescribeBotLocaleResponse.add_member(:slot_types_count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "slotTypesCount"))
    DescribeBotLocaleResponse.add_member(:bot_locale_status, Shapes::ShapeRef.new(shape: BotLocaleStatus, location_name: "botLocaleStatus"))
    DescribeBotLocaleResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeBotLocaleResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeBotLocaleResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeBotLocaleResponse.add_member(:last_build_submitted_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastBuildSubmittedDateTime"))
    DescribeBotLocaleResponse.add_member(:bot_locale_history_events, Shapes::ShapeRef.new(shape: BotLocaleHistoryEventsList, location_name: "botLocaleHistoryEvents"))
    DescribeBotLocaleResponse.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, location_name: "recommendedActions"))
    DescribeBotLocaleResponse.struct_class = Types::DescribeBotLocaleResponse

    DescribeBotRecommendationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeBotRecommendationRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DescribeBotRecommendationRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DescribeBotRecommendationRequest.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botRecommendationId"))
    DescribeBotRecommendationRequest.struct_class = Types::DescribeBotRecommendationRequest

    DescribeBotRecommendationResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeBotRecommendationResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    DescribeBotRecommendationResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DescribeBotRecommendationResponse.add_member(:bot_recommendation_status, Shapes::ShapeRef.new(shape: BotRecommendationStatus, location_name: "botRecommendationStatus"))
    DescribeBotRecommendationResponse.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, location_name: "botRecommendationId"))
    DescribeBotRecommendationResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeBotRecommendationResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeBotRecommendationResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeBotRecommendationResponse.add_member(:transcript_source_setting, Shapes::ShapeRef.new(shape: TranscriptSourceSetting, location_name: "transcriptSourceSetting"))
    DescribeBotRecommendationResponse.add_member(:encryption_setting, Shapes::ShapeRef.new(shape: EncryptionSetting, location_name: "encryptionSetting"))
    DescribeBotRecommendationResponse.add_member(:bot_recommendation_results, Shapes::ShapeRef.new(shape: BotRecommendationResults, location_name: "botRecommendationResults"))
    DescribeBotRecommendationResponse.struct_class = Types::DescribeBotRecommendationResponse

    DescribeBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeBotRequest.struct_class = Types::DescribeBotRequest

    DescribeBotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeBotResponse.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, location_name: "botName"))
    DescribeBotResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeBotResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DescribeBotResponse.add_member(:data_privacy, Shapes::ShapeRef.new(shape: DataPrivacy, location_name: "dataPrivacy"))
    DescribeBotResponse.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    DescribeBotResponse.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    DescribeBotResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeBotResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeBotResponse.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "botType"))
    DescribeBotResponse.add_member(:bot_members, Shapes::ShapeRef.new(shape: BotMembers, location_name: "botMembers"))
    DescribeBotResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeBotResponse.struct_class = Types::DescribeBotResponse

    DescribeBotVersionRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeBotVersionRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, required: true, location: "uri", location_name: "botVersion"))
    DescribeBotVersionRequest.struct_class = Types::DescribeBotVersionRequest

    DescribeBotVersionResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeBotVersionResponse.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, location_name: "botName"))
    DescribeBotVersionResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: NumericalBotVersion, location_name: "botVersion"))
    DescribeBotVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeBotVersionResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DescribeBotVersionResponse.add_member(:data_privacy, Shapes::ShapeRef.new(shape: DataPrivacy, location_name: "dataPrivacy"))
    DescribeBotVersionResponse.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    DescribeBotVersionResponse.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    DescribeBotVersionResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeBotVersionResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeBotVersionResponse.add_member(:parent_bot_networks, Shapes::ShapeRef.new(shape: ParentBotNetworks, location_name: "parentBotNetworks"))
    DescribeBotVersionResponse.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "botType"))
    DescribeBotVersionResponse.add_member(:bot_members, Shapes::ShapeRef.new(shape: BotMembers, location_name: "botMembers"))
    DescribeBotVersionResponse.struct_class = Types::DescribeBotVersionResponse

    DescribeCustomVocabularyMetadataRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeCustomVocabularyMetadataRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    DescribeCustomVocabularyMetadataRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DescribeCustomVocabularyMetadataRequest.struct_class = Types::DescribeCustomVocabularyMetadataRequest

    DescribeCustomVocabularyMetadataResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeCustomVocabularyMetadataResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    DescribeCustomVocabularyMetadataResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DescribeCustomVocabularyMetadataResponse.add_member(:custom_vocabulary_status, Shapes::ShapeRef.new(shape: CustomVocabularyStatus, location_name: "customVocabularyStatus"))
    DescribeCustomVocabularyMetadataResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeCustomVocabularyMetadataResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeCustomVocabularyMetadataResponse.struct_class = Types::DescribeCustomVocabularyMetadataResponse

    DescribeExportRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "exportId"))
    DescribeExportRequest.struct_class = Types::DescribeExportRequest

    DescribeExportResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, location_name: "exportId"))
    DescribeExportResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ExportResourceSpecification, location_name: "resourceSpecification"))
    DescribeExportResponse.add_member(:file_format, Shapes::ShapeRef.new(shape: ImportExportFileFormat, location_name: "fileFormat"))
    DescribeExportResponse.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "exportStatus"))
    DescribeExportResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeExportResponse.add_member(:download_url, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "downloadUrl"))
    DescribeExportResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeExportResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeExportResponse.struct_class = Types::DescribeExportResponse

    DescribeImportRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "importId"))
    DescribeImportRequest.struct_class = Types::DescribeImportRequest

    DescribeImportResponse.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, location_name: "importId"))
    DescribeImportResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ImportResourceSpecification, location_name: "resourceSpecification"))
    DescribeImportResponse.add_member(:imported_resource_id, Shapes::ShapeRef.new(shape: ImportedResourceId, location_name: "importedResourceId"))
    DescribeImportResponse.add_member(:imported_resource_name, Shapes::ShapeRef.new(shape: Name, location_name: "importedResourceName"))
    DescribeImportResponse.add_member(:merge_strategy, Shapes::ShapeRef.new(shape: MergeStrategy, location_name: "mergeStrategy"))
    DescribeImportResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "importStatus"))
    DescribeImportResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeImportResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeImportResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeImportResponse.struct_class = Types::DescribeImportResponse

    DescribeIntentRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    DescribeIntentRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeIntentRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    DescribeIntentRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DescribeIntentRequest.struct_class = Types::DescribeIntentRequest

    DescribeIntentResponse.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    DescribeIntentResponse.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, location_name: "intentName"))
    DescribeIntentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeIntentResponse.add_member(:parent_intent_signature, Shapes::ShapeRef.new(shape: IntentSignature, location_name: "parentIntentSignature"))
    DescribeIntentResponse.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterancesList, location_name: "sampleUtterances"))
    DescribeIntentResponse.add_member(:dialog_code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookSettings, location_name: "dialogCodeHook"))
    DescribeIntentResponse.add_member(:fulfillment_code_hook, Shapes::ShapeRef.new(shape: FulfillmentCodeHookSettings, location_name: "fulfillmentCodeHook"))
    DescribeIntentResponse.add_member(:slot_priorities, Shapes::ShapeRef.new(shape: SlotPrioritiesList, location_name: "slotPriorities"))
    DescribeIntentResponse.add_member(:intent_confirmation_setting, Shapes::ShapeRef.new(shape: IntentConfirmationSetting, location_name: "intentConfirmationSetting"))
    DescribeIntentResponse.add_member(:intent_closing_setting, Shapes::ShapeRef.new(shape: IntentClosingSetting, location_name: "intentClosingSetting"))
    DescribeIntentResponse.add_member(:input_contexts, Shapes::ShapeRef.new(shape: InputContextsList, location_name: "inputContexts"))
    DescribeIntentResponse.add_member(:output_contexts, Shapes::ShapeRef.new(shape: OutputContextsList, location_name: "outputContexts"))
    DescribeIntentResponse.add_member(:kendra_configuration, Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    DescribeIntentResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeIntentResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    DescribeIntentResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DescribeIntentResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeIntentResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeIntentResponse.add_member(:initial_response_setting, Shapes::ShapeRef.new(shape: InitialResponseSetting, location_name: "initialResponseSetting"))
    DescribeIntentResponse.struct_class = Types::DescribeIntentResponse

    DescribeResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    DescribeResourcePolicyRequest.struct_class = Types::DescribeResourcePolicyRequest

    DescribeResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn"))
    DescribeResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "policy"))
    DescribeResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    DescribeResourcePolicyResponse.struct_class = Types::DescribeResourcePolicyResponse

    DescribeSlotRequest.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "slotId"))
    DescribeSlotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeSlotRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    DescribeSlotRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DescribeSlotRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    DescribeSlotRequest.struct_class = Types::DescribeSlotRequest

    DescribeSlotResponse.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotId"))
    DescribeSlotResponse.add_member(:slot_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotName"))
    DescribeSlotResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeSlotResponse.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, location_name: "slotTypeId"))
    DescribeSlotResponse.add_member(:value_elicitation_setting, Shapes::ShapeRef.new(shape: SlotValueElicitationSetting, location_name: "valueElicitationSetting"))
    DescribeSlotResponse.add_member(:obfuscation_setting, Shapes::ShapeRef.new(shape: ObfuscationSetting, location_name: "obfuscationSetting"))
    DescribeSlotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeSlotResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    DescribeSlotResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DescribeSlotResponse.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    DescribeSlotResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeSlotResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeSlotResponse.add_member(:multiple_values_setting, Shapes::ShapeRef.new(shape: MultipleValuesSetting, location_name: "multipleValuesSetting"))
    DescribeSlotResponse.add_member(:sub_slot_setting, Shapes::ShapeRef.new(shape: SubSlotSetting, location_name: "subSlotSetting"))
    DescribeSlotResponse.struct_class = Types::DescribeSlotResponse

    DescribeSlotTypeRequest.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "slotTypeId"))
    DescribeSlotTypeRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    DescribeSlotTypeRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    DescribeSlotTypeRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DescribeSlotTypeRequest.struct_class = Types::DescribeSlotTypeRequest

    DescribeSlotTypeResponse.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotTypeId"))
    DescribeSlotTypeResponse.add_member(:slot_type_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotTypeName"))
    DescribeSlotTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeSlotTypeResponse.add_member(:slot_type_values, Shapes::ShapeRef.new(shape: SlotTypeValues, location_name: "slotTypeValues"))
    DescribeSlotTypeResponse.add_member(:value_selection_setting, Shapes::ShapeRef.new(shape: SlotValueSelectionSetting, location_name: "valueSelectionSetting"))
    DescribeSlotTypeResponse.add_member(:parent_slot_type_signature, Shapes::ShapeRef.new(shape: SlotTypeSignature, location_name: "parentSlotTypeSignature"))
    DescribeSlotTypeResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    DescribeSlotTypeResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    DescribeSlotTypeResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DescribeSlotTypeResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeSlotTypeResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeSlotTypeResponse.add_member(:external_source_setting, Shapes::ShapeRef.new(shape: ExternalSourceSetting, location_name: "externalSourceSetting"))
    DescribeSlotTypeResponse.add_member(:composite_slot_type_setting, Shapes::ShapeRef.new(shape: CompositeSlotTypeSetting, location_name: "compositeSlotTypeSetting"))
    DescribeSlotTypeResponse.struct_class = Types::DescribeSlotTypeResponse

    DescribeTestExecutionRequest.add_member(:test_execution_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testExecutionId"))
    DescribeTestExecutionRequest.struct_class = Types::DescribeTestExecutionRequest

    DescribeTestExecutionResponse.add_member(:test_execution_id, Shapes::ShapeRef.new(shape: Id, location_name: "testExecutionId"))
    DescribeTestExecutionResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeTestExecutionResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeTestExecutionResponse.add_member(:test_execution_status, Shapes::ShapeRef.new(shape: TestExecutionStatus, location_name: "testExecutionStatus"))
    DescribeTestExecutionResponse.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    DescribeTestExecutionResponse.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, location_name: "testSetName"))
    DescribeTestExecutionResponse.add_member(:target, Shapes::ShapeRef.new(shape: TestExecutionTarget, location_name: "target"))
    DescribeTestExecutionResponse.add_member(:api_mode, Shapes::ShapeRef.new(shape: TestExecutionApiMode, location_name: "apiMode"))
    DescribeTestExecutionResponse.add_member(:test_execution_modality, Shapes::ShapeRef.new(shape: TestExecutionModality, location_name: "testExecutionModality"))
    DescribeTestExecutionResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeTestExecutionResponse.struct_class = Types::DescribeTestExecutionResponse

    DescribeTestSetDiscrepancyReportRequest.add_member(:test_set_discrepancy_report_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetDiscrepancyReportId"))
    DescribeTestSetDiscrepancyReportRequest.struct_class = Types::DescribeTestSetDiscrepancyReportRequest

    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_report_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetDiscrepancyReportId"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:target, Shapes::ShapeRef.new(shape: TestSetDiscrepancyReportResourceTarget, location_name: "target"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_report_status, Shapes::ShapeRef.new(shape: TestSetDiscrepancyReportStatus, location_name: "testSetDiscrepancyReportStatus"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:last_updated_data_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDataTime"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_top_errors, Shapes::ShapeRef.new(shape: TestSetDiscrepancyErrors, location_name: "testSetDiscrepancyTopErrors"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:test_set_discrepancy_raw_output_url, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "testSetDiscrepancyRawOutputUrl"))
    DescribeTestSetDiscrepancyReportResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeTestSetDiscrepancyReportResponse.struct_class = Types::DescribeTestSetDiscrepancyReportResponse

    DescribeTestSetGenerationRequest.add_member(:test_set_generation_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetGenerationId"))
    DescribeTestSetGenerationRequest.struct_class = Types::DescribeTestSetGenerationRequest

    DescribeTestSetGenerationResponse.add_member(:test_set_generation_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetGenerationId"))
    DescribeTestSetGenerationResponse.add_member(:test_set_generation_status, Shapes::ShapeRef.new(shape: TestSetGenerationStatus, location_name: "testSetGenerationStatus"))
    DescribeTestSetGenerationResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    DescribeTestSetGenerationResponse.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    DescribeTestSetGenerationResponse.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, location_name: "testSetName"))
    DescribeTestSetGenerationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeTestSetGenerationResponse.add_member(:storage_location, Shapes::ShapeRef.new(shape: TestSetStorageLocation, location_name: "storageLocation"))
    DescribeTestSetGenerationResponse.add_member(:generation_data_source, Shapes::ShapeRef.new(shape: TestSetGenerationDataSource, location_name: "generationDataSource"))
    DescribeTestSetGenerationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DescribeTestSetGenerationResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeTestSetGenerationResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeTestSetGenerationResponse.struct_class = Types::DescribeTestSetGenerationResponse

    DescribeTestSetRequest.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetId"))
    DescribeTestSetRequest.struct_class = Types::DescribeTestSetRequest

    DescribeTestSetResponse.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    DescribeTestSetResponse.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, location_name: "testSetName"))
    DescribeTestSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeTestSetResponse.add_member(:modality, Shapes::ShapeRef.new(shape: TestSetModality, location_name: "modality"))
    DescribeTestSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TestSetStatus, location_name: "status"))
    DescribeTestSetResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DescribeTestSetResponse.add_member(:num_turns, Shapes::ShapeRef.new(shape: Count, location_name: "numTurns"))
    DescribeTestSetResponse.add_member(:storage_location, Shapes::ShapeRef.new(shape: TestSetStorageLocation, location_name: "storageLocation"))
    DescribeTestSetResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    DescribeTestSetResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    DescribeTestSetResponse.struct_class = Types::DescribeTestSetResponse

    DialogAction.add_member(:type, Shapes::ShapeRef.new(shape: DialogActionType, required: true, location_name: "type"))
    DialogAction.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: Name, location_name: "slotToElicit"))
    DialogAction.add_member(:suppress_next_message, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "suppressNextMessage"))
    DialogAction.struct_class = Types::DialogAction

    DialogCodeHookInvocationSetting.add_member(:enable_code_hook_invocation, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "enableCodeHookInvocation"))
    DialogCodeHookInvocationSetting.add_member(:active, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "active"))
    DialogCodeHookInvocationSetting.add_member(:invocation_label, Shapes::ShapeRef.new(shape: Name, location_name: "invocationLabel"))
    DialogCodeHookInvocationSetting.add_member(:post_code_hook_specification, Shapes::ShapeRef.new(shape: PostDialogCodeHookInvocationSpecification, required: true, location_name: "postCodeHookSpecification"))
    DialogCodeHookInvocationSetting.struct_class = Types::DialogCodeHookInvocationSetting

    DialogCodeHookSettings.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    DialogCodeHookSettings.struct_class = Types::DialogCodeHookSettings

    DialogState.add_member(:dialog_action, Shapes::ShapeRef.new(shape: DialogAction, location_name: "dialogAction"))
    DialogState.add_member(:intent, Shapes::ShapeRef.new(shape: IntentOverride, location_name: "intent"))
    DialogState.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    DialogState.struct_class = Types::DialogState

    ElicitationCodeHookInvocationSetting.add_member(:enable_code_hook_invocation, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "enableCodeHookInvocation"))
    ElicitationCodeHookInvocationSetting.add_member(:invocation_label, Shapes::ShapeRef.new(shape: Name, location_name: "invocationLabel"))
    ElicitationCodeHookInvocationSetting.struct_class = Types::ElicitationCodeHookInvocationSetting

    EncryptionSetting.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EncryptionSetting.add_member(:bot_locale_export_password, Shapes::ShapeRef.new(shape: FilePassword, location_name: "botLocaleExportPassword"))
    EncryptionSetting.add_member(:associated_transcripts_password, Shapes::ShapeRef.new(shape: FilePassword, location_name: "associatedTranscriptsPassword"))
    EncryptionSetting.struct_class = Types::EncryptionSetting

    ExecutionErrorDetails.add_member(:error_code, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "errorCode"))
    ExecutionErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "errorMessage"))
    ExecutionErrorDetails.struct_class = Types::ExecutionErrorDetails

    ExportFilter.add_member(:name, Shapes::ShapeRef.new(shape: ExportFilterName, required: true, location_name: "name"))
    ExportFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    ExportFilter.add_member(:operator, Shapes::ShapeRef.new(shape: ExportFilterOperator, required: true, location_name: "operator"))
    ExportFilter.struct_class = Types::ExportFilter

    ExportFilters.member = Shapes::ShapeRef.new(shape: ExportFilter)

    ExportResourceSpecification.add_member(:bot_export_specification, Shapes::ShapeRef.new(shape: BotExportSpecification, location_name: "botExportSpecification"))
    ExportResourceSpecification.add_member(:bot_locale_export_specification, Shapes::ShapeRef.new(shape: BotLocaleExportSpecification, location_name: "botLocaleExportSpecification"))
    ExportResourceSpecification.add_member(:custom_vocabulary_export_specification, Shapes::ShapeRef.new(shape: CustomVocabularyExportSpecification, location_name: "customVocabularyExportSpecification"))
    ExportResourceSpecification.add_member(:test_set_export_specification, Shapes::ShapeRef.new(shape: TestSetExportSpecification, location_name: "testSetExportSpecification"))
    ExportResourceSpecification.struct_class = Types::ExportResourceSpecification

    ExportSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: ExportSortAttribute, required: true, location_name: "attribute"))
    ExportSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    ExportSortBy.struct_class = Types::ExportSortBy

    ExportSummary.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, location_name: "exportId"))
    ExportSummary.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ExportResourceSpecification, location_name: "resourceSpecification"))
    ExportSummary.add_member(:file_format, Shapes::ShapeRef.new(shape: ImportExportFileFormat, location_name: "fileFormat"))
    ExportSummary.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "exportStatus"))
    ExportSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    ExportSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    ExportSummary.struct_class = Types::ExportSummary

    ExportSummaryList.member = Shapes::ShapeRef.new(shape: ExportSummary)

    ExternalSourceSetting.add_member(:grammar_slot_type_setting, Shapes::ShapeRef.new(shape: GrammarSlotTypeSetting, location_name: "grammarSlotTypeSetting"))
    ExternalSourceSetting.struct_class = Types::ExternalSourceSetting

    FailedCustomVocabularyItem.add_member(:item_id, Shapes::ShapeRef.new(shape: ItemId, location_name: "itemId"))
    FailedCustomVocabularyItem.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    FailedCustomVocabularyItem.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    FailedCustomVocabularyItem.struct_class = Types::FailedCustomVocabularyItem

    FailedCustomVocabularyItems.member = Shapes::ShapeRef.new(shape: FailedCustomVocabularyItem)

    FailureReasons.member = Shapes::ShapeRef.new(shape: FailureReason)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    FulfillmentCodeHookSettings.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    FulfillmentCodeHookSettings.add_member(:post_fulfillment_status_specification, Shapes::ShapeRef.new(shape: PostFulfillmentStatusSpecification, location_name: "postFulfillmentStatusSpecification"))
    FulfillmentCodeHookSettings.add_member(:fulfillment_updates_specification, Shapes::ShapeRef.new(shape: FulfillmentUpdatesSpecification, location_name: "fulfillmentUpdatesSpecification"))
    FulfillmentCodeHookSettings.add_member(:active, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "active"))
    FulfillmentCodeHookSettings.struct_class = Types::FulfillmentCodeHookSettings

    FulfillmentStartResponseSpecification.add_member(:delay_in_seconds, Shapes::ShapeRef.new(shape: FulfillmentStartResponseDelay, required: true, location_name: "delayInSeconds"))
    FulfillmentStartResponseSpecification.add_member(:message_groups, Shapes::ShapeRef.new(shape: MessageGroupsList, required: true, location_name: "messageGroups"))
    FulfillmentStartResponseSpecification.add_member(:allow_interrupt, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "allowInterrupt"))
    FulfillmentStartResponseSpecification.struct_class = Types::FulfillmentStartResponseSpecification

    FulfillmentUpdateResponseSpecification.add_member(:frequency_in_seconds, Shapes::ShapeRef.new(shape: FulfillmentUpdateResponseFrequency, required: true, location_name: "frequencyInSeconds"))
    FulfillmentUpdateResponseSpecification.add_member(:message_groups, Shapes::ShapeRef.new(shape: MessageGroupsList, required: true, location_name: "messageGroups"))
    FulfillmentUpdateResponseSpecification.add_member(:allow_interrupt, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "allowInterrupt"))
    FulfillmentUpdateResponseSpecification.struct_class = Types::FulfillmentUpdateResponseSpecification

    FulfillmentUpdatesSpecification.add_member(:active, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "active"))
    FulfillmentUpdatesSpecification.add_member(:start_response, Shapes::ShapeRef.new(shape: FulfillmentStartResponseSpecification, location_name: "startResponse"))
    FulfillmentUpdatesSpecification.add_member(:update_response, Shapes::ShapeRef.new(shape: FulfillmentUpdateResponseSpecification, location_name: "updateResponse"))
    FulfillmentUpdatesSpecification.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: FulfillmentTimeout, location_name: "timeoutInSeconds"))
    FulfillmentUpdatesSpecification.struct_class = Types::FulfillmentUpdatesSpecification

    GetTestExecutionArtifactsUrlRequest.add_member(:test_execution_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testExecutionId"))
    GetTestExecutionArtifactsUrlRequest.struct_class = Types::GetTestExecutionArtifactsUrlRequest

    GetTestExecutionArtifactsUrlResponse.add_member(:test_execution_id, Shapes::ShapeRef.new(shape: Id, location_name: "testExecutionId"))
    GetTestExecutionArtifactsUrlResponse.add_member(:download_artifacts_url, Shapes::ShapeRef.new(shape: PresignedS3Url, location_name: "downloadArtifactsUrl"))
    GetTestExecutionArtifactsUrlResponse.struct_class = Types::GetTestExecutionArtifactsUrlResponse

    GrammarSlotTypeSetting.add_member(:source, Shapes::ShapeRef.new(shape: GrammarSlotTypeSource, location_name: "source"))
    GrammarSlotTypeSetting.struct_class = Types::GrammarSlotTypeSetting

    GrammarSlotTypeSource.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3BucketName"))
    GrammarSlotTypeSource.add_member(:s3_object_key, Shapes::ShapeRef.new(shape: S3ObjectPath, required: true, location_name: "s3ObjectKey"))
    GrammarSlotTypeSource.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GrammarSlotTypeSource.struct_class = Types::GrammarSlotTypeSource

    ImageResponseCard.add_member(:title, Shapes::ShapeRef.new(shape: AttachmentTitle, required: true, location_name: "title"))
    ImageResponseCard.add_member(:subtitle, Shapes::ShapeRef.new(shape: AttachmentTitle, location_name: "subtitle"))
    ImageResponseCard.add_member(:image_url, Shapes::ShapeRef.new(shape: AttachmentUrl, location_name: "imageUrl"))
    ImageResponseCard.add_member(:buttons, Shapes::ShapeRef.new(shape: ButtonsList, location_name: "buttons"))
    ImageResponseCard.struct_class = Types::ImageResponseCard

    ImportFilter.add_member(:name, Shapes::ShapeRef.new(shape: ImportFilterName, required: true, location_name: "name"))
    ImportFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    ImportFilter.add_member(:operator, Shapes::ShapeRef.new(shape: ImportFilterOperator, required: true, location_name: "operator"))
    ImportFilter.struct_class = Types::ImportFilter

    ImportFilters.member = Shapes::ShapeRef.new(shape: ImportFilter)

    ImportResourceSpecification.add_member(:bot_import_specification, Shapes::ShapeRef.new(shape: BotImportSpecification, location_name: "botImportSpecification"))
    ImportResourceSpecification.add_member(:bot_locale_import_specification, Shapes::ShapeRef.new(shape: BotLocaleImportSpecification, location_name: "botLocaleImportSpecification"))
    ImportResourceSpecification.add_member(:custom_vocabulary_import_specification, Shapes::ShapeRef.new(shape: CustomVocabularyImportSpecification, location_name: "customVocabularyImportSpecification"))
    ImportResourceSpecification.add_member(:test_set_import_resource_specification, Shapes::ShapeRef.new(shape: TestSetImportResourceSpecification, location_name: "testSetImportResourceSpecification"))
    ImportResourceSpecification.struct_class = Types::ImportResourceSpecification

    ImportSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: ImportSortAttribute, required: true, location_name: "attribute"))
    ImportSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    ImportSortBy.struct_class = Types::ImportSortBy

    ImportSummary.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, location_name: "importId"))
    ImportSummary.add_member(:imported_resource_id, Shapes::ShapeRef.new(shape: ImportedResourceId, location_name: "importedResourceId"))
    ImportSummary.add_member(:imported_resource_name, Shapes::ShapeRef.new(shape: Name, location_name: "importedResourceName"))
    ImportSummary.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "importStatus"))
    ImportSummary.add_member(:merge_strategy, Shapes::ShapeRef.new(shape: MergeStrategy, location_name: "mergeStrategy"))
    ImportSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    ImportSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    ImportSummary.add_member(:imported_resource_type, Shapes::ShapeRef.new(shape: ImportResourceType, location_name: "importedResourceType"))
    ImportSummary.struct_class = Types::ImportSummary

    ImportSummaryList.member = Shapes::ShapeRef.new(shape: ImportSummary)

    InitialResponseSetting.add_member(:initial_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "initialResponse"))
    InitialResponseSetting.add_member(:next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "nextStep"))
    InitialResponseSetting.add_member(:conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "conditional"))
    InitialResponseSetting.add_member(:code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookInvocationSetting, location_name: "codeHook"))
    InitialResponseSetting.struct_class = Types::InitialResponseSetting

    InputContext.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    InputContext.struct_class = Types::InputContext

    InputContextsList.member = Shapes::ShapeRef.new(shape: InputContext)

    InputSessionStateSpecification.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    InputSessionStateSpecification.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextList, location_name: "activeContexts"))
    InputSessionStateSpecification.add_member(:runtime_hints, Shapes::ShapeRef.new(shape: RuntimeHints, location_name: "runtimeHints"))
    InputSessionStateSpecification.struct_class = Types::InputSessionStateSpecification

    IntentClassificationTestResultItem.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    IntentClassificationTestResultItem.add_member(:multi_turn_conversation, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "multiTurnConversation"))
    IntentClassificationTestResultItem.add_member(:result_counts, Shapes::ShapeRef.new(shape: IntentClassificationTestResultItemCounts, required: true, location_name: "resultCounts"))
    IntentClassificationTestResultItem.struct_class = Types::IntentClassificationTestResultItem

    IntentClassificationTestResultItemCounts.add_member(:total_result_count, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "totalResultCount"))
    IntentClassificationTestResultItemCounts.add_member(:speech_transcription_result_counts, Shapes::ShapeRef.new(shape: TestResultMatchStatusCountMap, location_name: "speechTranscriptionResultCounts"))
    IntentClassificationTestResultItemCounts.add_member(:intent_match_result_counts, Shapes::ShapeRef.new(shape: TestResultMatchStatusCountMap, required: true, location_name: "intentMatchResultCounts"))
    IntentClassificationTestResultItemCounts.struct_class = Types::IntentClassificationTestResultItemCounts

    IntentClassificationTestResultItemList.member = Shapes::ShapeRef.new(shape: IntentClassificationTestResultItem)

    IntentClassificationTestResults.add_member(:items, Shapes::ShapeRef.new(shape: IntentClassificationTestResultItemList, required: true, location_name: "items"))
    IntentClassificationTestResults.struct_class = Types::IntentClassificationTestResults

    IntentClosingSetting.add_member(:closing_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "closingResponse"))
    IntentClosingSetting.add_member(:active, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "active"))
    IntentClosingSetting.add_member(:next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "nextStep"))
    IntentClosingSetting.add_member(:conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "conditional"))
    IntentClosingSetting.struct_class = Types::IntentClosingSetting

    IntentConfirmationSetting.add_member(:prompt_specification, Shapes::ShapeRef.new(shape: PromptSpecification, required: true, location_name: "promptSpecification"))
    IntentConfirmationSetting.add_member(:declination_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "declinationResponse"))
    IntentConfirmationSetting.add_member(:active, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "active"))
    IntentConfirmationSetting.add_member(:confirmation_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "confirmationResponse"))
    IntentConfirmationSetting.add_member(:confirmation_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "confirmationNextStep"))
    IntentConfirmationSetting.add_member(:confirmation_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "confirmationConditional"))
    IntentConfirmationSetting.add_member(:declination_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "declinationNextStep"))
    IntentConfirmationSetting.add_member(:declination_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "declinationConditional"))
    IntentConfirmationSetting.add_member(:failure_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "failureResponse"))
    IntentConfirmationSetting.add_member(:failure_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "failureNextStep"))
    IntentConfirmationSetting.add_member(:failure_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "failureConditional"))
    IntentConfirmationSetting.add_member(:code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookInvocationSetting, location_name: "codeHook"))
    IntentConfirmationSetting.add_member(:elicitation_code_hook, Shapes::ShapeRef.new(shape: ElicitationCodeHookInvocationSetting, location_name: "elicitationCodeHook"))
    IntentConfirmationSetting.struct_class = Types::IntentConfirmationSetting

    IntentFilter.add_member(:name, Shapes::ShapeRef.new(shape: IntentFilterName, required: true, location_name: "name"))
    IntentFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    IntentFilter.add_member(:operator, Shapes::ShapeRef.new(shape: IntentFilterOperator, required: true, location_name: "operator"))
    IntentFilter.struct_class = Types::IntentFilter

    IntentFilters.member = Shapes::ShapeRef.new(shape: IntentFilter)

    IntentLevelSlotResolutionTestResultItem.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    IntentLevelSlotResolutionTestResultItem.add_member(:multi_turn_conversation, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "multiTurnConversation"))
    IntentLevelSlotResolutionTestResultItem.add_member(:slot_resolution_results, Shapes::ShapeRef.new(shape: SlotResolutionTestResultItems, required: true, location_name: "slotResolutionResults"))
    IntentLevelSlotResolutionTestResultItem.struct_class = Types::IntentLevelSlotResolutionTestResultItem

    IntentLevelSlotResolutionTestResultItemList.member = Shapes::ShapeRef.new(shape: IntentLevelSlotResolutionTestResultItem)

    IntentLevelSlotResolutionTestResults.add_member(:items, Shapes::ShapeRef.new(shape: IntentLevelSlotResolutionTestResultItemList, required: true, location_name: "items"))
    IntentLevelSlotResolutionTestResults.struct_class = Types::IntentLevelSlotResolutionTestResults

    IntentOverride.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    IntentOverride.add_member(:slots, Shapes::ShapeRef.new(shape: SlotValueOverrideMap, location_name: "slots"))
    IntentOverride.struct_class = Types::IntentOverride

    IntentSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: IntentSortAttribute, required: true, location_name: "attribute"))
    IntentSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    IntentSortBy.struct_class = Types::IntentSortBy

    IntentStatistics.add_member(:discovered_intent_count, Shapes::ShapeRef.new(shape: Count, location_name: "discoveredIntentCount"))
    IntentStatistics.struct_class = Types::IntentStatistics

    IntentSummary.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    IntentSummary.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, location_name: "intentName"))
    IntentSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    IntentSummary.add_member(:parent_intent_signature, Shapes::ShapeRef.new(shape: IntentSignature, location_name: "parentIntentSignature"))
    IntentSummary.add_member(:input_contexts, Shapes::ShapeRef.new(shape: InputContextsList, location_name: "inputContexts"))
    IntentSummary.add_member(:output_contexts, Shapes::ShapeRef.new(shape: OutputContextsList, location_name: "outputContexts"))
    IntentSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    IntentSummary.struct_class = Types::IntentSummary

    IntentSummaryList.member = Shapes::ShapeRef.new(shape: IntentSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KendraConfiguration.add_member(:kendra_index, Shapes::ShapeRef.new(shape: KendraIndexArn, required: true, location_name: "kendraIndex"))
    KendraConfiguration.add_member(:query_filter_string_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "queryFilterStringEnabled"))
    KendraConfiguration.add_member(:query_filter_string, Shapes::ShapeRef.new(shape: QueryFilterString, location_name: "queryFilterString"))
    KendraConfiguration.struct_class = Types::KendraConfiguration

    LambdaCodeHook.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaARN, required: true, location_name: "lambdaARN"))
    LambdaCodeHook.add_member(:code_hook_interface_version, Shapes::ShapeRef.new(shape: CodeHookInterfaceVersion, required: true, location_name: "codeHookInterfaceVersion"))
    LambdaCodeHook.struct_class = Types::LambdaCodeHook

    LexTranscriptFilter.add_member(:date_range_filter, Shapes::ShapeRef.new(shape: DateRangeFilter, location_name: "dateRangeFilter"))
    LexTranscriptFilter.struct_class = Types::LexTranscriptFilter

    ListAggregatedUtterancesRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListAggregatedUtterancesRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, location_name: "botAliasId"))
    ListAggregatedUtterancesRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListAggregatedUtterancesRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    ListAggregatedUtterancesRequest.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: UtteranceAggregationDuration, required: true, location_name: "aggregationDuration"))
    ListAggregatedUtterancesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: AggregatedUtterancesSortBy, location_name: "sortBy"))
    ListAggregatedUtterancesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AggregatedUtterancesFilters, location_name: "filters"))
    ListAggregatedUtterancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAggregatedUtterancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAggregatedUtterancesRequest.struct_class = Types::ListAggregatedUtterancesRequest

    ListAggregatedUtterancesResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListAggregatedUtterancesResponse.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, location_name: "botAliasId"))
    ListAggregatedUtterancesResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListAggregatedUtterancesResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: UtteranceAggregationDuration, location_name: "aggregationDuration"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_window_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "aggregationWindowStartTime"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_window_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "aggregationWindowEndTime"))
    ListAggregatedUtterancesResponse.add_member(:aggregation_last_refreshed_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "aggregationLastRefreshedDateTime"))
    ListAggregatedUtterancesResponse.add_member(:aggregated_utterances_summaries, Shapes::ShapeRef.new(shape: AggregatedUtterancesSummaryList, location_name: "aggregatedUtterancesSummaries"))
    ListAggregatedUtterancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAggregatedUtterancesResponse.struct_class = Types::ListAggregatedUtterancesResponse

    ListBotAliasesRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListBotAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBotAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotAliasesRequest.struct_class = Types::ListBotAliasesRequest

    ListBotAliasesResponse.add_member(:bot_alias_summaries, Shapes::ShapeRef.new(shape: BotAliasSummaryList, location_name: "botAliasSummaries"))
    ListBotAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotAliasesResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListBotAliasesResponse.struct_class = Types::ListBotAliasesResponse

    ListBotLocalesRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListBotLocalesRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    ListBotLocalesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: BotLocaleSortBy, location_name: "sortBy"))
    ListBotLocalesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: BotLocaleFilters, location_name: "filters"))
    ListBotLocalesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBotLocalesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotLocalesRequest.struct_class = Types::ListBotLocalesRequest

    ListBotLocalesResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListBotLocalesResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListBotLocalesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotLocalesResponse.add_member(:bot_locale_summaries, Shapes::ShapeRef.new(shape: BotLocaleSummaryList, location_name: "botLocaleSummaries"))
    ListBotLocalesResponse.struct_class = Types::ListBotLocalesResponse

    ListBotRecommendationsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListBotRecommendationsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    ListBotRecommendationsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListBotRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBotRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotRecommendationsRequest.struct_class = Types::ListBotRecommendationsRequest

    ListBotRecommendationsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListBotRecommendationsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    ListBotRecommendationsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListBotRecommendationsResponse.add_member(:bot_recommendation_summaries, Shapes::ShapeRef.new(shape: BotRecommendationSummaryList, location_name: "botRecommendationSummaries"))
    ListBotRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotRecommendationsResponse.struct_class = Types::ListBotRecommendationsResponse

    ListBotVersionsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListBotVersionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: BotVersionSortBy, location_name: "sortBy"))
    ListBotVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBotVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotVersionsRequest.struct_class = Types::ListBotVersionsRequest

    ListBotVersionsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListBotVersionsResponse.add_member(:bot_version_summaries, Shapes::ShapeRef.new(shape: BotVersionSummaryList, location_name: "botVersionSummaries"))
    ListBotVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotVersionsResponse.struct_class = Types::ListBotVersionsResponse

    ListBotsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: BotSortBy, location_name: "sortBy"))
    ListBotsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: BotFilters, location_name: "filters"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:bot_summaries, Shapes::ShapeRef.new(shape: BotSummaryList, location_name: "botSummaries"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

    ListBuiltInIntentsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListBuiltInIntentsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: BuiltInIntentSortBy, location_name: "sortBy"))
    ListBuiltInIntentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BuiltInsMaxResults, location_name: "maxResults"))
    ListBuiltInIntentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBuiltInIntentsRequest.struct_class = Types::ListBuiltInIntentsRequest

    ListBuiltInIntentsResponse.add_member(:built_in_intent_summaries, Shapes::ShapeRef.new(shape: BuiltInIntentSummaryList, location_name: "builtInIntentSummaries"))
    ListBuiltInIntentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBuiltInIntentsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListBuiltInIntentsResponse.struct_class = Types::ListBuiltInIntentsResponse

    ListBuiltInSlotTypesRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListBuiltInSlotTypesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: BuiltInSlotTypeSortBy, location_name: "sortBy"))
    ListBuiltInSlotTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BuiltInsMaxResults, location_name: "maxResults"))
    ListBuiltInSlotTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBuiltInSlotTypesRequest.struct_class = Types::ListBuiltInSlotTypesRequest

    ListBuiltInSlotTypesResponse.add_member(:built_in_slot_type_summaries, Shapes::ShapeRef.new(shape: BuiltInSlotTypeSummaryList, location_name: "builtInSlotTypeSummaries"))
    ListBuiltInSlotTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBuiltInSlotTypesResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListBuiltInSlotTypesResponse.struct_class = Types::ListBuiltInSlotTypesResponse

    ListCustomVocabularyItemsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListCustomVocabularyItemsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    ListCustomVocabularyItemsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListCustomVocabularyItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCustomVocabularyItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCustomVocabularyItemsRequest.struct_class = Types::ListCustomVocabularyItemsRequest

    ListCustomVocabularyItemsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListCustomVocabularyItemsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListCustomVocabularyItemsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListCustomVocabularyItemsResponse.add_member(:custom_vocabulary_items, Shapes::ShapeRef.new(shape: CustomVocabularyItems, location_name: "customVocabularyItems"))
    ListCustomVocabularyItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCustomVocabularyItemsResponse.struct_class = Types::ListCustomVocabularyItemsResponse

    ListExportsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListExportsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListExportsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ExportSortBy, location_name: "sortBy"))
    ListExportsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ExportFilters, location_name: "filters"))
    ListExportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListExportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExportsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListExportsRequest.struct_class = Types::ListExportsRequest

    ListExportsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListExportsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListExportsResponse.add_member(:export_summaries, Shapes::ShapeRef.new(shape: ExportSummaryList, location_name: "exportSummaries"))
    ListExportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExportsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListExportsResponse.struct_class = Types::ListExportsResponse

    ListImportsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListImportsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    ListImportsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ImportSortBy, location_name: "sortBy"))
    ListImportsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ImportFilters, location_name: "filters"))
    ListImportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListImportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListImportsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListImportsRequest.struct_class = Types::ListImportsRequest

    ListImportsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListImportsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    ListImportsResponse.add_member(:import_summaries, Shapes::ShapeRef.new(shape: ImportSummaryList, location_name: "importSummaries"))
    ListImportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListImportsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListImportsResponse.struct_class = Types::ListImportsResponse

    ListIntentsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListIntentsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    ListIntentsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListIntentsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: IntentSortBy, location_name: "sortBy"))
    ListIntentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: IntentFilters, location_name: "filters"))
    ListIntentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListIntentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIntentsRequest.struct_class = Types::ListIntentsRequest

    ListIntentsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListIntentsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListIntentsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListIntentsResponse.add_member(:intent_summaries, Shapes::ShapeRef.new(shape: IntentSummaryList, location_name: "intentSummaries"))
    ListIntentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIntentsResponse.struct_class = Types::ListIntentsResponse

    ListRecommendedIntentsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListRecommendedIntentsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    ListRecommendedIntentsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListRecommendedIntentsRequest.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botRecommendationId"))
    ListRecommendedIntentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedIntentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRecommendedIntentsRequest.struct_class = Types::ListRecommendedIntentsRequest

    ListRecommendedIntentsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListRecommendedIntentsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    ListRecommendedIntentsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListRecommendedIntentsResponse.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, location_name: "botRecommendationId"))
    ListRecommendedIntentsResponse.add_member(:summary_list, Shapes::ShapeRef.new(shape: RecommendedIntentSummaryList, location_name: "summaryList"))
    ListRecommendedIntentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendedIntentsResponse.struct_class = Types::ListRecommendedIntentsResponse

    ListSlotTypesRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListSlotTypesRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    ListSlotTypesRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListSlotTypesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SlotTypeSortBy, location_name: "sortBy"))
    ListSlotTypesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SlotTypeFilters, location_name: "filters"))
    ListSlotTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSlotTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSlotTypesRequest.struct_class = Types::ListSlotTypesRequest

    ListSlotTypesResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListSlotTypesResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListSlotTypesResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListSlotTypesResponse.add_member(:slot_type_summaries, Shapes::ShapeRef.new(shape: SlotTypeSummaryList, location_name: "slotTypeSummaries"))
    ListSlotTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSlotTypesResponse.struct_class = Types::ListSlotTypesResponse

    ListSlotsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    ListSlotsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    ListSlotsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    ListSlotsRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    ListSlotsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SlotSortBy, location_name: "sortBy"))
    ListSlotsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SlotFilters, location_name: "filters"))
    ListSlotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSlotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSlotsRequest.struct_class = Types::ListSlotsRequest

    ListSlotsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    ListSlotsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    ListSlotsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    ListSlotsResponse.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    ListSlotsResponse.add_member(:slot_summaries, Shapes::ShapeRef.new(shape: SlotSummaryList, location_name: "slotSummaries"))
    ListSlotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSlotsResponse.struct_class = Types::ListSlotsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTestExecutionResultItemsRequest.add_member(:test_execution_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testExecutionId"))
    ListTestExecutionResultItemsRequest.add_member(:result_filter_by, Shapes::ShapeRef.new(shape: TestExecutionResultFilterBy, required: true, location_name: "resultFilterBy"))
    ListTestExecutionResultItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTestExecutionResultItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestExecutionResultItemsRequest.struct_class = Types::ListTestExecutionResultItemsRequest

    ListTestExecutionResultItemsResponse.add_member(:test_execution_results, Shapes::ShapeRef.new(shape: TestExecutionResultItems, location_name: "testExecutionResults"))
    ListTestExecutionResultItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestExecutionResultItemsResponse.struct_class = Types::ListTestExecutionResultItemsResponse

    ListTestExecutionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: TestExecutionSortBy, location_name: "sortBy"))
    ListTestExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTestExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestExecutionsRequest.struct_class = Types::ListTestExecutionsRequest

    ListTestExecutionsResponse.add_member(:test_executions, Shapes::ShapeRef.new(shape: TestExecutionSummaryList, location_name: "testExecutions"))
    ListTestExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestExecutionsResponse.struct_class = Types::ListTestExecutionsResponse

    ListTestSetRecordsRequest.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetId"))
    ListTestSetRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTestSetRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestSetRecordsRequest.struct_class = Types::ListTestSetRecordsRequest

    ListTestSetRecordsResponse.add_member(:test_set_records, Shapes::ShapeRef.new(shape: TestSetTurnRecordList, location_name: "testSetRecords"))
    ListTestSetRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestSetRecordsResponse.struct_class = Types::ListTestSetRecordsResponse

    ListTestSetsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: TestSetSortBy, location_name: "sortBy"))
    ListTestSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTestSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestSetsRequest.struct_class = Types::ListTestSetsRequest

    ListTestSetsResponse.add_member(:test_sets, Shapes::ShapeRef.new(shape: TestSetSummaryList, location_name: "testSets"))
    ListTestSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestSetsResponse.struct_class = Types::ListTestSetsResponse

    Message.add_member(:plain_text_message, Shapes::ShapeRef.new(shape: PlainTextMessage, location_name: "plainTextMessage"))
    Message.add_member(:custom_payload, Shapes::ShapeRef.new(shape: CustomPayload, location_name: "customPayload"))
    Message.add_member(:ssml_message, Shapes::ShapeRef.new(shape: SSMLMessage, location_name: "ssmlMessage"))
    Message.add_member(:image_response_card, Shapes::ShapeRef.new(shape: ImageResponseCard, location_name: "imageResponseCard"))
    Message.struct_class = Types::Message

    MessageGroup.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    MessageGroup.add_member(:variations, Shapes::ShapeRef.new(shape: MessageVariationsList, location_name: "variations"))
    MessageGroup.struct_class = Types::MessageGroup

    MessageGroupsList.member = Shapes::ShapeRef.new(shape: MessageGroup)

    MessageVariationsList.member = Shapes::ShapeRef.new(shape: Message)

    MultipleValuesSetting.add_member(:allow_multiple_values, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowMultipleValues"))
    MultipleValuesSetting.struct_class = Types::MultipleValuesSetting

    NewCustomVocabularyItem.add_member(:phrase, Shapes::ShapeRef.new(shape: Phrase, required: true, location_name: "phrase"))
    NewCustomVocabularyItem.add_member(:weight, Shapes::ShapeRef.new(shape: Weight, location_name: "weight"))
    NewCustomVocabularyItem.add_member(:display_as, Shapes::ShapeRef.new(shape: Phrase, location_name: "displayAs"))
    NewCustomVocabularyItem.struct_class = Types::NewCustomVocabularyItem

    ObfuscationSetting.add_member(:obfuscation_setting_type, Shapes::ShapeRef.new(shape: ObfuscationSettingType, required: true, location_name: "obfuscationSettingType"))
    ObfuscationSetting.struct_class = Types::ObfuscationSetting

    ObjectPrefixes.member = Shapes::ShapeRef.new(shape: ObjectPrefix)

    OperationList.member = Shapes::ShapeRef.new(shape: Operation)

    OutputContext.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    OutputContext.add_member(:time_to_live_in_seconds, Shapes::ShapeRef.new(shape: ContextTimeToLiveInSeconds, required: true, location_name: "timeToLiveInSeconds"))
    OutputContext.add_member(:turns_to_live, Shapes::ShapeRef.new(shape: ContextTurnsToLive, required: true, location_name: "turnsToLive"))
    OutputContext.struct_class = Types::OutputContext

    OutputContextsList.member = Shapes::ShapeRef.new(shape: OutputContext)

    OverallTestResultItem.add_member(:multi_turn_conversation, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "multiTurnConversation"))
    OverallTestResultItem.add_member(:total_result_count, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "totalResultCount"))
    OverallTestResultItem.add_member(:speech_transcription_result_counts, Shapes::ShapeRef.new(shape: TestResultMatchStatusCountMap, location_name: "speechTranscriptionResultCounts"))
    OverallTestResultItem.add_member(:end_to_end_result_counts, Shapes::ShapeRef.new(shape: TestResultMatchStatusCountMap, required: true, location_name: "endToEndResultCounts"))
    OverallTestResultItem.struct_class = Types::OverallTestResultItem

    OverallTestResultItemList.member = Shapes::ShapeRef.new(shape: OverallTestResultItem)

    OverallTestResults.add_member(:items, Shapes::ShapeRef.new(shape: OverallTestResultItemList, required: true, location_name: "items"))
    OverallTestResults.struct_class = Types::OverallTestResults

    ParentBotNetwork.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    ParentBotNetwork.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location_name: "botVersion"))
    ParentBotNetwork.struct_class = Types::ParentBotNetwork

    ParentBotNetworks.member = Shapes::ShapeRef.new(shape: ParentBotNetwork)

    PathFormat.add_member(:object_prefixes, Shapes::ShapeRef.new(shape: ObjectPrefixes, location_name: "objectPrefixes"))
    PathFormat.struct_class = Types::PathFormat

    PlainTextMessage.add_member(:value, Shapes::ShapeRef.new(shape: PlainTextMessageValue, required: true, location_name: "value"))
    PlainTextMessage.struct_class = Types::PlainTextMessage

    PostDialogCodeHookInvocationSpecification.add_member(:success_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "successResponse"))
    PostDialogCodeHookInvocationSpecification.add_member(:success_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "successNextStep"))
    PostDialogCodeHookInvocationSpecification.add_member(:success_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "successConditional"))
    PostDialogCodeHookInvocationSpecification.add_member(:failure_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "failureResponse"))
    PostDialogCodeHookInvocationSpecification.add_member(:failure_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "failureNextStep"))
    PostDialogCodeHookInvocationSpecification.add_member(:failure_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "failureConditional"))
    PostDialogCodeHookInvocationSpecification.add_member(:timeout_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "timeoutResponse"))
    PostDialogCodeHookInvocationSpecification.add_member(:timeout_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "timeoutNextStep"))
    PostDialogCodeHookInvocationSpecification.add_member(:timeout_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "timeoutConditional"))
    PostDialogCodeHookInvocationSpecification.struct_class = Types::PostDialogCodeHookInvocationSpecification

    PostFulfillmentStatusSpecification.add_member(:success_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "successResponse"))
    PostFulfillmentStatusSpecification.add_member(:failure_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "failureResponse"))
    PostFulfillmentStatusSpecification.add_member(:timeout_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "timeoutResponse"))
    PostFulfillmentStatusSpecification.add_member(:success_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "successNextStep"))
    PostFulfillmentStatusSpecification.add_member(:success_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "successConditional"))
    PostFulfillmentStatusSpecification.add_member(:failure_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "failureNextStep"))
    PostFulfillmentStatusSpecification.add_member(:failure_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "failureConditional"))
    PostFulfillmentStatusSpecification.add_member(:timeout_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "timeoutNextStep"))
    PostFulfillmentStatusSpecification.add_member(:timeout_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "timeoutConditional"))
    PostFulfillmentStatusSpecification.struct_class = Types::PostFulfillmentStatusSpecification

    PreconditionFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    PreconditionFailedException.struct_class = Types::PreconditionFailedException

    Principal.add_member(:service, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "service"))
    Principal.add_member(:arn, Shapes::ShapeRef.new(shape: PrincipalArn, location_name: "arn"))
    Principal.struct_class = Types::Principal

    PrincipalList.member = Shapes::ShapeRef.new(shape: Principal)

    PromptAttemptSpecification.add_member(:allow_interrupt, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "allowInterrupt"))
    PromptAttemptSpecification.add_member(:allowed_input_types, Shapes::ShapeRef.new(shape: AllowedInputTypes, required: true, location_name: "allowedInputTypes"))
    PromptAttemptSpecification.add_member(:audio_and_dtmf_input_specification, Shapes::ShapeRef.new(shape: AudioAndDTMFInputSpecification, location_name: "audioAndDTMFInputSpecification"))
    PromptAttemptSpecification.add_member(:text_input_specification, Shapes::ShapeRef.new(shape: TextInputSpecification, location_name: "textInputSpecification"))
    PromptAttemptSpecification.struct_class = Types::PromptAttemptSpecification

    PromptAttemptsSpecificationMap.key = Shapes::ShapeRef.new(shape: PromptAttempt)
    PromptAttemptsSpecificationMap.value = Shapes::ShapeRef.new(shape: PromptAttemptSpecification)

    PromptSpecification.add_member(:message_groups, Shapes::ShapeRef.new(shape: MessageGroupsList, required: true, location_name: "messageGroups"))
    PromptSpecification.add_member(:max_retries, Shapes::ShapeRef.new(shape: PromptMaxRetries, required: true, location_name: "maxRetries"))
    PromptSpecification.add_member(:allow_interrupt, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "allowInterrupt"))
    PromptSpecification.add_member(:message_selection_strategy, Shapes::ShapeRef.new(shape: MessageSelectionStrategy, location_name: "messageSelectionStrategy"))
    PromptSpecification.add_member(:prompt_attempts_specification, Shapes::ShapeRef.new(shape: PromptAttemptsSpecificationMap, location_name: "promptAttemptsSpecification"))
    PromptSpecification.struct_class = Types::PromptSpecification

    RecommendedActions.member = Shapes::ShapeRef.new(shape: RecommendedAction)

    RecommendedIntentSummary.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    RecommendedIntentSummary.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, location_name: "intentName"))
    RecommendedIntentSummary.add_member(:sample_utterances_count, Shapes::ShapeRef.new(shape: SampleUtterancesCount, location_name: "sampleUtterancesCount"))
    RecommendedIntentSummary.struct_class = Types::RecommendedIntentSummary

    RecommendedIntentSummaryList.member = Shapes::ShapeRef.new(shape: RecommendedIntentSummary)

    RelativeAggregationDuration.add_member(:time_dimension, Shapes::ShapeRef.new(shape: TimeDimension, required: true, location_name: "timeDimension"))
    RelativeAggregationDuration.add_member(:time_value, Shapes::ShapeRef.new(shape: TimeValue, required: true, location_name: "timeValue"))
    RelativeAggregationDuration.struct_class = Types::RelativeAggregationDuration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseSpecification.add_member(:message_groups, Shapes::ShapeRef.new(shape: MessageGroupsList, required: true, location_name: "messageGroups"))
    ResponseSpecification.add_member(:allow_interrupt, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "allowInterrupt"))
    ResponseSpecification.struct_class = Types::ResponseSpecification

    RuntimeHintDetails.add_member(:runtime_hint_values, Shapes::ShapeRef.new(shape: RuntimeHintValuesList, location_name: "runtimeHintValues"))
    RuntimeHintDetails.add_member(:sub_slot_hints, Shapes::ShapeRef.new(shape: SlotHintsSlotMap, location_name: "subSlotHints"))
    RuntimeHintDetails.struct_class = Types::RuntimeHintDetails

    RuntimeHintValue.add_member(:phrase, Shapes::ShapeRef.new(shape: RuntimeHintPhrase, required: true, location_name: "phrase"))
    RuntimeHintValue.struct_class = Types::RuntimeHintValue

    RuntimeHintValuesList.member = Shapes::ShapeRef.new(shape: RuntimeHintValue)

    RuntimeHints.add_member(:slot_hints, Shapes::ShapeRef.new(shape: SlotHintsIntentMap, location_name: "slotHints"))
    RuntimeHints.struct_class = Types::RuntimeHints

    S3BucketLogDestination.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    S3BucketLogDestination.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, required: true, location_name: "s3BucketArn"))
    S3BucketLogDestination.add_member(:log_prefix, Shapes::ShapeRef.new(shape: LogPrefix, required: true, location_name: "logPrefix"))
    S3BucketLogDestination.struct_class = Types::S3BucketLogDestination

    S3BucketTranscriptSource.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3BucketName"))
    S3BucketTranscriptSource.add_member(:path_format, Shapes::ShapeRef.new(shape: PathFormat, location_name: "pathFormat"))
    S3BucketTranscriptSource.add_member(:transcript_format, Shapes::ShapeRef.new(shape: TranscriptFormat, required: true, location_name: "transcriptFormat"))
    S3BucketTranscriptSource.add_member(:transcript_filter, Shapes::ShapeRef.new(shape: TranscriptFilter, location_name: "transcriptFilter"))
    S3BucketTranscriptSource.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    S3BucketTranscriptSource.struct_class = Types::S3BucketTranscriptSource

    SSMLMessage.add_member(:value, Shapes::ShapeRef.new(shape: SSMLMessageValue, required: true, location_name: "value"))
    SSMLMessage.struct_class = Types::SSMLMessage

    SampleUtterance.add_member(:utterance, Shapes::ShapeRef.new(shape: Utterance, required: true, location_name: "utterance"))
    SampleUtterance.struct_class = Types::SampleUtterance

    SampleUtterancesList.member = Shapes::ShapeRef.new(shape: SampleUtterance)

    SampleValue.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "value"))
    SampleValue.struct_class = Types::SampleValue

    SearchAssociatedTranscriptsRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    SearchAssociatedTranscriptsRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, required: true, location: "uri", location_name: "botVersion"))
    SearchAssociatedTranscriptsRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    SearchAssociatedTranscriptsRequest.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botRecommendationId"))
    SearchAssociatedTranscriptsRequest.add_member(:search_order, Shapes::ShapeRef.new(shape: SearchOrder, location_name: "searchOrder"))
    SearchAssociatedTranscriptsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AssociatedTranscriptFilters, required: true, location_name: "filters"))
    SearchAssociatedTranscriptsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchAssociatedTranscriptsRequest.add_member(:next_index, Shapes::ShapeRef.new(shape: NextIndex, location_name: "nextIndex"))
    SearchAssociatedTranscriptsRequest.struct_class = Types::SearchAssociatedTranscriptsRequest

    SearchAssociatedTranscriptsResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    SearchAssociatedTranscriptsResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    SearchAssociatedTranscriptsResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    SearchAssociatedTranscriptsResponse.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, location_name: "botRecommendationId"))
    SearchAssociatedTranscriptsResponse.add_member(:next_index, Shapes::ShapeRef.new(shape: NextIndex, location_name: "nextIndex"))
    SearchAssociatedTranscriptsResponse.add_member(:associated_transcripts, Shapes::ShapeRef.new(shape: AssociatedTranscriptList, location_name: "associatedTranscripts"))
    SearchAssociatedTranscriptsResponse.add_member(:total_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "totalResults"))
    SearchAssociatedTranscriptsResponse.struct_class = Types::SearchAssociatedTranscriptsResponse

    SentimentAnalysisSettings.add_member(:detect_sentiment, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "detectSentiment"))
    SentimentAnalysisSettings.struct_class = Types::SentimentAnalysisSettings

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SlotCaptureSetting.add_member(:capture_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "captureResponse"))
    SlotCaptureSetting.add_member(:capture_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "captureNextStep"))
    SlotCaptureSetting.add_member(:capture_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "captureConditional"))
    SlotCaptureSetting.add_member(:failure_response, Shapes::ShapeRef.new(shape: ResponseSpecification, location_name: "failureResponse"))
    SlotCaptureSetting.add_member(:failure_next_step, Shapes::ShapeRef.new(shape: DialogState, location_name: "failureNextStep"))
    SlotCaptureSetting.add_member(:failure_conditional, Shapes::ShapeRef.new(shape: ConditionalSpecification, location_name: "failureConditional"))
    SlotCaptureSetting.add_member(:code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookInvocationSetting, location_name: "codeHook"))
    SlotCaptureSetting.add_member(:elicitation_code_hook, Shapes::ShapeRef.new(shape: ElicitationCodeHookInvocationSetting, location_name: "elicitationCodeHook"))
    SlotCaptureSetting.struct_class = Types::SlotCaptureSetting

    SlotDefaultValue.add_member(:default_value, Shapes::ShapeRef.new(shape: SlotDefaultValueString, required: true, location_name: "defaultValue"))
    SlotDefaultValue.struct_class = Types::SlotDefaultValue

    SlotDefaultValueList.member = Shapes::ShapeRef.new(shape: SlotDefaultValue)

    SlotDefaultValueSpecification.add_member(:default_value_list, Shapes::ShapeRef.new(shape: SlotDefaultValueList, required: true, location_name: "defaultValueList"))
    SlotDefaultValueSpecification.struct_class = Types::SlotDefaultValueSpecification

    SlotFilter.add_member(:name, Shapes::ShapeRef.new(shape: SlotFilterName, required: true, location_name: "name"))
    SlotFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    SlotFilter.add_member(:operator, Shapes::ShapeRef.new(shape: SlotFilterOperator, required: true, location_name: "operator"))
    SlotFilter.struct_class = Types::SlotFilter

    SlotFilters.member = Shapes::ShapeRef.new(shape: SlotFilter)

    SlotHintsIntentMap.key = Shapes::ShapeRef.new(shape: Name)
    SlotHintsIntentMap.value = Shapes::ShapeRef.new(shape: SlotHintsSlotMap)

    SlotHintsSlotMap.key = Shapes::ShapeRef.new(shape: Name)
    SlotHintsSlotMap.value = Shapes::ShapeRef.new(shape: RuntimeHintDetails)

    SlotPrioritiesList.member = Shapes::ShapeRef.new(shape: SlotPriority)

    SlotPriority.add_member(:priority, Shapes::ShapeRef.new(shape: PriorityValue, required: true, location_name: "priority"))
    SlotPriority.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "slotId"))
    SlotPriority.struct_class = Types::SlotPriority

    SlotResolutionTestResultItem.add_member(:slot_name, Shapes::ShapeRef.new(shape: TestResultSlotName, required: true, location_name: "slotName"))
    SlotResolutionTestResultItem.add_member(:result_counts, Shapes::ShapeRef.new(shape: SlotResolutionTestResultItemCounts, required: true, location_name: "resultCounts"))
    SlotResolutionTestResultItem.struct_class = Types::SlotResolutionTestResultItem

    SlotResolutionTestResultItemCounts.add_member(:total_result_count, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "totalResultCount"))
    SlotResolutionTestResultItemCounts.add_member(:speech_transcription_result_counts, Shapes::ShapeRef.new(shape: TestResultMatchStatusCountMap, location_name: "speechTranscriptionResultCounts"))
    SlotResolutionTestResultItemCounts.add_member(:slot_match_result_counts, Shapes::ShapeRef.new(shape: TestResultMatchStatusCountMap, required: true, location_name: "slotMatchResultCounts"))
    SlotResolutionTestResultItemCounts.struct_class = Types::SlotResolutionTestResultItemCounts

    SlotResolutionTestResultItems.member = Shapes::ShapeRef.new(shape: SlotResolutionTestResultItem)

    SlotSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: SlotSortAttribute, required: true, location_name: "attribute"))
    SlotSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    SlotSortBy.struct_class = Types::SlotSortBy

    SlotSummary.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotId"))
    SlotSummary.add_member(:slot_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotName"))
    SlotSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SlotSummary.add_member(:slot_constraint, Shapes::ShapeRef.new(shape: SlotConstraint, location_name: "slotConstraint"))
    SlotSummary.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, location_name: "slotTypeId"))
    SlotSummary.add_member(:value_elicitation_prompt_specification, Shapes::ShapeRef.new(shape: PromptSpecification, location_name: "valueElicitationPromptSpecification"))
    SlotSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    SlotSummary.struct_class = Types::SlotSummary

    SlotSummaryList.member = Shapes::ShapeRef.new(shape: SlotSummary)

    SlotTypeFilter.add_member(:name, Shapes::ShapeRef.new(shape: SlotTypeFilterName, required: true, location_name: "name"))
    SlotTypeFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    SlotTypeFilter.add_member(:operator, Shapes::ShapeRef.new(shape: SlotTypeFilterOperator, required: true, location_name: "operator"))
    SlotTypeFilter.struct_class = Types::SlotTypeFilter

    SlotTypeFilters.member = Shapes::ShapeRef.new(shape: SlotTypeFilter)

    SlotTypeSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: SlotTypeSortAttribute, required: true, location_name: "attribute"))
    SlotTypeSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    SlotTypeSortBy.struct_class = Types::SlotTypeSortBy

    SlotTypeStatistics.add_member(:discovered_slot_type_count, Shapes::ShapeRef.new(shape: Count, location_name: "discoveredSlotTypeCount"))
    SlotTypeStatistics.struct_class = Types::SlotTypeStatistics

    SlotTypeSummary.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotTypeId"))
    SlotTypeSummary.add_member(:slot_type_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotTypeName"))
    SlotTypeSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SlotTypeSummary.add_member(:parent_slot_type_signature, Shapes::ShapeRef.new(shape: SlotTypeSignature, location_name: "parentSlotTypeSignature"))
    SlotTypeSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    SlotTypeSummary.add_member(:slot_type_category, Shapes::ShapeRef.new(shape: SlotTypeCategory, location_name: "slotTypeCategory"))
    SlotTypeSummary.struct_class = Types::SlotTypeSummary

    SlotTypeSummaryList.member = Shapes::ShapeRef.new(shape: SlotTypeSummary)

    SlotTypeValue.add_member(:sample_value, Shapes::ShapeRef.new(shape: SampleValue, location_name: "sampleValue"))
    SlotTypeValue.add_member(:synonyms, Shapes::ShapeRef.new(shape: SynonymList, location_name: "synonyms"))
    SlotTypeValue.struct_class = Types::SlotTypeValue

    SlotTypeValues.member = Shapes::ShapeRef.new(shape: SlotTypeValue)

    SlotValue.add_member(:interpreted_value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "interpretedValue"))
    SlotValue.struct_class = Types::SlotValue

    SlotValueElicitationSetting.add_member(:default_value_specification, Shapes::ShapeRef.new(shape: SlotDefaultValueSpecification, location_name: "defaultValueSpecification"))
    SlotValueElicitationSetting.add_member(:slot_constraint, Shapes::ShapeRef.new(shape: SlotConstraint, required: true, location_name: "slotConstraint"))
    SlotValueElicitationSetting.add_member(:prompt_specification, Shapes::ShapeRef.new(shape: PromptSpecification, location_name: "promptSpecification"))
    SlotValueElicitationSetting.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterancesList, location_name: "sampleUtterances"))
    SlotValueElicitationSetting.add_member(:wait_and_continue_specification, Shapes::ShapeRef.new(shape: WaitAndContinueSpecification, location_name: "waitAndContinueSpecification"))
    SlotValueElicitationSetting.add_member(:slot_capture_setting, Shapes::ShapeRef.new(shape: SlotCaptureSetting, location_name: "slotCaptureSetting"))
    SlotValueElicitationSetting.struct_class = Types::SlotValueElicitationSetting

    SlotValueOverride.add_member(:shape, Shapes::ShapeRef.new(shape: SlotShape, location_name: "shape"))
    SlotValueOverride.add_member(:value, Shapes::ShapeRef.new(shape: SlotValue, location_name: "value"))
    SlotValueOverride.add_member(:values, Shapes::ShapeRef.new(shape: SlotValues, location_name: "values"))
    SlotValueOverride.struct_class = Types::SlotValueOverride

    SlotValueOverrideMap.key = Shapes::ShapeRef.new(shape: Name)
    SlotValueOverrideMap.value = Shapes::ShapeRef.new(shape: SlotValueOverride)

    SlotValueRegexFilter.add_member(:pattern, Shapes::ShapeRef.new(shape: RegexPattern, required: true, location_name: "pattern"))
    SlotValueRegexFilter.struct_class = Types::SlotValueRegexFilter

    SlotValueSelectionSetting.add_member(:resolution_strategy, Shapes::ShapeRef.new(shape: SlotValueResolutionStrategy, required: true, location_name: "resolutionStrategy"))
    SlotValueSelectionSetting.add_member(:regex_filter, Shapes::ShapeRef.new(shape: SlotValueRegexFilter, location_name: "regexFilter"))
    SlotValueSelectionSetting.add_member(:advanced_recognition_setting, Shapes::ShapeRef.new(shape: AdvancedRecognitionSetting, location_name: "advancedRecognitionSetting"))
    SlotValueSelectionSetting.struct_class = Types::SlotValueSelectionSetting

    SlotValues.member = Shapes::ShapeRef.new(shape: SlotValueOverride)

    Specifications.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, required: true, location_name: "slotTypeId"))
    Specifications.add_member(:value_elicitation_setting, Shapes::ShapeRef.new(shape: SubSlotValueElicitationSetting, required: true, location_name: "valueElicitationSetting"))
    Specifications.struct_class = Types::Specifications

    StartBotRecommendationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    StartBotRecommendationRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    StartBotRecommendationRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    StartBotRecommendationRequest.add_member(:transcript_source_setting, Shapes::ShapeRef.new(shape: TranscriptSourceSetting, required: true, location_name: "transcriptSourceSetting"))
    StartBotRecommendationRequest.add_member(:encryption_setting, Shapes::ShapeRef.new(shape: EncryptionSetting, location_name: "encryptionSetting"))
    StartBotRecommendationRequest.struct_class = Types::StartBotRecommendationRequest

    StartBotRecommendationResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    StartBotRecommendationResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    StartBotRecommendationResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    StartBotRecommendationResponse.add_member(:bot_recommendation_status, Shapes::ShapeRef.new(shape: BotRecommendationStatus, location_name: "botRecommendationStatus"))
    StartBotRecommendationResponse.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, location_name: "botRecommendationId"))
    StartBotRecommendationResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    StartBotRecommendationResponse.add_member(:transcript_source_setting, Shapes::ShapeRef.new(shape: TranscriptSourceSetting, location_name: "transcriptSourceSetting"))
    StartBotRecommendationResponse.add_member(:encryption_setting, Shapes::ShapeRef.new(shape: EncryptionSetting, location_name: "encryptionSetting"))
    StartBotRecommendationResponse.struct_class = Types::StartBotRecommendationResponse

    StartImportRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "importId"))
    StartImportRequest.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ImportResourceSpecification, required: true, location_name: "resourceSpecification"))
    StartImportRequest.add_member(:merge_strategy, Shapes::ShapeRef.new(shape: MergeStrategy, required: true, location_name: "mergeStrategy"))
    StartImportRequest.add_member(:file_password, Shapes::ShapeRef.new(shape: ImportExportFilePassword, location_name: "filePassword"))
    StartImportRequest.struct_class = Types::StartImportRequest

    StartImportResponse.add_member(:import_id, Shapes::ShapeRef.new(shape: Id, location_name: "importId"))
    StartImportResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ImportResourceSpecification, location_name: "resourceSpecification"))
    StartImportResponse.add_member(:merge_strategy, Shapes::ShapeRef.new(shape: MergeStrategy, location_name: "mergeStrategy"))
    StartImportResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "importStatus"))
    StartImportResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    StartImportResponse.struct_class = Types::StartImportResponse

    StartTestExecutionRequest.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetId"))
    StartTestExecutionRequest.add_member(:target, Shapes::ShapeRef.new(shape: TestExecutionTarget, required: true, location_name: "target"))
    StartTestExecutionRequest.add_member(:api_mode, Shapes::ShapeRef.new(shape: TestExecutionApiMode, required: true, location_name: "apiMode"))
    StartTestExecutionRequest.add_member(:test_execution_modality, Shapes::ShapeRef.new(shape: TestExecutionModality, location_name: "testExecutionModality"))
    StartTestExecutionRequest.struct_class = Types::StartTestExecutionRequest

    StartTestExecutionResponse.add_member(:test_execution_id, Shapes::ShapeRef.new(shape: Id, location_name: "testExecutionId"))
    StartTestExecutionResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    StartTestExecutionResponse.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    StartTestExecutionResponse.add_member(:target, Shapes::ShapeRef.new(shape: TestExecutionTarget, location_name: "target"))
    StartTestExecutionResponse.add_member(:api_mode, Shapes::ShapeRef.new(shape: TestExecutionApiMode, location_name: "apiMode"))
    StartTestExecutionResponse.add_member(:test_execution_modality, Shapes::ShapeRef.new(shape: TestExecutionModality, location_name: "testExecutionModality"))
    StartTestExecutionResponse.struct_class = Types::StartTestExecutionResponse

    StartTestSetGenerationRequest.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "testSetName"))
    StartTestSetGenerationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    StartTestSetGenerationRequest.add_member(:storage_location, Shapes::ShapeRef.new(shape: TestSetStorageLocation, required: true, location_name: "storageLocation"))
    StartTestSetGenerationRequest.add_member(:generation_data_source, Shapes::ShapeRef.new(shape: TestSetGenerationDataSource, required: true, location_name: "generationDataSource"))
    StartTestSetGenerationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartTestSetGenerationRequest.add_member(:test_set_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "testSetTags"))
    StartTestSetGenerationRequest.struct_class = Types::StartTestSetGenerationRequest

    StartTestSetGenerationResponse.add_member(:test_set_generation_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetGenerationId"))
    StartTestSetGenerationResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    StartTestSetGenerationResponse.add_member(:test_set_generation_status, Shapes::ShapeRef.new(shape: TestSetGenerationStatus, location_name: "testSetGenerationStatus"))
    StartTestSetGenerationResponse.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, location_name: "testSetName"))
    StartTestSetGenerationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    StartTestSetGenerationResponse.add_member(:storage_location, Shapes::ShapeRef.new(shape: TestSetStorageLocation, location_name: "storageLocation"))
    StartTestSetGenerationResponse.add_member(:generation_data_source, Shapes::ShapeRef.new(shape: TestSetGenerationDataSource, location_name: "generationDataSource"))
    StartTestSetGenerationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    StartTestSetGenerationResponse.add_member(:test_set_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "testSetTags"))
    StartTestSetGenerationResponse.struct_class = Types::StartTestSetGenerationResponse

    StillWaitingResponseSpecification.add_member(:message_groups, Shapes::ShapeRef.new(shape: MessageGroupsList, required: true, location_name: "messageGroups"))
    StillWaitingResponseSpecification.add_member(:frequency_in_seconds, Shapes::ShapeRef.new(shape: StillWaitingResponseFrequency, required: true, location_name: "frequencyInSeconds"))
    StillWaitingResponseSpecification.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: StillWaitingResponseTimeout, required: true, location_name: "timeoutInSeconds"))
    StillWaitingResponseSpecification.add_member(:allow_interrupt, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "allowInterrupt"))
    StillWaitingResponseSpecification.struct_class = Types::StillWaitingResponseSpecification

    StopBotRecommendationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    StopBotRecommendationRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    StopBotRecommendationRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    StopBotRecommendationRequest.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botRecommendationId"))
    StopBotRecommendationRequest.struct_class = Types::StopBotRecommendationRequest

    StopBotRecommendationResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    StopBotRecommendationResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    StopBotRecommendationResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    StopBotRecommendationResponse.add_member(:bot_recommendation_status, Shapes::ShapeRef.new(shape: BotRecommendationStatus, location_name: "botRecommendationStatus"))
    StopBotRecommendationResponse.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, location_name: "botRecommendationId"))
    StopBotRecommendationResponse.struct_class = Types::StopBotRecommendationResponse

    StringMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    SubSlotSetting.add_member(:expression, Shapes::ShapeRef.new(shape: SubSlotExpression, location_name: "expression"))
    SubSlotSetting.add_member(:slot_specifications, Shapes::ShapeRef.new(shape: SubSlotSpecificationMap, location_name: "slotSpecifications"))
    SubSlotSetting.struct_class = Types::SubSlotSetting

    SubSlotSpecificationMap.key = Shapes::ShapeRef.new(shape: Name)
    SubSlotSpecificationMap.value = Shapes::ShapeRef.new(shape: Specifications)

    SubSlotTypeComposition.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    SubSlotTypeComposition.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, required: true, location_name: "slotTypeId"))
    SubSlotTypeComposition.struct_class = Types::SubSlotTypeComposition

    SubSlotTypeList.member = Shapes::ShapeRef.new(shape: SubSlotTypeComposition)

    SubSlotValueElicitationSetting.add_member(:default_value_specification, Shapes::ShapeRef.new(shape: SlotDefaultValueSpecification, location_name: "defaultValueSpecification"))
    SubSlotValueElicitationSetting.add_member(:prompt_specification, Shapes::ShapeRef.new(shape: PromptSpecification, required: true, location_name: "promptSpecification"))
    SubSlotValueElicitationSetting.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterancesList, location_name: "sampleUtterances"))
    SubSlotValueElicitationSetting.add_member(:wait_and_continue_specification, Shapes::ShapeRef.new(shape: WaitAndContinueSpecification, location_name: "waitAndContinueSpecification"))
    SubSlotValueElicitationSetting.struct_class = Types::SubSlotValueElicitationSetting

    SynonymList.member = Shapes::ShapeRef.new(shape: SampleValue)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TestExecutionResultFilterBy.add_member(:result_type_filter, Shapes::ShapeRef.new(shape: TestResultTypeFilter, required: true, location_name: "resultTypeFilter"))
    TestExecutionResultFilterBy.add_member(:conversation_level_test_results_filter_by, Shapes::ShapeRef.new(shape: ConversationLevelTestResultsFilterBy, location_name: "conversationLevelTestResultsFilterBy"))
    TestExecutionResultFilterBy.struct_class = Types::TestExecutionResultFilterBy

    TestExecutionResultItems.add_member(:overall_test_results, Shapes::ShapeRef.new(shape: OverallTestResults, location_name: "overallTestResults"))
    TestExecutionResultItems.add_member(:conversation_level_test_results, Shapes::ShapeRef.new(shape: ConversationLevelTestResults, location_name: "conversationLevelTestResults"))
    TestExecutionResultItems.add_member(:intent_classification_test_results, Shapes::ShapeRef.new(shape: IntentClassificationTestResults, location_name: "intentClassificationTestResults"))
    TestExecutionResultItems.add_member(:intent_level_slot_resolution_test_results, Shapes::ShapeRef.new(shape: IntentLevelSlotResolutionTestResults, location_name: "intentLevelSlotResolutionTestResults"))
    TestExecutionResultItems.add_member(:utterance_level_test_results, Shapes::ShapeRef.new(shape: UtteranceLevelTestResults, location_name: "utteranceLevelTestResults"))
    TestExecutionResultItems.struct_class = Types::TestExecutionResultItems

    TestExecutionSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: TestExecutionSortAttribute, required: true, location_name: "attribute"))
    TestExecutionSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    TestExecutionSortBy.struct_class = Types::TestExecutionSortBy

    TestExecutionSummary.add_member(:test_execution_id, Shapes::ShapeRef.new(shape: Id, location_name: "testExecutionId"))
    TestExecutionSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    TestExecutionSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    TestExecutionSummary.add_member(:test_execution_status, Shapes::ShapeRef.new(shape: TestExecutionStatus, location_name: "testExecutionStatus"))
    TestExecutionSummary.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    TestExecutionSummary.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, location_name: "testSetName"))
    TestExecutionSummary.add_member(:target, Shapes::ShapeRef.new(shape: TestExecutionTarget, location_name: "target"))
    TestExecutionSummary.add_member(:api_mode, Shapes::ShapeRef.new(shape: TestExecutionApiMode, location_name: "apiMode"))
    TestExecutionSummary.add_member(:test_execution_modality, Shapes::ShapeRef.new(shape: TestExecutionModality, location_name: "testExecutionModality"))
    TestExecutionSummary.struct_class = Types::TestExecutionSummary

    TestExecutionSummaryList.member = Shapes::ShapeRef.new(shape: TestExecutionSummary)

    TestExecutionTarget.add_member(:bot_alias_target, Shapes::ShapeRef.new(shape: BotAliasTestExecutionTarget, location_name: "botAliasTarget"))
    TestExecutionTarget.struct_class = Types::TestExecutionTarget

    TestResultMatchStatusCountMap.key = Shapes::ShapeRef.new(shape: TestResultMatchStatus)
    TestResultMatchStatusCountMap.value = Shapes::ShapeRef.new(shape: Count)

    TestSetDiscrepancyErrors.add_member(:intent_discrepancies, Shapes::ShapeRef.new(shape: TestSetIntentDiscrepancyList, required: true, location_name: "intentDiscrepancies"))
    TestSetDiscrepancyErrors.add_member(:slot_discrepancies, Shapes::ShapeRef.new(shape: TestSetSlotDiscrepancyList, required: true, location_name: "slotDiscrepancies"))
    TestSetDiscrepancyErrors.struct_class = Types::TestSetDiscrepancyErrors

    TestSetDiscrepancyReportBotAliasTarget.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "botId"))
    TestSetDiscrepancyReportBotAliasTarget.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, required: true, location_name: "botAliasId"))
    TestSetDiscrepancyReportBotAliasTarget.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location_name: "localeId"))
    TestSetDiscrepancyReportBotAliasTarget.struct_class = Types::TestSetDiscrepancyReportBotAliasTarget

    TestSetDiscrepancyReportResourceTarget.add_member(:bot_alias_target, Shapes::ShapeRef.new(shape: TestSetDiscrepancyReportBotAliasTarget, location_name: "botAliasTarget"))
    TestSetDiscrepancyReportResourceTarget.struct_class = Types::TestSetDiscrepancyReportResourceTarget

    TestSetExportSpecification.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "testSetId"))
    TestSetExportSpecification.struct_class = Types::TestSetExportSpecification

    TestSetGenerationDataSource.add_member(:conversation_logs_data_source, Shapes::ShapeRef.new(shape: ConversationLogsDataSource, location_name: "conversationLogsDataSource"))
    TestSetGenerationDataSource.struct_class = Types::TestSetGenerationDataSource

    TestSetImportInputLocation.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3BucketName"))
    TestSetImportInputLocation.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3ObjectPath, required: true, location_name: "s3Path"))
    TestSetImportInputLocation.struct_class = Types::TestSetImportInputLocation

    TestSetImportResourceSpecification.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "testSetName"))
    TestSetImportResourceSpecification.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    TestSetImportResourceSpecification.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    TestSetImportResourceSpecification.add_member(:storage_location, Shapes::ShapeRef.new(shape: TestSetStorageLocation, required: true, location_name: "storageLocation"))
    TestSetImportResourceSpecification.add_member(:import_input_location, Shapes::ShapeRef.new(shape: TestSetImportInputLocation, required: true, location_name: "importInputLocation"))
    TestSetImportResourceSpecification.add_member(:modality, Shapes::ShapeRef.new(shape: TestSetModality, required: true, location_name: "modality"))
    TestSetImportResourceSpecification.add_member(:test_set_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "testSetTags"))
    TestSetImportResourceSpecification.struct_class = Types::TestSetImportResourceSpecification

    TestSetIntentDiscrepancyItem.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    TestSetIntentDiscrepancyItem.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    TestSetIntentDiscrepancyItem.struct_class = Types::TestSetIntentDiscrepancyItem

    TestSetIntentDiscrepancyList.member = Shapes::ShapeRef.new(shape: TestSetIntentDiscrepancyItem)

    TestSetSlotDiscrepancyItem.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    TestSetSlotDiscrepancyItem.add_member(:slot_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "slotName"))
    TestSetSlotDiscrepancyItem.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    TestSetSlotDiscrepancyItem.struct_class = Types::TestSetSlotDiscrepancyItem

    TestSetSlotDiscrepancyList.member = Shapes::ShapeRef.new(shape: TestSetSlotDiscrepancyItem)

    TestSetSortBy.add_member(:attribute, Shapes::ShapeRef.new(shape: TestSetSortAttribute, required: true, location_name: "attribute"))
    TestSetSortBy.add_member(:order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "order"))
    TestSetSortBy.struct_class = Types::TestSetSortBy

    TestSetStorageLocation.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3BucketName"))
    TestSetStorageLocation.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3ObjectPath, required: true, location_name: "s3Path"))
    TestSetStorageLocation.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    TestSetStorageLocation.struct_class = Types::TestSetStorageLocation

    TestSetSummary.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    TestSetSummary.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, location_name: "testSetName"))
    TestSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    TestSetSummary.add_member(:modality, Shapes::ShapeRef.new(shape: TestSetModality, location_name: "modality"))
    TestSetSummary.add_member(:status, Shapes::ShapeRef.new(shape: TestSetStatus, location_name: "status"))
    TestSetSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    TestSetSummary.add_member(:num_turns, Shapes::ShapeRef.new(shape: Count, location_name: "numTurns"))
    TestSetSummary.add_member(:storage_location, Shapes::ShapeRef.new(shape: TestSetStorageLocation, location_name: "storageLocation"))
    TestSetSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    TestSetSummary.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    TestSetSummary.struct_class = Types::TestSetSummary

    TestSetSummaryList.member = Shapes::ShapeRef.new(shape: TestSetSummary)

    TestSetTurnRecord.add_member(:record_number, Shapes::ShapeRef.new(shape: RecordNumber, required: true, location_name: "recordNumber"))
    TestSetTurnRecord.add_member(:conversation_id, Shapes::ShapeRef.new(shape: TestSetConversationId, location_name: "conversationId"))
    TestSetTurnRecord.add_member(:turn_number, Shapes::ShapeRef.new(shape: TurnNumber, location_name: "turnNumber"))
    TestSetTurnRecord.add_member(:turn_specification, Shapes::ShapeRef.new(shape: TurnSpecification, required: true, location_name: "turnSpecification"))
    TestSetTurnRecord.struct_class = Types::TestSetTurnRecord

    TestSetTurnRecordList.member = Shapes::ShapeRef.new(shape: TestSetTurnRecord)

    TestSetTurnResult.add_member(:agent, Shapes::ShapeRef.new(shape: AgentTurnResult, location_name: "agent"))
    TestSetTurnResult.add_member(:user, Shapes::ShapeRef.new(shape: UserTurnResult, location_name: "user"))
    TestSetTurnResult.struct_class = Types::TestSetTurnResult

    TextInputSpecification.add_member(:start_timeout_ms, Shapes::ShapeRef.new(shape: TimeInMilliSeconds, required: true, location_name: "startTimeoutMs"))
    TextInputSpecification.struct_class = Types::TextInputSpecification

    TextLogDestination.add_member(:cloud_watch, Shapes::ShapeRef.new(shape: CloudWatchLogGroupLogDestination, required: true, location_name: "cloudWatch"))
    TextLogDestination.struct_class = Types::TextLogDestination

    TextLogSetting.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    TextLogSetting.add_member(:destination, Shapes::ShapeRef.new(shape: TextLogDestination, required: true, location_name: "destination"))
    TextLogSetting.struct_class = Types::TextLogSetting

    TextLogSettingsList.member = Shapes::ShapeRef.new(shape: TextLogSetting)

    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TranscriptFilter.add_member(:lex_transcript_filter, Shapes::ShapeRef.new(shape: LexTranscriptFilter, location_name: "lexTranscriptFilter"))
    TranscriptFilter.struct_class = Types::TranscriptFilter

    TranscriptSourceSetting.add_member(:s3_bucket_transcript_source, Shapes::ShapeRef.new(shape: S3BucketTranscriptSource, location_name: "s3BucketTranscriptSource"))
    TranscriptSourceSetting.struct_class = Types::TranscriptSourceSetting

    TurnSpecification.add_member(:agent_turn, Shapes::ShapeRef.new(shape: AgentTurnSpecification, location_name: "agentTurn"))
    TurnSpecification.add_member(:user_turn, Shapes::ShapeRef.new(shape: UserTurnSpecification, location_name: "userTurn"))
    TurnSpecification.struct_class = Types::TurnSpecification

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBotAliasRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, required: true, location: "uri", location_name: "botAliasId"))
    UpdateBotAliasRequest.add_member(:bot_alias_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "botAliasName"))
    UpdateBotAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBotAliasRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    UpdateBotAliasRequest.add_member(:bot_alias_locale_settings, Shapes::ShapeRef.new(shape: BotAliasLocaleSettingsMap, location_name: "botAliasLocaleSettings"))
    UpdateBotAliasRequest.add_member(:conversation_log_settings, Shapes::ShapeRef.new(shape: ConversationLogSettings, location_name: "conversationLogSettings"))
    UpdateBotAliasRequest.add_member(:sentiment_analysis_settings, Shapes::ShapeRef.new(shape: SentimentAnalysisSettings, location_name: "sentimentAnalysisSettings"))
    UpdateBotAliasRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    UpdateBotAliasRequest.struct_class = Types::UpdateBotAliasRequest

    UpdateBotAliasResponse.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasId, location_name: "botAliasId"))
    UpdateBotAliasResponse.add_member(:bot_alias_name, Shapes::ShapeRef.new(shape: Name, location_name: "botAliasName"))
    UpdateBotAliasResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBotAliasResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    UpdateBotAliasResponse.add_member(:bot_alias_locale_settings, Shapes::ShapeRef.new(shape: BotAliasLocaleSettingsMap, location_name: "botAliasLocaleSettings"))
    UpdateBotAliasResponse.add_member(:conversation_log_settings, Shapes::ShapeRef.new(shape: ConversationLogSettings, location_name: "conversationLogSettings"))
    UpdateBotAliasResponse.add_member(:sentiment_analysis_settings, Shapes::ShapeRef.new(shape: SentimentAnalysisSettings, location_name: "sentimentAnalysisSettings"))
    UpdateBotAliasResponse.add_member(:bot_alias_status, Shapes::ShapeRef.new(shape: BotAliasStatus, location_name: "botAliasStatus"))
    UpdateBotAliasResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    UpdateBotAliasResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateBotAliasResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateBotAliasResponse.struct_class = Types::UpdateBotAliasResponse

    UpdateBotLocaleRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    UpdateBotLocaleRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    UpdateBotLocaleRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    UpdateBotLocaleRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBotLocaleRequest.add_member(:nlu_intent_confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, required: true, location_name: "nluIntentConfidenceThreshold"))
    UpdateBotLocaleRequest.add_member(:voice_settings, Shapes::ShapeRef.new(shape: VoiceSettings, location_name: "voiceSettings"))
    UpdateBotLocaleRequest.struct_class = Types::UpdateBotLocaleRequest

    UpdateBotLocaleResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    UpdateBotLocaleResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    UpdateBotLocaleResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    UpdateBotLocaleResponse.add_member(:locale_name, Shapes::ShapeRef.new(shape: LocaleName, location_name: "localeName"))
    UpdateBotLocaleResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBotLocaleResponse.add_member(:nlu_intent_confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "nluIntentConfidenceThreshold"))
    UpdateBotLocaleResponse.add_member(:voice_settings, Shapes::ShapeRef.new(shape: VoiceSettings, location_name: "voiceSettings"))
    UpdateBotLocaleResponse.add_member(:bot_locale_status, Shapes::ShapeRef.new(shape: BotLocaleStatus, location_name: "botLocaleStatus"))
    UpdateBotLocaleResponse.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: FailureReasons, location_name: "failureReasons"))
    UpdateBotLocaleResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateBotLocaleResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateBotLocaleResponse.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActions, location_name: "recommendedActions"))
    UpdateBotLocaleResponse.struct_class = Types::UpdateBotLocaleResponse

    UpdateBotRecommendationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    UpdateBotRecommendationRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    UpdateBotRecommendationRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    UpdateBotRecommendationRequest.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botRecommendationId"))
    UpdateBotRecommendationRequest.add_member(:encryption_setting, Shapes::ShapeRef.new(shape: EncryptionSetting, required: true, location_name: "encryptionSetting"))
    UpdateBotRecommendationRequest.struct_class = Types::UpdateBotRecommendationRequest

    UpdateBotRecommendationResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    UpdateBotRecommendationResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    UpdateBotRecommendationResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    UpdateBotRecommendationResponse.add_member(:bot_recommendation_status, Shapes::ShapeRef.new(shape: BotRecommendationStatus, location_name: "botRecommendationStatus"))
    UpdateBotRecommendationResponse.add_member(:bot_recommendation_id, Shapes::ShapeRef.new(shape: Id, location_name: "botRecommendationId"))
    UpdateBotRecommendationResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateBotRecommendationResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateBotRecommendationResponse.add_member(:transcript_source_setting, Shapes::ShapeRef.new(shape: TranscriptSourceSetting, location_name: "transcriptSourceSetting"))
    UpdateBotRecommendationResponse.add_member(:encryption_setting, Shapes::ShapeRef.new(shape: EncryptionSetting, location_name: "encryptionSetting"))
    UpdateBotRecommendationResponse.struct_class = Types::UpdateBotRecommendationResponse

    UpdateBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    UpdateBotRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "botName"))
    UpdateBotRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBotRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    UpdateBotRequest.add_member(:data_privacy, Shapes::ShapeRef.new(shape: DataPrivacy, required: true, location_name: "dataPrivacy"))
    UpdateBotRequest.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, required: true, location_name: "idleSessionTTLInSeconds"))
    UpdateBotRequest.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "botType"))
    UpdateBotRequest.add_member(:bot_members, Shapes::ShapeRef.new(shape: BotMembers, location_name: "botMembers"))
    UpdateBotRequest.struct_class = Types::UpdateBotRequest

    UpdateBotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    UpdateBotResponse.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, location_name: "botName"))
    UpdateBotResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBotResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateBotResponse.add_member(:data_privacy, Shapes::ShapeRef.new(shape: DataPrivacy, location_name: "dataPrivacy"))
    UpdateBotResponse.add_member(:idle_session_ttl_in_seconds, Shapes::ShapeRef.new(shape: SessionTTL, location_name: "idleSessionTTLInSeconds"))
    UpdateBotResponse.add_member(:bot_status, Shapes::ShapeRef.new(shape: BotStatus, location_name: "botStatus"))
    UpdateBotResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateBotResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateBotResponse.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "botType"))
    UpdateBotResponse.add_member(:bot_members, Shapes::ShapeRef.new(shape: BotMembers, location_name: "botMembers"))
    UpdateBotResponse.struct_class = Types::UpdateBotResponse

    UpdateCustomVocabularyItemsList.member = Shapes::ShapeRef.new(shape: CustomVocabularyItem)

    UpdateExportRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "exportId"))
    UpdateExportRequest.add_member(:file_password, Shapes::ShapeRef.new(shape: ImportExportFilePassword, location_name: "filePassword"))
    UpdateExportRequest.struct_class = Types::UpdateExportRequest

    UpdateExportResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: Id, location_name: "exportId"))
    UpdateExportResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ExportResourceSpecification, location_name: "resourceSpecification"))
    UpdateExportResponse.add_member(:file_format, Shapes::ShapeRef.new(shape: ImportExportFileFormat, location_name: "fileFormat"))
    UpdateExportResponse.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "exportStatus"))
    UpdateExportResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateExportResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateExportResponse.struct_class = Types::UpdateExportResponse

    UpdateIntentRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    UpdateIntentRequest.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "intentName"))
    UpdateIntentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateIntentRequest.add_member(:parent_intent_signature, Shapes::ShapeRef.new(shape: IntentSignature, location_name: "parentIntentSignature"))
    UpdateIntentRequest.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterancesList, location_name: "sampleUtterances"))
    UpdateIntentRequest.add_member(:dialog_code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookSettings, location_name: "dialogCodeHook"))
    UpdateIntentRequest.add_member(:fulfillment_code_hook, Shapes::ShapeRef.new(shape: FulfillmentCodeHookSettings, location_name: "fulfillmentCodeHook"))
    UpdateIntentRequest.add_member(:slot_priorities, Shapes::ShapeRef.new(shape: SlotPrioritiesList, location_name: "slotPriorities"))
    UpdateIntentRequest.add_member(:intent_confirmation_setting, Shapes::ShapeRef.new(shape: IntentConfirmationSetting, location_name: "intentConfirmationSetting"))
    UpdateIntentRequest.add_member(:intent_closing_setting, Shapes::ShapeRef.new(shape: IntentClosingSetting, location_name: "intentClosingSetting"))
    UpdateIntentRequest.add_member(:input_contexts, Shapes::ShapeRef.new(shape: InputContextsList, location_name: "inputContexts"))
    UpdateIntentRequest.add_member(:output_contexts, Shapes::ShapeRef.new(shape: OutputContextsList, location_name: "outputContexts"))
    UpdateIntentRequest.add_member(:kendra_configuration, Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    UpdateIntentRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    UpdateIntentRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    UpdateIntentRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    UpdateIntentRequest.add_member(:initial_response_setting, Shapes::ShapeRef.new(shape: InitialResponseSetting, location_name: "initialResponseSetting"))
    UpdateIntentRequest.struct_class = Types::UpdateIntentRequest

    UpdateIntentResponse.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    UpdateIntentResponse.add_member(:intent_name, Shapes::ShapeRef.new(shape: Name, location_name: "intentName"))
    UpdateIntentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateIntentResponse.add_member(:parent_intent_signature, Shapes::ShapeRef.new(shape: IntentSignature, location_name: "parentIntentSignature"))
    UpdateIntentResponse.add_member(:sample_utterances, Shapes::ShapeRef.new(shape: SampleUtterancesList, location_name: "sampleUtterances"))
    UpdateIntentResponse.add_member(:dialog_code_hook, Shapes::ShapeRef.new(shape: DialogCodeHookSettings, location_name: "dialogCodeHook"))
    UpdateIntentResponse.add_member(:fulfillment_code_hook, Shapes::ShapeRef.new(shape: FulfillmentCodeHookSettings, location_name: "fulfillmentCodeHook"))
    UpdateIntentResponse.add_member(:slot_priorities, Shapes::ShapeRef.new(shape: SlotPrioritiesList, location_name: "slotPriorities"))
    UpdateIntentResponse.add_member(:intent_confirmation_setting, Shapes::ShapeRef.new(shape: IntentConfirmationSetting, location_name: "intentConfirmationSetting"))
    UpdateIntentResponse.add_member(:intent_closing_setting, Shapes::ShapeRef.new(shape: IntentClosingSetting, location_name: "intentClosingSetting"))
    UpdateIntentResponse.add_member(:input_contexts, Shapes::ShapeRef.new(shape: InputContextsList, location_name: "inputContexts"))
    UpdateIntentResponse.add_member(:output_contexts, Shapes::ShapeRef.new(shape: OutputContextsList, location_name: "outputContexts"))
    UpdateIntentResponse.add_member(:kendra_configuration, Shapes::ShapeRef.new(shape: KendraConfiguration, location_name: "kendraConfiguration"))
    UpdateIntentResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    UpdateIntentResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    UpdateIntentResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    UpdateIntentResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateIntentResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateIntentResponse.add_member(:initial_response_setting, Shapes::ShapeRef.new(shape: InitialResponseSetting, location_name: "initialResponseSetting"))
    UpdateIntentResponse.struct_class = Types::UpdateIntentResponse

    UpdateResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    UpdateResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policy"))
    UpdateResourcePolicyRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location: "querystring", location_name: "expectedRevisionId"))
    UpdateResourcePolicyRequest.struct_class = Types::UpdateResourcePolicyRequest

    UpdateResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceArn"))
    UpdateResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    UpdateResourcePolicyResponse.struct_class = Types::UpdateResourcePolicyResponse

    UpdateSlotRequest.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "slotId"))
    UpdateSlotRequest.add_member(:slot_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "slotName"))
    UpdateSlotRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSlotRequest.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, location_name: "slotTypeId"))
    UpdateSlotRequest.add_member(:value_elicitation_setting, Shapes::ShapeRef.new(shape: SlotValueElicitationSetting, required: true, location_name: "valueElicitationSetting"))
    UpdateSlotRequest.add_member(:obfuscation_setting, Shapes::ShapeRef.new(shape: ObfuscationSetting, location_name: "obfuscationSetting"))
    UpdateSlotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    UpdateSlotRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    UpdateSlotRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    UpdateSlotRequest.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "intentId"))
    UpdateSlotRequest.add_member(:multiple_values_setting, Shapes::ShapeRef.new(shape: MultipleValuesSetting, location_name: "multipleValuesSetting"))
    UpdateSlotRequest.add_member(:sub_slot_setting, Shapes::ShapeRef.new(shape: SubSlotSetting, location_name: "subSlotSetting"))
    UpdateSlotRequest.struct_class = Types::UpdateSlotRequest

    UpdateSlotResponse.add_member(:slot_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotId"))
    UpdateSlotResponse.add_member(:slot_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotName"))
    UpdateSlotResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSlotResponse.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: BuiltInOrCustomSlotTypeId, location_name: "slotTypeId"))
    UpdateSlotResponse.add_member(:value_elicitation_setting, Shapes::ShapeRef.new(shape: SlotValueElicitationSetting, location_name: "valueElicitationSetting"))
    UpdateSlotResponse.add_member(:obfuscation_setting, Shapes::ShapeRef.new(shape: ObfuscationSetting, location_name: "obfuscationSetting"))
    UpdateSlotResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    UpdateSlotResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    UpdateSlotResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    UpdateSlotResponse.add_member(:intent_id, Shapes::ShapeRef.new(shape: Id, location_name: "intentId"))
    UpdateSlotResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateSlotResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateSlotResponse.add_member(:multiple_values_setting, Shapes::ShapeRef.new(shape: MultipleValuesSetting, location_name: "multipleValuesSetting"))
    UpdateSlotResponse.add_member(:sub_slot_setting, Shapes::ShapeRef.new(shape: SubSlotSetting, location_name: "subSlotSetting"))
    UpdateSlotResponse.struct_class = Types::UpdateSlotResponse

    UpdateSlotTypeRequest.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "slotTypeId"))
    UpdateSlotTypeRequest.add_member(:slot_type_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "slotTypeName"))
    UpdateSlotTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSlotTypeRequest.add_member(:slot_type_values, Shapes::ShapeRef.new(shape: SlotTypeValues, location_name: "slotTypeValues"))
    UpdateSlotTypeRequest.add_member(:value_selection_setting, Shapes::ShapeRef.new(shape: SlotValueSelectionSetting, location_name: "valueSelectionSetting"))
    UpdateSlotTypeRequest.add_member(:parent_slot_type_signature, Shapes::ShapeRef.new(shape: SlotTypeSignature, location_name: "parentSlotTypeSignature"))
    UpdateSlotTypeRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "botId"))
    UpdateSlotTypeRequest.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, required: true, location: "uri", location_name: "botVersion"))
    UpdateSlotTypeRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    UpdateSlotTypeRequest.add_member(:external_source_setting, Shapes::ShapeRef.new(shape: ExternalSourceSetting, location_name: "externalSourceSetting"))
    UpdateSlotTypeRequest.add_member(:composite_slot_type_setting, Shapes::ShapeRef.new(shape: CompositeSlotTypeSetting, location_name: "compositeSlotTypeSetting"))
    UpdateSlotTypeRequest.struct_class = Types::UpdateSlotTypeRequest

    UpdateSlotTypeResponse.add_member(:slot_type_id, Shapes::ShapeRef.new(shape: Id, location_name: "slotTypeId"))
    UpdateSlotTypeResponse.add_member(:slot_type_name, Shapes::ShapeRef.new(shape: Name, location_name: "slotTypeName"))
    UpdateSlotTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSlotTypeResponse.add_member(:slot_type_values, Shapes::ShapeRef.new(shape: SlotTypeValues, location_name: "slotTypeValues"))
    UpdateSlotTypeResponse.add_member(:value_selection_setting, Shapes::ShapeRef.new(shape: SlotValueSelectionSetting, location_name: "valueSelectionSetting"))
    UpdateSlotTypeResponse.add_member(:parent_slot_type_signature, Shapes::ShapeRef.new(shape: SlotTypeSignature, location_name: "parentSlotTypeSignature"))
    UpdateSlotTypeResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: Id, location_name: "botId"))
    UpdateSlotTypeResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: DraftBotVersion, location_name: "botVersion"))
    UpdateSlotTypeResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    UpdateSlotTypeResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateSlotTypeResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateSlotTypeResponse.add_member(:external_source_setting, Shapes::ShapeRef.new(shape: ExternalSourceSetting, location_name: "externalSourceSetting"))
    UpdateSlotTypeResponse.add_member(:composite_slot_type_setting, Shapes::ShapeRef.new(shape: CompositeSlotTypeSetting, location_name: "compositeSlotTypeSetting"))
    UpdateSlotTypeResponse.struct_class = Types::UpdateSlotTypeResponse

    UpdateTestSetRequest.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "testSetId"))
    UpdateTestSetRequest.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "testSetName"))
    UpdateTestSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateTestSetRequest.struct_class = Types::UpdateTestSetRequest

    UpdateTestSetResponse.add_member(:test_set_id, Shapes::ShapeRef.new(shape: Id, location_name: "testSetId"))
    UpdateTestSetResponse.add_member(:test_set_name, Shapes::ShapeRef.new(shape: Name, location_name: "testSetName"))
    UpdateTestSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateTestSetResponse.add_member(:modality, Shapes::ShapeRef.new(shape: TestSetModality, location_name: "modality"))
    UpdateTestSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TestSetStatus, location_name: "status"))
    UpdateTestSetResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateTestSetResponse.add_member(:num_turns, Shapes::ShapeRef.new(shape: Count, location_name: "numTurns"))
    UpdateTestSetResponse.add_member(:storage_location, Shapes::ShapeRef.new(shape: TestSetStorageLocation, location_name: "storageLocation"))
    UpdateTestSetResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    UpdateTestSetResponse.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedDateTime"))
    UpdateTestSetResponse.struct_class = Types::UpdateTestSetResponse

    UserTurnInputSpecification.add_member(:utterance_input, Shapes::ShapeRef.new(shape: UtteranceInputSpecification, required: true, location_name: "utteranceInput"))
    UserTurnInputSpecification.add_member(:request_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "requestAttributes"))
    UserTurnInputSpecification.add_member(:session_state, Shapes::ShapeRef.new(shape: InputSessionStateSpecification, location_name: "sessionState"))
    UserTurnInputSpecification.struct_class = Types::UserTurnInputSpecification

    UserTurnIntentOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UserTurnIntentOutput.add_member(:slots, Shapes::ShapeRef.new(shape: UserTurnSlotOutputMap, location_name: "slots"))
    UserTurnIntentOutput.struct_class = Types::UserTurnIntentOutput

    UserTurnOutputSpecification.add_member(:intent, Shapes::ShapeRef.new(shape: UserTurnIntentOutput, required: true, location_name: "intent"))
    UserTurnOutputSpecification.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextList, location_name: "activeContexts"))
    UserTurnOutputSpecification.add_member(:transcript, Shapes::ShapeRef.new(shape: TestSetUtteranceText, location_name: "transcript"))
    UserTurnOutputSpecification.struct_class = Types::UserTurnOutputSpecification

    UserTurnResult.add_member(:input, Shapes::ShapeRef.new(shape: UserTurnInputSpecification, required: true, location_name: "input"))
    UserTurnResult.add_member(:expected_output, Shapes::ShapeRef.new(shape: UserTurnOutputSpecification, required: true, location_name: "expectedOutput"))
    UserTurnResult.add_member(:actual_output, Shapes::ShapeRef.new(shape: UserTurnOutputSpecification, location_name: "actualOutput"))
    UserTurnResult.add_member(:error_details, Shapes::ShapeRef.new(shape: ExecutionErrorDetails, location_name: "errorDetails"))
    UserTurnResult.add_member(:end_to_end_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, location_name: "endToEndResult"))
    UserTurnResult.add_member(:intent_match_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, location_name: "intentMatchResult"))
    UserTurnResult.add_member(:slot_match_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, location_name: "slotMatchResult"))
    UserTurnResult.add_member(:speech_transcription_result, Shapes::ShapeRef.new(shape: TestResultMatchStatus, location_name: "speechTranscriptionResult"))
    UserTurnResult.add_member(:conversation_level_result, Shapes::ShapeRef.new(shape: ConversationLevelResultDetail, location_name: "conversationLevelResult"))
    UserTurnResult.struct_class = Types::UserTurnResult

    UserTurnSlotOutput.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "value"))
    UserTurnSlotOutput.add_member(:values, Shapes::ShapeRef.new(shape: UserTurnSlotOutputList, location_name: "values"))
    UserTurnSlotOutput.add_member(:sub_slots, Shapes::ShapeRef.new(shape: UserTurnSlotOutputMap, location_name: "subSlots"))
    UserTurnSlotOutput.struct_class = Types::UserTurnSlotOutput

    UserTurnSlotOutputList.member = Shapes::ShapeRef.new(shape: UserTurnSlotOutput)

    UserTurnSlotOutputMap.key = Shapes::ShapeRef.new(shape: Name)
    UserTurnSlotOutputMap.value = Shapes::ShapeRef.new(shape: UserTurnSlotOutput)

    UserTurnSpecification.add_member(:input, Shapes::ShapeRef.new(shape: UserTurnInputSpecification, required: true, location_name: "input"))
    UserTurnSpecification.add_member(:expected, Shapes::ShapeRef.new(shape: UserTurnOutputSpecification, required: true, location_name: "expected"))
    UserTurnSpecification.struct_class = Types::UserTurnSpecification

    UtteranceAggregationDuration.add_member(:relative_aggregation_duration, Shapes::ShapeRef.new(shape: RelativeAggregationDuration, required: true, location_name: "relativeAggregationDuration"))
    UtteranceAggregationDuration.struct_class = Types::UtteranceAggregationDuration

    UtteranceAudioInputSpecification.add_member(:audio_file_s3_location, Shapes::ShapeRef.new(shape: AudioFileS3Location, required: true, location_name: "audioFileS3Location"))
    UtteranceAudioInputSpecification.struct_class = Types::UtteranceAudioInputSpecification

    UtteranceInputSpecification.add_member(:text_input, Shapes::ShapeRef.new(shape: TestSetUtteranceText, location_name: "textInput"))
    UtteranceInputSpecification.add_member(:audio_input, Shapes::ShapeRef.new(shape: UtteranceAudioInputSpecification, location_name: "audioInput"))
    UtteranceInputSpecification.struct_class = Types::UtteranceInputSpecification

    UtteranceLevelTestResultItem.add_member(:record_number, Shapes::ShapeRef.new(shape: RecordNumber, required: true, location_name: "recordNumber"))
    UtteranceLevelTestResultItem.add_member(:conversation_id, Shapes::ShapeRef.new(shape: TestSetConversationId, location_name: "conversationId"))
    UtteranceLevelTestResultItem.add_member(:turn_result, Shapes::ShapeRef.new(shape: TestSetTurnResult, required: true, location_name: "turnResult"))
    UtteranceLevelTestResultItem.struct_class = Types::UtteranceLevelTestResultItem

    UtteranceLevelTestResultItemList.member = Shapes::ShapeRef.new(shape: UtteranceLevelTestResultItem)

    UtteranceLevelTestResults.add_member(:items, Shapes::ShapeRef.new(shape: UtteranceLevelTestResultItemList, required: true, location_name: "items"))
    UtteranceLevelTestResults.struct_class = Types::UtteranceLevelTestResults

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VoiceSettings.add_member(:voice_id, Shapes::ShapeRef.new(shape: VoiceId, required: true, location_name: "voiceId"))
    VoiceSettings.add_member(:engine, Shapes::ShapeRef.new(shape: VoiceEngine, location_name: "engine"))
    VoiceSettings.struct_class = Types::VoiceSettings

    WaitAndContinueSpecification.add_member(:waiting_response, Shapes::ShapeRef.new(shape: ResponseSpecification, required: true, location_name: "waitingResponse"))
    WaitAndContinueSpecification.add_member(:continue_response, Shapes::ShapeRef.new(shape: ResponseSpecification, required: true, location_name: "continueResponse"))
    WaitAndContinueSpecification.add_member(:still_waiting_response, Shapes::ShapeRef.new(shape: StillWaitingResponseSpecification, location_name: "stillWaitingResponse"))
    WaitAndContinueSpecification.add_member(:active, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "active"))
    WaitAndContinueSpecification.struct_class = Types::WaitAndContinueSpecification


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-07"

      api.metadata = {
        "apiVersion" => "2020-08-07",
        "endpointPrefix" => "models-v2-lex",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Lex Models V2",
        "serviceFullName" => "Amazon Lex Model Building V2",
        "serviceId" => "Lex Models V2",
        "signatureVersion" => "v4",
        "signingName" => "lex",
        "uid" => "models.lex.v2-2020-08-07",
      }

      api.add_operation(:batch_create_custom_vocabulary_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateCustomVocabularyItem"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchcreate"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateCustomVocabularyItemRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateCustomVocabularyItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_delete_custom_vocabulary_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteCustomVocabularyItem"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchdelete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteCustomVocabularyItemRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteCustomVocabularyItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_update_custom_vocabulary_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateCustomVocabularyItem"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchupdate"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateCustomVocabularyItemRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateCustomVocabularyItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:build_bot_locale, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BuildBotLocale"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/"
        o.input = Shapes::ShapeRef.new(shape: BuildBotLocaleRequest)
        o.output = Shapes::ShapeRef.new(shape: BuildBotLocaleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBot"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/"
        o.input = Shapes::ShapeRef.new(shape: CreateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_bot_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBotAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botaliases/"
        o.input = Shapes::ShapeRef.new(shape: CreateBotAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_bot_locale, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBotLocale"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/"
        o.input = Shapes::ShapeRef.new(shape: CreateBotLocaleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotLocaleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_bot_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBotVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/"
        o.input = Shapes::ShapeRef.new(shape: CreateBotVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExport"
        o.http_method = "PUT"
        o.http_request_uri = "/exports/"
        o.input = Shapes::ShapeRef.new(shape: CreateExportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_intent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntent"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/"
        o.input = Shapes::ShapeRef.new(shape: CreateIntentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIntentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/policy/{resourceArn}/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_resource_policy_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourcePolicyStatement"
        o.http_method = "POST"
        o.http_request_uri = "/policy/{resourceArn}/statements/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourcePolicyStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourcePolicyStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_slot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSlot"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/"
        o.input = Shapes::ShapeRef.new(shape: CreateSlotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSlotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_slot_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSlotType"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/"
        o.input = Shapes::ShapeRef.new(shape: CreateSlotTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSlotTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_test_set_discrepancy_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTestSetDiscrepancyReport"
        o.http_method = "POST"
        o.http_request_uri = "/testsets/{testSetId}/testsetdiscrepancy"
        o.input = Shapes::ShapeRef.new(shape: CreateTestSetDiscrepancyReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTestSetDiscrepancyReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_upload_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUploadUrl"
        o.http_method = "POST"
        o.http_request_uri = "/createuploadurl/"
        o.input = Shapes::ShapeRef.new(shape: CreateUploadUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUploadUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBot"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_bot_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBotAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botaliases/{botAliasId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBotAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBotAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_bot_locale, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBotLocale"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBotLocaleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBotLocaleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_bot_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBotVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBotVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBotVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_custom_vocabulary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomVocabulary"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomVocabularyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomVocabularyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExport"
        o.http_method = "DELETE"
        o.http_request_uri = "/exports/{exportId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExportRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImport"
        o.http_method = "DELETE"
        o.http_request_uri = "/imports/{importId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteImportRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_intent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntent"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/policy/{resourceArn}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_resource_policy_statement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicyStatement"
        o.http_method = "DELETE"
        o.http_request_uri = "/policy/{resourceArn}/statements/{statementId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyStatementRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyStatementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_slot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSlot"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSlotRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_slot_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSlotType"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSlotTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_test_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTestSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/testsets/{testSetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTestSetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_utterances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUtterances"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/utterances/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUtterancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUtterancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBot"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBotRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_bot_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBotAlias"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botaliases/{botAliasId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBotAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBotAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_bot_locale, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBotLocale"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBotLocaleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBotLocaleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_bot_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBotRecommendation"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBotRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBotRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_bot_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBotVersion"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBotVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBotVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_custom_vocabulary_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomVocabularyMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/metadata"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomVocabularyMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomVocabularyMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExport"
        o.http_method = "GET"
        o.http_request_uri = "/exports/{exportId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExportRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImport"
        o.http_method = "GET"
        o.http_request_uri = "/imports/{importId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImportRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_intent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIntent"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIntentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIntentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/policy/{resourceArn}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_slot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSlot"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSlotRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSlotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_slot_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSlotType"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSlotTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSlotTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_test_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTestExecution"
        o.http_method = "GET"
        o.http_request_uri = "/testexecutions/{testExecutionId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTestExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTestExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_test_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTestSet"
        o.http_method = "GET"
        o.http_request_uri = "/testsets/{testSetId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTestSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTestSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_test_set_discrepancy_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTestSetDiscrepancyReport"
        o.http_method = "GET"
        o.http_request_uri = "/testsetdiscrepancy/{testSetDiscrepancyReportId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTestSetDiscrepancyReportRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTestSetDiscrepancyReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_test_set_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTestSetGeneration"
        o.http_method = "GET"
        o.http_request_uri = "/testsetgenerations/{testSetGenerationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTestSetGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTestSetGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_test_execution_artifacts_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTestExecutionArtifactsUrl"
        o.http_method = "GET"
        o.http_request_uri = "/testexecutions/{testExecutionId}/artifacturl"
        o.input = Shapes::ShapeRef.new(shape: GetTestExecutionArtifactsUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestExecutionArtifactsUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_aggregated_utterances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAggregatedUtterances"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/aggregatedutterances/"
        o.input = Shapes::ShapeRef.new(shape: ListAggregatedUtterancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAggregatedUtterancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bot_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBotAliases"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botaliases/"
        o.input = Shapes::ShapeRef.new(shape: ListBotAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bot_locales, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBotLocales"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/"
        o.input = Shapes::ShapeRef.new(shape: ListBotLocalesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotLocalesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bot_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBotRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/"
        o.input = Shapes::ShapeRef.new(shape: ListBotRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bot_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBotVersions"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/"
        o.input = Shapes::ShapeRef.new(shape: ListBotVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBots"
        o.http_method = "POST"
        o.http_request_uri = "/bots/"
        o.input = Shapes::ShapeRef.new(shape: ListBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_built_in_intents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBuiltInIntents"
        o.http_method = "POST"
        o.http_request_uri = "/builtins/locales/{localeId}/intents/"
        o.input = Shapes::ShapeRef.new(shape: ListBuiltInIntentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBuiltInIntentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_built_in_slot_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBuiltInSlotTypes"
        o.http_method = "POST"
        o.http_request_uri = "/builtins/locales/{localeId}/slottypes/"
        o.input = Shapes::ShapeRef.new(shape: ListBuiltInSlotTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBuiltInSlotTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_vocabulary_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomVocabularyItems"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/list"
        o.input = Shapes::ShapeRef.new(shape: ListCustomVocabularyItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomVocabularyItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExports"
        o.http_method = "POST"
        o.http_request_uri = "/exports/"
        o.input = Shapes::ShapeRef.new(shape: ListExportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_imports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImports"
        o.http_method = "POST"
        o.http_request_uri = "/imports/"
        o.input = Shapes::ShapeRef.new(shape: ListImportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_intents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntents"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/"
        o.input = Shapes::ShapeRef.new(shape: ListIntentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIntentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommended_intents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendedIntents"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendedIntentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendedIntentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_slot_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSlotTypes"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/"
        o.input = Shapes::ShapeRef.new(shape: ListSlotTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSlotTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_slots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSlots"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/"
        o.input = Shapes::ShapeRef.new(shape: ListSlotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSlotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceARN}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_test_execution_result_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestExecutionResultItems"
        o.http_method = "POST"
        o.http_request_uri = "/testexecutions/{testExecutionId}/results"
        o.input = Shapes::ShapeRef.new(shape: ListTestExecutionResultItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestExecutionResultItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/testexecutions"
        o.input = Shapes::ShapeRef.new(shape: ListTestExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_set_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestSetRecords"
        o.http_method = "POST"
        o.http_request_uri = "/testsets/{testSetId}/records"
        o.input = Shapes::ShapeRef.new(shape: ListTestSetRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestSetRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestSets"
        o.http_method = "POST"
        o.http_request_uri = "/testsets"
        o.input = Shapes::ShapeRef.new(shape: ListTestSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_associated_transcripts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAssociatedTranscripts"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts"
        o.input = Shapes::ShapeRef.new(shape: SearchAssociatedTranscriptsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAssociatedTranscriptsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_bot_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBotRecommendation"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/"
        o.input = Shapes::ShapeRef.new(shape: StartBotRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBotRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImport"
        o.http_method = "PUT"
        o.http_request_uri = "/imports/"
        o.input = Shapes::ShapeRef.new(shape: StartImportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_test_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTestExecution"
        o.http_method = "POST"
        o.http_request_uri = "/testsets/{testSetId}/testexecutions"
        o.input = Shapes::ShapeRef.new(shape: StartTestExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTestExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_test_set_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTestSetGeneration"
        o.http_method = "PUT"
        o.http_request_uri = "/testsetgenerations"
        o.input = Shapes::ShapeRef.new(shape: StartTestSetGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTestSetGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_bot_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopBotRecommendation"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/stopbotrecommendation"
        o.input = Shapes::ShapeRef.new(shape: StopBotRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopBotRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceARN}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceARN}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBot"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_bot_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBotAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botaliases/{botAliasId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_bot_locale, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBotLocale"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotLocaleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotLocaleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_bot_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBotRecommendation"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExport"
        o.http_method = "PUT"
        o.http_request_uri = "/exports/{exportId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateExportRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_intent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntent"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/policy/{resourceArn}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_slot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSlot"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSlotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSlotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_slot_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSlotType"
        o.http_method = "PUT"
        o.http_request_uri = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSlotTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSlotTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_test_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTestSet"
        o.http_method = "PUT"
        o.http_request_uri = "/testsets/{testSetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTestSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTestSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end

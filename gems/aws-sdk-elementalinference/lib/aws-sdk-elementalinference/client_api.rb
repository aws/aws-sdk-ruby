# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElementalInference
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AspectRatio = Shapes::StructureShape.new(name: 'AspectRatio')
    AssociateFeedRequest = Shapes::StructureShape.new(name: 'AssociateFeedRequest')
    AssociateFeedResponse = Shapes::StructureShape.new(name: 'AssociateFeedResponse')
    AssociatedResourceName = Shapes::StringShape.new(name: 'AssociatedResourceName')
    BedrockApi = Shapes::StringShape.new(name: 'BedrockApi')
    BedrockFunctionTarget = Shapes::StructureShape.new(name: 'BedrockFunctionTarget')
    BedrockFunctionTargetModelString = Shapes::StringShape.new(name: 'BedrockFunctionTargetModelString')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChooseOneOptionList = Shapes::ListShape.new(name: 'ChooseOneOptionList')
    ChooseOneQuestion = Shapes::StructureShape.new(name: 'ChooseOneQuestion')
    ChooseOneQuestionList = Shapes::ListShape.new(name: 'ChooseOneQuestionList')
    ClipTrigger = Shapes::StructureShape.new(name: 'ClipTrigger')
    ClippingConfig = Shapes::StructureShape.new(name: 'ClippingConfig')
    ClippingSettings = Shapes::StructureShape.new(name: 'ClippingSettings')
    Competitor = Shapes::StructureShape.new(name: 'Competitor')
    CompetitorList = Shapes::ListShape.new(name: 'CompetitorList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContextType = Shapes::StringShape.new(name: 'ContextType')
    ContextTypeList = Shapes::ListShape.new(name: 'ContextTypeList')
    ContextualMetadataConfig = Shapes::StructureShape.new(name: 'ContextualMetadataConfig')
    ContextualMetadataSettings = Shapes::StructureShape.new(name: 'ContextualMetadataSettings')
    CreateDictionaryRequest = Shapes::StructureShape.new(name: 'CreateDictionaryRequest')
    CreateDictionaryResponse = Shapes::StructureShape.new(name: 'CreateDictionaryResponse')
    CreateFeedRequest = Shapes::StructureShape.new(name: 'CreateFeedRequest')
    CreateFeedResponse = Shapes::StructureShape.new(name: 'CreateFeedResponse')
    CreateFunctionRequest = Shapes::StructureShape.new(name: 'CreateFunctionRequest')
    CreateFunctionRequestRequestExpressionString = Shapes::StringShape.new(name: 'CreateFunctionRequestRequestExpressionString')
    CreateFunctionResponse = Shapes::StructureShape.new(name: 'CreateFunctionResponse')
    CreateFunctionResponseRequestExpressionString = Shapes::StringShape.new(name: 'CreateFunctionResponseRequestExpressionString')
    CreateOutput = Shapes::StructureShape.new(name: 'CreateOutput')
    CreateOutputList = Shapes::ListShape.new(name: 'CreateOutputList')
    CreateQuestionSetRequest = Shapes::StructureShape.new(name: 'CreateQuestionSetRequest')
    CreateQuestionSetResponse = Shapes::StructureShape.new(name: 'CreateQuestionSetResponse')
    CreateQuestionSetVersionRequest = Shapes::StructureShape.new(name: 'CreateQuestionSetVersionRequest')
    CreateQuestionSetVersionResponse = Shapes::StructureShape.new(name: 'CreateQuestionSetVersionResponse')
    CreateScheduleActionRequest = Shapes::StructureShape.new(name: 'CreateScheduleActionRequest')
    CreateScheduleActionResponse = Shapes::StructureShape.new(name: 'CreateScheduleActionResponse')
    CroppingConfig = Shapes::StructureShape.new(name: 'CroppingConfig')
    CustomQuestionsConfig = Shapes::StructureShape.new(name: 'CustomQuestionsConfig')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DataSourceSport = Shapes::StringShape.new(name: 'DataSourceSport')
    DeleteDictionaryRequest = Shapes::StructureShape.new(name: 'DeleteDictionaryRequest')
    DeleteDictionaryResponse = Shapes::StructureShape.new(name: 'DeleteDictionaryResponse')
    DeleteFeedPolicyRequest = Shapes::StructureShape.new(name: 'DeleteFeedPolicyRequest')
    DeleteFeedRequest = Shapes::StructureShape.new(name: 'DeleteFeedRequest')
    DeleteFeedResponse = Shapes::StructureShape.new(name: 'DeleteFeedResponse')
    DeleteFunctionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionRequest')
    DeleteFunctionResponse = Shapes::StructureShape.new(name: 'DeleteFunctionResponse')
    DeleteQuestionSetRequest = Shapes::StructureShape.new(name: 'DeleteQuestionSetRequest')
    DeleteQuestionSetResponse = Shapes::StructureShape.new(name: 'DeleteQuestionSetResponse')
    DeleteQuestionSetVersionRequest = Shapes::StructureShape.new(name: 'DeleteQuestionSetVersionRequest')
    DeleteQuestionSetVersionResponse = Shapes::StructureShape.new(name: 'DeleteQuestionSetVersionResponse')
    DeleteScheduleActionRequest = Shapes::StructureShape.new(name: 'DeleteScheduleActionRequest')
    DeleteScheduleActionResponse = Shapes::StructureShape.new(name: 'DeleteScheduleActionResponse')
    DictionaryArn = Shapes::StringShape.new(name: 'DictionaryArn')
    DictionaryEntriesPayload = Shapes::StringShape.new(name: 'DictionaryEntriesPayload')
    DictionaryId = Shapes::StringShape.new(name: 'DictionaryId')
    DictionaryLanguage = Shapes::StringShape.new(name: 'DictionaryLanguage')
    DictionaryStatus = Shapes::StringShape.new(name: 'DictionaryStatus')
    DictionarySummary = Shapes::StructureShape.new(name: 'DictionarySummary')
    DictionarySummaryList = Shapes::ListShape.new(name: 'DictionarySummaryList')
    DisassociateFeedRequest = Shapes::StructureShape.new(name: 'DisassociateFeedRequest')
    DisassociateFeedResponse = Shapes::StructureShape.new(name: 'DisassociateFeedResponse')
    EventBridgeDeliveryMode = Shapes::StringShape.new(name: 'EventBridgeDeliveryMode')
    ExportDictionaryEntriesRequest = Shapes::StructureShape.new(name: 'ExportDictionaryEntriesRequest')
    ExportDictionaryEntriesResponse = Shapes::StructureShape.new(name: 'ExportDictionaryEntriesResponse')
    ExtendedAnalysisMode = Shapes::StringShape.new(name: 'ExtendedAnalysisMode')
    FeedArn = Shapes::StringShape.new(name: 'FeedArn')
    FeedAssociation = Shapes::StructureShape.new(name: 'FeedAssociation')
    FeedId = Shapes::StringShape.new(name: 'FeedId')
    FeedReferences = Shapes::ListShape.new(name: 'FeedReferences')
    FeedStatus = Shapes::StringShape.new(name: 'FeedStatus')
    FeedSummary = Shapes::StructureShape.new(name: 'FeedSummary')
    FeedSummaryList = Shapes::ListShape.new(name: 'FeedSummaryList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    FixedIntervalTrigger = Shapes::StructureShape.new(name: 'FixedIntervalTrigger')
    FixedIntervalTriggerIntervalSecondsInteger = Shapes::IntegerShape.new(name: 'FixedIntervalTriggerIntervalSecondsInteger')
    FixedModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'FixedModeScheduleActionStartSettings')
    FixtureDate = Shapes::StringShape.new(name: 'FixtureDate')
    FixtureId = Shapes::StringShape.new(name: 'FixtureId')
    FixtureSummary = Shapes::StructureShape.new(name: 'FixtureSummary')
    FixtureSummaryList = Shapes::ListShape.new(name: 'FixtureSummaryList')
    FrameSamplingMode = Shapes::StringShape.new(name: 'FrameSamplingMode')
    FrameSamplingStrategy = Shapes::StructureShape.new(name: 'FrameSamplingStrategy')
    FrameSamplingStrategyCountInteger = Shapes::IntegerShape.new(name: 'FrameSamplingStrategyCountInteger')
    FrameSettings = Shapes::StructureShape.new(name: 'FrameSettings')
    FrameSize = Shapes::StructureShape.new(name: 'FrameSize')
    FrameSizeHeightPixelsInteger = Shapes::IntegerShape.new(name: 'FrameSizeHeightPixelsInteger')
    FrameSizeWidthPixelsInteger = Shapes::IntegerShape.new(name: 'FrameSizeWidthPixelsInteger')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionConfig = Shapes::StructureShape.new(name: 'FunctionConfig')
    FunctionDescription = Shapes::StringShape.new(name: 'FunctionDescription')
    FunctionId = Shapes::StringShape.new(name: 'FunctionId')
    FunctionStatus = Shapes::StringShape.new(name: 'FunctionStatus')
    FunctionSummary = Shapes::StructureShape.new(name: 'FunctionSummary')
    FunctionSummaryList = Shapes::ListShape.new(name: 'FunctionSummaryList')
    FunctionTarget = Shapes::UnionShape.new(name: 'FunctionTarget')
    GatewayTimedOutException = Shapes::StructureShape.new(name: 'GatewayTimedOutException')
    GetDictionaryRequest = Shapes::StructureShape.new(name: 'GetDictionaryRequest')
    GetDictionaryResponse = Shapes::StructureShape.new(name: 'GetDictionaryResponse')
    GetFeedPolicyRequest = Shapes::StructureShape.new(name: 'GetFeedPolicyRequest')
    GetFeedPolicyResponse = Shapes::StructureShape.new(name: 'GetFeedPolicyResponse')
    GetFeedRequest = Shapes::StructureShape.new(name: 'GetFeedRequest')
    GetFeedResponse = Shapes::StructureShape.new(name: 'GetFeedResponse')
    GetFixtureRequest = Shapes::StructureShape.new(name: 'GetFixtureRequest')
    GetFixtureResponse = Shapes::StructureShape.new(name: 'GetFixtureResponse')
    GetFunctionRequest = Shapes::StructureShape.new(name: 'GetFunctionRequest')
    GetFunctionResponse = Shapes::StructureShape.new(name: 'GetFunctionResponse')
    GetFunctionResponseRequestExpressionString = Shapes::StringShape.new(name: 'GetFunctionResponseRequestExpressionString')
    GetOutput = Shapes::StructureShape.new(name: 'GetOutput')
    GetOutputList = Shapes::ListShape.new(name: 'GetOutputList')
    GetQuestionSetRequest = Shapes::StructureShape.new(name: 'GetQuestionSetRequest')
    GetQuestionSetResponse = Shapes::StructureShape.new(name: 'GetQuestionSetResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    JsonataExpression = Shapes::StringShape.new(name: 'JsonataExpression')
    ListDictionariesRequest = Shapes::StructureShape.new(name: 'ListDictionariesRequest')
    ListDictionariesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDictionariesRequestMaxResultsInteger')
    ListDictionariesResponse = Shapes::StructureShape.new(name: 'ListDictionariesResponse')
    ListFeedsRequest = Shapes::StructureShape.new(name: 'ListFeedsRequest')
    ListFeedsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFeedsRequestMaxResultsInteger')
    ListFeedsResponse = Shapes::StructureShape.new(name: 'ListFeedsResponse')
    ListFunctionsRequest = Shapes::StructureShape.new(name: 'ListFunctionsRequest')
    ListFunctionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFunctionsRequestMaxResultsInteger')
    ListFunctionsResponse = Shapes::StructureShape.new(name: 'ListFunctionsResponse')
    ListQuestionSetVersionsRequest = Shapes::StructureShape.new(name: 'ListQuestionSetVersionsRequest')
    ListQuestionSetVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListQuestionSetVersionsRequestMaxResultsInteger')
    ListQuestionSetVersionsResponse = Shapes::StructureShape.new(name: 'ListQuestionSetVersionsResponse')
    ListQuestionSetsRequest = Shapes::StructureShape.new(name: 'ListQuestionSetsRequest')
    ListQuestionSetsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListQuestionSetsRequestMaxResultsInteger')
    ListQuestionSetsResponse = Shapes::StructureShape.new(name: 'ListQuestionSetsResponse')
    ListScheduleActionsRequest = Shapes::StructureShape.new(name: 'ListScheduleActionsRequest')
    ListScheduleActionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListScheduleActionsRequestMaxResultsInteger')
    ListScheduleActionsResponse = Shapes::StructureShape.new(name: 'ListScheduleActionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    OptionName = Shapes::StringShape.new(name: 'OptionName')
    OptionText = Shapes::StringShape.new(name: 'OptionText')
    OutputConfig = Shapes::UnionShape.new(name: 'OutputConfig')
    OutputStatus = Shapes::StringShape.new(name: 'OutputStatus')
    PassthroughFunctionTarget = Shapes::StructureShape.new(name: 'PassthroughFunctionTarget')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    ProfanityFilterMode = Shapes::StringShape.new(name: 'ProfanityFilterMode')
    PublishedQuestionSetVersion = Shapes::StringShape.new(name: 'PublishedQuestionSetVersion')
    PutFeedPolicyRequest = Shapes::StructureShape.new(name: 'PutFeedPolicyRequest')
    PutFeedPolicyResponse = Shapes::StructureShape.new(name: 'PutFeedPolicyResponse')
    QuestionName = Shapes::StringShape.new(name: 'QuestionName')
    QuestionOption = Shapes::StructureShape.new(name: 'QuestionOption')
    QuestionSetArn = Shapes::StringShape.new(name: 'QuestionSetArn')
    QuestionSetId = Shapes::StringShape.new(name: 'QuestionSetId')
    QuestionSetReference = Shapes::StructureShape.new(name: 'QuestionSetReference')
    QuestionSetSha256 = Shapes::StringShape.new(name: 'QuestionSetSha256')
    QuestionSetSummary = Shapes::StructureShape.new(name: 'QuestionSetSummary')
    QuestionSetSummaryList = Shapes::ListShape.new(name: 'QuestionSetSummaryList')
    QuestionSetVersion = Shapes::StringShape.new(name: 'QuestionSetVersion')
    QuestionSetVersionDescription = Shapes::StringShape.new(name: 'QuestionSetVersionDescription')
    QuestionSetVersionSummary = Shapes::StructureShape.new(name: 'QuestionSetVersionSummary')
    QuestionSetVersionSummaryList = Shapes::ListShape.new(name: 'QuestionSetVersionSummaryList')
    QuestionText = Shapes::StringShape.new(name: 'QuestionText')
    RemoveClippingDataSourceConfiguration = Shapes::StructureShape.new(name: 'RemoveClippingDataSourceConfiguration')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SceneTrigger = Shapes::StructureShape.new(name: 'SceneTrigger')
    ScheduleAction = Shapes::StructureShape.new(name: 'ScheduleAction')
    ScheduleActionError = Shapes::StructureShape.new(name: 'ScheduleActionError')
    ScheduleActionErrorCode = Shapes::StringShape.new(name: 'ScheduleActionErrorCode')
    ScheduleActionList = Shapes::ListShape.new(name: 'ScheduleActionList')
    ScheduleActionOperation = Shapes::UnionShape.new(name: 'ScheduleActionOperation')
    ScheduleActionOperations = Shapes::ListShape.new(name: 'ScheduleActionOperations')
    ScheduleActionStartConfiguration = Shapes::UnionShape.new(name: 'ScheduleActionStartConfiguration')
    ScheduleActionStatus = Shapes::StringShape.new(name: 'ScheduleActionStatus')
    SearchFilter = Shapes::StructureShape.new(name: 'SearchFilter')
    SearchFilterList = Shapes::ListShape.new(name: 'SearchFilterList')
    SearchFixturesRequest = Shapes::StructureShape.new(name: 'SearchFixturesRequest')
    SearchFixturesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchFixturesRequestMaxResultsInteger')
    SearchFixturesResponse = Shapes::StructureShape.new(name: 'SearchFixturesResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    ShotTrigger = Shapes::StructureShape.new(name: 'ShotTrigger')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubtitlingConfig = Shapes::StructureShape.new(name: 'SubtitlingConfig')
    SubtitlingSettings = Shapes::StructureShape.new(name: 'SubtitlingSettings')
    SummaryGenerationMode = Shapes::StringShape.new(name: 'SummaryGenerationMode')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateGroup = Shapes::StructureShape.new(name: 'TemplateGroup')
    TemplateGroupList = Shapes::ListShape.new(name: 'TemplateGroupList')
    TemplateUriList = Shapes::ListShape.new(name: 'TemplateUriList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestException = Shapes::StructureShape.new(name: 'TooManyRequestException')
    TranscriptionLanguage = Shapes::StringShape.new(name: 'TranscriptionLanguage')
    Trigger = Shapes::UnionShape.new(name: 'Trigger')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateClippingDataSourceConfiguration = Shapes::StructureShape.new(name: 'UpdateClippingDataSourceConfiguration')
    UpdateDictionaryRequest = Shapes::StructureShape.new(name: 'UpdateDictionaryRequest')
    UpdateDictionaryResponse = Shapes::StructureShape.new(name: 'UpdateDictionaryResponse')
    UpdateFeedRequest = Shapes::StructureShape.new(name: 'UpdateFeedRequest')
    UpdateFeedResponse = Shapes::StructureShape.new(name: 'UpdateFeedResponse')
    UpdateFunctionRequest = Shapes::StructureShape.new(name: 'UpdateFunctionRequest')
    UpdateFunctionRequestRequestExpressionString = Shapes::StringShape.new(name: 'UpdateFunctionRequestRequestExpressionString')
    UpdateFunctionResponse = Shapes::StructureShape.new(name: 'UpdateFunctionResponse')
    UpdateFunctionResponseRequestExpressionString = Shapes::StringShape.new(name: 'UpdateFunctionResponseRequestExpressionString')
    UpdateOutput = Shapes::StructureShape.new(name: 'UpdateOutput')
    UpdateOutputList = Shapes::ListShape.new(name: 'UpdateOutputList')
    UpdateOutputStatus = Shapes::StructureShape.new(name: 'UpdateOutputStatus')
    UpdateQuestionSetRequest = Shapes::StructureShape.new(name: 'UpdateQuestionSetRequest')
    UpdateQuestionSetResponse = Shapes::StructureShape.new(name: 'UpdateQuestionSetResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    YesNoPerOptionOptionList = Shapes::ListShape.new(name: 'YesNoPerOptionOptionList')
    YesNoPerOptionQuestion = Shapes::StructureShape.new(name: 'YesNoPerOptionQuestion')
    YesNoPerOptionQuestionList = Shapes::ListShape.new(name: 'YesNoPerOptionQuestionList')
    YesNoQuestion = Shapes::StructureShape.new(name: 'YesNoQuestion')
    YesNoQuestionList = Shapes::ListShape.new(name: 'YesNoQuestionList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AspectRatio.add_member(:width, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "width"))
    AspectRatio.add_member(:height, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "height"))
    AspectRatio.struct_class = Types::AspectRatio

    AssociateFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    AssociateFeedRequest.add_member(:associated_resource_name, Shapes::ShapeRef.new(shape: AssociatedResourceName, required: true, location_name: "associatedResourceName", metadata: {"idempotencyToken" => true}))
    AssociateFeedRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: CreateOutputList, required: true, location_name: "outputs"))
    AssociateFeedRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "dryRun"))
    AssociateFeedRequest.struct_class = Types::AssociateFeedRequest

    AssociateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    AssociateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    AssociateFeedResponse.struct_class = Types::AssociateFeedResponse

    BedrockFunctionTarget.add_member(:api, Shapes::ShapeRef.new(shape: BedrockApi, required: true, location_name: "api"))
    BedrockFunctionTarget.add_member(:model, Shapes::ShapeRef.new(shape: BedrockFunctionTargetModelString, required: true, location_name: "model"))
    BedrockFunctionTarget.struct_class = Types::BedrockFunctionTarget

    ChooseOneOptionList.member = Shapes::ShapeRef.new(shape: QuestionOption)

    ChooseOneQuestion.add_member(:name, Shapes::ShapeRef.new(shape: QuestionName, required: true, location_name: "name"))
    ChooseOneQuestion.add_member(:question, Shapes::ShapeRef.new(shape: QuestionText, required: true, location_name: "question"))
    ChooseOneQuestion.add_member(:options, Shapes::ShapeRef.new(shape: ChooseOneOptionList, required: true, location_name: "options"))
    ChooseOneQuestion.struct_class = Types::ChooseOneQuestion

    ChooseOneQuestionList.member = Shapes::ShapeRef.new(shape: ChooseOneQuestion)

    ClipTrigger.struct_class = Types::ClipTrigger

    ClippingConfig.add_member(:callback_metadata, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "callbackMetadata"))
    ClippingConfig.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "dataSourceConfiguration"))
    ClippingConfig.struct_class = Types::ClippingConfig

    ClippingSettings.add_member(:output_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "outputName"))
    ClippingSettings.struct_class = Types::ClippingSettings

    Competitor.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Competitor.add_member(:is_home, Shapes::ShapeRef.new(shape: Boolean, location_name: "isHome"))
    Competitor.struct_class = Types::Competitor

    CompetitorList.member = Shapes::ShapeRef.new(shape: Competitor)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContextTypeList.member = Shapes::ShapeRef.new(shape: ContextType)

    ContextualMetadataConfig.add_member(:summary_generation, Shapes::ShapeRef.new(shape: SummaryGenerationMode, location_name: "summaryGeneration"))
    ContextualMetadataConfig.add_member(:extended_analysis, Shapes::ShapeRef.new(shape: ExtendedAnalysisMode, location_name: "extendedAnalysis"))
    ContextualMetadataConfig.add_member(:custom_questions, Shapes::ShapeRef.new(shape: CustomQuestionsConfig, location_name: "customQuestions"))
    ContextualMetadataConfig.struct_class = Types::ContextualMetadataConfig

    ContextualMetadataSettings.add_member(:output_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "outputName"))
    ContextualMetadataSettings.struct_class = Types::ContextualMetadataSettings

    CreateDictionaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDictionaryRequest.add_member(:language, Shapes::ShapeRef.new(shape: DictionaryLanguage, required: true, location_name: "language"))
    CreateDictionaryRequest.add_member(:entries, Shapes::ShapeRef.new(shape: DictionaryEntriesPayload, location_name: "entries"))
    CreateDictionaryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDictionaryRequest.struct_class = Types::CreateDictionaryRequest

    CreateDictionaryResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDictionaryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DictionaryArn, required: true, location_name: "arn"))
    CreateDictionaryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location_name: "id"))
    CreateDictionaryResponse.add_member(:language, Shapes::ShapeRef.new(shape: DictionaryLanguage, required: true, location_name: "language"))
    CreateDictionaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: DictionaryStatus, required: true, location_name: "status"))
    CreateDictionaryResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    CreateDictionaryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDictionaryResponse.struct_class = Types::CreateDictionaryResponse

    CreateFeedRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFeedRequest.add_member(:access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "accessRoleArn"))
    CreateFeedRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: CreateOutputList, required: true, location_name: "outputs"))
    CreateFeedRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFeedRequest.struct_class = Types::CreateFeedRequest

    CreateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    CreateFeedResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    CreateFeedResponse.add_member(:data_endpoints, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "dataEndpoints"))
    CreateFeedResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetOutputList, required: true, location_name: "outputs"))
    CreateFeedResponse.add_member(:access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "accessRoleArn"))
    CreateFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    CreateFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    CreateFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFeedResponse.struct_class = Types::CreateFeedResponse

    CreateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFunctionRequest.add_member(:target, Shapes::ShapeRef.new(shape: FunctionTarget, required: true, location_name: "target"))
    CreateFunctionRequest.add_member(:request_expression, Shapes::ShapeRef.new(shape: CreateFunctionRequestRequestExpressionString, required: true, location_name: "requestExpression"))
    CreateFunctionRequest.add_member(:response_expression, Shapes::ShapeRef.new(shape: JsonataExpression, location_name: "responseExpression"))
    CreateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    CreateFunctionRequest.add_member(:event_bridge_delivery, Shapes::ShapeRef.new(shape: EventBridgeDeliveryMode, location_name: "eventBridgeDelivery"))
    CreateFunctionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFunctionRequest.struct_class = Types::CreateFunctionRequest

    CreateFunctionResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFunctionResponse.add_member(:target, Shapes::ShapeRef.new(shape: FunctionTarget, required: true, location_name: "target"))
    CreateFunctionResponse.add_member(:request_expression, Shapes::ShapeRef.new(shape: CreateFunctionResponseRequestExpressionString, required: true, location_name: "requestExpression"))
    CreateFunctionResponse.add_member(:response_expression, Shapes::ShapeRef.new(shape: JsonataExpression, location_name: "responseExpression"))
    CreateFunctionResponse.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    CreateFunctionResponse.add_member(:event_bridge_delivery, Shapes::ShapeRef.new(shape: EventBridgeDeliveryMode, location_name: "eventBridgeDelivery"))
    CreateFunctionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "arn"))
    CreateFunctionResponse.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    CreateFunctionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FunctionStatus, required: true, location_name: "status"))
    CreateFunctionResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    CreateFunctionResponse.add_member(:context_types, Shapes::ShapeRef.new(shape: ContextTypeList, location_name: "contextTypes"))
    CreateFunctionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFunctionResponse.struct_class = Types::CreateFunctionResponse

    CreateOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    CreateOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    CreateOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateOutput.struct_class = Types::CreateOutput

    CreateOutputList.member = Shapes::ShapeRef.new(shape: CreateOutput)

    CreateQuestionSetRequest.add_member(:yes_no, Shapes::ShapeRef.new(shape: YesNoQuestionList, location_name: "yesNo"))
    CreateQuestionSetRequest.add_member(:yes_no_per_option, Shapes::ShapeRef.new(shape: YesNoPerOptionQuestionList, location_name: "yesNoPerOption"))
    CreateQuestionSetRequest.add_member(:choose_one, Shapes::ShapeRef.new(shape: ChooseOneQuestionList, location_name: "chooseOne"))
    CreateQuestionSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateQuestionSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateQuestionSetRequest.struct_class = Types::CreateQuestionSetRequest

    CreateQuestionSetResponse.add_member(:yes_no, Shapes::ShapeRef.new(shape: YesNoQuestionList, location_name: "yesNo"))
    CreateQuestionSetResponse.add_member(:yes_no_per_option, Shapes::ShapeRef.new(shape: YesNoPerOptionQuestionList, location_name: "yesNoPerOption"))
    CreateQuestionSetResponse.add_member(:choose_one, Shapes::ShapeRef.new(shape: ChooseOneQuestionList, location_name: "chooseOne"))
    CreateQuestionSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: QuestionSetArn, required: true, location_name: "arn"))
    CreateQuestionSetResponse.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location_name: "id"))
    CreateQuestionSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateQuestionSetResponse.add_member(:version, Shapes::ShapeRef.new(shape: QuestionSetVersion, required: true, location_name: "version"))
    CreateQuestionSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: QuestionSetVersionDescription, location_name: "description"))
    CreateQuestionSetResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: QuestionSetVersion, location_name: "latestVersion"))
    CreateQuestionSetResponse.add_member(:sha256, Shapes::ShapeRef.new(shape: QuestionSetSha256, required: true, location_name: "sha256"))
    CreateQuestionSetResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    CreateQuestionSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateQuestionSetResponse.struct_class = Types::CreateQuestionSetResponse

    CreateQuestionSetVersionRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location: "uri", location_name: "id"))
    CreateQuestionSetVersionRequest.add_member(:sha256, Shapes::ShapeRef.new(shape: QuestionSetSha256, location_name: "sha256"))
    CreateQuestionSetVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: QuestionSetVersionDescription, location_name: "description"))
    CreateQuestionSetVersionRequest.struct_class = Types::CreateQuestionSetVersionRequest

    CreateQuestionSetVersionResponse.add_member(:yes_no, Shapes::ShapeRef.new(shape: YesNoQuestionList, location_name: "yesNo"))
    CreateQuestionSetVersionResponse.add_member(:yes_no_per_option, Shapes::ShapeRef.new(shape: YesNoPerOptionQuestionList, location_name: "yesNoPerOption"))
    CreateQuestionSetVersionResponse.add_member(:choose_one, Shapes::ShapeRef.new(shape: ChooseOneQuestionList, location_name: "chooseOne"))
    CreateQuestionSetVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: QuestionSetArn, required: true, location_name: "arn"))
    CreateQuestionSetVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location_name: "id"))
    CreateQuestionSetVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateQuestionSetVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: QuestionSetVersion, required: true, location_name: "version"))
    CreateQuestionSetVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: QuestionSetVersionDescription, location_name: "description"))
    CreateQuestionSetVersionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: QuestionSetVersion, location_name: "latestVersion"))
    CreateQuestionSetVersionResponse.add_member(:sha256, Shapes::ShapeRef.new(shape: QuestionSetSha256, required: true, location_name: "sha256"))
    CreateQuestionSetVersionResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    CreateQuestionSetVersionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateQuestionSetVersionResponse.struct_class = Types::CreateQuestionSetVersionResponse

    CreateScheduleActionRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    CreateScheduleActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "actionName"))
    CreateScheduleActionRequest.add_member(:start_configuration, Shapes::ShapeRef.new(shape: ScheduleActionStartConfiguration, required: true, location_name: "startConfiguration"))
    CreateScheduleActionRequest.add_member(:operations, Shapes::ShapeRef.new(shape: ScheduleActionOperations, required: true, location_name: "operations"))
    CreateScheduleActionRequest.struct_class = Types::CreateScheduleActionRequest

    CreateScheduleActionResponse.add_member(:action_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "actionName"))
    CreateScheduleActionResponse.add_member(:start_configuration, Shapes::ShapeRef.new(shape: ScheduleActionStartConfiguration, required: true, location_name: "startConfiguration"))
    CreateScheduleActionResponse.add_member(:operations, Shapes::ShapeRef.new(shape: ScheduleActionOperations, required: true, location_name: "operations"))
    CreateScheduleActionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ScheduleActionStatus, required: true, location_name: "status"))
    CreateScheduleActionResponse.add_member(:error, Shapes::ShapeRef.new(shape: ScheduleActionError, location_name: "error"))
    CreateScheduleActionResponse.struct_class = Types::CreateScheduleActionResponse

    CroppingConfig.add_member(:template_groups, Shapes::ShapeRef.new(shape: TemplateGroupList, location_name: "templateGroups"))
    CroppingConfig.struct_class = Types::CroppingConfig

    CustomQuestionsConfig.add_member(:shot, Shapes::ShapeRef.new(shape: QuestionSetReference, location_name: "shot"))
    CustomQuestionsConfig.add_member(:scene, Shapes::ShapeRef.new(shape: QuestionSetReference, location_name: "scene"))
    CustomQuestionsConfig.struct_class = Types::CustomQuestionsConfig

    DataSourceConfiguration.add_member(:fixture_id, Shapes::ShapeRef.new(shape: FixtureId, required: true, location_name: "fixtureId"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DeleteDictionaryRequest.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location: "uri", location_name: "id"))
    DeleteDictionaryRequest.struct_class = Types::DeleteDictionaryRequest

    DeleteDictionaryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DictionaryArn, required: true, location_name: "arn"))
    DeleteDictionaryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location_name: "id"))
    DeleteDictionaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: DictionaryStatus, required: true, location_name: "status"))
    DeleteDictionaryResponse.struct_class = Types::DeleteDictionaryResponse

    DeleteFeedPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    DeleteFeedPolicyRequest.struct_class = Types::DeleteFeedPolicyRequest

    DeleteFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    DeleteFeedRequest.struct_class = Types::DeleteFeedRequest

    DeleteFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    DeleteFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    DeleteFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    DeleteFeedResponse.struct_class = Types::DeleteFeedResponse

    DeleteFunctionRequest.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location: "uri", location_name: "id"))
    DeleteFunctionRequest.struct_class = Types::DeleteFunctionRequest

    DeleteFunctionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "arn"))
    DeleteFunctionResponse.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    DeleteFunctionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FunctionStatus, required: true, location_name: "status"))
    DeleteFunctionResponse.struct_class = Types::DeleteFunctionResponse

    DeleteQuestionSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location: "uri", location_name: "id"))
    DeleteQuestionSetRequest.struct_class = Types::DeleteQuestionSetRequest

    DeleteQuestionSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: QuestionSetArn, required: true, location_name: "arn"))
    DeleteQuestionSetResponse.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location_name: "id"))
    DeleteQuestionSetResponse.struct_class = Types::DeleteQuestionSetResponse

    DeleteQuestionSetVersionRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location: "uri", location_name: "id"))
    DeleteQuestionSetVersionRequest.add_member(:question_set_version, Shapes::ShapeRef.new(shape: PublishedQuestionSetVersion, required: true, location: "uri", location_name: "questionSetVersion"))
    DeleteQuestionSetVersionRequest.struct_class = Types::DeleteQuestionSetVersionRequest

    DeleteQuestionSetVersionResponse.struct_class = Types::DeleteQuestionSetVersionResponse

    DeleteScheduleActionRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    DeleteScheduleActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "querystring", location_name: "actionName"))
    DeleteScheduleActionRequest.struct_class = Types::DeleteScheduleActionRequest

    DeleteScheduleActionResponse.add_member(:action_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "actionName"))
    DeleteScheduleActionResponse.struct_class = Types::DeleteScheduleActionResponse

    DictionarySummary.add_member(:arn, Shapes::ShapeRef.new(shape: DictionaryArn, required: true, location_name: "arn"))
    DictionarySummary.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location_name: "id"))
    DictionarySummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DictionarySummary.add_member(:language, Shapes::ShapeRef.new(shape: DictionaryLanguage, required: true, location_name: "language"))
    DictionarySummary.add_member(:status, Shapes::ShapeRef.new(shape: DictionaryStatus, required: true, location_name: "status"))
    DictionarySummary.struct_class = Types::DictionarySummary

    DictionarySummaryList.member = Shapes::ShapeRef.new(shape: DictionarySummary)

    DisassociateFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    DisassociateFeedRequest.add_member(:associated_resource_name, Shapes::ShapeRef.new(shape: AssociatedResourceName, required: true, location_name: "associatedResourceName", metadata: {"idempotencyToken" => true}))
    DisassociateFeedRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "dryRun"))
    DisassociateFeedRequest.struct_class = Types::DisassociateFeedRequest

    DisassociateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    DisassociateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    DisassociateFeedResponse.struct_class = Types::DisassociateFeedResponse

    ExportDictionaryEntriesRequest.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location: "uri", location_name: "id"))
    ExportDictionaryEntriesRequest.struct_class = Types::ExportDictionaryEntriesRequest

    ExportDictionaryEntriesResponse.add_member(:entries, Shapes::ShapeRef.new(shape: DictionaryEntriesPayload, location_name: "entries"))
    ExportDictionaryEntriesResponse.struct_class = Types::ExportDictionaryEntriesResponse

    FeedAssociation.add_member(:associated_resource_name, Shapes::ShapeRef.new(shape: AssociatedResourceName, required: true, location_name: "associatedResourceName"))
    FeedAssociation.struct_class = Types::FeedAssociation

    FeedReferences.member = Shapes::ShapeRef.new(shape: FeedId)

    FeedSummary.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    FeedSummary.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    FeedSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    FeedSummary.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    FeedSummary.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    FeedSummary.struct_class = Types::FeedSummary

    FeedSummaryList.member = Shapes::ShapeRef.new(shape: FeedSummary)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    FixedIntervalTrigger.add_member(:interval_seconds, Shapes::ShapeRef.new(shape: FixedIntervalTriggerIntervalSecondsInteger, required: true, location_name: "intervalSeconds"))
    FixedIntervalTrigger.struct_class = Types::FixedIntervalTrigger

    FixedModeScheduleActionStartSettings.add_member(:scheduled_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "scheduledAt"))
    FixedModeScheduleActionStartSettings.struct_class = Types::FixedModeScheduleActionStartSettings

    FixtureSummary.add_member(:fixture_id, Shapes::ShapeRef.new(shape: FixtureId, required: true, location_name: "fixtureId"))
    FixtureSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    FixtureSummary.add_member(:fixture_group, Shapes::ShapeRef.new(shape: String, location_name: "fixtureGroup"))
    FixtureSummary.add_member(:scheduled_start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "scheduledStart"))
    FixtureSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    FixtureSummary.add_member(:competitors, Shapes::ShapeRef.new(shape: CompetitorList, required: true, location_name: "competitors"))
    FixtureSummary.struct_class = Types::FixtureSummary

    FixtureSummaryList.member = Shapes::ShapeRef.new(shape: FixtureSummary)

    FrameSamplingStrategy.add_member(:mode, Shapes::ShapeRef.new(shape: FrameSamplingMode, required: true, location_name: "mode"))
    FrameSamplingStrategy.add_member(:count, Shapes::ShapeRef.new(shape: FrameSamplingStrategyCountInteger, location_name: "count"))
    FrameSamplingStrategy.struct_class = Types::FrameSamplingStrategy

    FrameSettings.add_member(:frame_sampling, Shapes::ShapeRef.new(shape: FrameSamplingStrategy, required: true, location_name: "frameSampling"))
    FrameSettings.add_member(:frame_size, Shapes::ShapeRef.new(shape: FrameSize, location_name: "frameSize"))
    FrameSettings.struct_class = Types::FrameSettings

    FrameSize.add_member(:width_pixels, Shapes::ShapeRef.new(shape: FrameSizeWidthPixelsInteger, required: true, location_name: "widthPixels"))
    FrameSize.add_member(:height_pixels, Shapes::ShapeRef.new(shape: FrameSizeHeightPixelsInteger, required: true, location_name: "heightPixels"))
    FrameSize.struct_class = Types::FrameSize

    FunctionConfig.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    FunctionConfig.add_member(:trigger, Shapes::ShapeRef.new(shape: Trigger, required: true, location_name: "trigger"))
    FunctionConfig.add_member(:frame_settings, Shapes::ShapeRef.new(shape: FrameSettings, location_name: "frameSettings"))
    FunctionConfig.add_member(:subtitling_settings, Shapes::ShapeRef.new(shape: SubtitlingSettings, location_name: "subtitlingSettings"))
    FunctionConfig.add_member(:contextual_metadata_settings, Shapes::ShapeRef.new(shape: ContextualMetadataSettings, location_name: "contextualMetadataSettings"))
    FunctionConfig.add_member(:clipping_settings, Shapes::ShapeRef.new(shape: ClippingSettings, location_name: "clippingSettings"))
    FunctionConfig.struct_class = Types::FunctionConfig

    FunctionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "arn"))
    FunctionSummary.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    FunctionSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    FunctionSummary.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    FunctionSummary.add_member(:status, Shapes::ShapeRef.new(shape: FunctionStatus, required: true, location_name: "status"))
    FunctionSummary.add_member(:target, Shapes::ShapeRef.new(shape: FunctionTarget, location_name: "target"))
    FunctionSummary.add_member(:context_types, Shapes::ShapeRef.new(shape: ContextTypeList, location_name: "contextTypes"))
    FunctionSummary.struct_class = Types::FunctionSummary

    FunctionSummaryList.member = Shapes::ShapeRef.new(shape: FunctionSummary)

    FunctionTarget.add_member(:bedrock, Shapes::ShapeRef.new(shape: BedrockFunctionTarget, location_name: "bedrock"))
    FunctionTarget.add_member(:passthrough, Shapes::ShapeRef.new(shape: PassthroughFunctionTarget, location_name: "passthrough"))
    FunctionTarget.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FunctionTarget.add_member_subclass(:bedrock, Types::FunctionTarget::Bedrock)
    FunctionTarget.add_member_subclass(:passthrough, Types::FunctionTarget::Passthrough)
    FunctionTarget.add_member_subclass(:unknown, Types::FunctionTarget::Unknown)
    FunctionTarget.struct_class = Types::FunctionTarget

    GatewayTimedOutException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    GatewayTimedOutException.struct_class = Types::GatewayTimedOutException

    GetDictionaryRequest.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location: "uri", location_name: "id"))
    GetDictionaryRequest.struct_class = Types::GetDictionaryRequest

    GetDictionaryResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetDictionaryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DictionaryArn, required: true, location_name: "arn"))
    GetDictionaryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location_name: "id"))
    GetDictionaryResponse.add_member(:language, Shapes::ShapeRef.new(shape: DictionaryLanguage, required: true, location_name: "language"))
    GetDictionaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: DictionaryStatus, required: true, location_name: "status"))
    GetDictionaryResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    GetDictionaryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetDictionaryResponse.struct_class = Types::GetDictionaryResponse

    GetFeedPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    GetFeedPolicyRequest.struct_class = Types::GetFeedPolicyRequest

    GetFeedPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policy"))
    GetFeedPolicyResponse.struct_class = Types::GetFeedPolicyResponse

    GetFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    GetFeedRequest.struct_class = Types::GetFeedRequest

    GetFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    GetFeedResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    GetFeedResponse.add_member(:data_endpoints, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "dataEndpoints"))
    GetFeedResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetOutputList, required: true, location_name: "outputs"))
    GetFeedResponse.add_member(:access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "accessRoleArn"))
    GetFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    GetFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    GetFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetFeedResponse.struct_class = Types::GetFeedResponse

    GetFixtureRequest.add_member(:fixture_id, Shapes::ShapeRef.new(shape: FixtureId, required: true, location: "uri", location_name: "fixtureId"))
    GetFixtureRequest.struct_class = Types::GetFixtureRequest

    GetFixtureResponse.add_member(:fixture_id, Shapes::ShapeRef.new(shape: FixtureId, required: true, location_name: "fixtureId"))
    GetFixtureResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetFixtureResponse.add_member(:fixture_group, Shapes::ShapeRef.new(shape: String, location_name: "fixtureGroup"))
    GetFixtureResponse.add_member(:scheduled_start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "scheduledStart"))
    GetFixtureResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    GetFixtureResponse.add_member(:competitors, Shapes::ShapeRef.new(shape: CompetitorList, required: true, location_name: "competitors"))
    GetFixtureResponse.struct_class = Types::GetFixtureResponse

    GetFunctionRequest.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location: "uri", location_name: "id"))
    GetFunctionRequest.struct_class = Types::GetFunctionRequest

    GetFunctionResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetFunctionResponse.add_member(:target, Shapes::ShapeRef.new(shape: FunctionTarget, required: true, location_name: "target"))
    GetFunctionResponse.add_member(:request_expression, Shapes::ShapeRef.new(shape: GetFunctionResponseRequestExpressionString, required: true, location_name: "requestExpression"))
    GetFunctionResponse.add_member(:response_expression, Shapes::ShapeRef.new(shape: JsonataExpression, location_name: "responseExpression"))
    GetFunctionResponse.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    GetFunctionResponse.add_member(:event_bridge_delivery, Shapes::ShapeRef.new(shape: EventBridgeDeliveryMode, location_name: "eventBridgeDelivery"))
    GetFunctionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "arn"))
    GetFunctionResponse.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    GetFunctionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FunctionStatus, required: true, location_name: "status"))
    GetFunctionResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    GetFunctionResponse.add_member(:context_types, Shapes::ShapeRef.new(shape: ContextTypeList, location_name: "contextTypes"))
    GetFunctionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetFunctionResponse.struct_class = Types::GetFunctionResponse

    GetOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    GetOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    GetOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetOutput.add_member(:from_association, Shapes::ShapeRef.new(shape: Boolean, location_name: "fromAssociation"))
    GetOutput.struct_class = Types::GetOutput

    GetOutputList.member = Shapes::ShapeRef.new(shape: GetOutput)

    GetQuestionSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location: "uri", location_name: "id"))
    GetQuestionSetRequest.add_member(:question_set_version, Shapes::ShapeRef.new(shape: QuestionSetVersion, location: "querystring", location_name: "questionSetVersion"))
    GetQuestionSetRequest.struct_class = Types::GetQuestionSetRequest

    GetQuestionSetResponse.add_member(:yes_no, Shapes::ShapeRef.new(shape: YesNoQuestionList, location_name: "yesNo"))
    GetQuestionSetResponse.add_member(:yes_no_per_option, Shapes::ShapeRef.new(shape: YesNoPerOptionQuestionList, location_name: "yesNoPerOption"))
    GetQuestionSetResponse.add_member(:choose_one, Shapes::ShapeRef.new(shape: ChooseOneQuestionList, location_name: "chooseOne"))
    GetQuestionSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: QuestionSetArn, required: true, location_name: "arn"))
    GetQuestionSetResponse.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location_name: "id"))
    GetQuestionSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetQuestionSetResponse.add_member(:version, Shapes::ShapeRef.new(shape: QuestionSetVersion, required: true, location_name: "version"))
    GetQuestionSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: QuestionSetVersionDescription, location_name: "description"))
    GetQuestionSetResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: QuestionSetVersion, location_name: "latestVersion"))
    GetQuestionSetResponse.add_member(:sha256, Shapes::ShapeRef.new(shape: QuestionSetSha256, required: true, location_name: "sha256"))
    GetQuestionSetResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    GetQuestionSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetQuestionSetResponse.struct_class = Types::GetQuestionSetResponse

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListDictionariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDictionariesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDictionariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListDictionariesRequest.struct_class = Types::ListDictionariesRequest

    ListDictionariesResponse.add_member(:dictionaries, Shapes::ShapeRef.new(shape: DictionarySummaryList, required: true, location_name: "dictionaries"))
    ListDictionariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDictionariesResponse.struct_class = Types::ListDictionariesResponse

    ListFeedsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFeedsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListFeedsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFeedsRequest.struct_class = Types::ListFeedsRequest

    ListFeedsResponse.add_member(:feeds, Shapes::ShapeRef.new(shape: FeedSummaryList, required: true, location_name: "feeds"))
    ListFeedsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFeedsResponse.struct_class = Types::ListFeedsResponse

    ListFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFunctionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFunctionsRequest.struct_class = Types::ListFunctionsRequest

    ListFunctionsResponse.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionSummaryList, required: true, location_name: "functions"))
    ListFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFunctionsResponse.struct_class = Types::ListFunctionsResponse

    ListQuestionSetVersionsRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location: "uri", location_name: "id"))
    ListQuestionSetVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListQuestionSetVersionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListQuestionSetVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListQuestionSetVersionsRequest.struct_class = Types::ListQuestionSetVersionsRequest

    ListQuestionSetVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: QuestionSetVersionSummaryList, required: true, location_name: "versions"))
    ListQuestionSetVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQuestionSetVersionsResponse.struct_class = Types::ListQuestionSetVersionsResponse

    ListQuestionSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListQuestionSetsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListQuestionSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListQuestionSetsRequest.struct_class = Types::ListQuestionSetsRequest

    ListQuestionSetsResponse.add_member(:question_sets, Shapes::ShapeRef.new(shape: QuestionSetSummaryList, required: true, location_name: "questionSets"))
    ListQuestionSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQuestionSetsResponse.struct_class = Types::ListQuestionSetsResponse

    ListScheduleActionsRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    ListScheduleActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListScheduleActionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListScheduleActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListScheduleActionsRequest.struct_class = Types::ListScheduleActionsRequest

    ListScheduleActionsResponse.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: ScheduleActionList, required: true, location_name: "scheduleActions"))
    ListScheduleActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListScheduleActionsResponse.struct_class = Types::ListScheduleActionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OutputConfig.add_member(:cropping, Shapes::ShapeRef.new(shape: CroppingConfig, location_name: "cropping"))
    OutputConfig.add_member(:clipping, Shapes::ShapeRef.new(shape: ClippingConfig, location_name: "clipping"))
    OutputConfig.add_member(:subtitling, Shapes::ShapeRef.new(shape: SubtitlingConfig, location_name: "subtitling"))
    OutputConfig.add_member(:contextual_metadata, Shapes::ShapeRef.new(shape: ContextualMetadataConfig, location_name: "contextualMetadata"))
    OutputConfig.add_member(:function, Shapes::ShapeRef.new(shape: FunctionConfig, location_name: "function"))
    OutputConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutputConfig.add_member_subclass(:cropping, Types::OutputConfig::Cropping)
    OutputConfig.add_member_subclass(:clipping, Types::OutputConfig::Clipping)
    OutputConfig.add_member_subclass(:subtitling, Types::OutputConfig::Subtitling)
    OutputConfig.add_member_subclass(:contextual_metadata, Types::OutputConfig::ContextualMetadata)
    OutputConfig.add_member_subclass(:function, Types::OutputConfig::Function)
    OutputConfig.add_member_subclass(:unknown, Types::OutputConfig::Unknown)
    OutputConfig.struct_class = Types::OutputConfig

    PassthroughFunctionTarget.struct_class = Types::PassthroughFunctionTarget

    PutFeedPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    PutFeedPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policy"))
    PutFeedPolicyRequest.struct_class = Types::PutFeedPolicyRequest

    PutFeedPolicyResponse.struct_class = Types::PutFeedPolicyResponse

    QuestionOption.add_member(:name, Shapes::ShapeRef.new(shape: OptionName, required: true, location_name: "name"))
    QuestionOption.add_member(:text, Shapes::ShapeRef.new(shape: OptionText, required: true, location_name: "text"))
    QuestionOption.struct_class = Types::QuestionOption

    QuestionSetReference.add_member(:question_set_id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location_name: "questionSetId"))
    QuestionSetReference.add_member(:version, Shapes::ShapeRef.new(shape: QuestionSetVersion, required: true, location_name: "version"))
    QuestionSetReference.struct_class = Types::QuestionSetReference

    QuestionSetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: QuestionSetArn, required: true, location_name: "arn"))
    QuestionSetSummary.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location_name: "id"))
    QuestionSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    QuestionSetSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: QuestionSetVersion, location_name: "latestVersion"))
    QuestionSetSummary.struct_class = Types::QuestionSetSummary

    QuestionSetSummaryList.member = Shapes::ShapeRef.new(shape: QuestionSetSummary)

    QuestionSetVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: QuestionSetVersion, required: true, location_name: "version"))
    QuestionSetVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: QuestionSetVersionDescription, location_name: "description"))
    QuestionSetVersionSummary.add_member(:sha256, Shapes::ShapeRef.new(shape: QuestionSetSha256, required: true, location_name: "sha256"))
    QuestionSetVersionSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    QuestionSetVersionSummary.struct_class = Types::QuestionSetVersionSummary

    QuestionSetVersionSummaryList.member = Shapes::ShapeRef.new(shape: QuestionSetVersionSummary)

    RemoveClippingDataSourceConfiguration.add_member(:output_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "outputName"))
    RemoveClippingDataSourceConfiguration.struct_class = Types::RemoveClippingDataSourceConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SceneTrigger.struct_class = Types::SceneTrigger

    ScheduleAction.add_member(:action_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "actionName"))
    ScheduleAction.add_member(:start_configuration, Shapes::ShapeRef.new(shape: ScheduleActionStartConfiguration, required: true, location_name: "startConfiguration"))
    ScheduleAction.add_member(:operations, Shapes::ShapeRef.new(shape: ScheduleActionOperations, required: true, location_name: "operations"))
    ScheduleAction.add_member(:status, Shapes::ShapeRef.new(shape: ScheduleActionStatus, required: true, location_name: "status"))
    ScheduleAction.add_member(:error, Shapes::ShapeRef.new(shape: ScheduleActionError, location_name: "error"))
    ScheduleAction.struct_class = Types::ScheduleAction

    ScheduleActionError.add_member(:error_code, Shapes::ShapeRef.new(shape: ScheduleActionErrorCode, required: true, location_name: "errorCode"))
    ScheduleActionError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    ScheduleActionError.struct_class = Types::ScheduleActionError

    ScheduleActionList.member = Shapes::ShapeRef.new(shape: ScheduleAction)

    ScheduleActionOperation.add_member(:update_output_status, Shapes::ShapeRef.new(shape: UpdateOutputStatus, location_name: "updateOutputStatus"))
    ScheduleActionOperation.add_member(:update_clipping_data_source_configuration, Shapes::ShapeRef.new(shape: UpdateClippingDataSourceConfiguration, location_name: "updateClippingDataSourceConfiguration"))
    ScheduleActionOperation.add_member(:remove_clipping_data_source_configuration, Shapes::ShapeRef.new(shape: RemoveClippingDataSourceConfiguration, location_name: "removeClippingDataSourceConfiguration"))
    ScheduleActionOperation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ScheduleActionOperation.add_member_subclass(:update_output_status, Types::ScheduleActionOperation::UpdateOutputStatus)
    ScheduleActionOperation.add_member_subclass(:update_clipping_data_source_configuration, Types::ScheduleActionOperation::UpdateClippingDataSourceConfiguration)
    ScheduleActionOperation.add_member_subclass(:remove_clipping_data_source_configuration, Types::ScheduleActionOperation::RemoveClippingDataSourceConfiguration)
    ScheduleActionOperation.add_member_subclass(:unknown, Types::ScheduleActionOperation::Unknown)
    ScheduleActionOperation.struct_class = Types::ScheduleActionOperation

    ScheduleActionOperations.member = Shapes::ShapeRef.new(shape: ScheduleActionOperation)

    ScheduleActionStartConfiguration.add_member(:fixed_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: FixedModeScheduleActionStartSettings, location_name: "fixedModeScheduleActionStartSettings"))
    ScheduleActionStartConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ScheduleActionStartConfiguration.add_member_subclass(:fixed_mode_schedule_action_start_settings, Types::ScheduleActionStartConfiguration::FixedModeScheduleActionStartSettings)
    ScheduleActionStartConfiguration.add_member_subclass(:unknown, Types::ScheduleActionStartConfiguration::Unknown)
    ScheduleActionStartConfiguration.struct_class = Types::ScheduleActionStartConfiguration

    SearchFilter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    SearchFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "values"))
    SearchFilter.struct_class = Types::SearchFilter

    SearchFilterList.member = Shapes::ShapeRef.new(shape: SearchFilter)

    SearchFixturesRequest.add_member(:sport, Shapes::ShapeRef.new(shape: DataSourceSport, required: true, location_name: "sport"))
    SearchFixturesRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: FixtureDate, required: true, location_name: "startDate"))
    SearchFixturesRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: FixtureDate, location_name: "endDate"))
    SearchFixturesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilterList, location_name: "filters"))
    SearchFixturesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchFixturesRequestMaxResultsInteger, location_name: "maxResults"))
    SearchFixturesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchFixturesRequest.struct_class = Types::SearchFixturesRequest

    SearchFixturesResponse.add_member(:fixtures, Shapes::ShapeRef.new(shape: FixtureSummaryList, required: true, location_name: "fixtures"))
    SearchFixturesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    SearchFixturesResponse.struct_class = Types::SearchFixturesResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    ShotTrigger.struct_class = Types::ShotTrigger

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubtitlingConfig.add_member(:language, Shapes::ShapeRef.new(shape: TranscriptionLanguage, required: true, location_name: "language"))
    SubtitlingConfig.add_member(:aspect_ratio, Shapes::ShapeRef.new(shape: AspectRatio, location_name: "aspectRatio"))
    SubtitlingConfig.add_member(:dictionary, Shapes::ShapeRef.new(shape: DictionaryId, location_name: "dictionary"))
    SubtitlingConfig.add_member(:profanity_filter, Shapes::ShapeRef.new(shape: ProfanityFilterMode, location_name: "profanityFilter"))
    SubtitlingConfig.struct_class = Types::SubtitlingConfig

    SubtitlingSettings.add_member(:output_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "outputName"))
    SubtitlingSettings.struct_class = Types::SubtitlingSettings

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TemplateGroup.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    TemplateGroup.add_member(:template_uris, Shapes::ShapeRef.new(shape: TemplateUriList, required: true, location_name: "templateUris"))
    TemplateGroup.struct_class = Types::TemplateGroup

    TemplateGroupList.member = Shapes::ShapeRef.new(shape: TemplateGroup)

    TemplateUriList.member = Shapes::ShapeRef.new(shape: S3Uri)

    TooManyRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TooManyRequestException.struct_class = Types::TooManyRequestException

    Trigger.add_member(:fixed_interval, Shapes::ShapeRef.new(shape: FixedIntervalTrigger, location_name: "fixedInterval"))
    Trigger.add_member(:per_shot, Shapes::ShapeRef.new(shape: ShotTrigger, location_name: "perShot"))
    Trigger.add_member(:per_scene, Shapes::ShapeRef.new(shape: SceneTrigger, location_name: "perScene"))
    Trigger.add_member(:per_clip, Shapes::ShapeRef.new(shape: ClipTrigger, location_name: "perClip"))
    Trigger.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Trigger.add_member_subclass(:fixed_interval, Types::Trigger::FixedInterval)
    Trigger.add_member_subclass(:per_shot, Types::Trigger::PerShot)
    Trigger.add_member_subclass(:per_scene, Types::Trigger::PerScene)
    Trigger.add_member_subclass(:per_clip, Types::Trigger::PerClip)
    Trigger.add_member_subclass(:unknown, Types::Trigger::Unknown)
    Trigger.struct_class = Types::Trigger

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateClippingDataSourceConfiguration.add_member(:output_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "outputName"))
    UpdateClippingDataSourceConfiguration.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "dataSourceConfiguration"))
    UpdateClippingDataSourceConfiguration.struct_class = Types::UpdateClippingDataSourceConfiguration

    UpdateDictionaryRequest.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location: "uri", location_name: "id"))
    UpdateDictionaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateDictionaryRequest.add_member(:language, Shapes::ShapeRef.new(shape: DictionaryLanguage, location_name: "language"))
    UpdateDictionaryRequest.add_member(:entries, Shapes::ShapeRef.new(shape: DictionaryEntriesPayload, location_name: "entries"))
    UpdateDictionaryRequest.struct_class = Types::UpdateDictionaryRequest

    UpdateDictionaryResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateDictionaryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DictionaryArn, required: true, location_name: "arn"))
    UpdateDictionaryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location_name: "id"))
    UpdateDictionaryResponse.add_member(:language, Shapes::ShapeRef.new(shape: DictionaryLanguage, required: true, location_name: "language"))
    UpdateDictionaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: DictionaryStatus, required: true, location_name: "status"))
    UpdateDictionaryResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    UpdateDictionaryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateDictionaryResponse.struct_class = Types::UpdateDictionaryResponse

    UpdateFeedRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFeedRequest.add_member(:access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "accessRoleArn"))
    UpdateFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    UpdateFeedRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: UpdateOutputList, required: true, location_name: "outputs"))
    UpdateFeedRequest.struct_class = Types::UpdateFeedRequest

    UpdateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    UpdateFeedResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    UpdateFeedResponse.add_member(:data_endpoints, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "dataEndpoints"))
    UpdateFeedResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetOutputList, required: true, location_name: "outputs"))
    UpdateFeedResponse.add_member(:access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "accessRoleArn"))
    UpdateFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    UpdateFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    UpdateFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateFeedResponse.struct_class = Types::UpdateFeedResponse

    UpdateFunctionRequest.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location: "uri", location_name: "id"))
    UpdateFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateFunctionRequest.add_member(:target, Shapes::ShapeRef.new(shape: FunctionTarget, location_name: "target"))
    UpdateFunctionRequest.add_member(:request_expression, Shapes::ShapeRef.new(shape: UpdateFunctionRequestRequestExpressionString, location_name: "requestExpression"))
    UpdateFunctionRequest.add_member(:response_expression, Shapes::ShapeRef.new(shape: JsonataExpression, location_name: "responseExpression"))
    UpdateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    UpdateFunctionRequest.add_member(:event_bridge_delivery, Shapes::ShapeRef.new(shape: EventBridgeDeliveryMode, location_name: "eventBridgeDelivery"))
    UpdateFunctionRequest.struct_class = Types::UpdateFunctionRequest

    UpdateFunctionResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFunctionResponse.add_member(:target, Shapes::ShapeRef.new(shape: FunctionTarget, required: true, location_name: "target"))
    UpdateFunctionResponse.add_member(:request_expression, Shapes::ShapeRef.new(shape: UpdateFunctionResponseRequestExpressionString, required: true, location_name: "requestExpression"))
    UpdateFunctionResponse.add_member(:response_expression, Shapes::ShapeRef.new(shape: JsonataExpression, location_name: "responseExpression"))
    UpdateFunctionResponse.add_member(:description, Shapes::ShapeRef.new(shape: FunctionDescription, location_name: "description"))
    UpdateFunctionResponse.add_member(:event_bridge_delivery, Shapes::ShapeRef.new(shape: EventBridgeDeliveryMode, location_name: "eventBridgeDelivery"))
    UpdateFunctionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "arn"))
    UpdateFunctionResponse.add_member(:id, Shapes::ShapeRef.new(shape: FunctionId, required: true, location_name: "id"))
    UpdateFunctionResponse.add_member(:status, Shapes::ShapeRef.new(shape: FunctionStatus, required: true, location_name: "status"))
    UpdateFunctionResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    UpdateFunctionResponse.add_member(:context_types, Shapes::ShapeRef.new(shape: ContextTypeList, location_name: "contextTypes"))
    UpdateFunctionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateFunctionResponse.struct_class = Types::UpdateFunctionResponse

    UpdateOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    UpdateOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    UpdateOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateOutput.add_member(:from_association, Shapes::ShapeRef.new(shape: Boolean, location_name: "fromAssociation"))
    UpdateOutput.struct_class = Types::UpdateOutput

    UpdateOutputList.member = Shapes::ShapeRef.new(shape: UpdateOutput)

    UpdateOutputStatus.add_member(:output_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "outputName"))
    UpdateOutputStatus.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    UpdateOutputStatus.struct_class = Types::UpdateOutputStatus

    UpdateQuestionSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location: "uri", location_name: "id"))
    UpdateQuestionSetRequest.add_member(:yes_no, Shapes::ShapeRef.new(shape: YesNoQuestionList, location_name: "yesNo"))
    UpdateQuestionSetRequest.add_member(:yes_no_per_option, Shapes::ShapeRef.new(shape: YesNoPerOptionQuestionList, location_name: "yesNoPerOption"))
    UpdateQuestionSetRequest.add_member(:choose_one, Shapes::ShapeRef.new(shape: ChooseOneQuestionList, location_name: "chooseOne"))
    UpdateQuestionSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateQuestionSetRequest.struct_class = Types::UpdateQuestionSetRequest

    UpdateQuestionSetResponse.add_member(:yes_no, Shapes::ShapeRef.new(shape: YesNoQuestionList, location_name: "yesNo"))
    UpdateQuestionSetResponse.add_member(:yes_no_per_option, Shapes::ShapeRef.new(shape: YesNoPerOptionQuestionList, location_name: "yesNoPerOption"))
    UpdateQuestionSetResponse.add_member(:choose_one, Shapes::ShapeRef.new(shape: ChooseOneQuestionList, location_name: "chooseOne"))
    UpdateQuestionSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: QuestionSetArn, required: true, location_name: "arn"))
    UpdateQuestionSetResponse.add_member(:id, Shapes::ShapeRef.new(shape: QuestionSetId, required: true, location_name: "id"))
    UpdateQuestionSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateQuestionSetResponse.add_member(:version, Shapes::ShapeRef.new(shape: QuestionSetVersion, required: true, location_name: "version"))
    UpdateQuestionSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: QuestionSetVersionDescription, location_name: "description"))
    UpdateQuestionSetResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: QuestionSetVersion, location_name: "latestVersion"))
    UpdateQuestionSetResponse.add_member(:sha256, Shapes::ShapeRef.new(shape: QuestionSetSha256, required: true, location_name: "sha256"))
    UpdateQuestionSetResponse.add_member(:references, Shapes::ShapeRef.new(shape: FeedReferences, location_name: "references"))
    UpdateQuestionSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateQuestionSetResponse.struct_class = Types::UpdateQuestionSetResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    YesNoPerOptionOptionList.member = Shapes::ShapeRef.new(shape: QuestionOption)

    YesNoPerOptionQuestion.add_member(:name, Shapes::ShapeRef.new(shape: QuestionName, required: true, location_name: "name"))
    YesNoPerOptionQuestion.add_member(:question, Shapes::ShapeRef.new(shape: QuestionText, required: true, location_name: "question"))
    YesNoPerOptionQuestion.add_member(:options, Shapes::ShapeRef.new(shape: YesNoPerOptionOptionList, required: true, location_name: "options"))
    YesNoPerOptionQuestion.struct_class = Types::YesNoPerOptionQuestion

    YesNoPerOptionQuestionList.member = Shapes::ShapeRef.new(shape: YesNoPerOptionQuestion)

    YesNoQuestion.add_member(:name, Shapes::ShapeRef.new(shape: QuestionName, required: true, location_name: "name"))
    YesNoQuestion.add_member(:question, Shapes::ShapeRef.new(shape: QuestionText, required: true, location_name: "question"))
    YesNoQuestion.struct_class = Types::YesNoQuestion

    YesNoQuestionList.member = Shapes::ShapeRef.new(shape: YesNoQuestion)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-14"

      api.metadata = {
        "apiVersion" => "2018-11-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "elemental-inference",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Elemental Inference",
        "serviceId" => "ElementalInference",
        "signatureVersion" => "v4",
        "signingName" => "elemental-inference",
        "uid" => "elementalinference-2018-11-14",
      }

      api.add_operation(:associate_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFeed"
        o.http_method = "POST"
        o.http_request_uri = "/v1/feed/{id}/associate"
        o.input = Shapes::ShapeRef.new(shape: AssociateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_dictionary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDictionary"
        o.http_method = "POST"
        o.http_request_uri = "/v1/dictionary"
        o.input = Shapes::ShapeRef.new(shape: CreateDictionaryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDictionaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFeed"
        o.http_method = "POST"
        o.http_request_uri = "/v1/feed"
        o.input = Shapes::ShapeRef.new(shape: CreateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunction"
        o.http_method = "POST"
        o.http_request_uri = "/v1/function"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_question_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQuestionSet"
        o.http_method = "POST"
        o.http_request_uri = "/v1/question-set"
        o.input = Shapes::ShapeRef.new(shape: CreateQuestionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQuestionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_question_set_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQuestionSetVersion"
        o.http_method = "POST"
        o.http_request_uri = "/v1/question-set/{id}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateQuestionSetVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQuestionSetVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_schedule_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduleAction"
        o.http_method = "POST"
        o.http_request_uri = "/v1/feed/{id}/schedule-actions"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduleActionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduleActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_dictionary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDictionary"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/dictionary/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDictionaryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDictionaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFeed"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/feed/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_feed_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFeedPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/feed/{id}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteFeedPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:delete_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunction"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/function/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_question_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQuestionSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/question-set/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteQuestionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQuestionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_question_set_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQuestionSetVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/question-set/{id}/versions/{questionSetVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteQuestionSetVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQuestionSetVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_schedule_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduleAction"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/feed/{id}/schedule-actions"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduleActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduleActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFeed"
        o.http_method = "POST"
        o.http_request_uri = "/v1/feed/{id}/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:export_dictionary_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportDictionaryEntries"
        o.http_method = "GET"
        o.http_request_uri = "/v1/dictionary/{id}/entries/export"
        o.input = Shapes::ShapeRef.new(shape: ExportDictionaryEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportDictionaryEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:get_dictionary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDictionary"
        o.http_method = "GET"
        o.http_request_uri = "/v1/dictionary/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetDictionaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDictionaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:get_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFeed"
        o.http_method = "GET"
        o.http_request_uri = "/v1/feed/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:get_feed_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFeedPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v1/feed/{id}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetFeedPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFeedPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:get_fixture, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFixture"
        o.http_method = "GET"
        o.http_request_uri = "/v1/fixtures/{fixtureId}"
        o.input = Shapes::ShapeRef.new(shape: GetFixtureRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFixtureResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimedOutException)
      end)

      api.add_operation(:get_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunction"
        o.http_method = "GET"
        o.http_request_uri = "/v1/function/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:get_question_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQuestionSet"
        o.http_method = "GET"
        o.http_request_uri = "/v1/question-set/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetQuestionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQuestionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:list_dictionaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDictionaries"
        o.http_method = "GET"
        o.http_request_uri = "/v1/dictionaries"
        o.input = Shapes::ShapeRef.new(shape: ListDictionariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDictionariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_feeds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFeeds"
        o.http_method = "GET"
        o.http_request_uri = "/v1/feeds"
        o.input = Shapes::ShapeRef.new(shape: ListFeedsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFeedsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/functions"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_question_set_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQuestionSetVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/question-set/{id}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListQuestionSetVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQuestionSetVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_question_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQuestionSets"
        o.http_method = "GET"
        o.http_request_uri = "/v1/question-sets"
        o.input = Shapes::ShapeRef.new(shape: ListQuestionSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQuestionSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schedule_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduleActions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/feed/{id}/schedule-actions"
        o.input = Shapes::ShapeRef.new(shape: ListScheduleActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScheduleActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
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
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:put_feed_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFeedPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/feed/{id}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutFeedPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFeedPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:search_fixtures, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchFixtures"
        o.http_method = "POST"
        o.http_request_uri = "/v1/fixtures"
        o.input = Shapes::ShapeRef.new(shape: SearchFixturesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchFixturesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimedOutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_dictionary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDictionary"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/dictionary/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDictionaryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDictionaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFeed"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/feed/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunction"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/function/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_question_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQuestionSet"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/question-set/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateQuestionSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQuestionSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end

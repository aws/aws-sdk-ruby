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
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClippingConfig = Shapes::StructureShape.new(name: 'ClippingConfig')
    Competitor = Shapes::StructureShape.new(name: 'Competitor')
    CompetitorList = Shapes::ListShape.new(name: 'CompetitorList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDictionaryRequest = Shapes::StructureShape.new(name: 'CreateDictionaryRequest')
    CreateDictionaryResponse = Shapes::StructureShape.new(name: 'CreateDictionaryResponse')
    CreateFeedRequest = Shapes::StructureShape.new(name: 'CreateFeedRequest')
    CreateFeedResponse = Shapes::StructureShape.new(name: 'CreateFeedResponse')
    CreateOutput = Shapes::StructureShape.new(name: 'CreateOutput')
    CreateOutputList = Shapes::ListShape.new(name: 'CreateOutputList')
    CroppingConfig = Shapes::StructureShape.new(name: 'CroppingConfig')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DataSourceSport = Shapes::StringShape.new(name: 'DataSourceSport')
    DeleteDictionaryRequest = Shapes::StructureShape.new(name: 'DeleteDictionaryRequest')
    DeleteDictionaryResponse = Shapes::StructureShape.new(name: 'DeleteDictionaryResponse')
    DeleteFeedRequest = Shapes::StructureShape.new(name: 'DeleteFeedRequest')
    DeleteFeedResponse = Shapes::StructureShape.new(name: 'DeleteFeedResponse')
    DictionaryArn = Shapes::StringShape.new(name: 'DictionaryArn')
    DictionaryEntriesPayload = Shapes::StringShape.new(name: 'DictionaryEntriesPayload')
    DictionaryId = Shapes::StringShape.new(name: 'DictionaryId')
    DictionaryLanguage = Shapes::StringShape.new(name: 'DictionaryLanguage')
    DictionaryStatus = Shapes::StringShape.new(name: 'DictionaryStatus')
    DictionarySummary = Shapes::StructureShape.new(name: 'DictionarySummary')
    DictionarySummaryList = Shapes::ListShape.new(name: 'DictionarySummaryList')
    DisassociateFeedRequest = Shapes::StructureShape.new(name: 'DisassociateFeedRequest')
    DisassociateFeedResponse = Shapes::StructureShape.new(name: 'DisassociateFeedResponse')
    ExportDictionaryEntriesRequest = Shapes::StructureShape.new(name: 'ExportDictionaryEntriesRequest')
    ExportDictionaryEntriesResponse = Shapes::StructureShape.new(name: 'ExportDictionaryEntriesResponse')
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
    FixtureDate = Shapes::StringShape.new(name: 'FixtureDate')
    FixtureId = Shapes::StringShape.new(name: 'FixtureId')
    FixtureSummary = Shapes::StructureShape.new(name: 'FixtureSummary')
    FixtureSummaryList = Shapes::ListShape.new(name: 'FixtureSummaryList')
    GatewayTimedOutException = Shapes::StructureShape.new(name: 'GatewayTimedOutException')
    GetDictionaryRequest = Shapes::StructureShape.new(name: 'GetDictionaryRequest')
    GetDictionaryResponse = Shapes::StructureShape.new(name: 'GetDictionaryResponse')
    GetFeedRequest = Shapes::StructureShape.new(name: 'GetFeedRequest')
    GetFeedResponse = Shapes::StructureShape.new(name: 'GetFeedResponse')
    GetOutput = Shapes::StructureShape.new(name: 'GetOutput')
    GetOutputList = Shapes::ListShape.new(name: 'GetOutputList')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListDictionariesRequest = Shapes::StructureShape.new(name: 'ListDictionariesRequest')
    ListDictionariesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDictionariesRequestMaxResultsInteger')
    ListDictionariesResponse = Shapes::StructureShape.new(name: 'ListDictionariesResponse')
    ListFeedsRequest = Shapes::StructureShape.new(name: 'ListFeedsRequest')
    ListFeedsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFeedsRequestMaxResultsInteger')
    ListFeedsResponse = Shapes::StructureShape.new(name: 'ListFeedsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    OutputConfig = Shapes::UnionShape.new(name: 'OutputConfig')
    OutputStatus = Shapes::StringShape.new(name: 'OutputStatus')
    ProfanityFilterMode = Shapes::StringShape.new(name: 'ProfanityFilterMode')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SearchFilter = Shapes::StructureShape.new(name: 'SearchFilter')
    SearchFilterList = Shapes::ListShape.new(name: 'SearchFilterList')
    SearchFixturesRequest = Shapes::StructureShape.new(name: 'SearchFixturesRequest')
    SearchFixturesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchFixturesRequestMaxResultsInteger')
    SearchFixturesResponse = Shapes::StructureShape.new(name: 'SearchFixturesResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubtitlingConfig = Shapes::StructureShape.new(name: 'SubtitlingConfig')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateGroup = Shapes::StructureShape.new(name: 'TemplateGroup')
    TemplateGroupList = Shapes::ListShape.new(name: 'TemplateGroupList')
    TemplateUriList = Shapes::ListShape.new(name: 'TemplateUriList')
    TooManyRequestException = Shapes::StructureShape.new(name: 'TooManyRequestException')
    TranscriptionLanguage = Shapes::StringShape.new(name: 'TranscriptionLanguage')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateDictionaryRequest = Shapes::StructureShape.new(name: 'UpdateDictionaryRequest')
    UpdateDictionaryResponse = Shapes::StructureShape.new(name: 'UpdateDictionaryResponse')
    UpdateFeedRequest = Shapes::StructureShape.new(name: 'UpdateFeedRequest')
    UpdateFeedResponse = Shapes::StructureShape.new(name: 'UpdateFeedResponse')
    UpdateOutput = Shapes::StructureShape.new(name: 'UpdateOutput')
    UpdateOutputList = Shapes::ListShape.new(name: 'UpdateOutputList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

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

    ClippingConfig.add_member(:callback_metadata, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "callbackMetadata"))
    ClippingConfig.add_member(:data_source_configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "dataSourceConfiguration"))
    ClippingConfig.struct_class = Types::ClippingConfig

    Competitor.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Competitor.add_member(:is_home, Shapes::ShapeRef.new(shape: Boolean, location_name: "isHome"))
    Competitor.struct_class = Types::Competitor

    CompetitorList.member = Shapes::ShapeRef.new(shape: Competitor)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

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
    CreateFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    CreateFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    CreateFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFeedResponse.struct_class = Types::CreateFeedResponse

    CreateOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    CreateOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    CreateOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateOutput.struct_class = Types::CreateOutput

    CreateOutputList.member = Shapes::ShapeRef.new(shape: CreateOutput)

    CroppingConfig.add_member(:template_groups, Shapes::ShapeRef.new(shape: TemplateGroupList, location_name: "templateGroups"))
    CroppingConfig.struct_class = Types::CroppingConfig

    DataSourceConfiguration.add_member(:fixture_id, Shapes::ShapeRef.new(shape: FixtureId, required: true, location_name: "fixtureId"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DeleteDictionaryRequest.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location: "uri", location_name: "id"))
    DeleteDictionaryRequest.struct_class = Types::DeleteDictionaryRequest

    DeleteDictionaryResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DictionaryArn, required: true, location_name: "arn"))
    DeleteDictionaryResponse.add_member(:id, Shapes::ShapeRef.new(shape: DictionaryId, required: true, location_name: "id"))
    DeleteDictionaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: DictionaryStatus, required: true, location_name: "status"))
    DeleteDictionaryResponse.struct_class = Types::DeleteDictionaryResponse

    DeleteFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    DeleteFeedRequest.struct_class = Types::DeleteFeedRequest

    DeleteFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    DeleteFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    DeleteFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    DeleteFeedResponse.struct_class = Types::DeleteFeedResponse

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

    FixtureSummary.add_member(:fixture_id, Shapes::ShapeRef.new(shape: FixtureId, required: true, location_name: "fixtureId"))
    FixtureSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    FixtureSummary.add_member(:fixture_group, Shapes::ShapeRef.new(shape: String, location_name: "fixtureGroup"))
    FixtureSummary.add_member(:scheduled_start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "scheduledStart"))
    FixtureSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    FixtureSummary.add_member(:competitors, Shapes::ShapeRef.new(shape: CompetitorList, required: true, location_name: "competitors"))
    FixtureSummary.struct_class = Types::FixtureSummary

    FixtureSummaryList.member = Shapes::ShapeRef.new(shape: FixtureSummary)

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

    GetFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    GetFeedRequest.struct_class = Types::GetFeedRequest

    GetFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    GetFeedResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    GetFeedResponse.add_member(:data_endpoints, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "dataEndpoints"))
    GetFeedResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetOutputList, required: true, location_name: "outputs"))
    GetFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    GetFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    GetFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetFeedResponse.struct_class = Types::GetFeedResponse

    GetOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    GetOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    GetOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetOutput.add_member(:from_association, Shapes::ShapeRef.new(shape: Boolean, location_name: "fromAssociation"))
    GetOutput.struct_class = Types::GetOutput

    GetOutputList.member = Shapes::ShapeRef.new(shape: GetOutput)

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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OutputConfig.add_member(:cropping, Shapes::ShapeRef.new(shape: CroppingConfig, location_name: "cropping"))
    OutputConfig.add_member(:clipping, Shapes::ShapeRef.new(shape: ClippingConfig, location_name: "clipping"))
    OutputConfig.add_member(:subtitling, Shapes::ShapeRef.new(shape: SubtitlingConfig, location_name: "subtitling"))
    OutputConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutputConfig.add_member_subclass(:cropping, Types::OutputConfig::Cropping)
    OutputConfig.add_member_subclass(:clipping, Types::OutputConfig::Clipping)
    OutputConfig.add_member_subclass(:subtitling, Types::OutputConfig::Subtitling)
    OutputConfig.add_member_subclass(:unknown, Types::OutputConfig::Unknown)
    OutputConfig.struct_class = Types::OutputConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubtitlingConfig.add_member(:language, Shapes::ShapeRef.new(shape: TranscriptionLanguage, required: true, location_name: "language"))
    SubtitlingConfig.add_member(:aspect_ratio, Shapes::ShapeRef.new(shape: AspectRatio, location_name: "aspectRatio"))
    SubtitlingConfig.add_member(:dictionary, Shapes::ShapeRef.new(shape: DictionaryId, location_name: "dictionary"))
    SubtitlingConfig.add_member(:profanity_filter, Shapes::ShapeRef.new(shape: ProfanityFilterMode, location_name: "profanityFilter"))
    SubtitlingConfig.struct_class = Types::SubtitlingConfig

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

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

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
    UpdateFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    UpdateFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    UpdateFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateFeedResponse.struct_class = Types::UpdateFeedResponse

    UpdateOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    UpdateOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    UpdateOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateOutput.add_member(:from_association, Shapes::ShapeRef.new(shape: Boolean, location_name: "fromAssociation"))
    UpdateOutput.struct_class = Types::UpdateOutput

    UpdateOutputList.member = Shapes::ShapeRef.new(shape: UpdateOutput)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


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
    end

  end
end

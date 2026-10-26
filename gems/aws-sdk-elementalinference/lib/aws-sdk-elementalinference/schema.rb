# frozen_string_literal: true

# This is generated code!

module Aws::ElementalInference
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AspectRatio = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#AspectRatio", name: "AspectRatio")
    AssociateFeedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#AssociateFeedRequest", name: "AssociateFeedRequest")
    AssociateFeedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#AssociateFeedResponse", name: "AssociateFeedResponse")
    AssociatedResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#AssociatedResourceName", name: "AssociatedResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\w \\-\\.',@:;/]*$"})
    ClippingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ClippingConfig", name: "ClippingConfig")
    Competitor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#Competitor", name: "Competitor")
    CompetitorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#CompetitorList", name: "CompetitorList", traits: {"smithy.api#length" => {"max" => 30}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#retryable" => {}})
    ContextualMetadataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ContextualMetadataConfig", name: "ContextualMetadataConfig")
    CreateDictionaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#CreateDictionaryRequest", name: "CreateDictionaryRequest")
    CreateDictionaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#CreateDictionaryResponse", name: "CreateDictionaryResponse")
    CreateFeedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#CreateFeedRequest", name: "CreateFeedRequest")
    CreateFeedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#CreateFeedResponse", name: "CreateFeedResponse")
    CreateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#CreateOutput", name: "CreateOutput")
    CreateOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#CreateOutputList", name: "CreateOutputList")
    CroppingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#CroppingConfig", name: "CroppingConfig")
    DataSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DataSourceConfiguration", name: "DataSourceConfiguration")
    DataSourceSport = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#DataSourceSport", name: "DataSourceSport")
    DeleteDictionaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DeleteDictionaryRequest", name: "DeleteDictionaryRequest")
    DeleteDictionaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DeleteDictionaryResponse", name: "DeleteDictionaryResponse")
    DeleteFeedPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DeleteFeedPolicyRequest", name: "DeleteFeedPolicyRequest")
    DeleteFeedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DeleteFeedRequest", name: "DeleteFeedRequest")
    DeleteFeedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DeleteFeedResponse", name: "DeleteFeedResponse")
    DictionaryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#DictionaryArn", name: "DictionaryArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Elemental-Inference::Dictionary", "service" => "com.amazonaws.elementalinference#ElementalInference", "resource" => "com.amazonaws.elementalinference#DictionaryResource"}})
    DictionaryEntriesPayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#DictionaryEntriesPayload", name: "DictionaryEntriesPayload", traits: {"smithy.api#length" => {"max" => 40960}})
    DictionaryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#DictionaryId", name: "DictionaryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 19}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DictionaryLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#DictionaryLanguage", name: "DictionaryLanguage")
    DictionaryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#DictionaryStatus", name: "DictionaryStatus")
    DictionarySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DictionarySummary", name: "DictionarySummary")
    DictionarySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#DictionarySummaryList", name: "DictionarySummaryList")
    DisassociateFeedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DisassociateFeedRequest", name: "DisassociateFeedRequest")
    DisassociateFeedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#DisassociateFeedResponse", name: "DisassociateFeedResponse")
    ExportDictionaryEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ExportDictionaryEntriesRequest", name: "ExportDictionaryEntriesRequest")
    ExportDictionaryEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ExportDictionaryEntriesResponse", name: "ExportDictionaryEntriesResponse")
    ExtendedAnalysisMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#ExtendedAnalysisMode", name: "ExtendedAnalysisMode")
    FeedArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#FeedArn", name: "FeedArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Elemental-Inference::Feed", "service" => "com.amazonaws.elementalinference#ElementalInference", "resource" => "com.amazonaws.elementalinference#FeedResource"}})
    FeedAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#FeedAssociation", name: "FeedAssociation")
    FeedId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#FeedId", name: "FeedId", traits: {"smithy.api#pattern" => "^[a-z0-9]{19}$"})
    FeedReferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#FeedReferences", name: "FeedReferences")
    FeedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#FeedStatus", name: "FeedStatus")
    FeedSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#FeedSummary", name: "FeedSummary")
    FeedSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#FeedSummaryList", name: "FeedSummaryList")
    FilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#FilterName", name: "FilterName")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#FilterValueList", name: "FilterValueList", traits: {"smithy.api#length" => {"max" => 10}})
    FixtureDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#FixtureDate", name: "FixtureDate", traits: {"smithy.api#pattern" => "^\\d{4}-\\d{2}-\\d{2}$"})
    FixtureId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#FixtureId", name: "FixtureId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FixtureSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#FixtureSummary", name: "FixtureSummary")
    FixtureSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#FixtureSummaryList", name: "FixtureSummaryList")
    GatewayTimedOutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GatewayTimedOutException", name: "GatewayTimedOutException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504, "smithy.api#retryable" => {}})
    GetDictionaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetDictionaryRequest", name: "GetDictionaryRequest")
    GetDictionaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetDictionaryResponse", name: "GetDictionaryResponse")
    GetFeedPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetFeedPolicyRequest", name: "GetFeedPolicyRequest")
    GetFeedPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetFeedPolicyResponse", name: "GetFeedPolicyResponse")
    GetFeedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetFeedRequest", name: "GetFeedRequest")
    GetFeedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetFeedResponse", name: "GetFeedResponse")
    GetFixtureRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetFixtureRequest", name: "GetFixtureRequest")
    GetFixtureResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetFixtureResponse", name: "GetFixtureResponse")
    GetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#GetOutput", name: "GetOutput")
    GetOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#GetOutputList", name: "GetOutputList")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 32, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::[0-9]{12}:role/.+$"})
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListDictionariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ListDictionariesRequest", name: "ListDictionariesRequest")
    ListDictionariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ListDictionariesResponse", name: "ListDictionariesResponse")
    ListFeedsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ListFeedsRequest", name: "ListFeedsRequest")
    ListFeedsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ListFeedsResponse", name: "ListFeedsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    OutputConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.elementalinference#OutputConfig", name: "OutputConfig")
    OutputStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#OutputStatus", name: "OutputStatus")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ProfanityFilterMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#ProfanityFilterMode", name: "ProfanityFilterMode")
    PutFeedPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#PutFeedPolicyRequest", name: "PutFeedPolicyRequest")
    PutFeedPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#PutFeedPolicyResponse", name: "PutFeedPolicyResponse")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#ResourceArn", name: "ResourceArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Elemental-Inference::Resource"}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:elemental-inference[a-z\\-]*:[a-z0-9\\-]+:[0-9]{12}:(feed|dictionary)/[a-zA-Z0-9]{1,19}$"})
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\w \\-\\.',@:;]*$"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#ResourceName", name: "ResourceName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]([a-zA-Z0-9-_]{0,126}[a-zA-Z0-9])?$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 10, "max" => 255}, "smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.+$"})
    SearchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#SearchFilter", name: "SearchFilter")
    SearchFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#SearchFilterList", name: "SearchFilterList", traits: {"smithy.api#length" => {"max" => 10}})
    SearchFixturesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#SearchFixturesRequest", name: "SearchFixturesRequest")
    SearchFixturesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#SearchFixturesResponse", name: "SearchFixturesResponse")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#StringList", name: "StringList")
    SubtitlingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#SubtitlingConfig", name: "SubtitlingConfig")
    SummaryGenerationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#SummaryGenerationMode", name: "SummaryGenerationMode")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.elementalinference#TagMap", name: "TagMap")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elementalinference#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}})
    TemplateGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#TemplateGroup", name: "TemplateGroup")
    TemplateGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#TemplateGroupList", name: "TemplateGroupList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    TemplateUriList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#TemplateUriList", name: "TemplateUriList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    TooManyRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#TooManyRequestException", name: "TooManyRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TranscriptionLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elementalinference#TranscriptionLanguage", name: "TranscriptionLanguage")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateDictionaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#UpdateDictionaryRequest", name: "UpdateDictionaryRequest")
    UpdateDictionaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#UpdateDictionaryResponse", name: "UpdateDictionaryResponse")
    UpdateFeedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#UpdateFeedRequest", name: "UpdateFeedRequest")
    UpdateFeedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#UpdateFeedResponse", name: "UpdateFeedResponse")
    UpdateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#UpdateOutput", name: "UpdateOutput")
    UpdateOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elementalinference#UpdateOutputList", name: "UpdateOutputList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elementalinference#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AspectRatio.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "width", traits: {"smithy.api#required" => {}}))
    AspectRatio.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "height", traits: {"smithy.api#required" => {}}))
    AspectRatio.type = Types::AspectRatio
    AssociateFeedRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateFeedRequest.add_member(:associated_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceName, name: "associatedResourceName", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    AssociateFeedRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOutputList, name: "outputs", traits: {"smithy.api#required" => {}}))
    AssociateFeedRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    AssociateFeedRequest.type = Types::AssociateFeedRequest
    AssociateFeedResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AssociateFeedResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#required" => {}}))
    AssociateFeedResponse.type = Types::AssociateFeedResponse
    ClippingConfig.add_member(:callback_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "callbackMetadata"))
    ClippingConfig.add_member(:data_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, name: "dataSourceConfiguration"))
    ClippingConfig.type = Types::ClippingConfig
    Competitor.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    Competitor.add_member(:is_home, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isHome"))
    Competitor.type = Types::Competitor
    CompetitorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Competitor, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContextualMetadataConfig.add_member(:summary_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryGenerationMode, name: "summaryGeneration"))
    ContextualMetadataConfig.add_member(:extended_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedAnalysisMode, name: "extendedAnalysis"))
    ContextualMetadataConfig.type = Types::ContextualMetadataConfig
    CreateDictionaryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDictionaryRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    CreateDictionaryRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryEntriesPayload, name: "entries"))
    CreateDictionaryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDictionaryRequest.type = Types::CreateDictionaryRequest
    CreateDictionaryResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDictionaryResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDictionaryResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateDictionaryResponse.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    CreateDictionaryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryStatus, name: "status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    CreateDictionaryResponse.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedReferences, name: "references", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    CreateDictionaryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDictionaryResponse.type = Types::CreateDictionaryResponse
    CreateFeedRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFeedRequest.add_member(:access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "accessRoleArn"))
    CreateFeedRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOutputList, name: "outputs", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    CreateFeedRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateFeedRequest.type = Types::CreateFeedRequest
    CreateFeedResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateFeedResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFeedResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateFeedResponse.add_member(:data_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dataEndpoints", traits: {"smithy.api#required" => {}}))
    CreateFeedResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: GetOutputList, name: "outputs", traits: {"smithy.api#required" => {}}))
    CreateFeedResponse.add_member(:access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "accessRoleArn"))
    CreateFeedResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedStatus, name: "status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    CreateFeedResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedAssociation, name: "association", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    CreateFeedResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateFeedResponse.type = Types::CreateFeedResponse
    CreateOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateOutput.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "outputConfig", traits: {"smithy.api#required" => {}}))
    CreateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateOutput.type = Types::CreateOutput
    CreateOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateOutput, name: "member"))
    CroppingConfig.add_member(:template_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateGroupList, name: "templateGroups"))
    CroppingConfig.type = Types::CroppingConfig
    DataSourceConfiguration.add_member(:fixture_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureId, name: "fixtureId", traits: {"smithy.api#required" => {}}))
    DataSourceConfiguration.type = Types::DataSourceConfiguration
    DataSourceSport.add_member(:basketball, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASKETBALL", traits: {"smithy.api#enumValue" => "basketball"}))
    DataSourceSport.add_member(:american_football, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMERICAN_FOOTBALL", traits: {"smithy.api#enumValue" => "american-football"}))
    DeleteDictionaryRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDictionaryRequest.type = Types::DeleteDictionaryRequest
    DeleteDictionaryResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDictionaryResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteDictionaryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteDictionaryResponse.type = Types::DeleteDictionaryResponse
    DeleteFeedPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFeedPolicyRequest.type = Types::DeleteFeedPolicyRequest
    DeleteFeedRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFeedRequest.type = Types::DeleteFeedRequest
    DeleteFeedResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteFeedResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteFeedResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteFeedResponse.type = Types::DeleteFeedResponse
    DictionaryLanguage.add_member(:eng, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENG", traits: {"smithy.api#enumValue" => "eng"}))
    DictionaryLanguage.add_member(:fra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRA", traits: {"smithy.api#enumValue" => "fra"}))
    DictionaryLanguage.add_member(:ita, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITA", traits: {"smithy.api#enumValue" => "ita"}))
    DictionaryLanguage.add_member(:deu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEU", traits: {"smithy.api#enumValue" => "deu"}))
    DictionaryLanguage.add_member(:spa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPA", traits: {"smithy.api#enumValue" => "spa"}))
    DictionaryLanguage.add_member(:por, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POR", traits: {"smithy.api#enumValue" => "por"}))
    DictionaryStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DictionaryStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DictionaryStatus.add_member(:referenced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFERENCED", traits: {"smithy.api#enumValue" => "REFERENCED"}))
    DictionaryStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DictionaryStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DictionarySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DictionarySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#required" => {}}))
    DictionarySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DictionarySummary.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    DictionarySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DictionarySummary.type = Types::DictionarySummary
    DictionarySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionarySummary, name: "member"))
    DisassociateFeedRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateFeedRequest.add_member(:associated_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceName, name: "associatedResourceName", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DisassociateFeedRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    DisassociateFeedRequest.type = Types::DisassociateFeedRequest
    DisassociateFeedResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DisassociateFeedResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#required" => {}}))
    DisassociateFeedResponse.type = Types::DisassociateFeedResponse
    ExportDictionaryEntriesRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportDictionaryEntriesRequest.type = Types::ExportDictionaryEntriesRequest
    ExportDictionaryEntriesResponse.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryEntriesPayload, name: "entries"))
    ExportDictionaryEntriesResponse.type = Types::ExportDictionaryEntriesResponse
    ExtendedAnalysisMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ExtendedAnalysisMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FeedAssociation.add_member(:associated_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceName, name: "associatedResourceName", traits: {"smithy.api#required" => {}}))
    FeedAssociation.type = Types::FeedAssociation
    FeedReferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "member"))
    FeedStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FeedStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    FeedStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FeedStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FeedStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FeedStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    FeedStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    FeedSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedArn, name: "arn", traits: {"smithy.api#required" => {}}))
    FeedSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#required" => {}}))
    FeedSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    FeedSummary.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedAssociation, name: "association"))
    FeedSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FeedSummary.type = Types::FeedSummary
    FeedSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedSummary, name: "member"))
    FilterName.add_member(:competitor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPETITOR", traits: {"smithy.api#enumValue" => "COMPETITOR"}))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    FixtureSummary.add_member(:fixture_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureId, name: "fixtureId", traits: {"smithy.api#required" => {}}))
    FixtureSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    FixtureSummary.add_member(:fixture_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fixtureGroup"))
    FixtureSummary.add_member(:scheduled_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "scheduledStart", traits: {"smithy.api#timestampFormat" => "date-time"}))
    FixtureSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "status", traits: {"smithy.api#required" => {}}))
    FixtureSummary.add_member(:competitors, ::Smithy::Schema::Shapes::MemberShape.new(target: CompetitorList, name: "competitors", traits: {"smithy.api#required" => {}}))
    FixtureSummary.type = Types::FixtureSummary
    FixtureSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureSummary, name: "member"))
    GatewayTimedOutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    GatewayTimedOutException.type = Types::GatewayTimedOutException
    GetDictionaryRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDictionaryRequest.type = Types::GetDictionaryRequest
    GetDictionaryResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetDictionaryResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDictionaryResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#required" => {}}))
    GetDictionaryResponse.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    GetDictionaryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryStatus, name: "status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    GetDictionaryResponse.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedReferences, name: "references", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    GetDictionaryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetDictionaryResponse.type = Types::GetDictionaryResponse
    GetFeedPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFeedPolicyRequest.type = Types::GetFeedPolicyRequest
    GetFeedPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    GetFeedPolicyResponse.type = Types::GetFeedPolicyResponse
    GetFeedRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFeedRequest.type = Types::GetFeedRequest
    GetFeedResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetFeedResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetFeedResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#required" => {}}))
    GetFeedResponse.add_member(:data_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dataEndpoints", traits: {"smithy.api#required" => {}}))
    GetFeedResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: GetOutputList, name: "outputs", traits: {"smithy.api#required" => {}}))
    GetFeedResponse.add_member(:access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "accessRoleArn"))
    GetFeedResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedStatus, name: "status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    GetFeedResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedAssociation, name: "association", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    GetFeedResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetFeedResponse.type = Types::GetFeedResponse
    GetFixtureRequest.add_member(:fixture_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureId, name: "fixtureId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFixtureRequest.type = Types::GetFixtureRequest
    GetFixtureResponse.add_member(:fixture_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureId, name: "fixtureId", traits: {"smithy.api#required" => {}}))
    GetFixtureResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    GetFixtureResponse.add_member(:fixture_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fixtureGroup"))
    GetFixtureResponse.add_member(:scheduled_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "scheduledStart", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetFixtureResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "status", traits: {"smithy.api#required" => {}}))
    GetFixtureResponse.add_member(:competitors, ::Smithy::Schema::Shapes::MemberShape.new(target: CompetitorList, name: "competitors", traits: {"smithy.api#required" => {}}))
    GetFixtureResponse.type = Types::GetFixtureResponse
    GetOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetOutput.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "outputConfig", traits: {"smithy.api#required" => {}}))
    GetOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    GetOutput.add_member(:from_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "fromAssociation", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    GetOutput.type = Types::GetOutput
    GetOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GetOutput, name: "member"))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListDictionariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListDictionariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDictionariesRequest.type = Types::ListDictionariesRequest
    ListDictionariesResponse.add_member(:dictionaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionarySummaryList, name: "dictionaries", traits: {"smithy.api#required" => {}}))
    ListDictionariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListDictionariesResponse.type = Types::ListDictionariesResponse
    ListFeedsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListFeedsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFeedsRequest.type = Types::ListFeedsRequest
    ListFeedsResponse.add_member(:feeds, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedSummaryList, name: "feeds", traits: {"smithy.api#required" => {}}))
    ListFeedsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListFeedsResponse.type = Types::ListFeedsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    OutputConfig.add_member(:cropping, Types::OutputConfig::Cropping, ::Smithy::Schema::Shapes::MemberShape.new(target: CroppingConfig, name: "cropping"))
    OutputConfig.add_member(:clipping, Types::OutputConfig::Clipping, ::Smithy::Schema::Shapes::MemberShape.new(target: ClippingConfig, name: "clipping"))
    OutputConfig.add_member(:subtitling, Types::OutputConfig::Subtitling, ::Smithy::Schema::Shapes::MemberShape.new(target: SubtitlingConfig, name: "subtitling"))
    OutputConfig.add_member(:contextual_metadata, Types::OutputConfig::ContextualMetadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextualMetadataConfig, name: "contextualMetadata"))
    OutputConfig.add_member(:unknown, Types::OutputConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutputConfig.type = Types::OutputConfig
    OutputStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OutputStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProfanityFilterMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProfanityFilterMode.add_member(:censor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CENSOR", traits: {"smithy.api#enumValue" => "CENSOR"}))
    ProfanityFilterMode.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    PutFeedPolicyRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    PutFeedPolicyRequest.type = Types::PutFeedPolicyRequest
    PutFeedPolicyResponse.type = Types::PutFeedPolicyResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name", traits: {"smithy.api#required" => {}}))
    SearchFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "values", traits: {"smithy.api#required" => {}}))
    SearchFilter.type = Types::SearchFilter
    SearchFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "member"))
    SearchFixturesRequest.add_member(:sport, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSport, name: "sport", traits: {"smithy.api#required" => {}}))
    SearchFixturesRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureDate, name: "startDate", traits: {"smithy.api#required" => {}}))
    SearchFixturesRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureDate, name: "endDate"))
    SearchFixturesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterList, name: "filters"))
    SearchFixturesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchFixturesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchFixturesRequest.type = Types::SearchFixturesRequest
    SearchFixturesResponse.add_member(:fixtures, ::Smithy::Schema::Shapes::MemberShape.new(target: FixtureSummaryList, name: "fixtures", traits: {"smithy.api#required" => {}}))
    SearchFixturesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    SearchFixturesResponse.type = Types::SearchFixturesResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SubtitlingConfig.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptionLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    SubtitlingConfig.add_member(:aspect_ratio, ::Smithy::Schema::Shapes::MemberShape.new(target: AspectRatio, name: "aspectRatio"))
    SubtitlingConfig.add_member(:dictionary, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "dictionary"))
    SubtitlingConfig.add_member(:profanity_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfanityFilterMode, name: "profanityFilter"))
    SubtitlingConfig.type = Types::SubtitlingConfig
    SummaryGenerationMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SummaryGenerationMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TemplateGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    TemplateGroup.add_member(:template_uris, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateUriList, name: "templateUris", traits: {"smithy.api#required" => {}}))
    TemplateGroup.type = Types::TemplateGroup
    TemplateGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateGroup, name: "member"))
    TemplateUriList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "member"))
    TooManyRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    TooManyRequestException.type = Types::TooManyRequestException
    TranscriptionLanguage.add_member(:eng, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENG", traits: {"smithy.api#enumValue" => "eng"}))
    TranscriptionLanguage.add_member(:eng_au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENG_AU", traits: {"smithy.api#enumValue" => "eng-au"}))
    TranscriptionLanguage.add_member(:eng_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENG_GB", traits: {"smithy.api#enumValue" => "eng-gb"}))
    TranscriptionLanguage.add_member(:eng_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENG_US", traits: {"smithy.api#enumValue" => "eng-us"}))
    TranscriptionLanguage.add_member(:fra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRA", traits: {"smithy.api#enumValue" => "fra"}))
    TranscriptionLanguage.add_member(:ita, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITA", traits: {"smithy.api#enumValue" => "ita"}))
    TranscriptionLanguage.add_member(:deu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEU", traits: {"smithy.api#enumValue" => "deu"}))
    TranscriptionLanguage.add_member(:spa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPA", traits: {"smithy.api#enumValue" => "spa"}))
    TranscriptionLanguage.add_member(:por, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POR", traits: {"smithy.api#enumValue" => "por"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateDictionaryRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDictionaryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateDictionaryRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryLanguage, name: "language"))
    UpdateDictionaryRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryEntriesPayload, name: "entries"))
    UpdateDictionaryRequest.type = Types::UpdateDictionaryRequest
    UpdateDictionaryResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateDictionaryResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateDictionaryResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateDictionaryResponse.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    UpdateDictionaryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DictionaryStatus, name: "status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    UpdateDictionaryResponse.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedReferences, name: "references", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    UpdateDictionaryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    UpdateDictionaryResponse.type = Types::UpdateDictionaryResponse
    UpdateFeedRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateFeedRequest.add_member(:access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "accessRoleArn"))
    UpdateFeedRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFeedRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOutputList, name: "outputs", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    UpdateFeedRequest.type = Types::UpdateFeedRequest
    UpdateFeedResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateFeedResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateFeedResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateFeedResponse.add_member(:data_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dataEndpoints", traits: {"smithy.api#required" => {}}))
    UpdateFeedResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: GetOutputList, name: "outputs", traits: {"smithy.api#required" => {}}))
    UpdateFeedResponse.add_member(:access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "accessRoleArn"))
    UpdateFeedResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedStatus, name: "status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    UpdateFeedResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedAssociation, name: "association", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    UpdateFeedResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    UpdateFeedResponse.type = Types::UpdateFeedResponse
    UpdateOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateOutput.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "outputConfig", traits: {"smithy.api#required" => {}}))
    UpdateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateOutput.add_member(:from_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "fromAssociation", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait.aws.cloudformation#cfnExcludeProperty"]}))
    UpdateOutput.type = Types::UpdateOutput
    UpdateOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOutput, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    ElementalInference = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elementalinference#ElementalInference"
      service.name = "ElementalInference"
      service.version = "2018-11-14"
      service.traits = {"aws.api#service" => {"sdkId" => "ElementalInference", "arnNamespace" => "elemental-inference", "cloudFormationName" => "ElementalInference", "cloudTrailEventSource" => "elemental-inference.amazonaws.com"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "elemental-inference"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"maxAge" => 86400}, "smithy.api#suppress" => ["UnstableTrait.aws.api#tagEnabled"], "smithy.api#title" => "AWS Elemental Inference", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://elemental-inference-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://elemental-inference-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://elemental-inference.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://elemental-inference.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_feed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#AssociateFeed"
        operation.name = "AssociateFeed"
        operation.input = AssociateFeedRequest
        operation.output = AssociateFeedResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to associate a feed with an AWS resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/feed/{id}/associate", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_dictionary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#CreateDictionary"
        operation.name = "CreateDictionary"
        operation.input = CreateDictionaryRequest
        operation.output = CreateDictionaryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new dictionary", "createsResources" => ["dictionary"], "resources" => {"required" => {}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/dictionary", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_feed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#CreateFeed"
        operation.name = "CreateFeed"
        operation.input = CreateFeedRequest
        operation.output = CreateFeedResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new feed", "createsResources" => ["feed"], "resources" => {"required" => {}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/feed", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dictionary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#DeleteDictionary"
        operation.name = "DeleteDictionary"
        operation.input = DeleteDictionaryRequest
        operation.output = DeleteDictionaryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a dictionary"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/dictionary/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_feed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#DeleteFeed"
        operation.name = "DeleteFeed"
        operation.input = DeleteFeedRequest
        operation.output = DeleteFeedResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a feed"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/feed/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_feed_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#DeleteFeedPolicy"
        operation.name = "DeleteFeedPolicy"
        operation.input = DeleteFeedPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the resource-based policy of a feed", "resources" => {"required" => {"feed" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/feed/{id}/policy", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_feed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#DisassociateFeed"
        operation.name = "DisassociateFeed"
        operation.input = DisassociateFeedRequest
        operation.output = DisassociateFeedResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate a feed from an AWS resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/feed/{id}/disassociate", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:export_dictionary_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#ExportDictionaryEntries"
        operation.name = "ExportDictionaryEntries"
        operation.input = ExportDictionaryEntriesRequest
        operation.output = ExportDictionaryEntriesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to export dictionary entries"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/dictionary/{id}/entries/export", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_dictionary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#GetDictionary"
        operation.name = "GetDictionary"
        operation.input = GetDictionaryRequest
        operation.output = GetDictionaryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get dictionary details"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/dictionary/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_feed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#GetFeed"
        operation.name = "GetFeed"
        operation.input = GetFeedRequest
        operation.output = GetFeedResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get feed details"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/feed/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_feed_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#GetFeedPolicy"
        operation.name = "GetFeedPolicy"
        operation.input = GetFeedPolicyRequest
        operation.output = GetFeedPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get the resource-based policy of a feed", "resources" => {"required" => {"feed" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/feed/{id}/policy", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_fixture, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#GetFixture"
        operation.name = "GetFixture"
        operation.input = GetFixtureRequest
        operation.output = GetFixtureResponse
        operation.errors << AccessDeniedException
        operation.errors << GatewayTimedOutException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a fixture"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/fixtures/{fixtureId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_dictionaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#ListDictionaries"
        operation.name = "ListDictionaries"
        operation.input = ListDictionariesRequest
        operation.output = ListDictionariesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list dictionaries in the account"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/dictionaries", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDictionaries.new
      end)
      service.add_operation(:list_feeds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#ListFeeds"
        operation.name = "ListFeeds"
        operation.input = ListFeedsRequest
        operation.output = ListFeedsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list feeds in the account"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/feeds", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListFeedsSuccess", "params" => {"maxResults" => 10}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListFeeds.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags on a resource"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_feed_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#PutFeedPolicy"
        operation.name = "PutFeedPolicy"
        operation.input = PutFeedPolicyRequest
        operation.output = PutFeedPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to put a resource-based policy on a feed", "resources" => {"required" => {"feed" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/feed/{id}/policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_fixtures, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#SearchFixtures"
        operation.name = "SearchFixtures"
        operation.input = SearchFixturesRequest
        operation.output = SearchFixturesResponse
        operation.errors << AccessDeniedException
        operation.errors << GatewayTimedOutException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to search fixtures"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/fixtures", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchFixtures.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to a resource", "resources" => {"optional" => {"dictionary" => {}, "feed" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource", "resources" => {"optional" => {"dictionary" => {}, "feed" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_dictionary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#UpdateDictionary"
        operation.name = "UpdateDictionary"
        operation.input = UpdateDictionaryRequest
        operation.output = UpdateDictionaryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update dictionary configuration"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/dictionary/{id}", "code" => 200}}
      end)
      service.add_operation(:update_feed, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elementalinference#UpdateFeed"
        operation.name = "UpdateFeed"
        operation.input = UpdateFeedRequest
        operation.output = UpdateFeedResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << TooManyRequestException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update feed configuration"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/feed/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
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

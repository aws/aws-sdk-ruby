# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralChannel
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptChannelHandshakeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#AcceptChannelHandshakeDetail", name: "AcceptChannelHandshakeDetail")
    AcceptChannelHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#AcceptChannelHandshakeRequest", name: "AcceptChannelHandshakeRequest")
    AcceptChannelHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#AcceptChannelHandshakeResponse", name: "AcceptChannelHandshakeResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]*$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#AccountIdList", name: "AccountIdList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AssociatedResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#AssociatedResourceId", name: "AssociatedResourceId", traits: {"smithy.api#length" => {"min" => 16, "max" => 17}, "smithy.api#pattern" => "^(pma|rs)-[a-z0-9]{13}$"})
    AssociatedResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#AssociatedResourceIdentifier", name: "AssociatedResourceIdentifier", traits: {"smithy.api#length" => {"min" => 16, "max" => 1011}, "smithy.api#pattern" => "^((arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/program-management-account/pma-[a-z0-9]{13}(/relationship/rs-[a-z0-9]{13})?)|(pma|rs)-[a-z0-9]{13})$"})
    AssociatedResourceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#AssociatedResourceIdentifierList", name: "AssociatedResourceIdentifierList")
    AssociationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#AssociationType", name: "AssociationType")
    AssociationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#AssociationTypeList", name: "AssociationTypeList")
    CancelChannelHandshakeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CancelChannelHandshakeDetail", name: "CancelChannelHandshakeDetail")
    CancelChannelHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CancelChannelHandshakeRequest", name: "CancelChannelHandshakeRequest")
    CancelChannelHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CancelChannelHandshakeResponse", name: "CancelChannelHandshakeResponse")
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#Catalog", name: "Catalog", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z]*$"})
    ChannelHandshakeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#ChannelHandshakeId", name: "ChannelHandshakeId", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^ch-[a-z0-9]{13}$"})
    ChannelHandshakeIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#ChannelHandshakeIdentifier", name: "ChannelHandshakeIdentifier", traits: {"smithy.api#length" => {"min" => 16, "max" => 1011}, "smithy.api#pattern" => "^(arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/channel-handshake/)?ch-[a-z0-9]{13}$"})
    ChannelHandshakePayload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralchannel#ChannelHandshakePayload", name: "ChannelHandshakePayload")
    ChannelHandshakeSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ChannelHandshakeSummaries", name: "ChannelHandshakeSummaries")
    ChannelHandshakeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ChannelHandshakeSummary", name: "ChannelHandshakeSummary")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Coverage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#Coverage", name: "Coverage")
    CreateChannelHandshakeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateChannelHandshakeDetail", name: "CreateChannelHandshakeDetail")
    CreateChannelHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateChannelHandshakeRequest", name: "CreateChannelHandshakeRequest")
    CreateChannelHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateChannelHandshakeResponse", name: "CreateChannelHandshakeResponse")
    CreateProgramManagementAccountDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateProgramManagementAccountDetail", name: "CreateProgramManagementAccountDetail")
    CreateProgramManagementAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateProgramManagementAccountRequest", name: "CreateProgramManagementAccountRequest")
    CreateProgramManagementAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateProgramManagementAccountResponse", name: "CreateProgramManagementAccountResponse")
    CreateRelationshipDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateRelationshipDetail", name: "CreateRelationshipDetail")
    CreateRelationshipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateRelationshipRequest", name: "CreateRelationshipRequest")
    CreateRelationshipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#CreateRelationshipResponse", name: "CreateRelationshipResponse")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.partnercentralchannel#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteProgramManagementAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#DeleteProgramManagementAccountRequest", name: "DeleteProgramManagementAccountRequest")
    DeleteProgramManagementAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#DeleteProgramManagementAccountResponse", name: "DeleteProgramManagementAccountResponse")
    DeleteRelationshipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#DeleteRelationshipRequest", name: "DeleteRelationshipRequest")
    DeleteRelationshipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#DeleteRelationshipResponse", name: "DeleteRelationshipResponse")
    GetRelationshipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#GetRelationshipRequest", name: "GetRelationshipRequest")
    GetRelationshipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#GetRelationshipResponse", name: "GetRelationshipResponse")
    HandshakeDetail = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralchannel#HandshakeDetail", name: "HandshakeDetail")
    HandshakeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#HandshakeStatus", name: "HandshakeStatus")
    HandshakeStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#HandshakeStatusList", name: "HandshakeStatusList")
    HandshakeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#HandshakeType", name: "HandshakeType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListChannelHandshakesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListChannelHandshakesRequest", name: "ListChannelHandshakesRequest")
    ListChannelHandshakesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListChannelHandshakesResponse", name: "ListChannelHandshakesResponse")
    ListChannelHandshakesTypeFilters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralchannel#ListChannelHandshakesTypeFilters", name: "ListChannelHandshakesTypeFilters")
    ListChannelHandshakesTypeSort = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralchannel#ListChannelHandshakesTypeSort", name: "ListChannelHandshakesTypeSort")
    ListProgramManagementAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListProgramManagementAccountsRequest", name: "ListProgramManagementAccountsRequest")
    ListProgramManagementAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListProgramManagementAccountsResponse", name: "ListProgramManagementAccountsResponse")
    ListProgramManagementAccountsSortBase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListProgramManagementAccountsSortBase", name: "ListProgramManagementAccountsSortBase")
    ListProgramManagementAccountsSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ListProgramManagementAccountsSortName", name: "ListProgramManagementAccountsSortName")
    ListRelationshipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListRelationshipsRequest", name: "ListRelationshipsRequest")
    ListRelationshipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListRelationshipsResponse", name: "ListRelationshipsResponse")
    ListRelationshipsSortBase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListRelationshipsSortBase", name: "ListRelationshipsSortBase")
    ListRelationshipsSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ListRelationshipsSortName", name: "ListRelationshipsSortName")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MinimumNoticeDays = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#MinimumNoticeDays", name: "MinimumNoticeDays", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[0-9]*$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F\\x20]*$"})
    Note = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#Note", name: "Note", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]*$"})
    ParticipantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ParticipantType", name: "ParticipantType")
    PartnerLedSupport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#PartnerLedSupport", name: "PartnerLedSupport")
    PartnerProfileDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#PartnerProfileDisplayName", name: "PartnerProfileDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[\\x00-\\x7E\\xA9\\xAE\\xA2-\\xA5\\u202F]+$"})
    Program = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#Program", name: "Program")
    ProgramList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ProgramList", name: "ProgramList")
    ProgramManagementAccountDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountDisplayName", name: "ProgramManagementAccountDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]*$"})
    ProgramManagementAccountDisplayNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountDisplayNameList", name: "ProgramManagementAccountDisplayNameList")
    ProgramManagementAccountHandshakeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountHandshakeDetail", name: "ProgramManagementAccountHandshakeDetail")
    ProgramManagementAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountId", name: "ProgramManagementAccountId", traits: {"smithy.api#length" => {"min" => 17, "max" => 17}, "smithy.api#pattern" => "^pma-[a-z0-9]{13}$"})
    ProgramManagementAccountIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountIdentifier", name: "ProgramManagementAccountIdentifier", traits: {"smithy.api#length" => {"min" => 17, "max" => 1011}, "smithy.api#pattern" => "^(arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/program-management-account/)?pma-[a-z0-9]{13}$"})
    ProgramManagementAccountIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountIdentifierList", name: "ProgramManagementAccountIdentifierList")
    ProgramManagementAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountStatus", name: "ProgramManagementAccountStatus")
    ProgramManagementAccountStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountStatusList", name: "ProgramManagementAccountStatusList")
    ProgramManagementAccountSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountSummaries", name: "ProgramManagementAccountSummaries")
    ProgramManagementAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountSummary", name: "ProgramManagementAccountSummary")
    ProgramManagementAccountTypeFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountTypeFilters", name: "ProgramManagementAccountTypeFilters")
    ProgramManagementAccountTypeSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountTypeSort", name: "ProgramManagementAccountTypeSort")
    ProgramManagementAccountTypeSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ProgramManagementAccountTypeSortName", name: "ProgramManagementAccountTypeSortName")
    Provider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#Provider", name: "Provider")
    RejectChannelHandshakeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RejectChannelHandshakeDetail", name: "RejectChannelHandshakeDetail")
    RejectChannelHandshakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RejectChannelHandshakeRequest", name: "RejectChannelHandshakeRequest")
    RejectChannelHandshakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RejectChannelHandshakeResponse", name: "RejectChannelHandshakeResponse")
    RelationshipDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RelationshipDetail", name: "RelationshipDetail")
    RelationshipDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#RelationshipDisplayName", name: "RelationshipDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F]*$"})
    RelationshipDisplayNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#RelationshipDisplayNameList", name: "RelationshipDisplayNameList")
    RelationshipId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#RelationshipId", name: "RelationshipId", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^rs-[a-z0-9]{13}$"})
    RelationshipIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#RelationshipIdentifier", name: "RelationshipIdentifier", traits: {"smithy.api#length" => {"min" => 16, "max" => 1011}, "smithy.api#pattern" => "^(arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/program-management-account/pma-[a-z0-9]{13}/relationship/)?rs-[a-z0-9]{13}$"})
    RelationshipSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#RelationshipSummaries", name: "RelationshipSummaries")
    RelationshipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RelationshipSummary", name: "RelationshipSummary")
    ResaleAccountModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ResaleAccountModel", name: "ResaleAccountModel")
    ResoldEnterprise = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ResoldEnterprise", name: "ResoldEnterprise")
    ResoldUnifiedOperations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ResoldUnifiedOperations", name: "ResoldUnifiedOperations")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Revision = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#Revision", name: "Revision", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[0-9]*$"})
    RevokeServicePeriodHandshakeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RevokeServicePeriodHandshakeDetail", name: "RevokeServicePeriodHandshakeDetail")
    RevokeServicePeriodPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RevokeServicePeriodPayload", name: "RevokeServicePeriodPayload")
    RevokeServicePeriodTypeFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RevokeServicePeriodTypeFilters", name: "RevokeServicePeriodTypeFilters")
    RevokeServicePeriodTypeSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#RevokeServicePeriodTypeSort", name: "RevokeServicePeriodTypeSort")
    RevokeServicePeriodTypeSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#RevokeServicePeriodTypeSortName", name: "RevokeServicePeriodTypeSortName")
    Sector = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#Sector", name: "Sector")
    ServicePeriodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ServicePeriodType", name: "ServicePeriodType")
    ServicePeriodTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ServicePeriodTypeList", name: "ServicePeriodTypeList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402, "smithy.api#retryable" => {}})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#SortOrder", name: "SortOrder")
    StartServicePeriodHandshakeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#StartServicePeriodHandshakeDetail", name: "StartServicePeriodHandshakeDetail")
    StartServicePeriodPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#StartServicePeriodPayload", name: "StartServicePeriodPayload")
    StartServicePeriodTypeFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#StartServicePeriodTypeFilters", name: "StartServicePeriodTypeFilters")
    StartServicePeriodTypeSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#StartServicePeriodTypeSort", name: "StartServicePeriodTypeSort")
    StartServicePeriodTypeSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#StartServicePeriodTypeSortName", name: "StartServicePeriodTypeSortName")
    SupportPlan = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralchannel#SupportPlan", name: "SupportPlan")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralchannel#TaggableArn", name: "TaggableArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[a-zA-Z]+/(program-management-account/pma-[a-z0-9]{13}(/relationship/rs-[a-z0-9]{13})?|channel-handshake/ch-[a-z0-9]{13})$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateProgramManagementAccountDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UpdateProgramManagementAccountDetail", name: "UpdateProgramManagementAccountDetail")
    UpdateProgramManagementAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UpdateProgramManagementAccountRequest", name: "UpdateProgramManagementAccountRequest")
    UpdateProgramManagementAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UpdateProgramManagementAccountResponse", name: "UpdateProgramManagementAccountResponse")
    UpdateRelationshipDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UpdateRelationshipDetail", name: "UpdateRelationshipDetail")
    UpdateRelationshipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UpdateRelationshipRequest", name: "UpdateRelationshipRequest")
    UpdateRelationshipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#UpdateRelationshipResponse", name: "UpdateRelationshipResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralchannel#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralchannel#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralchannel#ValidationExceptionReason", name: "ValidationExceptionReason")

    AcceptChannelHandshakeDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeId, name: "id"))
    AcceptChannelHandshakeDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    AcceptChannelHandshakeDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeStatus, name: "status"))
    AcceptChannelHandshakeDetail.type = Types::AcceptChannelHandshakeDetail
    AcceptChannelHandshakeRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    AcceptChannelHandshakeRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    AcceptChannelHandshakeRequest.type = Types::AcceptChannelHandshakeRequest
    AcceptChannelHandshakeResponse.add_member(:channel_handshake_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptChannelHandshakeDetail, name: "channelHandshakeDetail"))
    AcceptChannelHandshakeResponse.type = Types::AcceptChannelHandshakeResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AssociatedResourceIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceIdentifier, name: "member"))
    AssociationType.add_member(:downstream_seller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWNSTREAM_SELLER", traits: {"smithy.api#enumValue" => "DOWNSTREAM_SELLER"}))
    AssociationType.add_member(:end_customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_CUSTOMER", traits: {"smithy.api#enumValue" => "END_CUSTOMER"}))
    AssociationType.add_member(:internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL", traits: {"smithy.api#enumValue" => "INTERNAL"}))
    AssociationTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "member"))
    CancelChannelHandshakeDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeId, name: "id"))
    CancelChannelHandshakeDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    CancelChannelHandshakeDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeStatus, name: "status"))
    CancelChannelHandshakeDetail.type = Types::CancelChannelHandshakeDetail
    CancelChannelHandshakeRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    CancelChannelHandshakeRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    CancelChannelHandshakeRequest.type = Types::CancelChannelHandshakeRequest
    CancelChannelHandshakeResponse.add_member(:channel_handshake_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelChannelHandshakeDetail, name: "channelHandshakeDetail"))
    CancelChannelHandshakeResponse.type = Types::CancelChannelHandshakeResponse
    ChannelHandshakePayload.add_member(:start_service_period_payload, Types::ChannelHandshakePayload::StartServicePeriodPayload, ::Smithy::Schema::Shapes::MemberShape.new(target: StartServicePeriodPayload, name: "startServicePeriodPayload"))
    ChannelHandshakePayload.add_member(:revoke_service_period_payload, Types::ChannelHandshakePayload::RevokeServicePeriodPayload, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokeServicePeriodPayload, name: "revokeServicePeriodPayload"))
    ChannelHandshakePayload.add_member(:unknown, Types::ChannelHandshakePayload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ChannelHandshakePayload.type = Types::ChannelHandshakePayload
    ChannelHandshakeSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeSummary, name: "member"))
    ChannelHandshakeSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeId, name: "id"))
    ChannelHandshakeSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    ChannelHandshakeSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    ChannelHandshakeSummary.add_member(:handshake_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeType, name: "handshakeType"))
    ChannelHandshakeSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId"))
    ChannelHandshakeSummary.add_member(:sender_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "senderAccountId"))
    ChannelHandshakeSummary.add_member(:sender_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfileDisplayName, name: "senderDisplayName"))
    ChannelHandshakeSummary.add_member(:receiver_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "receiverAccountId"))
    ChannelHandshakeSummary.add_member(:associated_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceId, name: "associatedResourceId"))
    ChannelHandshakeSummary.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeDetail, name: "detail"))
    ChannelHandshakeSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt"))
    ChannelHandshakeSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt"))
    ChannelHandshakeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeStatus, name: "status"))
    ChannelHandshakeSummary.type = Types::ChannelHandshakeSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    Coverage.add_member(:entire_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTIRE_ORGANIZATION", traits: {"smithy.api#enumValue" => "ENTIRE_ORGANIZATION"}))
    Coverage.add_member(:management_account_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGEMENT_ACCOUNT_ONLY", traits: {"smithy.api#enumValue" => "MANAGEMENT_ACCOUNT_ONLY"}))
    CreateChannelHandshakeDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeId, name: "id"))
    CreateChannelHandshakeDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    CreateChannelHandshakeDetail.type = Types::CreateChannelHandshakeDetail
    CreateChannelHandshakeRequest.add_member(:handshake_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeType, name: "handshakeType", traits: {"smithy.api#required" => {}}))
    CreateChannelHandshakeRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    CreateChannelHandshakeRequest.add_member(:associated_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceIdentifier, name: "associatedResourceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateChannelHandshakeRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakePayload, name: "payload"))
    CreateChannelHandshakeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateChannelHandshakeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateChannelHandshakeRequest.type = Types::CreateChannelHandshakeRequest
    CreateChannelHandshakeResponse.add_member(:channel_handshake_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateChannelHandshakeDetail, name: "channelHandshakeDetail"))
    CreateChannelHandshakeResponse.type = Types::CreateChannelHandshakeResponse
    CreateProgramManagementAccountDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountId, name: "id"))
    CreateProgramManagementAccountDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    CreateProgramManagementAccountDetail.type = Types::CreateProgramManagementAccountDetail
    CreateProgramManagementAccountRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    CreateProgramManagementAccountRequest.add_member(:program, ::Smithy::Schema::Shapes::MemberShape.new(target: Program, name: "program", traits: {"smithy.api#required" => {}}))
    CreateProgramManagementAccountRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateProgramManagementAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    CreateProgramManagementAccountRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateProgramManagementAccountRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateProgramManagementAccountRequest.type = Types::CreateProgramManagementAccountRequest
    CreateProgramManagementAccountResponse.add_member(:program_management_account_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProgramManagementAccountDetail, name: "programManagementAccountDetail"))
    CreateProgramManagementAccountResponse.type = Types::CreateProgramManagementAccountResponse
    CreateRelationshipDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    CreateRelationshipDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipId, name: "id"))
    CreateRelationshipDetail.type = Types::CreateRelationshipDetail
    CreateRelationshipRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    CreateRelationshipRequest.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType", traits: {"smithy.api#required" => {}}))
    CreateRelationshipRequest.add_member(:program_management_account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "programManagementAccountIdentifier", traits: {"smithy.api#required" => {}}))
    CreateRelationshipRequest.add_member(:associated_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "associatedAccountId", traits: {"smithy.api#required" => {}}))
    CreateRelationshipRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDisplayName, name: "displayName", traits: {"smithy.api#required" => {}}))
    CreateRelationshipRequest.add_member(:resale_account_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAccountModel, name: "resaleAccountModel"))
    CreateRelationshipRequest.add_member(:sector, ::Smithy::Schema::Shapes::MemberShape.new(target: Sector, name: "sector", traits: {"smithy.api#required" => {}}))
    CreateRelationshipRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRelationshipRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateRelationshipRequest.add_member(:requested_support_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPlan, name: "requestedSupportPlan"))
    CreateRelationshipRequest.type = Types::CreateRelationshipRequest
    CreateRelationshipResponse.add_member(:relationship_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateRelationshipDetail, name: "relationshipDetail"))
    CreateRelationshipResponse.type = Types::CreateRelationshipResponse
    DeleteProgramManagementAccountRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    DeleteProgramManagementAccountRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteProgramManagementAccountRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteProgramManagementAccountRequest.type = Types::DeleteProgramManagementAccountRequest
    DeleteProgramManagementAccountResponse.type = Types::DeleteProgramManagementAccountResponse
    DeleteRelationshipRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    DeleteRelationshipRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteRelationshipRequest.add_member(:program_management_account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "programManagementAccountIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteRelationshipRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteRelationshipRequest.type = Types::DeleteRelationshipRequest
    DeleteRelationshipResponse.type = Types::DeleteRelationshipResponse
    GetRelationshipRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    GetRelationshipRequest.add_member(:program_management_account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "programManagementAccountIdentifier", traits: {"smithy.api#required" => {}}))
    GetRelationshipRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    GetRelationshipRequest.type = Types::GetRelationshipRequest
    GetRelationshipResponse.add_member(:relationship_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDetail, name: "relationshipDetail"))
    GetRelationshipResponse.type = Types::GetRelationshipResponse
    HandshakeDetail.add_member(:start_service_period_handshake_detail, Types::HandshakeDetail::StartServicePeriodHandshakeDetail, ::Smithy::Schema::Shapes::MemberShape.new(target: StartServicePeriodHandshakeDetail, name: "startServicePeriodHandshakeDetail"))
    HandshakeDetail.add_member(:revoke_service_period_handshake_detail, Types::HandshakeDetail::RevokeServicePeriodHandshakeDetail, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokeServicePeriodHandshakeDetail, name: "revokeServicePeriodHandshakeDetail"))
    HandshakeDetail.add_member(:program_management_account_handshake_detail, Types::HandshakeDetail::ProgramManagementAccountHandshakeDetail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountHandshakeDetail, name: "programManagementAccountHandshakeDetail"))
    HandshakeDetail.add_member(:unknown, Types::HandshakeDetail::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HandshakeDetail.type = Types::HandshakeDetail
    HandshakeStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    HandshakeStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    HandshakeStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    HandshakeStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    HandshakeStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    HandshakeStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeStatus, name: "member"))
    HandshakeType.add_member(:start_service_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_SERVICE_PERIOD", traits: {"smithy.api#enumValue" => "START_SERVICE_PERIOD"}))
    HandshakeType.add_member(:revoke_service_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKE_SERVICE_PERIOD", traits: {"smithy.api#enumValue" => "REVOKE_SERVICE_PERIOD"}))
    HandshakeType.add_member(:program_management_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROGRAM_MANAGEMENT_ACCOUNT", traits: {"smithy.api#enumValue" => "PROGRAM_MANAGEMENT_ACCOUNT"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListChannelHandshakesRequest.add_member(:handshake_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeType, name: "handshakeType", traits: {"smithy.api#required" => {}}))
    ListChannelHandshakesRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    ListChannelHandshakesRequest.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "participantType", traits: {"smithy.api#required" => {}}))
    ListChannelHandshakesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListChannelHandshakesRequest.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeStatusList, name: "statuses"))
    ListChannelHandshakesRequest.add_member(:associated_resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResourceIdentifierList, name: "associatedResourceIdentifiers"))
    ListChannelHandshakesRequest.add_member(:handshake_type_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListChannelHandshakesTypeFilters, name: "handshakeTypeFilters"))
    ListChannelHandshakesRequest.add_member(:handshake_type_sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ListChannelHandshakesTypeSort, name: "handshakeTypeSort"))
    ListChannelHandshakesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListChannelHandshakesRequest.type = Types::ListChannelHandshakesRequest
    ListChannelHandshakesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeSummaries, name: "items"))
    ListChannelHandshakesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListChannelHandshakesResponse.type = Types::ListChannelHandshakesResponse
    ListChannelHandshakesTypeFilters.add_member(:start_service_period_type_filters, Types::ListChannelHandshakesTypeFilters::StartServicePeriodTypeFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: StartServicePeriodTypeFilters, name: "startServicePeriodTypeFilters"))
    ListChannelHandshakesTypeFilters.add_member(:revoke_service_period_type_filters, Types::ListChannelHandshakesTypeFilters::RevokeServicePeriodTypeFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokeServicePeriodTypeFilters, name: "revokeServicePeriodTypeFilters"))
    ListChannelHandshakesTypeFilters.add_member(:program_management_account_type_filters, Types::ListChannelHandshakesTypeFilters::ProgramManagementAccountTypeFilters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountTypeFilters, name: "programManagementAccountTypeFilters"))
    ListChannelHandshakesTypeFilters.add_member(:unknown, Types::ListChannelHandshakesTypeFilters::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListChannelHandshakesTypeFilters.type = Types::ListChannelHandshakesTypeFilters
    ListChannelHandshakesTypeSort.add_member(:start_service_period_type_sort, Types::ListChannelHandshakesTypeSort::StartServicePeriodTypeSort, ::Smithy::Schema::Shapes::MemberShape.new(target: StartServicePeriodTypeSort, name: "startServicePeriodTypeSort"))
    ListChannelHandshakesTypeSort.add_member(:revoke_service_period_type_sort, Types::ListChannelHandshakesTypeSort::RevokeServicePeriodTypeSort, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokeServicePeriodTypeSort, name: "revokeServicePeriodTypeSort"))
    ListChannelHandshakesTypeSort.add_member(:program_management_account_type_sort, Types::ListChannelHandshakesTypeSort::ProgramManagementAccountTypeSort, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountTypeSort, name: "programManagementAccountTypeSort"))
    ListChannelHandshakesTypeSort.add_member(:unknown, Types::ListChannelHandshakesTypeSort::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListChannelHandshakesTypeSort.type = Types::ListChannelHandshakesTypeSort
    ListProgramManagementAccountsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    ListProgramManagementAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListProgramManagementAccountsRequest.add_member(:display_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountDisplayNameList, name: "displayNames"))
    ListProgramManagementAccountsRequest.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramList, name: "programs"))
    ListProgramManagementAccountsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountIds"))
    ListProgramManagementAccountsRequest.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountStatusList, name: "statuses"))
    ListProgramManagementAccountsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProgramManagementAccountsSortBase, name: "sort"))
    ListProgramManagementAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListProgramManagementAccountsRequest.type = Types::ListProgramManagementAccountsRequest
    ListProgramManagementAccountsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountSummaries, name: "items"))
    ListProgramManagementAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListProgramManagementAccountsResponse.type = Types::ListProgramManagementAccountsResponse
    ListProgramManagementAccountsSortBase.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    ListProgramManagementAccountsSortBase.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListProgramManagementAccountsSortName, name: "sortBy", traits: {"smithy.api#required" => {}}))
    ListProgramManagementAccountsSortBase.type = Types::ListProgramManagementAccountsSortBase
    ListProgramManagementAccountsSortName.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_AT", traits: {"smithy.api#enumValue" => "UpdatedAt"}))
    ListRelationshipsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    ListRelationshipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRelationshipsRequest.add_member(:associated_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "associatedAccountIds"))
    ListRelationshipsRequest.add_member(:association_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationTypeList, name: "associationTypes"))
    ListRelationshipsRequest.add_member(:display_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDisplayNameList, name: "displayNames"))
    ListRelationshipsRequest.add_member(:program_management_account_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifierList, name: "programManagementAccountIdentifiers"))
    ListRelationshipsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRelationshipsSortBase, name: "sort"))
    ListRelationshipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRelationshipsRequest.type = Types::ListRelationshipsRequest
    ListRelationshipsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipSummaries, name: "items"))
    ListRelationshipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRelationshipsResponse.type = Types::ListRelationshipsResponse
    ListRelationshipsSortBase.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    ListRelationshipsSortBase.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRelationshipsSortName, name: "sortBy", traits: {"smithy.api#required" => {}}))
    ListRelationshipsSortBase.type = Types::ListRelationshipsSortBase
    ListRelationshipsSortName.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_AT", traits: {"smithy.api#enumValue" => "UpdatedAt"}))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ParticipantType.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER", traits: {"smithy.api#enumValue" => "SENDER"}))
    ParticipantType.add_member(:receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIVER", traits: {"smithy.api#enumValue" => "RECEIVER"}))
    PartnerLedSupport.add_member(:coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: Coverage, name: "coverage", traits: {"smithy.api#required" => {}}))
    PartnerLedSupport.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider"))
    PartnerLedSupport.add_member(:tam_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tamLocation", traits: {"smithy.api#required" => {}}))
    PartnerLedSupport.type = Types::PartnerLedSupport
    Program.add_member(:solution_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOLUTION_PROVIDER", traits: {"smithy.api#enumValue" => "SOLUTION_PROVIDER"}))
    Program.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTION", traits: {"smithy.api#enumValue" => "DISTRIBUTION"}))
    Program.add_member(:distribution_seller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTION_SELLER", traits: {"smithy.api#enumValue" => "DISTRIBUTION_SELLER"}))
    ProgramList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Program, name: "member"))
    ProgramManagementAccountDisplayNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountDisplayName, name: "member"))
    ProgramManagementAccountHandshakeDetail.add_member(:program, ::Smithy::Schema::Shapes::MemberShape.new(target: Program, name: "program"))
    ProgramManagementAccountHandshakeDetail.type = Types::ProgramManagementAccountHandshakeDetail
    ProgramManagementAccountIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "member"))
    ProgramManagementAccountStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ProgramManagementAccountStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ProgramManagementAccountStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ProgramManagementAccountStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountStatus, name: "member"))
    ProgramManagementAccountSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountSummary, name: "member"))
    ProgramManagementAccountSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountId, name: "id"))
    ProgramManagementAccountSummary.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    ProgramManagementAccountSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    ProgramManagementAccountSummary.add_member(:program, ::Smithy::Schema::Shapes::MemberShape.new(target: Program, name: "program"))
    ProgramManagementAccountSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountDisplayName, name: "displayName"))
    ProgramManagementAccountSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ProgramManagementAccountSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    ProgramManagementAccountSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt"))
    ProgramManagementAccountSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt"))
    ProgramManagementAccountSummary.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startDate"))
    ProgramManagementAccountSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountStatus, name: "status"))
    ProgramManagementAccountSummary.type = Types::ProgramManagementAccountSummary
    ProgramManagementAccountTypeFilters.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramList, name: "programs"))
    ProgramManagementAccountTypeFilters.type = Types::ProgramManagementAccountTypeFilters
    ProgramManagementAccountTypeSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    ProgramManagementAccountTypeSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountTypeSortName, name: "sortBy", traits: {"smithy.api#required" => {}}))
    ProgramManagementAccountTypeSort.type = Types::ProgramManagementAccountTypeSort
    ProgramManagementAccountTypeSortName.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_AT", traits: {"smithy.api#enumValue" => "UpdatedAt"}))
    Provider.add_member(:distributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTOR", traits: {"smithy.api#enumValue" => "DISTRIBUTOR"}))
    Provider.add_member(:distribution_seller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTION_SELLER", traits: {"smithy.api#enumValue" => "DISTRIBUTION_SELLER"}))
    RejectChannelHandshakeDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeId, name: "id"))
    RejectChannelHandshakeDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    RejectChannelHandshakeDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HandshakeStatus, name: "status"))
    RejectChannelHandshakeDetail.type = Types::RejectChannelHandshakeDetail
    RejectChannelHandshakeRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    RejectChannelHandshakeRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelHandshakeIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    RejectChannelHandshakeRequest.type = Types::RejectChannelHandshakeRequest
    RejectChannelHandshakeResponse.add_member(:channel_handshake_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RejectChannelHandshakeDetail, name: "channelHandshakeDetail"))
    RejectChannelHandshakeResponse.type = Types::RejectChannelHandshakeResponse
    RelationshipDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    RelationshipDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipId, name: "id"))
    RelationshipDetail.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    RelationshipDetail.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    RelationshipDetail.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType"))
    RelationshipDetail.add_member(:program_management_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountId, name: "programManagementAccountId"))
    RelationshipDetail.add_member(:associated_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "associatedAccountId"))
    RelationshipDetail.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDisplayName, name: "displayName"))
    RelationshipDetail.add_member(:resale_account_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ResaleAccountModel, name: "resaleAccountModel"))
    RelationshipDetail.add_member(:sector, ::Smithy::Schema::Shapes::MemberShape.new(target: Sector, name: "sector"))
    RelationshipDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt"))
    RelationshipDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt"))
    RelationshipDetail.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startDate"))
    RelationshipDetail.type = Types::RelationshipDetail
    RelationshipDisplayNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDisplayName, name: "member"))
    RelationshipSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipSummary, name: "member"))
    RelationshipSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    RelationshipSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipId, name: "id"))
    RelationshipSummary.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    RelationshipSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog"))
    RelationshipSummary.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationType, name: "associationType"))
    RelationshipSummary.add_member(:program_management_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountId, name: "programManagementAccountId"))
    RelationshipSummary.add_member(:associated_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "associatedAccountId"))
    RelationshipSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDisplayName, name: "displayName"))
    RelationshipSummary.add_member(:sector, ::Smithy::Schema::Shapes::MemberShape.new(target: Sector, name: "sector"))
    RelationshipSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt"))
    RelationshipSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt"))
    RelationshipSummary.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startDate"))
    RelationshipSummary.type = Types::RelationshipSummary
    ResaleAccountModel.add_member(:distributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTOR", traits: {"smithy.api#enumValue" => "DISTRIBUTOR"}))
    ResaleAccountModel.add_member(:end_customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_CUSTOMER", traits: {"smithy.api#enumValue" => "END_CUSTOMER"}))
    ResaleAccountModel.add_member(:solution_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOLUTION_PROVIDER", traits: {"smithy.api#enumValue" => "SOLUTION_PROVIDER"}))
    ResoldEnterprise.add_member(:coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: Coverage, name: "coverage", traits: {"smithy.api#required" => {}}))
    ResoldEnterprise.add_member(:tam_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tamLocation", traits: {"smithy.api#required" => {}}))
    ResoldEnterprise.add_member(:charge_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "chargeAccountId"))
    ResoldEnterprise.type = Types::ResoldEnterprise
    ResoldUnifiedOperations.add_member(:coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: Coverage, name: "coverage", traits: {"smithy.api#required" => {}}))
    ResoldUnifiedOperations.add_member(:tam_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tamLocation", traits: {"smithy.api#required" => {}}))
    ResoldUnifiedOperations.add_member(:charge_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "chargeAccountId"))
    ResoldUnifiedOperations.type = Types::ResoldUnifiedOperations
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokeServicePeriodHandshakeDetail.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    RevokeServicePeriodHandshakeDetail.add_member(:service_period_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePeriodType, name: "servicePeriodType"))
    RevokeServicePeriodHandshakeDetail.add_member(:minimum_notice_days, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNoticeDays, name: "minimumNoticeDays"))
    RevokeServicePeriodHandshakeDetail.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startDate"))
    RevokeServicePeriodHandshakeDetail.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "endDate"))
    RevokeServicePeriodHandshakeDetail.type = Types::RevokeServicePeriodHandshakeDetail
    RevokeServicePeriodPayload.add_member(:program_management_account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "programManagementAccountIdentifier", traits: {"smithy.api#required" => {}}))
    RevokeServicePeriodPayload.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    RevokeServicePeriodPayload.type = Types::RevokeServicePeriodPayload
    RevokeServicePeriodTypeFilters.add_member(:service_period_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePeriodTypeList, name: "servicePeriodTypes"))
    RevokeServicePeriodTypeFilters.type = Types::RevokeServicePeriodTypeFilters
    RevokeServicePeriodTypeSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    RevokeServicePeriodTypeSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RevokeServicePeriodTypeSortName, name: "sortBy", traits: {"smithy.api#required" => {}}))
    RevokeServicePeriodTypeSort.type = Types::RevokeServicePeriodTypeSort
    RevokeServicePeriodTypeSortName.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_AT", traits: {"smithy.api#enumValue" => "UpdatedAt"}))
    Sector.add_member(:commercial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMERCIAL", traits: {"smithy.api#enumValue" => "COMMERCIAL"}))
    Sector.add_member(:government, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNMENT", traits: {"smithy.api#enumValue" => "GOVERNMENT"}))
    Sector.add_member(:government_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNMENT_EXCEPTION", traits: {"smithy.api#enumValue" => "GOVERNMENT_EXCEPTION"}))
    ServicePeriodType.add_member(:minimum_notice_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMUM_NOTICE_PERIOD", traits: {"smithy.api#enumValue" => "MINIMUM_NOTICE_PERIOD"}))
    ServicePeriodType.add_member(:fixed_commitment_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIXED_COMMITMENT_PERIOD", traits: {"smithy.api#enumValue" => "FIXED_COMMITMENT_PERIOD"}))
    ServicePeriodTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePeriodType, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "Ascending"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "Descending"}))
    StartServicePeriodHandshakeDetail.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    StartServicePeriodHandshakeDetail.add_member(:service_period_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePeriodType, name: "servicePeriodType"))
    StartServicePeriodHandshakeDetail.add_member(:minimum_notice_days, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNoticeDays, name: "minimumNoticeDays"))
    StartServicePeriodHandshakeDetail.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startDate"))
    StartServicePeriodHandshakeDetail.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "endDate"))
    StartServicePeriodHandshakeDetail.type = Types::StartServicePeriodHandshakeDetail
    StartServicePeriodPayload.add_member(:program_management_account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "programManagementAccountIdentifier", traits: {"smithy.api#required" => {}}))
    StartServicePeriodPayload.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    StartServicePeriodPayload.add_member(:service_period_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePeriodType, name: "servicePeriodType", traits: {"smithy.api#required" => {}}))
    StartServicePeriodPayload.add_member(:minimum_notice_days, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNoticeDays, name: "minimumNoticeDays"))
    StartServicePeriodPayload.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "endDate"))
    StartServicePeriodPayload.type = Types::StartServicePeriodPayload
    StartServicePeriodTypeFilters.add_member(:service_period_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePeriodTypeList, name: "servicePeriodTypes"))
    StartServicePeriodTypeFilters.type = Types::StartServicePeriodTypeFilters
    StartServicePeriodTypeSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#required" => {}}))
    StartServicePeriodTypeSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StartServicePeriodTypeSortName, name: "sortBy", traits: {"smithy.api#required" => {}}))
    StartServicePeriodTypeSort.type = Types::StartServicePeriodTypeSort
    StartServicePeriodTypeSortName.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_AT", traits: {"smithy.api#enumValue" => "UpdatedAt"}))
    SupportPlan.add_member(:resold_enterprise, Types::SupportPlan::ResoldEnterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ResoldEnterprise, name: "resoldEnterprise"))
    SupportPlan.add_member(:partner_led_support, Types::SupportPlan::PartnerLedSupport, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerLedSupport, name: "partnerLedSupport"))
    SupportPlan.add_member(:resold_unified_operations, Types::SupportPlan::ResoldUnifiedOperations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResoldUnifiedOperations, name: "resoldUnifiedOperations"))
    SupportPlan.add_member(:unknown, Types::SupportPlan::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SupportPlan.type = Types::SupportPlan
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateProgramManagementAccountDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountId, name: "id"))
    UpdateProgramManagementAccountDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    UpdateProgramManagementAccountDetail.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    UpdateProgramManagementAccountDetail.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountDisplayName, name: "displayName"))
    UpdateProgramManagementAccountDetail.type = Types::UpdateProgramManagementAccountDetail
    UpdateProgramManagementAccountRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    UpdateProgramManagementAccountRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateProgramManagementAccountRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    UpdateProgramManagementAccountRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountDisplayName, name: "displayName"))
    UpdateProgramManagementAccountRequest.type = Types::UpdateProgramManagementAccountRequest
    UpdateProgramManagementAccountResponse.add_member(:program_management_account_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProgramManagementAccountDetail, name: "programManagementAccountDetail"))
    UpdateProgramManagementAccountResponse.type = Types::UpdateProgramManagementAccountResponse
    UpdateRelationshipDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    UpdateRelationshipDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipId, name: "id"))
    UpdateRelationshipDetail.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    UpdateRelationshipDetail.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDisplayName, name: "displayName"))
    UpdateRelationshipDetail.type = Types::UpdateRelationshipDetail
    UpdateRelationshipRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "catalog", traits: {"smithy.api#required" => {}}))
    UpdateRelationshipRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateRelationshipRequest.add_member(:program_management_account_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgramManagementAccountIdentifier, name: "programManagementAccountIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateRelationshipRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    UpdateRelationshipRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipDisplayName, name: "displayName"))
    UpdateRelationshipRequest.add_member(:requested_support_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportPlan, name: "requestedSupportPlan"))
    UpdateRelationshipRequest.type = Types::UpdateRelationshipRequest
    UpdateRelationshipResponse.add_member(:relationship_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRelationshipDetail, name: "relationshipDetail"))
    UpdateRelationshipResponse.type = Types::UpdateRelationshipResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:request_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "REQUEST_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:business_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "BUSINESS_VALIDATION_FAILED"}))

    PartnerCentralChannel = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.partnercentralchannel#PartnerCentralChannel"
      service.name = "PartnerCentralChannel"
      service.version = "2024-03-18"
      service.traits = {"aws.api#service" => {"sdkId" => "PartnerCentral Channel", "endpointPrefix" => "partnercentral-channel", "arnNamespace" => "partnercentral", "cloudTrailEventSource" => "partnercentral-channel.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "partnercentral-channel"}, "aws.auth#sigv4a" => {"name" => "partnercentral-channel"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "aws_recommended"}, "aws.iam#defineConditionKeys" => {"partnercentral:Catalog" => {"type" => "String", "relativeDocumentation" => "page.html#Catalog", "documentation" => "Catalog"}, "partnercentral:ChannelHandshakeType" => {"type" => "String", "relativeDocumentation" => "page.html#ChannelHandshakeType", "documentation" => "ChannelHandshakeType"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.protocols#awsJson1_0" => {}, "smithy.api#auth" => ["aws.auth#sigv4a", "aws.auth#sigv4"], "smithy.api#cors" => {}, "smithy.api#title" => "Partner Central Channel API", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-channel.us-gov.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-channel-fips.us-gov.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-channel-fips.global.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-channel.global.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"]}, {"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 8, "nodes" => "/////wAAAAH/////AAAAAAAAAAgAAAADAAAAAQAAAAQF9eEHAAAAAgAAAAUF9eEHAAAAAwAAAAcAAAAGAAAABAX14QUF9eEGAAAABAX14QQF9eEDAAAABAX14QEF9eEC"}}
      service.add_operation(:accept_channel_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#AcceptChannelHandshake"
        operation.name = "AcceptChannelHandshake"
        operation.input = AcceptChannelHandshakeRequest
        operation.output = AcceptChannelHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/AcceptChannelHandshake", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_channel_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#CancelChannelHandshake"
        operation.name = "CancelChannelHandshake"
        operation.input = CancelChannelHandshakeRequest
        operation.output = CancelChannelHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CancelChannelHandshake", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#CreateChannelHandshake"
        operation.name = "CreateChannelHandshake"
        operation.input = CreateChannelHandshakeRequest
        operation.output = CreateChannelHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateChannelHandshake", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_program_management_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#CreateProgramManagementAccount"
        operation.name = "CreateProgramManagementAccount"
        operation.input = CreateProgramManagementAccountRequest
        operation.output = CreateProgramManagementAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateProgramManagementAccount", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateProgramManagementAccountFailure", "params" => {"catalog" => "AWS", "displayName" => "TestAccount", "program" => "SOLUTION_PROVIDER", "accountId" => "000000000000"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:create_relationship, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#CreateRelationship"
        operation.name = "CreateRelationship"
        operation.input = CreateRelationshipRequest
        operation.output = CreateRelationshipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateRelationship", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateRelationshipFailure", "params" => {"catalog" => "AWS", "associationType" => "END_CUSTOMER", "programManagementAccountIdentifier" => "pma-1234567890123", "associatedAccountId" => "000000000000", "displayName" => "TestRelationship", "sector" => "COMMERCIAL"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:delete_program_management_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#DeleteProgramManagementAccount"
        operation.name = "DeleteProgramManagementAccount"
        operation.input = DeleteProgramManagementAccountRequest
        operation.output = DeleteProgramManagementAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteProgramManagementAccount", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_relationship, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#DeleteRelationship"
        operation.name = "DeleteRelationship"
        operation.input = DeleteRelationshipRequest
        operation.output = DeleteRelationshipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteRelationship", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_relationship, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#GetRelationship"
        operation.name = "GetRelationship"
        operation.input = GetRelationshipRequest
        operation.output = GetRelationshipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetRelationship", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_channel_handshakes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#ListChannelHandshakes"
        operation.name = "ListChannelHandshakes"
        operation.input = ListChannelHandshakesRequest
        operation.output = ListChannelHandshakesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListChannelHandshakes", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannelHandshakes.new
      end)
      service.add_operation(:list_program_management_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#ListProgramManagementAccounts"
        operation.name = "ListProgramManagementAccounts"
        operation.input = ListProgramManagementAccountsRequest
        operation.output = ListProgramManagementAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListProgramManagementAccounts", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListProgramManagementAccountsSuccess", "params" => {"catalog" => "AWS", "maxResults" => 1}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListProgramManagementAccounts.new
      end)
      service.add_operation(:list_relationships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#ListRelationships"
        operation.name = "ListRelationships"
        operation.input = ListRelationshipsRequest
        operation.output = ListRelationshipsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListRelationships", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListRelationshipsSuccess", "params" => {"catalog" => "AWS", "maxResults" => 1}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListRelationships.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListTagsForResource", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsForResourceFailure", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-1234567890123"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:reject_channel_handshake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#RejectChannelHandshake"
        operation.name = "RejectChannelHandshake"
        operation.input = RejectChannelHandshakeRequest
        operation.output = RejectChannelHandshakeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/RejectChannelHandshake", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.traits = {"smithy.api#http" => {"uri" => "/TagResource", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "TagResourceFailure", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-1234567890123", "tags" => [{"key" => "TestKey", "value" => "TestValue"}]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.traits = {"smithy.api#http" => {"uri" => "/UntagResource", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UntagResourceFailure", "params" => {"resourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-1234567890123", "tagKeys" => ["TestKey"]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:update_program_management_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#UpdateProgramManagementAccount"
        operation.name = "UpdateProgramManagementAccount"
        operation.input = UpdateProgramManagementAccountRequest
        operation.output = UpdateProgramManagementAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateProgramManagementAccount", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_relationship, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralchannel#UpdateRelationship"
        operation.name = "UpdateRelationship"
        operation.input = UpdateRelationshipRequest
        operation.output = UpdateRelationshipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateRelationship", "method" => "POST", "code" => 200}}
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

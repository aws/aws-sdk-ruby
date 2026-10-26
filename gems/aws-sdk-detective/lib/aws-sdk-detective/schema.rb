# frozen_string_literal: true

# This is generated code!

module Aws::Detective
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIFailureCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.detective#APIFailureCount", name: "APIFailureCount", traits: {"smithy.api#default" => 0})
    APIName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#APIName", name: "APIName")
    APISuccessCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.detective#APISuccessCount", name: "APISuccessCount", traits: {"smithy.api#default" => 0})
    AcceptInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#AcceptInvitationRequest", name: "AcceptInvitationRequest")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#Account", name: "Account")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    AccountIdExtendedList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#AccountIdExtendedList", name: "AccountIdExtendedList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#AccountList", name: "AccountList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Administrator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#Administrator", name: "Administrator")
    AdministratorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#AdministratorList", name: "AdministratorList")
    AiPaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#AiPaginationToken", name: "AiPaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Aso = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Aso", name: "Aso")
    BatchGetGraphMemberDatasourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#BatchGetGraphMemberDatasourcesRequest", name: "BatchGetGraphMemberDatasourcesRequest")
    BatchGetGraphMemberDatasourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#BatchGetGraphMemberDatasourcesResponse", name: "BatchGetGraphMemberDatasourcesResponse")
    BatchGetMembershipDatasourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#BatchGetMembershipDatasourcesRequest", name: "BatchGetMembershipDatasourcesRequest")
    BatchGetMembershipDatasourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#BatchGetMembershipDatasourcesResponse", name: "BatchGetMembershipDatasourcesResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.detective#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ByteValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.detective#ByteValue", name: "ByteValue")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#CreateGraphRequest", name: "CreateGraphRequest")
    CreateGraphResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#CreateGraphResponse", name: "CreateGraphResponse")
    CreateMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#CreateMembersRequest", name: "CreateMembersRequest")
    CreateMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#CreateMembersResponse", name: "CreateMembersResponse")
    DatasourcePackage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#DatasourcePackage", name: "DatasourcePackage")
    DatasourcePackageIngestDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DatasourcePackageIngestDetail", name: "DatasourcePackageIngestDetail")
    DatasourcePackageIngestDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.detective#DatasourcePackageIngestDetails", name: "DatasourcePackageIngestDetails")
    DatasourcePackageIngestHistory = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.detective#DatasourcePackageIngestHistory", name: "DatasourcePackageIngestHistory")
    DatasourcePackageIngestState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#DatasourcePackageIngestState", name: "DatasourcePackageIngestState")
    DatasourcePackageIngestStates = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.detective#DatasourcePackageIngestStates", name: "DatasourcePackageIngestStates")
    DatasourcePackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#DatasourcePackageList", name: "DatasourcePackageList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DatasourcePackageUsageInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DatasourcePackageUsageInfo", name: "DatasourcePackageUsageInfo")
    DateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DateFilter", name: "DateFilter")
    DeleteGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DeleteGraphRequest", name: "DeleteGraphRequest")
    DeleteMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DeleteMembersRequest", name: "DeleteMembersRequest")
    DeleteMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DeleteMembersResponse", name: "DeleteMembersResponse")
    DescribeOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DescribeOrganizationConfigurationRequest", name: "DescribeOrganizationConfigurationRequest")
    DescribeOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DescribeOrganizationConfigurationResponse", name: "DescribeOrganizationConfigurationResponse")
    DisassociateMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#DisassociateMembershipRequest", name: "DisassociateMembershipRequest")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#EmailAddress", name: "EmailAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+@(?:(?:(?!-)[A-Za-z0-9-]{1,62})?[A-Za-z0-9]{1}\\.)+[A-Za-z]{2,63}$", "smithy.api#sensitive" => {}})
    EmailMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#EmailMessage", name: "EmailMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    EnableOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#EnableOrganizationAdminAccountRequest", name: "EnableOrganizationAdminAccountRequest")
    EntityArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#EntityArn", name: "EntityArn", traits: {"smithy.api#pattern" => "^arn:"})
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#EntityType", name: "EntityType")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#ErrorCode", name: "ErrorCode")
    ErrorCodeReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#ErrorCodeReason", name: "ErrorCodeReason")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#ErrorMessage", name: "ErrorMessage")
    Field = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#Field", name: "Field")
    FilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#FilterCriteria", name: "FilterCriteria")
    FlaggedIpAddressDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#FlaggedIpAddressDetail", name: "FlaggedIpAddressDetail")
    GetInvestigationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#GetInvestigationRequest", name: "GetInvestigationRequest")
    GetInvestigationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#GetInvestigationResponse", name: "GetInvestigationResponse")
    GetMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#GetMembersRequest", name: "GetMembersRequest")
    GetMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#GetMembersResponse", name: "GetMembersResponse")
    Graph = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#Graph", name: "Graph")
    GraphArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#GraphArn", name: "GraphArn", traits: {"smithy.api#pattern" => "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$"})
    GraphArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#GraphArnList", name: "GraphArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    GraphList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#GraphList", name: "GraphList")
    HourlyTimeDelta = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.detective#HourlyTimeDelta", name: "HourlyTimeDelta")
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Id", name: "Id")
    ImpossibleTravelDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ImpossibleTravelDetail", name: "ImpossibleTravelDetail")
    Indicator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#Indicator", name: "Indicator")
    IndicatorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#IndicatorDetail", name: "IndicatorDetail")
    IndicatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#IndicatorType", name: "IndicatorType")
    Indicators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#Indicators", name: "Indicators")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvestigationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#InvestigationDetail", name: "InvestigationDetail")
    InvestigationDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#InvestigationDetails", name: "InvestigationDetails")
    InvestigationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#InvestigationId", name: "InvestigationId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^[0-9]+$"})
    InvitationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#InvitationType", name: "InvitationType")
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#IpAddress", name: "IpAddress")
    IsNewForEntireAccount = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.detective#IsNewForEntireAccount", name: "IsNewForEntireAccount", traits: {"smithy.api#default" => false})
    LastIngestStateChangeDates = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.detective#LastIngestStateChangeDates", name: "LastIngestStateChangeDates")
    ListDatasourcePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListDatasourcePackagesRequest", name: "ListDatasourcePackagesRequest")
    ListDatasourcePackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListDatasourcePackagesResponse", name: "ListDatasourcePackagesResponse")
    ListGraphsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListGraphsRequest", name: "ListGraphsRequest")
    ListGraphsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListGraphsResponse", name: "ListGraphsResponse")
    ListIndicatorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListIndicatorsRequest", name: "ListIndicatorsRequest")
    ListIndicatorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListIndicatorsResponse", name: "ListIndicatorsResponse")
    ListInvestigationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListInvestigationsRequest", name: "ListInvestigationsRequest")
    ListInvestigationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListInvestigationsResponse", name: "ListInvestigationsResponse")
    ListInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListInvitationsRequest", name: "ListInvitationsRequest")
    ListInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListInvitationsResponse", name: "ListInvitationsResponse")
    ListMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListMembersRequest", name: "ListMembersRequest")
    ListMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListMembersResponse", name: "ListMembersResponse")
    ListOrganizationAdminAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListOrganizationAdminAccountsRequest", name: "ListOrganizationAdminAccountsRequest")
    ListOrganizationAdminAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListOrganizationAdminAccountsResponse", name: "ListOrganizationAdminAccountsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Location", name: "Location")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.detective#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MemberDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#MemberDetail", name: "MemberDetail")
    MemberDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#MemberDetailList", name: "MemberDetailList")
    MemberDisabledReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#MemberDisabledReason", name: "MemberDisabledReason")
    MemberResultsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.detective#MemberResultsLimit", name: "MemberResultsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    MemberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#MemberStatus", name: "MemberStatus")
    MembershipDatasources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#MembershipDatasources", name: "MembershipDatasources")
    MembershipDatasourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#MembershipDatasourcesList", name: "MembershipDatasourcesList")
    NewAsoDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#NewAsoDetail", name: "NewAsoDetail")
    NewGeolocationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#NewGeolocationDetail", name: "NewGeolocationDetail")
    NewUserAgentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#NewUserAgentDetail", name: "NewUserAgentDetail")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.detective#Percentage", name: "Percentage")
    Procedure = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Procedure", name: "Procedure")
    Reason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#Reason", name: "Reason")
    RejectInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#RejectInvitationRequest", name: "RejectInvitationRequest")
    RelatedFindingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#RelatedFindingDetail", name: "RelatedFindingDetail")
    RelatedFindingGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#RelatedFindingGroupDetail", name: "RelatedFindingGroupDetail")
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Resource", name: "Resource", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#ResourceList", name: "ResourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#Severity", name: "Severity")
    SortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#SortCriteria", name: "SortCriteria")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#SortOrder", name: "SortOrder")
    StartInvestigationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#StartInvestigationRequest", name: "StartInvestigationRequest")
    StartInvestigationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#StartInvestigationResponse", name: "StartInvestigationResponse")
    StartMonitoringMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#StartMonitoringMemberRequest", name: "StartMonitoringMemberRequest")
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#State", name: "State")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.detective#Status", name: "Status")
    StringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#StringFilter", name: "StringFilter")
    TTPsObservedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#TTPsObservedDetail", name: "TTPsObservedDetail")
    Tactic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Tactic", name: "Tactic")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.detective#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Technique = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Technique", name: "Technique")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.detective#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    TimestampForCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#TimestampForCollection", name: "TimestampForCollection")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Type", name: "Type")
    UnprocessedAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#UnprocessedAccount", name: "UnprocessedAccount")
    UnprocessedAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#UnprocessedAccountList", name: "UnprocessedAccountList")
    UnprocessedGraph = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#UnprocessedGraph", name: "UnprocessedGraph")
    UnprocessedGraphList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.detective#UnprocessedGraphList", name: "UnprocessedGraphList")
    UnprocessedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#UnprocessedReason", name: "UnprocessedReason")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDatasourcePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#UpdateDatasourcePackagesRequest", name: "UpdateDatasourcePackagesRequest")
    UpdateInvestigationStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#UpdateInvestigationStateRequest", name: "UpdateInvestigationStateRequest")
    UpdateOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#UpdateOrganizationConfigurationRequest", name: "UpdateOrganizationConfigurationRequest")
    UserAgent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#UserAgent", name: "UserAgent")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.detective#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.detective#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    VolumeUsageByDatasourcePackage = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.detective#VolumeUsageByDatasourcePackage", name: "VolumeUsageByDatasourcePackage")

    AcceptInvitationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    AcceptInvitationRequest.type = Types::AcceptInvitationRequest
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    AccessDeniedException.add_member(:error_code_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCodeReason, name: "ErrorCodeReason"))
    AccessDeniedException.add_member(:sub_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "SubErrorCode"))
    AccessDeniedException.add_member(:sub_error_code_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCodeReason, name: "SubErrorCodeReason"))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    Account.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    Account.type = Types::Account
    AccountIdExtendedList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "member"))
    Administrator.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    Administrator.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn"))
    Administrator.add_member(:delegation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DelegationTime"))
    Administrator.type = Types::Administrator
    AdministratorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Administrator, name: "member"))
    BatchGetGraphMemberDatasourcesRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    BatchGetGraphMemberDatasourcesRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdExtendedList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    BatchGetGraphMemberDatasourcesRequest.type = Types::BatchGetGraphMemberDatasourcesRequest
    BatchGetGraphMemberDatasourcesResponse.add_member(:member_datasources, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipDatasourcesList, name: "MemberDatasources"))
    BatchGetGraphMemberDatasourcesResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccountList, name: "UnprocessedAccounts"))
    BatchGetGraphMemberDatasourcesResponse.type = Types::BatchGetGraphMemberDatasourcesResponse
    BatchGetMembershipDatasourcesRequest.add_member(:graph_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArnList, name: "GraphArns", traits: {"smithy.api#required" => {}}))
    BatchGetMembershipDatasourcesRequest.type = Types::BatchGetMembershipDatasourcesRequest
    BatchGetMembershipDatasourcesResponse.add_member(:membership_datasources, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipDatasourcesList, name: "MembershipDatasources"))
    BatchGetMembershipDatasourcesResponse.add_member(:unprocessed_graphs, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedGraphList, name: "UnprocessedGraphs"))
    BatchGetMembershipDatasourcesResponse.type = Types::BatchGetMembershipDatasourcesResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateGraphRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateGraphRequest.type = Types::CreateGraphRequest
    CreateGraphResponse.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn"))
    CreateGraphResponse.type = Types::CreateGraphResponse
    CreateMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    CreateMembersRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailMessage, name: "Message"))
    CreateMembersRequest.add_member(:disable_email_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DisableEmailNotification", traits: {"smithy.api#default" => false}))
    CreateMembersRequest.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "Accounts", traits: {"smithy.api#required" => {}}))
    CreateMembersRequest.type = Types::CreateMembersRequest
    CreateMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDetailList, name: "Members"))
    CreateMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccountList, name: "UnprocessedAccounts"))
    CreateMembersResponse.type = Types::CreateMembersResponse
    DatasourcePackage.add_member(:detective_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTIVE_CORE", traits: {"smithy.api#enumValue" => "DETECTIVE_CORE"}))
    DatasourcePackage.add_member(:eks_audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT", traits: {"smithy.api#enumValue" => "EKS_AUDIT"}))
    DatasourcePackage.add_member(:asff_securityhub_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASFF_SECURITYHUB_FINDING", traits: {"smithy.api#enumValue" => "ASFF_SECURITYHUB_FINDING"}))
    DatasourcePackageIngestDetail.add_member(:datasource_package_ingest_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageIngestState, name: "DatasourcePackageIngestState"))
    DatasourcePackageIngestDetail.add_member(:last_ingest_state_change, ::Smithy::Schema::Shapes::MemberShape.new(target: LastIngestStateChangeDates, name: "LastIngestStateChange"))
    DatasourcePackageIngestDetail.type = Types::DatasourcePackageIngestDetail
    DatasourcePackageIngestDetails.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackage, name: "key"))
    DatasourcePackageIngestDetails.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageIngestDetail, name: "value"))
    DatasourcePackageIngestHistory.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackage, name: "key"))
    DatasourcePackageIngestHistory.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LastIngestStateChangeDates, name: "value"))
    DatasourcePackageIngestState.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    DatasourcePackageIngestState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    DatasourcePackageIngestState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DatasourcePackageIngestStates.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackage, name: "key"))
    DatasourcePackageIngestStates.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageIngestState, name: "value"))
    DatasourcePackageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackage, name: "member"))
    DatasourcePackageUsageInfo.add_member(:volume_usage_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteValue, name: "VolumeUsageInBytes"))
    DatasourcePackageUsageInfo.add_member(:volume_usage_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "VolumeUsageUpdateTime"))
    DatasourcePackageUsageInfo.type = Types::DatasourcePackageUsageInfo
    DateFilter.add_member(:start_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartInclusive", traits: {"smithy.api#required" => {}}))
    DateFilter.add_member(:end_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndInclusive", traits: {"smithy.api#required" => {}}))
    DateFilter.type = Types::DateFilter
    DeleteGraphRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    DeleteGraphRequest.type = Types::DeleteGraphRequest
    DeleteMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    DeleteMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    DeleteMembersRequest.type = Types::DeleteMembersRequest
    DeleteMembersResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds"))
    DeleteMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccountList, name: "UnprocessedAccounts"))
    DeleteMembersResponse.type = Types::DeleteMembersResponse
    DescribeOrganizationConfigurationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    DescribeOrganizationConfigurationRequest.type = Types::DescribeOrganizationConfigurationRequest
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#default" => false}))
    DescribeOrganizationConfigurationResponse.type = Types::DescribeOrganizationConfigurationResponse
    DisassociateMembershipRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    DisassociateMembershipRequest.type = Types::DisassociateMembershipRequest
    EnableOrganizationAdminAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    EnableOrganizationAdminAccountRequest.type = Types::EnableOrganizationAdminAccountRequest
    EntityType.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE", traits: {"smithy.api#enumValue" => "IAM_ROLE"}))
    EntityType.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAM_USER"}))
    ErrorCode.add_member(:invalid_graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidGraphArn", traits: {"smithy.api#enumValue" => "INVALID_GRAPH_ARN"}))
    ErrorCode.add_member(:invalid_request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRequestBody", traits: {"smithy.api#enumValue" => "INVALID_REQUEST_BODY"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    Field.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVERITY", traits: {"smithy.api#enumValue" => "SEVERITY"}))
    Field.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    Field.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    FilterCriteria.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "Severity"))
    FilterCriteria.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "Status"))
    FilterCriteria.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "State"))
    FilterCriteria.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringFilter, name: "EntityArn"))
    FilterCriteria.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateFilter, name: "CreatedTime"))
    FilterCriteria.type = Types::FilterCriteria
    FlaggedIpAddressDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    FlaggedIpAddressDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "Reason"))
    FlaggedIpAddressDetail.type = Types::FlaggedIpAddressDetail
    GetInvestigationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    GetInvestigationRequest.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId", traits: {"smithy.api#required" => {}}))
    GetInvestigationRequest.type = Types::GetInvestigationRequest
    GetInvestigationResponse.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn"))
    GetInvestigationResponse.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId"))
    GetInvestigationResponse.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArn, name: "EntityArn"))
    GetInvestigationResponse.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType"))
    GetInvestigationResponse.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    GetInvestigationResponse.add_member(:scope_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScopeStartTime"))
    GetInvestigationResponse.add_member(:scope_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScopeEndTime"))
    GetInvestigationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    GetInvestigationResponse.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "Severity"))
    GetInvestigationResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    GetInvestigationResponse.type = Types::GetInvestigationResponse
    GetMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    GetMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    GetMembersRequest.type = Types::GetMembersRequest
    GetMembersResponse.add_member(:member_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDetailList, name: "MemberDetails"))
    GetMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccountList, name: "UnprocessedAccounts"))
    GetMembersResponse.type = Types::GetMembersResponse
    Graph.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "Arn"))
    Graph.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    Graph.type = Types::Graph
    GraphArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "member"))
    GraphList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Graph, name: "member"))
    ImpossibleTravelDetail.add_member(:starting_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "StartingIpAddress"))
    ImpossibleTravelDetail.add_member(:ending_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "EndingIpAddress"))
    ImpossibleTravelDetail.add_member(:starting_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "StartingLocation"))
    ImpossibleTravelDetail.add_member(:ending_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "EndingLocation"))
    ImpossibleTravelDetail.add_member(:hourly_time_delta, ::Smithy::Schema::Shapes::MemberShape.new(target: HourlyTimeDelta, name: "HourlyTimeDelta"))
    ImpossibleTravelDetail.type = Types::ImpossibleTravelDetail
    Indicator.add_member(:indicator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndicatorType, name: "IndicatorType"))
    Indicator.add_member(:indicator_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: IndicatorDetail, name: "IndicatorDetail"))
    Indicator.type = Types::Indicator
    IndicatorDetail.add_member(:tt_ps_observed_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: TTPsObservedDetail, name: "TTPsObservedDetail"))
    IndicatorDetail.add_member(:impossible_travel_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpossibleTravelDetail, name: "ImpossibleTravelDetail"))
    IndicatorDetail.add_member(:flagged_ip_address_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: FlaggedIpAddressDetail, name: "FlaggedIpAddressDetail"))
    IndicatorDetail.add_member(:new_geolocation_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: NewGeolocationDetail, name: "NewGeolocationDetail"))
    IndicatorDetail.add_member(:new_aso_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: NewAsoDetail, name: "NewAsoDetail"))
    IndicatorDetail.add_member(:new_user_agent_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: NewUserAgentDetail, name: "NewUserAgentDetail"))
    IndicatorDetail.add_member(:related_finding_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedFindingDetail, name: "RelatedFindingDetail"))
    IndicatorDetail.add_member(:related_finding_group_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedFindingGroupDetail, name: "RelatedFindingGroupDetail"))
    IndicatorDetail.type = Types::IndicatorDetail
    IndicatorType.add_member(:ttp_observed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TTP_OBSERVED", traits: {"smithy.api#enumValue" => "TTP_OBSERVED"}))
    IndicatorType.add_member(:impossible_travel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPOSSIBLE_TRAVEL", traits: {"smithy.api#enumValue" => "IMPOSSIBLE_TRAVEL"}))
    IndicatorType.add_member(:flagged_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLAGGED_IP_ADDRESS", traits: {"smithy.api#enumValue" => "FLAGGED_IP_ADDRESS"}))
    IndicatorType.add_member(:new_geolocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_GEOLOCATION", traits: {"smithy.api#enumValue" => "NEW_GEOLOCATION"}))
    IndicatorType.add_member(:new_aso, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_ASO", traits: {"smithy.api#enumValue" => "NEW_ASO"}))
    IndicatorType.add_member(:new_user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_USER_AGENT", traits: {"smithy.api#enumValue" => "NEW_USER_AGENT"}))
    IndicatorType.add_member(:related_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELATED_FINDING", traits: {"smithy.api#enumValue" => "RELATED_FINDING"}))
    IndicatorType.add_member(:related_finding_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELATED_FINDING_GROUP", traits: {"smithy.api#enumValue" => "RELATED_FINDING_GROUP"}))
    Indicators.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Indicator, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvestigationDetail.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId"))
    InvestigationDetail.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "Severity"))
    InvestigationDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    InvestigationDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    InvestigationDetail.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    InvestigationDetail.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArn, name: "EntityArn"))
    InvestigationDetail.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType"))
    InvestigationDetail.type = Types::InvestigationDetail
    InvestigationDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationDetail, name: "member"))
    InvitationType.add_member(:invitation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITATION", traits: {"smithy.api#enumValue" => "INVITATION"}))
    InvitationType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    LastIngestStateChangeDates.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageIngestState, name: "key"))
    LastIngestStateChangeDates.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampForCollection, name: "value"))
    ListDatasourcePackagesRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    ListDatasourcePackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListDatasourcePackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberResultsLimit, name: "MaxResults"))
    ListDatasourcePackagesRequest.type = Types::ListDatasourcePackagesRequest
    ListDatasourcePackagesResponse.add_member(:datasource_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageIngestDetails, name: "DatasourcePackages"))
    ListDatasourcePackagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListDatasourcePackagesResponse.type = Types::ListDatasourcePackagesResponse
    ListGraphsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListGraphsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberResultsLimit, name: "MaxResults"))
    ListGraphsRequest.type = Types::ListGraphsRequest
    ListGraphsResponse.add_member(:graph_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphList, name: "GraphList"))
    ListGraphsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListGraphsResponse.type = Types::ListGraphsResponse
    ListIndicatorsRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    ListIndicatorsRequest.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId", traits: {"smithy.api#required" => {}}))
    ListIndicatorsRequest.add_member(:indicator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndicatorType, name: "IndicatorType"))
    ListIndicatorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AiPaginationToken, name: "NextToken"))
    ListIndicatorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListIndicatorsRequest.type = Types::ListIndicatorsRequest
    ListIndicatorsResponse.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn"))
    ListIndicatorsResponse.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId"))
    ListIndicatorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AiPaginationToken, name: "NextToken"))
    ListIndicatorsResponse.add_member(:indicators, ::Smithy::Schema::Shapes::MemberShape.new(target: Indicators, name: "Indicators"))
    ListIndicatorsResponse.type = Types::ListIndicatorsResponse
    ListInvestigationsRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    ListInvestigationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AiPaginationToken, name: "NextToken"))
    ListInvestigationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListInvestigationsRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    ListInvestigationsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "SortCriteria"))
    ListInvestigationsRequest.type = Types::ListInvestigationsRequest
    ListInvestigationsResponse.add_member(:investigation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationDetails, name: "InvestigationDetails"))
    ListInvestigationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AiPaginationToken, name: "NextToken"))
    ListInvestigationsResponse.type = Types::ListInvestigationsResponse
    ListInvitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListInvitationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberResultsLimit, name: "MaxResults"))
    ListInvitationsRequest.type = Types::ListInvitationsRequest
    ListInvitationsResponse.add_member(:invitations, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDetailList, name: "Invitations"))
    ListInvitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListInvitationsResponse.type = Types::ListInvitationsResponse
    ListMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    ListMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberResultsLimit, name: "MaxResults"))
    ListMembersRequest.type = Types::ListMembersRequest
    ListMembersResponse.add_member(:member_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDetailList, name: "MemberDetails"))
    ListMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListMembersResponse.type = Types::ListMembersResponse
    ListOrganizationAdminAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListOrganizationAdminAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberResultsLimit, name: "MaxResults"))
    ListOrganizationAdminAccountsRequest.type = Types::ListOrganizationAdminAccountsRequest
    ListOrganizationAdminAccountsResponse.add_member(:administrators, ::Smithy::Schema::Shapes::MemberShape.new(target: AdministratorList, name: "Administrators"))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListOrganizationAdminAccountsResponse.type = Types::ListOrganizationAdminAccountsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MemberDetail.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    MemberDetail.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    MemberDetail.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn"))
    MemberDetail.add_member(:master_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "MasterId", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use AdministratorId instead."}}))
    MemberDetail.add_member(:administrator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AdministratorId"))
    MemberDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberStatus, name: "Status"))
    MemberDetail.add_member(:disabled_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDisabledReason, name: "DisabledReason"))
    MemberDetail.add_member(:invited_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InvitedTime"))
    MemberDetail.add_member(:updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedTime"))
    MemberDetail.add_member(:volume_usage_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteValue, name: "VolumeUsageInBytes", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:volume_usage_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "VolumeUsageUpdatedTime", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:percent_of_graph_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "PercentOfGraphUtilization", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:percent_of_graph_utilization_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "PercentOfGraphUtilizationUpdatedTime", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:invitation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationType, name: "InvitationType"))
    MemberDetail.add_member(:volume_usage_by_datasource_package, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeUsageByDatasourcePackage, name: "VolumeUsageByDatasourcePackage"))
    MemberDetail.add_member(:datasource_package_ingest_states, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageIngestStates, name: "DatasourcePackageIngestStates"))
    MemberDetail.type = Types::MemberDetail
    MemberDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDetail, name: "member"))
    MemberDisabledReason.add_member(:volume_too_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_TOO_HIGH", traits: {"smithy.api#enumValue" => "VOLUME_TOO_HIGH"}))
    MemberDisabledReason.add_member(:volume_unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_UNKNOWN", traits: {"smithy.api#enumValue" => "VOLUME_UNKNOWN"}))
    MemberStatus.add_member(:invited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITED", traits: {"smithy.api#enumValue" => "INVITED"}))
    MemberStatus.add_member(:verification_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFICATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "VERIFICATION_IN_PROGRESS"}))
    MemberStatus.add_member(:verification_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFICATION_FAILED", traits: {"smithy.api#enumValue" => "VERIFICATION_FAILED"}))
    MemberStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MemberStatus.add_member(:accepted_but_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED_BUT_DISABLED", traits: {"smithy.api#enumValue" => "ACCEPTED_BUT_DISABLED"}))
    MembershipDatasources.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    MembershipDatasources.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn"))
    MembershipDatasources.add_member(:datasource_package_ingest_history, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageIngestHistory, name: "DatasourcePackageIngestHistory"))
    MembershipDatasources.type = Types::MembershipDatasources
    MembershipDatasourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipDatasources, name: "member"))
    NewAsoDetail.add_member(:aso, ::Smithy::Schema::Shapes::MemberShape.new(target: Aso, name: "Aso"))
    NewAsoDetail.add_member(:is_new_for_entire_account, ::Smithy::Schema::Shapes::MemberShape.new(target: IsNewForEntireAccount, name: "IsNewForEntireAccount", traits: {"smithy.api#default" => false}))
    NewAsoDetail.type = Types::NewAsoDetail
    NewGeolocationDetail.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    NewGeolocationDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    NewGeolocationDetail.add_member(:is_new_for_entire_account, ::Smithy::Schema::Shapes::MemberShape.new(target: IsNewForEntireAccount, name: "IsNewForEntireAccount", traits: {"smithy.api#default" => false}))
    NewGeolocationDetail.type = Types::NewGeolocationDetail
    NewUserAgentDetail.add_member(:user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAgent, name: "UserAgent"))
    NewUserAgentDetail.add_member(:is_new_for_entire_account, ::Smithy::Schema::Shapes::MemberShape.new(target: IsNewForEntireAccount, name: "IsNewForEntireAccount", traits: {"smithy.api#default" => false}))
    NewUserAgentDetail.type = Types::NewUserAgentDetail
    Reason.add_member(:aws_threat_intelligence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_THREAT_INTELLIGENCE", traits: {"smithy.api#enumValue" => "AWS_THREAT_INTELLIGENCE"}))
    RejectInvitationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    RejectInvitationRequest.type = Types::RejectInvitationRequest
    RelatedFindingDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArn, name: "Arn"))
    RelatedFindingDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type"))
    RelatedFindingDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    RelatedFindingDetail.type = Types::RelatedFindingDetail
    RelatedFindingGroupDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    RelatedFindingGroupDetail.type = Types::RelatedFindingGroupDetail
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceQuotaExceededException.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "Resources"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Severity.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATIONAL", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    Severity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    Severity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Severity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    Severity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    SortCriteria.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "Field"))
    SortCriteria.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    SortCriteria.type = Types::SortCriteria
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    StartInvestigationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.add_member(:entity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityArn, name: "EntityArn", traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.add_member(:scope_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScopeStartTime", traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.add_member(:scope_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScopeEndTime", traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.type = Types::StartInvestigationRequest
    StartInvestigationResponse.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId"))
    StartInvestigationResponse.type = Types::StartInvestigationResponse
    StartMonitoringMemberRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    StartMonitoringMemberRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    StartMonitoringMemberRequest.type = Types::StartMonitoringMemberRequest
    State.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    State.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    Status.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    StringFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value", traits: {"smithy.api#required" => {}}))
    StringFilter.type = Types::StringFilter
    TTPsObservedDetail.add_member(:tactic, ::Smithy::Schema::Shapes::MemberShape.new(target: Tactic, name: "Tactic"))
    TTPsObservedDetail.add_member(:technique, ::Smithy::Schema::Shapes::MemberShape.new(target: Technique, name: "Technique"))
    TTPsObservedDetail.add_member(:procedure, ::Smithy::Schema::Shapes::MemberShape.new(target: Procedure, name: "Procedure"))
    TTPsObservedDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    TTPsObservedDetail.add_member(:api_name, ::Smithy::Schema::Shapes::MemberShape.new(target: APIName, name: "APIName"))
    TTPsObservedDetail.add_member(:api_success_count, ::Smithy::Schema::Shapes::MemberShape.new(target: APISuccessCount, name: "APISuccessCount", traits: {"smithy.api#default" => 0}))
    TTPsObservedDetail.add_member(:api_failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: APIFailureCount, name: "APIFailureCount", traits: {"smithy.api#default" => 0}))
    TTPsObservedDetail.type = Types::TTPsObservedDetail
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TimestampForCollection.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    TimestampForCollection.type = Types::TimestampForCollection
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnprocessedAccount.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    UnprocessedAccount.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedReason, name: "Reason"))
    UnprocessedAccount.type = Types::UnprocessedAccount
    UnprocessedAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccount, name: "member"))
    UnprocessedGraph.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn"))
    UnprocessedGraph.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedReason, name: "Reason"))
    UnprocessedGraph.type = Types::UnprocessedGraph
    UnprocessedGraphList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedGraph, name: "member"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasourcePackagesRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    UpdateDatasourcePackagesRequest.add_member(:datasource_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageList, name: "DatasourcePackages", traits: {"smithy.api#required" => {}}))
    UpdateDatasourcePackagesRequest.type = Types::UpdateDatasourcePackagesRequest
    UpdateInvestigationStateRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    UpdateInvestigationStateRequest.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId", traits: {"smithy.api#required" => {}}))
    UpdateInvestigationStateRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#required" => {}}))
    UpdateInvestigationStateRequest.type = Types::UpdateInvestigationStateRequest
    UpdateOrganizationConfigurationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphArn, name: "GraphArn", traits: {"smithy.api#required" => {}}))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#default" => false}))
    UpdateOrganizationConfigurationRequest.type = Types::UpdateOrganizationConfigurationRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    ValidationException.add_member(:error_code_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCodeReason, name: "ErrorCodeReason"))
    ValidationException.type = Types::ValidationException
    VolumeUsageByDatasourcePackage.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackage, name: "key"))
    VolumeUsageByDatasourcePackage.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatasourcePackageUsageInfo, name: "value"))

    AmazonDetective = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.detective#AmazonDetective"
      service.name = "AmazonDetective"
      service.version = "2018-10-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Detective", "arnNamespace" => "detective", "cloudFormationName" => "Detective", "cloudTrailEventSource" => "detective.amazonaws.com", "endpointPrefix" => "api.detective"}, "aws.auth#sigv4" => {"name" => "detective"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Detective", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://detective.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://detective-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://api.detective-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://api.detective-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://api.detective.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://api.detective.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 17, "nodes" => "/////wAAAAH/////AAAAAAAAABAAAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAoAAAAGAAAABAAAAAcF9eEMAAAABQX14QQAAAAIAAAABgX14QQAAAAJAAAACAX14QoF9eELAAAABAAAAAwAAAALAAAABwX14QgF9eEJAAAABQX14QUAAAANAAAABgX14QUAAAAOAAAABwAAAA8F9eEHAAAACAX14QYF9eEHAAAAAwX14QEAAAARAAAABAX14QIF9eED"}}
      service.add_operation(:accept_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#AcceptInvitation"
        operation.name = "AcceptInvitation"
        operation.input = AcceptInvitationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/invitation", "code" => 200}}
      end)
      service.add_operation(:batch_get_graph_member_datasources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#BatchGetGraphMemberDatasources"
        operation.name = "BatchGetGraphMemberDatasources"
        operation.input = BatchGetGraphMemberDatasourcesRequest
        operation.output = BatchGetGraphMemberDatasourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/datasources/get", "code" => 200}}
      end)
      service.add_operation(:batch_get_membership_datasources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#BatchGetMembershipDatasources"
        operation.name = "BatchGetMembershipDatasources"
        operation.input = BatchGetMembershipDatasourcesRequest
        operation.output = BatchGetMembershipDatasourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/membership/datasources/get", "code" => 200}}
      end)
      service.add_operation(:create_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#CreateGraph"
        operation.name = "CreateGraph"
        operation.input = CreateGraphRequest
        operation.output = CreateGraphResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph", "code" => 200}}
      end)
      service.add_operation(:create_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#CreateMembers"
        operation.name = "CreateMembers"
        operation.input = CreateMembersRequest
        operation.output = CreateMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members", "code" => 200}}
      end)
      service.add_operation(:delete_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DeleteGraph"
        operation.name = "DeleteGraph"
        operation.input = DeleteGraphRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/removal", "code" => 200}}
      end)
      service.add_operation(:delete_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DeleteMembers"
        operation.name = "DeleteMembers"
        operation.input = DeleteMembersRequest
        operation.output = DeleteMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members/removal", "code" => 200}}
      end)
      service.add_operation(:describe_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DescribeOrganizationConfiguration"
        operation.name = "DescribeOrganizationConfiguration"
        operation.input = DescribeOrganizationConfigurationRequest
        operation.output = DescribeOrganizationConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/describeOrganizationConfiguration", "code" => 200}}
      end)
      service.add_operation(:disable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DisableOrganizationAdminAccount"
        operation.name = "DisableOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/disableAdminAccount", "code" => 200}}
      end)
      service.add_operation(:disassociate_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DisassociateMembership"
        operation.name = "DisassociateMembership"
        operation.input = DisassociateMembershipRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/membership/removal", "code" => 200}}
      end)
      service.add_operation(:enable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#EnableOrganizationAdminAccount"
        operation.name = "EnableOrganizationAdminAccount"
        operation.input = EnableOrganizationAdminAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/enableAdminAccount", "code" => 200}}
      end)
      service.add_operation(:get_investigation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#GetInvestigation"
        operation.name = "GetInvestigation"
        operation.input = GetInvestigationRequest
        operation.output = GetInvestigationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/getInvestigation", "code" => 200}}
      end)
      service.add_operation(:get_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#GetMembers"
        operation.name = "GetMembers"
        operation.input = GetMembersRequest
        operation.output = GetMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members/get", "code" => 200}}
      end)
      service.add_operation(:list_datasource_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListDatasourcePackages"
        operation.name = "ListDatasourcePackages"
        operation.input = ListDatasourcePackagesRequest
        operation.output = ListDatasourcePackagesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/datasources/list", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasourcePackages.new
      end)
      service.add_operation(:list_graphs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListGraphs"
        operation.name = "ListGraphs"
        operation.input = ListGraphsRequest
        operation.output = ListGraphsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graphs/list", "code" => 200}}
        operation[:paginator] = Paginators::ListGraphs.new
      end)
      service.add_operation(:list_indicators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListIndicators"
        operation.name = "ListIndicators"
        operation.input = ListIndicatorsRequest
        operation.output = ListIndicatorsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/listIndicators", "code" => 200}}
      end)
      service.add_operation(:list_investigations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListInvestigations"
        operation.name = "ListInvestigations"
        operation.input = ListInvestigationsRequest
        operation.output = ListInvestigationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/listInvestigations", "code" => 200}}
      end)
      service.add_operation(:list_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListInvitations"
        operation.name = "ListInvitations"
        operation.input = ListInvitationsRequest
        operation.output = ListInvitationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/list", "code" => 200}}
        operation[:paginator] = Paginators::ListInvitations.new
      end)
      service.add_operation(:list_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListMembers"
        operation.name = "ListMembers"
        operation.input = ListMembersRequest
        operation.output = ListMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members/list", "code" => 200}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_organization_admin_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListOrganizationAdminAccounts"
        operation.name = "ListOrganizationAdminAccounts"
        operation.input = ListOrganizationAdminAccountsRequest
        operation.output = ListOrganizationAdminAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/adminAccountslist", "code" => 200}}
        operation[:paginator] = Paginators::ListOrganizationAdminAccounts.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:reject_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#RejectInvitation"
        operation.name = "RejectInvitation"
        operation.input = RejectInvitationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitation/removal", "code" => 200}}
      end)
      service.add_operation(:start_investigation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#StartInvestigation"
        operation.name = "StartInvestigation"
        operation.input = StartInvestigationRequest
        operation.output = StartInvestigationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/startInvestigation", "code" => 200}}
      end)
      service.add_operation(:start_monitoring_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#StartMonitoringMember"
        operation.name = "StartMonitoringMember"
        operation.input = StartMonitoringMemberRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/member/monitoringstate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_datasource_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UpdateDatasourcePackages"
        operation.name = "UpdateDatasourcePackages"
        operation.input = UpdateDatasourcePackagesRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/datasources/update", "code" => 200}}
      end)
      service.add_operation(:update_investigation_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UpdateInvestigationState"
        operation.name = "UpdateInvestigationState"
        operation.input = UpdateInvestigationStateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/updateInvestigationState", "code" => 200}}
      end)
      service.add_operation(:update_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UpdateOrganizationConfiguration"
        operation.name = "UpdateOrganizationConfiguration"
        operation.input = UpdateOrganizationConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << TooManyRequestsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/updateOrganizationConfiguration", "code" => 200}}
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

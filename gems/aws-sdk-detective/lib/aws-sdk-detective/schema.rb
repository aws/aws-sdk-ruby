# frozen_string_literal: true

# This is generated code!

module Aws::Detective
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIFailureCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.detective#APIFailureCount', name: 'APIFailureCount', traits: {"smithy.api#default" => 0})
    APIName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#APIName', name: 'APIName')
    APISuccessCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.detective#APISuccessCount', name: 'APISuccessCount', traits: {"smithy.api#default" => 0})
    AcceptInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#AcceptInvitationRequest', name: 'AcceptInvitationRequest')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#Account', name: 'Account')
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    AccountIdExtendedList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#AccountIdExtendedList', name: 'AccountIdExtendedList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#AccountIdList', name: 'AccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#AccountList', name: 'AccountList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Administrator = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#Administrator', name: 'Administrator')
    AdministratorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#AdministratorList', name: 'AdministratorList')
    AiPaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#AiPaginationToken', name: 'AiPaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Aso = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Aso', name: 'Aso')
    BatchGetGraphMemberDatasourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#BatchGetGraphMemberDatasourcesRequest', name: 'BatchGetGraphMemberDatasourcesRequest')
    BatchGetGraphMemberDatasourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#BatchGetGraphMemberDatasourcesResponse', name: 'BatchGetGraphMemberDatasourcesResponse')
    BatchGetMembershipDatasourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#BatchGetMembershipDatasourcesRequest', name: 'BatchGetMembershipDatasourcesRequest')
    BatchGetMembershipDatasourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#BatchGetMembershipDatasourcesResponse', name: 'BatchGetMembershipDatasourcesResponse')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.detective#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ByteValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.detective#ByteValue', name: 'ByteValue')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#CreateGraphRequest', name: 'CreateGraphRequest')
    CreateGraphResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#CreateGraphResponse', name: 'CreateGraphResponse')
    CreateMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#CreateMembersRequest', name: 'CreateMembersRequest')
    CreateMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#CreateMembersResponse', name: 'CreateMembersResponse')
    DatasourcePackage = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#DatasourcePackage', name: 'DatasourcePackage')
    DatasourcePackageIngestDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DatasourcePackageIngestDetail', name: 'DatasourcePackageIngestDetail')
    DatasourcePackageIngestDetails = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.detective#DatasourcePackageIngestDetails', name: 'DatasourcePackageIngestDetails')
    DatasourcePackageIngestHistory = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.detective#DatasourcePackageIngestHistory', name: 'DatasourcePackageIngestHistory')
    DatasourcePackageIngestState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#DatasourcePackageIngestState', name: 'DatasourcePackageIngestState')
    DatasourcePackageIngestStates = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.detective#DatasourcePackageIngestStates', name: 'DatasourcePackageIngestStates')
    DatasourcePackageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#DatasourcePackageList', name: 'DatasourcePackageList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DatasourcePackageUsageInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DatasourcePackageUsageInfo', name: 'DatasourcePackageUsageInfo')
    DateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DateFilter', name: 'DateFilter')
    DeleteGraphRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DeleteGraphRequest', name: 'DeleteGraphRequest')
    DeleteMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DeleteMembersRequest', name: 'DeleteMembersRequest')
    DeleteMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DeleteMembersResponse', name: 'DeleteMembersResponse')
    DescribeOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DescribeOrganizationConfigurationRequest', name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DescribeOrganizationConfigurationResponse', name: 'DescribeOrganizationConfigurationResponse')
    DisassociateMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#DisassociateMembershipRequest', name: 'DisassociateMembershipRequest')
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+@(?:(?:(?!-)[A-Za-z0-9-]{1,62})?[A-Za-z0-9]{1}\\.)+[A-Za-z]{2,63}$", "smithy.api#sensitive" => {}})
    EmailMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#EmailMessage', name: 'EmailMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    EnableOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#EnableOrganizationAdminAccountRequest', name: 'EnableOrganizationAdminAccountRequest')
    EntityArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#EntityArn', name: 'EntityArn', traits: {"smithy.api#pattern" => "^arn:"})
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#EntityType', name: 'EntityType')
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#ErrorCode', name: 'ErrorCode')
    ErrorCodeReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#ErrorCodeReason', name: 'ErrorCodeReason')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#ErrorMessage', name: 'ErrorMessage')
    Field = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#Field', name: 'Field')
    FilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#FilterCriteria', name: 'FilterCriteria')
    FlaggedIpAddressDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#FlaggedIpAddressDetail', name: 'FlaggedIpAddressDetail')
    GetInvestigationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#GetInvestigationRequest', name: 'GetInvestigationRequest')
    GetInvestigationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#GetInvestigationResponse', name: 'GetInvestigationResponse')
    GetMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#GetMembersRequest', name: 'GetMembersRequest')
    GetMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#GetMembersResponse', name: 'GetMembersResponse')
    Graph = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#Graph', name: 'Graph')
    GraphArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#GraphArn', name: 'GraphArn', traits: {"smithy.api#pattern" => "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$"})
    GraphArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#GraphArnList', name: 'GraphArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    GraphList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#GraphList', name: 'GraphList')
    HourlyTimeDelta = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.detective#HourlyTimeDelta', name: 'HourlyTimeDelta')
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Id', name: 'Id')
    ImpossibleTravelDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ImpossibleTravelDetail', name: 'ImpossibleTravelDetail')
    Indicator = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#Indicator', name: 'Indicator')
    IndicatorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#IndicatorDetail', name: 'IndicatorDetail')
    IndicatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#IndicatorType', name: 'IndicatorType')
    Indicators = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#Indicators', name: 'Indicators')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvestigationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#InvestigationDetail', name: 'InvestigationDetail')
    InvestigationDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#InvestigationDetails', name: 'InvestigationDetails')
    InvestigationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#InvestigationId', name: 'InvestigationId', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^[0-9]+$"})
    InvitationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#InvitationType', name: 'InvitationType')
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#IpAddress', name: 'IpAddress')
    IsNewForEntireAccount = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.detective#IsNewForEntireAccount', name: 'IsNewForEntireAccount', traits: {"smithy.api#default" => false})
    LastIngestStateChangeDates = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.detective#LastIngestStateChangeDates', name: 'LastIngestStateChangeDates')
    ListDatasourcePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListDatasourcePackagesRequest', name: 'ListDatasourcePackagesRequest')
    ListDatasourcePackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListDatasourcePackagesResponse', name: 'ListDatasourcePackagesResponse')
    ListGraphsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListGraphsRequest', name: 'ListGraphsRequest')
    ListGraphsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListGraphsResponse', name: 'ListGraphsResponse')
    ListIndicatorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListIndicatorsRequest', name: 'ListIndicatorsRequest')
    ListIndicatorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListIndicatorsResponse', name: 'ListIndicatorsResponse')
    ListInvestigationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListInvestigationsRequest', name: 'ListInvestigationsRequest')
    ListInvestigationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListInvestigationsResponse', name: 'ListInvestigationsResponse')
    ListInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListInvitationsRequest', name: 'ListInvitationsRequest')
    ListInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListInvitationsResponse', name: 'ListInvitationsResponse')
    ListMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListMembersRequest', name: 'ListMembersRequest')
    ListMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListMembersResponse', name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListOrganizationAdminAccountsRequest', name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListOrganizationAdminAccountsResponse', name: 'ListOrganizationAdminAccountsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Location', name: 'Location')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.detective#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MemberDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#MemberDetail', name: 'MemberDetail')
    MemberDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#MemberDetailList', name: 'MemberDetailList')
    MemberDisabledReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#MemberDisabledReason', name: 'MemberDisabledReason')
    MemberResultsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.detective#MemberResultsLimit', name: 'MemberResultsLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    MemberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#MemberStatus', name: 'MemberStatus')
    MembershipDatasources = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#MembershipDatasources', name: 'MembershipDatasources')
    MembershipDatasourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#MembershipDatasourcesList', name: 'MembershipDatasourcesList')
    NewAsoDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#NewAsoDetail', name: 'NewAsoDetail')
    NewGeolocationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#NewGeolocationDetail', name: 'NewGeolocationDetail')
    NewUserAgentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#NewUserAgentDetail', name: 'NewUserAgentDetail')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.detective#Percentage', name: 'Percentage')
    Procedure = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Procedure', name: 'Procedure')
    Reason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#Reason', name: 'Reason')
    RejectInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#RejectInvitationRequest', name: 'RejectInvitationRequest')
    RelatedFindingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#RelatedFindingDetail', name: 'RelatedFindingDetail')
    RelatedFindingGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#RelatedFindingGroupDetail', name: 'RelatedFindingGroupDetail')
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Resource', name: 'Resource', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#ResourceList', name: 'ResourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#Severity', name: 'Severity')
    SortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#SortCriteria', name: 'SortCriteria')
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#SortOrder', name: 'SortOrder')
    StartInvestigationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#StartInvestigationRequest', name: 'StartInvestigationRequest')
    StartInvestigationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#StartInvestigationResponse', name: 'StartInvestigationResponse')
    StartMonitoringMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#StartMonitoringMemberRequest', name: 'StartMonitoringMemberRequest')
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#State', name: 'State')
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.detective#Status', name: 'Status')
    StringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#StringFilter', name: 'StringFilter')
    TTPsObservedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#TTPsObservedDetail', name: 'TTPsObservedDetail')
    Tactic = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Tactic', name: 'Tactic')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.detective#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Technique = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Technique', name: 'Technique')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.detective#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    TimestampForCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#TimestampForCollection', name: 'TimestampForCollection')
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Type', name: 'Type')
    UnprocessedAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#UnprocessedAccount', name: 'UnprocessedAccount')
    UnprocessedAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#UnprocessedAccountList', name: 'UnprocessedAccountList')
    UnprocessedGraph = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#UnprocessedGraph', name: 'UnprocessedGraph')
    UnprocessedGraphList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.detective#UnprocessedGraphList', name: 'UnprocessedGraphList')
    UnprocessedReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#UnprocessedReason', name: 'UnprocessedReason')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDatasourcePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#UpdateDatasourcePackagesRequest', name: 'UpdateDatasourcePackagesRequest')
    UpdateInvestigationStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#UpdateInvestigationStateRequest', name: 'UpdateInvestigationStateRequest')
    UpdateOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#UpdateOrganizationConfigurationRequest', name: 'UpdateOrganizationConfigurationRequest')
    UserAgent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#UserAgent', name: 'UserAgent')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.detective#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.detective#Value', name: 'Value', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    VolumeUsageByDatasourcePackage = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.detective#VolumeUsageByDatasourcePackage', name: 'VolumeUsageByDatasourcePackage')

    AcceptInvitationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    AcceptInvitationRequest.type = Types::AcceptInvitationRequest
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    AccessDeniedException.add_member(:error_code_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCodeReason, location_name: 'ErrorCodeReason'))
    AccessDeniedException.add_member(:sub_error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'SubErrorCode'))
    AccessDeniedException.add_member(:sub_error_code_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCodeReason, location_name: 'SubErrorCodeReason'))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    Account.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#required" => {}}))
    Account.type = Types::Account
    AccountIdExtendedList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AccountList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Account)
    Administrator.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    Administrator.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn'))
    Administrator.add_member(:delegation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DelegationTime'))
    Administrator.type = Types::Administrator
    AdministratorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Administrator)
    BatchGetGraphMemberDatasourcesRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    BatchGetGraphMemberDatasourcesRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdExtendedList, location_name: 'AccountIds', traits: {"smithy.api#required" => {}}))
    BatchGetGraphMemberDatasourcesRequest.type = Types::BatchGetGraphMemberDatasourcesRequest
    BatchGetGraphMemberDatasourcesResponse.add_member(:member_datasources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipDatasourcesList, location_name: 'MemberDatasources'))
    BatchGetGraphMemberDatasourcesResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: 'UnprocessedAccounts'))
    BatchGetGraphMemberDatasourcesResponse.type = Types::BatchGetGraphMemberDatasourcesResponse
    BatchGetMembershipDatasourcesRequest.add_member(:graph_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArnList, location_name: 'GraphArns', traits: {"smithy.api#required" => {}}))
    BatchGetMembershipDatasourcesRequest.type = Types::BatchGetMembershipDatasourcesRequest
    BatchGetMembershipDatasourcesResponse.add_member(:membership_datasources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipDatasourcesList, location_name: 'MembershipDatasources'))
    BatchGetMembershipDatasourcesResponse.add_member(:unprocessed_graphs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedGraphList, location_name: 'UnprocessedGraphs'))
    BatchGetMembershipDatasourcesResponse.type = Types::BatchGetMembershipDatasourcesResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateGraphRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateGraphRequest.type = Types::CreateGraphRequest
    CreateGraphResponse.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn'))
    CreateGraphResponse.type = Types::CreateGraphResponse
    CreateMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    CreateMembersRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailMessage, location_name: 'Message'))
    CreateMembersRequest.add_member(:disable_email_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableEmailNotification', traits: {"smithy.api#default" => false}))
    CreateMembersRequest.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'Accounts', traits: {"smithy.api#required" => {}}))
    CreateMembersRequest.type = Types::CreateMembersRequest
    CreateMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberDetailList, location_name: 'Members'))
    CreateMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: 'UnprocessedAccounts'))
    CreateMembersResponse.type = Types::CreateMembersResponse
    DatasourcePackage.add_member(:detective_core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETECTIVE_CORE', traits: {"smithy.api#enumValue" => "DETECTIVE_CORE"}))
    DatasourcePackage.add_member(:eks_audit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_AUDIT', traits: {"smithy.api#enumValue" => "EKS_AUDIT"}))
    DatasourcePackage.add_member(:asff_securityhub_finding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASFF_SECURITYHUB_FINDING', traits: {"smithy.api#enumValue" => "ASFF_SECURITYHUB_FINDING"}))
    DatasourcePackageIngestDetail.add_member(:datasource_package_ingest_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageIngestState, location_name: 'DatasourcePackageIngestState'))
    DatasourcePackageIngestDetail.add_member(:last_ingest_state_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastIngestStateChangeDates, location_name: 'LastIngestStateChange'))
    DatasourcePackageIngestDetail.type = Types::DatasourcePackageIngestDetail
    DatasourcePackageIngestDetails.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackage)
    DatasourcePackageIngestDetails.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageIngestDetail)
    DatasourcePackageIngestHistory.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackage)
    DatasourcePackageIngestHistory.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastIngestStateChangeDates)
    DatasourcePackageIngestState.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTED', traits: {"smithy.api#enumValue" => "STARTED"}))
    DatasourcePackageIngestState.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    DatasourcePackageIngestState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DatasourcePackageIngestStates.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackage)
    DatasourcePackageIngestStates.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageIngestState)
    DatasourcePackageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackage)
    DatasourcePackageUsageInfo.add_member(:volume_usage_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteValue, location_name: 'VolumeUsageInBytes'))
    DatasourcePackageUsageInfo.add_member(:volume_usage_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'VolumeUsageUpdateTime'))
    DatasourcePackageUsageInfo.type = Types::DatasourcePackageUsageInfo
    DateFilter.add_member(:start_inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartInclusive', traits: {"smithy.api#required" => {}}))
    DateFilter.add_member(:end_inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndInclusive', traits: {"smithy.api#required" => {}}))
    DateFilter.type = Types::DateFilter
    DeleteGraphRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    DeleteGraphRequest.type = Types::DeleteGraphRequest
    DeleteMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    DeleteMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#required" => {}}))
    DeleteMembersRequest.type = Types::DeleteMembersRequest
    DeleteMembersResponse.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds'))
    DeleteMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: 'UnprocessedAccounts'))
    DeleteMembersResponse.type = Types::DeleteMembersResponse
    DescribeOrganizationConfigurationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    DescribeOrganizationConfigurationRequest.type = Types::DescribeOrganizationConfigurationRequest
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoEnable', traits: {"smithy.api#default" => false}))
    DescribeOrganizationConfigurationResponse.type = Types::DescribeOrganizationConfigurationResponse
    DisassociateMembershipRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    DisassociateMembershipRequest.type = Types::DisassociateMembershipRequest
    EnableOrganizationAdminAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    EnableOrganizationAdminAccountRequest.type = Types::EnableOrganizationAdminAccountRequest
    EntityType.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE', traits: {"smithy.api#enumValue" => "IAM_ROLE"}))
    EntityType.add_member(:iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_USER', traits: {"smithy.api#enumValue" => "IAM_USER"}))
    ErrorCode.add_member(:invalid_graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidGraphArn', traits: {"smithy.api#enumValue" => "INVALID_GRAPH_ARN"}))
    ErrorCode.add_member(:invalid_request_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidRequestBody', traits: {"smithy.api#enumValue" => "INVALID_REQUEST_BODY"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalError', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    Field.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEVERITY', traits: {"smithy.api#enumValue" => "SEVERITY"}))
    Field.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "STATUS"}))
    Field.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED_TIME', traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    FilterCriteria.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'Severity'))
    FilterCriteria.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'Status'))
    FilterCriteria.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'State'))
    FilterCriteria.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringFilter, location_name: 'EntityArn'))
    FilterCriteria.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateFilter, location_name: 'CreatedTime'))
    FilterCriteria.type = Types::FilterCriteria
    FlaggedIpAddressDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    FlaggedIpAddressDetail.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'Reason'))
    FlaggedIpAddressDetail.type = Types::FlaggedIpAddressDetail
    GetInvestigationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    GetInvestigationRequest.add_member(:investigation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationId, location_name: 'InvestigationId', traits: {"smithy.api#required" => {}}))
    GetInvestigationRequest.type = Types::GetInvestigationRequest
    GetInvestigationResponse.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn'))
    GetInvestigationResponse.add_member(:investigation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationId, location_name: 'InvestigationId'))
    GetInvestigationResponse.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArn, location_name: 'EntityArn'))
    GetInvestigationResponse.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'EntityType'))
    GetInvestigationResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime'))
    GetInvestigationResponse.add_member(:scope_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ScopeStartTime'))
    GetInvestigationResponse.add_member(:scope_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ScopeEndTime'))
    GetInvestigationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    GetInvestigationResponse.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'Severity'))
    GetInvestigationResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State'))
    GetInvestigationResponse.type = Types::GetInvestigationResponse
    GetMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    GetMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#required" => {}}))
    GetMembersRequest.type = Types::GetMembersRequest
    GetMembersResponse.add_member(:member_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberDetailList, location_name: 'MemberDetails'))
    GetMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: 'UnprocessedAccounts'))
    GetMembersResponse.type = Types::GetMembersResponse
    Graph.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'Arn'))
    Graph.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime'))
    Graph.type = Types::Graph
    GraphArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn)
    GraphList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Graph)
    ImpossibleTravelDetail.add_member(:starting_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'StartingIpAddress'))
    ImpossibleTravelDetail.add_member(:ending_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'EndingIpAddress'))
    ImpossibleTravelDetail.add_member(:starting_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'StartingLocation'))
    ImpossibleTravelDetail.add_member(:ending_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'EndingLocation'))
    ImpossibleTravelDetail.add_member(:hourly_time_delta, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HourlyTimeDelta, location_name: 'HourlyTimeDelta'))
    ImpossibleTravelDetail.type = Types::ImpossibleTravelDetail
    Indicator.add_member(:indicator_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndicatorType, location_name: 'IndicatorType'))
    Indicator.add_member(:indicator_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndicatorDetail, location_name: 'IndicatorDetail'))
    Indicator.type = Types::Indicator
    IndicatorDetail.add_member(:tt_ps_observed_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TTPsObservedDetail, location_name: 'TTPsObservedDetail'))
    IndicatorDetail.add_member(:impossible_travel_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpossibleTravelDetail, location_name: 'ImpossibleTravelDetail'))
    IndicatorDetail.add_member(:flagged_ip_address_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlaggedIpAddressDetail, location_name: 'FlaggedIpAddressDetail'))
    IndicatorDetail.add_member(:new_geolocation_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewGeolocationDetail, location_name: 'NewGeolocationDetail'))
    IndicatorDetail.add_member(:new_aso_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewAsoDetail, location_name: 'NewAsoDetail'))
    IndicatorDetail.add_member(:new_user_agent_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewUserAgentDetail, location_name: 'NewUserAgentDetail'))
    IndicatorDetail.add_member(:related_finding_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedFindingDetail, location_name: 'RelatedFindingDetail'))
    IndicatorDetail.add_member(:related_finding_group_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedFindingGroupDetail, location_name: 'RelatedFindingGroupDetail'))
    IndicatorDetail.type = Types::IndicatorDetail
    IndicatorType.add_member(:ttp_observed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TTP_OBSERVED', traits: {"smithy.api#enumValue" => "TTP_OBSERVED"}))
    IndicatorType.add_member(:impossible_travel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPOSSIBLE_TRAVEL', traits: {"smithy.api#enumValue" => "IMPOSSIBLE_TRAVEL"}))
    IndicatorType.add_member(:flagged_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLAGGED_IP_ADDRESS', traits: {"smithy.api#enumValue" => "FLAGGED_IP_ADDRESS"}))
    IndicatorType.add_member(:new_geolocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_GEOLOCATION', traits: {"smithy.api#enumValue" => "NEW_GEOLOCATION"}))
    IndicatorType.add_member(:new_aso, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_ASO', traits: {"smithy.api#enumValue" => "NEW_ASO"}))
    IndicatorType.add_member(:new_user_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_USER_AGENT', traits: {"smithy.api#enumValue" => "NEW_USER_AGENT"}))
    IndicatorType.add_member(:related_finding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELATED_FINDING', traits: {"smithy.api#enumValue" => "RELATED_FINDING"}))
    IndicatorType.add_member(:related_finding_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELATED_FINDING_GROUP', traits: {"smithy.api#enumValue" => "RELATED_FINDING_GROUP"}))
    Indicators.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Indicator)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvestigationDetail.add_member(:investigation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationId, location_name: 'InvestigationId'))
    InvestigationDetail.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'Severity'))
    InvestigationDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status'))
    InvestigationDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State'))
    InvestigationDetail.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime'))
    InvestigationDetail.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArn, location_name: 'EntityArn'))
    InvestigationDetail.add_member(:entity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType, location_name: 'EntityType'))
    InvestigationDetail.type = Types::InvestigationDetail
    InvestigationDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationDetail)
    InvitationType.add_member(:invitation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITATION', traits: {"smithy.api#enumValue" => "INVITATION"}))
    InvitationType.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORGANIZATION', traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    LastIngestStateChangeDates.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageIngestState)
    LastIngestStateChangeDates.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampForCollection)
    ListDatasourcePackagesRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    ListDatasourcePackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListDatasourcePackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: 'MaxResults'))
    ListDatasourcePackagesRequest.type = Types::ListDatasourcePackagesRequest
    ListDatasourcePackagesResponse.add_member(:datasource_packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageIngestDetails, location_name: 'DatasourcePackages'))
    ListDatasourcePackagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListDatasourcePackagesResponse.type = Types::ListDatasourcePackagesResponse
    ListGraphsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListGraphsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: 'MaxResults'))
    ListGraphsRequest.type = Types::ListGraphsRequest
    ListGraphsResponse.add_member(:graph_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphList, location_name: 'GraphList'))
    ListGraphsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListGraphsResponse.type = Types::ListGraphsResponse
    ListIndicatorsRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    ListIndicatorsRequest.add_member(:investigation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationId, location_name: 'InvestigationId', traits: {"smithy.api#required" => {}}))
    ListIndicatorsRequest.add_member(:indicator_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndicatorType, location_name: 'IndicatorType'))
    ListIndicatorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: 'NextToken'))
    ListIndicatorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListIndicatorsRequest.type = Types::ListIndicatorsRequest
    ListIndicatorsResponse.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn'))
    ListIndicatorsResponse.add_member(:investigation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationId, location_name: 'InvestigationId'))
    ListIndicatorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: 'NextToken'))
    ListIndicatorsResponse.add_member(:indicators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Indicators, location_name: 'Indicators'))
    ListIndicatorsResponse.type = Types::ListIndicatorsResponse
    ListInvestigationsRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    ListInvestigationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: 'NextToken'))
    ListInvestigationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListInvestigationsRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteria, location_name: 'FilterCriteria'))
    ListInvestigationsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'SortCriteria'))
    ListInvestigationsRequest.type = Types::ListInvestigationsRequest
    ListInvestigationsResponse.add_member(:investigation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationDetails, location_name: 'InvestigationDetails'))
    ListInvestigationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: 'NextToken'))
    ListInvestigationsResponse.type = Types::ListInvestigationsResponse
    ListInvitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListInvitationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: 'MaxResults'))
    ListInvitationsRequest.type = Types::ListInvitationsRequest
    ListInvitationsResponse.add_member(:invitations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberDetailList, location_name: 'Invitations'))
    ListInvitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListInvitationsResponse.type = Types::ListInvitationsResponse
    ListMembersRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    ListMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: 'MaxResults'))
    ListMembersRequest.type = Types::ListMembersRequest
    ListMembersResponse.add_member(:member_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberDetailList, location_name: 'MemberDetails'))
    ListMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListMembersResponse.type = Types::ListMembersResponse
    ListOrganizationAdminAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListOrganizationAdminAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: 'MaxResults'))
    ListOrganizationAdminAccountsRequest.type = Types::ListOrganizationAdminAccountsRequest
    ListOrganizationAdminAccountsResponse.add_member(:administrators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdministratorList, location_name: 'Administrators'))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListOrganizationAdminAccountsResponse.type = Types::ListOrganizationAdminAccountsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MemberDetail.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    MemberDetail.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress'))
    MemberDetail.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn'))
    MemberDetail.add_member(:master_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'MasterId', traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use AdministratorId instead."}}))
    MemberDetail.add_member(:administrator_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AdministratorId'))
    MemberDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberStatus, location_name: 'Status'))
    MemberDetail.add_member(:disabled_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberDisabledReason, location_name: 'DisabledReason'))
    MemberDetail.add_member(:invited_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InvitedTime'))
    MemberDetail.add_member(:updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedTime'))
    MemberDetail.add_member(:volume_usage_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteValue, location_name: 'VolumeUsageInBytes', traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:volume_usage_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'VolumeUsageUpdatedTime', traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:percent_of_graph_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'PercentOfGraphUtilization', traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:percent_of_graph_utilization_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'PercentOfGraphUtilizationUpdatedTime', traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}}))
    MemberDetail.add_member(:invitation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvitationType, location_name: 'InvitationType'))
    MemberDetail.add_member(:volume_usage_by_datasource_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeUsageByDatasourcePackage, location_name: 'VolumeUsageByDatasourcePackage'))
    MemberDetail.add_member(:datasource_package_ingest_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageIngestStates, location_name: 'DatasourcePackageIngestStates'))
    MemberDetail.type = Types::MemberDetail
    MemberDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberDetail)
    MemberDisabledReason.add_member(:volume_too_high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOLUME_TOO_HIGH', traits: {"smithy.api#enumValue" => "VOLUME_TOO_HIGH"}))
    MemberDisabledReason.add_member(:volume_unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOLUME_UNKNOWN', traits: {"smithy.api#enumValue" => "VOLUME_UNKNOWN"}))
    MemberStatus.add_member(:invited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVITED', traits: {"smithy.api#enumValue" => "INVITED"}))
    MemberStatus.add_member(:verification_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFICATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "VERIFICATION_IN_PROGRESS"}))
    MemberStatus.add_member(:verification_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERIFICATION_FAILED', traits: {"smithy.api#enumValue" => "VERIFICATION_FAILED"}))
    MemberStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    MemberStatus.add_member(:accepted_but_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED_BUT_DISABLED', traits: {"smithy.api#enumValue" => "ACCEPTED_BUT_DISABLED"}))
    MembershipDatasources.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    MembershipDatasources.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn'))
    MembershipDatasources.add_member(:datasource_package_ingest_history, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageIngestHistory, location_name: 'DatasourcePackageIngestHistory'))
    MembershipDatasources.type = Types::MembershipDatasources
    MembershipDatasourcesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipDatasources)
    NewAsoDetail.add_member(:aso, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Aso, location_name: 'Aso'))
    NewAsoDetail.add_member(:is_new_for_entire_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsNewForEntireAccount, location_name: 'IsNewForEntireAccount', traits: {"smithy.api#default" => false}))
    NewAsoDetail.type = Types::NewAsoDetail
    NewGeolocationDetail.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'Location'))
    NewGeolocationDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    NewGeolocationDetail.add_member(:is_new_for_entire_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsNewForEntireAccount, location_name: 'IsNewForEntireAccount', traits: {"smithy.api#default" => false}))
    NewGeolocationDetail.type = Types::NewGeolocationDetail
    NewUserAgentDetail.add_member(:user_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAgent, location_name: 'UserAgent'))
    NewUserAgentDetail.add_member(:is_new_for_entire_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsNewForEntireAccount, location_name: 'IsNewForEntireAccount', traits: {"smithy.api#default" => false}))
    NewUserAgentDetail.type = Types::NewUserAgentDetail
    Reason.add_member(:aws_threat_intelligence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_THREAT_INTELLIGENCE', traits: {"smithy.api#enumValue" => "AWS_THREAT_INTELLIGENCE"}))
    RejectInvitationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    RejectInvitationRequest.type = Types::RejectInvitationRequest
    RelatedFindingDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArn, location_name: 'Arn'))
    RelatedFindingDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type'))
    RelatedFindingDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    RelatedFindingDetail.type = Types::RelatedFindingDetail
    RelatedFindingGroupDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id'))
    RelatedFindingGroupDetail.type = Types::RelatedFindingGroupDetail
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'Resources'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Severity.add_member(:informational, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFORMATIONAL', traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    Severity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    Severity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Severity.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    Severity.add_member(:critical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL', traits: {"smithy.api#enumValue" => "CRITICAL"}))
    SortCriteria.add_member(:field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Field, location_name: 'Field'))
    SortCriteria.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    SortCriteria.type = Types::SortCriteria
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    StartInvestigationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.add_member(:entity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityArn, location_name: 'EntityArn', traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.add_member(:scope_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ScopeStartTime', traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.add_member(:scope_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ScopeEndTime', traits: {"smithy.api#required" => {}}))
    StartInvestigationRequest.type = Types::StartInvestigationRequest
    StartInvestigationResponse.add_member(:investigation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationId, location_name: 'InvestigationId'))
    StartInvestigationResponse.type = Types::StartInvestigationResponse
    StartMonitoringMemberRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    StartMonitoringMemberRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId', traits: {"smithy.api#required" => {}}))
    StartMonitoringMemberRequest.type = Types::StartMonitoringMemberRequest
    State.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    State.add_member(:archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    Status.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    StringFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    StringFilter.type = Types::StringFilter
    TTPsObservedDetail.add_member(:tactic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tactic, location_name: 'Tactic'))
    TTPsObservedDetail.add_member(:technique, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Technique, location_name: 'Technique'))
    TTPsObservedDetail.add_member(:procedure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Procedure, location_name: 'Procedure'))
    TTPsObservedDetail.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    TTPsObservedDetail.add_member(:api_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APIName, location_name: 'APIName'))
    TTPsObservedDetail.add_member(:api_success_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APISuccessCount, location_name: 'APISuccessCount', traits: {"smithy.api#default" => 0}))
    TTPsObservedDetail.add_member(:api_failure_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: APIFailureCount, location_name: 'APIFailureCount', traits: {"smithy.api#default" => 0}))
    TTPsObservedDetail.type = Types::TTPsObservedDetail
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TimestampForCollection.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp'))
    TimestampForCollection.type = Types::TimestampForCollection
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnprocessedAccount.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    UnprocessedAccount.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedReason, location_name: 'Reason'))
    UnprocessedAccount.type = Types::UnprocessedAccount
    UnprocessedAccountList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedAccount)
    UnprocessedGraph.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn'))
    UnprocessedGraph.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedReason, location_name: 'Reason'))
    UnprocessedGraph.type = Types::UnprocessedGraph
    UnprocessedGraphList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedGraph)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDatasourcePackagesRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    UpdateDatasourcePackagesRequest.add_member(:datasource_packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageList, location_name: 'DatasourcePackages', traits: {"smithy.api#required" => {}}))
    UpdateDatasourcePackagesRequest.type = Types::UpdateDatasourcePackagesRequest
    UpdateInvestigationStateRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    UpdateInvestigationStateRequest.add_member(:investigation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvestigationId, location_name: 'InvestigationId', traits: {"smithy.api#required" => {}}))
    UpdateInvestigationStateRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"smithy.api#required" => {}}))
    UpdateInvestigationStateRequest.type = Types::UpdateInvestigationStateRequest
    UpdateOrganizationConfigurationRequest.add_member(:graph_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphArn, location_name: 'GraphArn', traits: {"smithy.api#required" => {}}))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoEnable', traits: {"smithy.api#default" => false}))
    UpdateOrganizationConfigurationRequest.type = Types::UpdateOrganizationConfigurationRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ValidationException.add_member(:error_code_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCodeReason, location_name: 'ErrorCodeReason'))
    ValidationException.type = Types::ValidationException
    VolumeUsageByDatasourcePackage.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackage)
    VolumeUsageByDatasourcePackage.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasourcePackageUsageInfo)

    AmazonDetective = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.detective#AmazonDetective"
      service.name = "AmazonDetective"
      service.version = "2018-10-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Detective", "arnNamespace" => "detective", "cloudFormationName" => "Detective", "cloudTrailEventSource" => "detective.amazonaws.com", "endpointPrefix" => "api.detective"}, "aws.auth#sigv4" => {"name" => "detective"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Detective"}
      service.add_operation(:accept_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#AcceptInvitation"
        operation.name = "AcceptInvitation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/invitation", "code" => 200}}
      end)
      service.add_operation(:batch_get_graph_member_datasources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#BatchGetGraphMemberDatasources"
        operation.name = "BatchGetGraphMemberDatasources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetGraphMemberDatasourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetGraphMemberDatasourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/datasources/get", "code" => 200}}
      end)
      service.add_operation(:batch_get_membership_datasources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#BatchGetMembershipDatasources"
        operation.name = "BatchGetMembershipDatasources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMembershipDatasourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMembershipDatasourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/membership/datasources/get", "code" => 200}}
      end)
      service.add_operation(:create_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#CreateGraph"
        operation.name = "CreateGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph", "code" => 200}}
      end)
      service.add_operation(:create_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#CreateMembers"
        operation.name = "CreateMembers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMembersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMembersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members", "code" => 200}}
      end)
      service.add_operation(:delete_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DeleteGraph"
        operation.name = "DeleteGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/removal", "code" => 200}}
      end)
      service.add_operation(:delete_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DeleteMembers"
        operation.name = "DeleteMembers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMembersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMembersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members/removal", "code" => 200}}
      end)
      service.add_operation(:describe_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DescribeOrganizationConfiguration"
        operation.name = "DescribeOrganizationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/describeOrganizationConfiguration", "code" => 200}}
      end)
      service.add_operation(:disable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DisableOrganizationAdminAccount"
        operation.name = "DisableOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/disableAdminAccount", "code" => 200}}
      end)
      service.add_operation(:disassociate_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#DisassociateMembership"
        operation.name = "DisassociateMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/membership/removal", "code" => 200}}
      end)
      service.add_operation(:enable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#EnableOrganizationAdminAccount"
        operation.name = "EnableOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/enableAdminAccount", "code" => 200}}
      end)
      service.add_operation(:get_investigation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#GetInvestigation"
        operation.name = "GetInvestigation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvestigationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvestigationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/getInvestigation", "code" => 200}}
      end)
      service.add_operation(:get_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#GetMembers"
        operation.name = "GetMembers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMembersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members/get", "code" => 200}}
      end)
      service.add_operation(:list_datasource_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListDatasourcePackages"
        operation.name = "ListDatasourcePackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasourcePackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatasourcePackagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/datasources/list", "code" => 200}}
        operation[:paginator] = Paginators::ListDatasourcePackages.new
      end)
      service.add_operation(:list_graphs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListGraphs"
        operation.name = "ListGraphs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graphs/list", "code" => 200}}
        operation[:paginator] = Paginators::ListGraphs.new
      end)
      service.add_operation(:list_indicators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListIndicators"
        operation.name = "ListIndicators"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndicatorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndicatorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/listIndicators", "code" => 200}}
      end)
      service.add_operation(:list_investigations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListInvestigations"
        operation.name = "ListInvestigations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvestigationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvestigationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/listInvestigations", "code" => 200}}
      end)
      service.add_operation(:list_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListInvitations"
        operation.name = "ListInvitations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/list", "code" => 200}}
        operation[:paginator] = Paginators::ListInvitations.new
      end)
      service.add_operation(:list_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListMembers"
        operation.name = "ListMembers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/members/list", "code" => 200}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_organization_admin_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListOrganizationAdminAccounts"
        operation.name = "ListOrganizationAdminAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/orgs/adminAccountslist", "code" => 200}}
        operation[:paginator] = Paginators::ListOrganizationAdminAccounts.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:reject_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#RejectInvitation"
        operation.name = "RejectInvitation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInvitationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitation/removal", "code" => 200}}
      end)
      service.add_operation(:start_investigation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#StartInvestigation"
        operation.name = "StartInvestigation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInvestigationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInvestigationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/startInvestigation", "code" => 200}}
      end)
      service.add_operation(:start_monitoring_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#StartMonitoringMember"
        operation.name = "StartMonitoringMember"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMonitoringMemberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/member/monitoringstate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_datasource_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UpdateDatasourcePackages"
        operation.name = "UpdateDatasourcePackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDatasourcePackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/graph/datasources/update", "code" => 200}}
      end)
      service.add_operation(:update_investigation_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UpdateInvestigationState"
        operation.name = "UpdateInvestigationState"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInvestigationStateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/investigations/updateInvestigationState", "code" => 200}}
      end)
      service.add_operation(:update_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.detective#UpdateOrganizationConfiguration"
        operation.name = "UpdateOrganizationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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

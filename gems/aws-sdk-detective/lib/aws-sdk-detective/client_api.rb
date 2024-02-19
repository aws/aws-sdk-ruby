# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Detective
  # @api private
  module ClientApi

    include Seahorse::Model

    APIFailureCount = Shapes::IntegerShape.new(name: 'APIFailureCount')
    APIName = Shapes::StringShape.new(name: 'APIName')
    APISuccessCount = Shapes::IntegerShape.new(name: 'APISuccessCount')
    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdExtendedList = Shapes::ListShape.new(name: 'AccountIdExtendedList')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    Administrator = Shapes::StructureShape.new(name: 'Administrator')
    AdministratorList = Shapes::ListShape.new(name: 'AdministratorList')
    AiPaginationToken = Shapes::StringShape.new(name: 'AiPaginationToken')
    Aso = Shapes::StringShape.new(name: 'Aso')
    BatchGetGraphMemberDatasourcesRequest = Shapes::StructureShape.new(name: 'BatchGetGraphMemberDatasourcesRequest')
    BatchGetGraphMemberDatasourcesResponse = Shapes::StructureShape.new(name: 'BatchGetGraphMemberDatasourcesResponse')
    BatchGetMembershipDatasourcesRequest = Shapes::StructureShape.new(name: 'BatchGetMembershipDatasourcesRequest')
    BatchGetMembershipDatasourcesResponse = Shapes::StructureShape.new(name: 'BatchGetMembershipDatasourcesResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ByteValue = Shapes::IntegerShape.new(name: 'ByteValue')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateGraphRequest = Shapes::StructureShape.new(name: 'CreateGraphRequest')
    CreateGraphResponse = Shapes::StructureShape.new(name: 'CreateGraphResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    DatasourcePackage = Shapes::StringShape.new(name: 'DatasourcePackage')
    DatasourcePackageIngestDetail = Shapes::StructureShape.new(name: 'DatasourcePackageIngestDetail')
    DatasourcePackageIngestDetails = Shapes::MapShape.new(name: 'DatasourcePackageIngestDetails')
    DatasourcePackageIngestHistory = Shapes::MapShape.new(name: 'DatasourcePackageIngestHistory')
    DatasourcePackageIngestState = Shapes::StringShape.new(name: 'DatasourcePackageIngestState')
    DatasourcePackageIngestStates = Shapes::MapShape.new(name: 'DatasourcePackageIngestStates')
    DatasourcePackageList = Shapes::ListShape.new(name: 'DatasourcePackageList')
    DatasourcePackageUsageInfo = Shapes::StructureShape.new(name: 'DatasourcePackageUsageInfo')
    DateFilter = Shapes::StructureShape.new(name: 'DateFilter')
    DeleteGraphRequest = Shapes::StructureShape.new(name: 'DeleteGraphRequest')
    DeleteMembersRequest = Shapes::StructureShape.new(name: 'DeleteMembersRequest')
    DeleteMembersResponse = Shapes::StructureShape.new(name: 'DeleteMembersResponse')
    DescribeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationResponse')
    DisassociateMembershipRequest = Shapes::StructureShape.new(name: 'DisassociateMembershipRequest')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailMessage = Shapes::StringShape.new(name: 'EmailMessage')
    EnableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountRequest')
    EntityArn = Shapes::StringShape.new(name: 'EntityArn')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorCodeReason = Shapes::StringShape.new(name: 'ErrorCodeReason')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Field = Shapes::StringShape.new(name: 'Field')
    FilterCriteria = Shapes::StructureShape.new(name: 'FilterCriteria')
    FlaggedIpAddressDetail = Shapes::StructureShape.new(name: 'FlaggedIpAddressDetail')
    GetInvestigationRequest = Shapes::StructureShape.new(name: 'GetInvestigationRequest')
    GetInvestigationResponse = Shapes::StructureShape.new(name: 'GetInvestigationResponse')
    GetMembersRequest = Shapes::StructureShape.new(name: 'GetMembersRequest')
    GetMembersResponse = Shapes::StructureShape.new(name: 'GetMembersResponse')
    Graph = Shapes::StructureShape.new(name: 'Graph')
    GraphArn = Shapes::StringShape.new(name: 'GraphArn')
    GraphArnList = Shapes::ListShape.new(name: 'GraphArnList')
    GraphList = Shapes::ListShape.new(name: 'GraphList')
    HourlyTimeDelta = Shapes::IntegerShape.new(name: 'HourlyTimeDelta')
    Id = Shapes::StringShape.new(name: 'Id')
    ImpossibleTravelDetail = Shapes::StructureShape.new(name: 'ImpossibleTravelDetail')
    Indicator = Shapes::StructureShape.new(name: 'Indicator')
    IndicatorDetail = Shapes::StructureShape.new(name: 'IndicatorDetail')
    IndicatorType = Shapes::StringShape.new(name: 'IndicatorType')
    Indicators = Shapes::ListShape.new(name: 'Indicators')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvestigationDetail = Shapes::StructureShape.new(name: 'InvestigationDetail')
    InvestigationDetails = Shapes::ListShape.new(name: 'InvestigationDetails')
    InvestigationId = Shapes::StringShape.new(name: 'InvestigationId')
    InvitationType = Shapes::StringShape.new(name: 'InvitationType')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IsNewForEntireAccount = Shapes::BooleanShape.new(name: 'IsNewForEntireAccount')
    LastIngestStateChangeDates = Shapes::MapShape.new(name: 'LastIngestStateChangeDates')
    ListDatasourcePackagesRequest = Shapes::StructureShape.new(name: 'ListDatasourcePackagesRequest')
    ListDatasourcePackagesResponse = Shapes::StructureShape.new(name: 'ListDatasourcePackagesResponse')
    ListGraphsRequest = Shapes::StructureShape.new(name: 'ListGraphsRequest')
    ListGraphsResponse = Shapes::StructureShape.new(name: 'ListGraphsResponse')
    ListIndicatorsRequest = Shapes::StructureShape.new(name: 'ListIndicatorsRequest')
    ListIndicatorsResponse = Shapes::StructureShape.new(name: 'ListIndicatorsResponse')
    ListInvestigationsRequest = Shapes::StructureShape.new(name: 'ListInvestigationsRequest')
    ListInvestigationsResponse = Shapes::StructureShape.new(name: 'ListInvestigationsResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Location = Shapes::StringShape.new(name: 'Location')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberDetail = Shapes::StructureShape.new(name: 'MemberDetail')
    MemberDetailList = Shapes::ListShape.new(name: 'MemberDetailList')
    MemberDisabledReason = Shapes::StringShape.new(name: 'MemberDisabledReason')
    MemberResultsLimit = Shapes::IntegerShape.new(name: 'MemberResultsLimit')
    MemberStatus = Shapes::StringShape.new(name: 'MemberStatus')
    MembershipDatasources = Shapes::StructureShape.new(name: 'MembershipDatasources')
    MembershipDatasourcesList = Shapes::ListShape.new(name: 'MembershipDatasourcesList')
    NewAsoDetail = Shapes::StructureShape.new(name: 'NewAsoDetail')
    NewGeolocationDetail = Shapes::StructureShape.new(name: 'NewGeolocationDetail')
    NewUserAgentDetail = Shapes::StructureShape.new(name: 'NewUserAgentDetail')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    Procedure = Shapes::StringShape.new(name: 'Procedure')
    Reason = Shapes::StringShape.new(name: 'Reason')
    RejectInvitationRequest = Shapes::StructureShape.new(name: 'RejectInvitationRequest')
    RelatedFindingDetail = Shapes::StructureShape.new(name: 'RelatedFindingDetail')
    RelatedFindingGroupDetail = Shapes::StructureShape.new(name: 'RelatedFindingGroupDetail')
    Resource = Shapes::StringShape.new(name: 'Resource')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Severity = Shapes::StringShape.new(name: 'Severity')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartInvestigationRequest = Shapes::StructureShape.new(name: 'StartInvestigationRequest')
    StartInvestigationResponse = Shapes::StructureShape.new(name: 'StartInvestigationResponse')
    StartMonitoringMemberRequest = Shapes::StructureShape.new(name: 'StartMonitoringMemberRequest')
    State = Shapes::StringShape.new(name: 'State')
    Status = Shapes::StringShape.new(name: 'Status')
    StringFilter = Shapes::StructureShape.new(name: 'StringFilter')
    TTPsObservedDetail = Shapes::StructureShape.new(name: 'TTPsObservedDetail')
    Tactic = Shapes::StringShape.new(name: 'Tactic')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Technique = Shapes::StringShape.new(name: 'Technique')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TimestampForCollection = Shapes::StructureShape.new(name: 'TimestampForCollection')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Type = Shapes::StringShape.new(name: 'Type')
    UnprocessedAccount = Shapes::StructureShape.new(name: 'UnprocessedAccount')
    UnprocessedAccountList = Shapes::ListShape.new(name: 'UnprocessedAccountList')
    UnprocessedGraph = Shapes::StructureShape.new(name: 'UnprocessedGraph')
    UnprocessedGraphList = Shapes::ListShape.new(name: 'UnprocessedGraphList')
    UnprocessedReason = Shapes::StringShape.new(name: 'UnprocessedReason')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDatasourcePackagesRequest = Shapes::StructureShape.new(name: 'UpdateDatasourcePackagesRequest')
    UpdateInvestigationStateRequest = Shapes::StructureShape.new(name: 'UpdateInvestigationStateRequest')
    UpdateOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationRequest')
    UserAgent = Shapes::StringShape.new(name: 'UserAgent')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    VolumeUsageByDatasourcePackage = Shapes::MapShape.new(name: 'VolumeUsageByDatasourcePackage')

    AcceptInvitationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    AccessDeniedException.add_member(:error_code_reason, Shapes::ShapeRef.new(shape: ErrorCodeReason, location_name: "ErrorCodeReason"))
    AccessDeniedException.add_member(:sub_error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "SubErrorCode"))
    AccessDeniedException.add_member(:sub_error_code_reason, Shapes::ShapeRef.new(shape: ErrorCodeReason, location_name: "SubErrorCodeReason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    Account.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    Account.struct_class = Types::Account

    AccountIdExtendedList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    Administrator.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Administrator.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    Administrator.add_member(:delegation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DelegationTime"))
    Administrator.struct_class = Types::Administrator

    AdministratorList.member = Shapes::ShapeRef.new(shape: Administrator)

    BatchGetGraphMemberDatasourcesRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    BatchGetGraphMemberDatasourcesRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdExtendedList, required: true, location_name: "AccountIds"))
    BatchGetGraphMemberDatasourcesRequest.struct_class = Types::BatchGetGraphMemberDatasourcesRequest

    BatchGetGraphMemberDatasourcesResponse.add_member(:member_datasources, Shapes::ShapeRef.new(shape: MembershipDatasourcesList, location_name: "MemberDatasources"))
    BatchGetGraphMemberDatasourcesResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: "UnprocessedAccounts"))
    BatchGetGraphMemberDatasourcesResponse.struct_class = Types::BatchGetGraphMemberDatasourcesResponse

    BatchGetMembershipDatasourcesRequest.add_member(:graph_arns, Shapes::ShapeRef.new(shape: GraphArnList, required: true, location_name: "GraphArns"))
    BatchGetMembershipDatasourcesRequest.struct_class = Types::BatchGetMembershipDatasourcesRequest

    BatchGetMembershipDatasourcesResponse.add_member(:membership_datasources, Shapes::ShapeRef.new(shape: MembershipDatasourcesList, location_name: "MembershipDatasources"))
    BatchGetMembershipDatasourcesResponse.add_member(:unprocessed_graphs, Shapes::ShapeRef.new(shape: UnprocessedGraphList, location_name: "UnprocessedGraphs"))
    BatchGetMembershipDatasourcesResponse.struct_class = Types::BatchGetMembershipDatasourcesResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateGraphRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateGraphRequest.struct_class = Types::CreateGraphRequest

    CreateGraphResponse.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    CreateGraphResponse.struct_class = Types::CreateGraphResponse

    CreateMembersRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    CreateMembersRequest.add_member(:message, Shapes::ShapeRef.new(shape: EmailMessage, location_name: "Message"))
    CreateMembersRequest.add_member(:disable_email_notification, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableEmailNotification"))
    CreateMembersRequest.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, required: true, location_name: "Accounts"))
    CreateMembersRequest.struct_class = Types::CreateMembersRequest

    CreateMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: MemberDetailList, location_name: "Members"))
    CreateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: "UnprocessedAccounts"))
    CreateMembersResponse.struct_class = Types::CreateMembersResponse

    DatasourcePackageIngestDetail.add_member(:datasource_package_ingest_state, Shapes::ShapeRef.new(shape: DatasourcePackageIngestState, location_name: "DatasourcePackageIngestState"))
    DatasourcePackageIngestDetail.add_member(:last_ingest_state_change, Shapes::ShapeRef.new(shape: LastIngestStateChangeDates, location_name: "LastIngestStateChange"))
    DatasourcePackageIngestDetail.struct_class = Types::DatasourcePackageIngestDetail

    DatasourcePackageIngestDetails.key = Shapes::ShapeRef.new(shape: DatasourcePackage)
    DatasourcePackageIngestDetails.value = Shapes::ShapeRef.new(shape: DatasourcePackageIngestDetail)

    DatasourcePackageIngestHistory.key = Shapes::ShapeRef.new(shape: DatasourcePackage)
    DatasourcePackageIngestHistory.value = Shapes::ShapeRef.new(shape: LastIngestStateChangeDates)

    DatasourcePackageIngestStates.key = Shapes::ShapeRef.new(shape: DatasourcePackage)
    DatasourcePackageIngestStates.value = Shapes::ShapeRef.new(shape: DatasourcePackageIngestState)

    DatasourcePackageList.member = Shapes::ShapeRef.new(shape: DatasourcePackage)

    DatasourcePackageUsageInfo.add_member(:volume_usage_in_bytes, Shapes::ShapeRef.new(shape: ByteValue, location_name: "VolumeUsageInBytes"))
    DatasourcePackageUsageInfo.add_member(:volume_usage_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "VolumeUsageUpdateTime"))
    DatasourcePackageUsageInfo.struct_class = Types::DatasourcePackageUsageInfo

    DateFilter.add_member(:start_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartInclusive"))
    DateFilter.add_member(:end_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndInclusive"))
    DateFilter.struct_class = Types::DateFilter

    DeleteGraphRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    DeleteGraphRequest.struct_class = Types::DeleteGraphRequest

    DeleteMembersRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    DeleteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    DeleteMembersRequest.struct_class = Types::DeleteMembersRequest

    DeleteMembersResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DeleteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: "UnprocessedAccounts"))
    DeleteMembersResponse.struct_class = Types::DeleteMembersResponse

    DescribeOrganizationConfigurationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    DescribeOrganizationConfigurationRequest.struct_class = Types::DescribeOrganizationConfigurationRequest

    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnable"))
    DescribeOrganizationConfigurationResponse.struct_class = Types::DescribeOrganizationConfigurationResponse

    DisassociateMembershipRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    DisassociateMembershipRequest.struct_class = Types::DisassociateMembershipRequest

    EnableOrganizationAdminAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    EnableOrganizationAdminAccountRequest.struct_class = Types::EnableOrganizationAdminAccountRequest

    FilterCriteria.add_member(:severity, Shapes::ShapeRef.new(shape: StringFilter, location_name: "Severity"))
    FilterCriteria.add_member(:status, Shapes::ShapeRef.new(shape: StringFilter, location_name: "Status"))
    FilterCriteria.add_member(:state, Shapes::ShapeRef.new(shape: StringFilter, location_name: "State"))
    FilterCriteria.add_member(:entity_arn, Shapes::ShapeRef.new(shape: StringFilter, location_name: "EntityArn"))
    FilterCriteria.add_member(:created_time, Shapes::ShapeRef.new(shape: DateFilter, location_name: "CreatedTime"))
    FilterCriteria.struct_class = Types::FilterCriteria

    FlaggedIpAddressDetail.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    FlaggedIpAddressDetail.add_member(:reason, Shapes::ShapeRef.new(shape: Reason, location_name: "Reason"))
    FlaggedIpAddressDetail.struct_class = Types::FlaggedIpAddressDetail

    GetInvestigationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    GetInvestigationRequest.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, required: true, location_name: "InvestigationId"))
    GetInvestigationRequest.struct_class = Types::GetInvestigationRequest

    GetInvestigationResponse.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    GetInvestigationResponse.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, location_name: "InvestigationId"))
    GetInvestigationResponse.add_member(:entity_arn, Shapes::ShapeRef.new(shape: EntityArn, location_name: "EntityArn"))
    GetInvestigationResponse.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    GetInvestigationResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    GetInvestigationResponse.add_member(:scope_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScopeStartTime"))
    GetInvestigationResponse.add_member(:scope_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ScopeEndTime"))
    GetInvestigationResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetInvestigationResponse.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "Severity"))
    GetInvestigationResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    GetInvestigationResponse.struct_class = Types::GetInvestigationResponse

    GetMembersRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    GetMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    GetMembersRequest.struct_class = Types::GetMembersRequest

    GetMembersResponse.add_member(:member_details, Shapes::ShapeRef.new(shape: MemberDetailList, location_name: "MemberDetails"))
    GetMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: "UnprocessedAccounts"))
    GetMembersResponse.struct_class = Types::GetMembersResponse

    Graph.add_member(:arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "Arn"))
    Graph.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Graph.struct_class = Types::Graph

    GraphArnList.member = Shapes::ShapeRef.new(shape: GraphArn)

    GraphList.member = Shapes::ShapeRef.new(shape: Graph)

    ImpossibleTravelDetail.add_member(:starting_ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "StartingIpAddress"))
    ImpossibleTravelDetail.add_member(:ending_ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "EndingIpAddress"))
    ImpossibleTravelDetail.add_member(:starting_location, Shapes::ShapeRef.new(shape: Location, location_name: "StartingLocation"))
    ImpossibleTravelDetail.add_member(:ending_location, Shapes::ShapeRef.new(shape: Location, location_name: "EndingLocation"))
    ImpossibleTravelDetail.add_member(:hourly_time_delta, Shapes::ShapeRef.new(shape: HourlyTimeDelta, location_name: "HourlyTimeDelta"))
    ImpossibleTravelDetail.struct_class = Types::ImpossibleTravelDetail

    Indicator.add_member(:indicator_type, Shapes::ShapeRef.new(shape: IndicatorType, location_name: "IndicatorType"))
    Indicator.add_member(:indicator_detail, Shapes::ShapeRef.new(shape: IndicatorDetail, location_name: "IndicatorDetail"))
    Indicator.struct_class = Types::Indicator

    IndicatorDetail.add_member(:tt_ps_observed_detail, Shapes::ShapeRef.new(shape: TTPsObservedDetail, location_name: "TTPsObservedDetail"))
    IndicatorDetail.add_member(:impossible_travel_detail, Shapes::ShapeRef.new(shape: ImpossibleTravelDetail, location_name: "ImpossibleTravelDetail"))
    IndicatorDetail.add_member(:flagged_ip_address_detail, Shapes::ShapeRef.new(shape: FlaggedIpAddressDetail, location_name: "FlaggedIpAddressDetail"))
    IndicatorDetail.add_member(:new_geolocation_detail, Shapes::ShapeRef.new(shape: NewGeolocationDetail, location_name: "NewGeolocationDetail"))
    IndicatorDetail.add_member(:new_aso_detail, Shapes::ShapeRef.new(shape: NewAsoDetail, location_name: "NewAsoDetail"))
    IndicatorDetail.add_member(:new_user_agent_detail, Shapes::ShapeRef.new(shape: NewUserAgentDetail, location_name: "NewUserAgentDetail"))
    IndicatorDetail.add_member(:related_finding_detail, Shapes::ShapeRef.new(shape: RelatedFindingDetail, location_name: "RelatedFindingDetail"))
    IndicatorDetail.add_member(:related_finding_group_detail, Shapes::ShapeRef.new(shape: RelatedFindingGroupDetail, location_name: "RelatedFindingGroupDetail"))
    IndicatorDetail.struct_class = Types::IndicatorDetail

    Indicators.member = Shapes::ShapeRef.new(shape: Indicator)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvestigationDetail.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, location_name: "InvestigationId"))
    InvestigationDetail.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "Severity"))
    InvestigationDetail.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    InvestigationDetail.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    InvestigationDetail.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    InvestigationDetail.add_member(:entity_arn, Shapes::ShapeRef.new(shape: EntityArn, location_name: "EntityArn"))
    InvestigationDetail.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    InvestigationDetail.struct_class = Types::InvestigationDetail

    InvestigationDetails.member = Shapes::ShapeRef.new(shape: InvestigationDetail)

    LastIngestStateChangeDates.key = Shapes::ShapeRef.new(shape: DatasourcePackageIngestState)
    LastIngestStateChangeDates.value = Shapes::ShapeRef.new(shape: TimestampForCollection)

    ListDatasourcePackagesRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    ListDatasourcePackagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDatasourcePackagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: "MaxResults"))
    ListDatasourcePackagesRequest.struct_class = Types::ListDatasourcePackagesRequest

    ListDatasourcePackagesResponse.add_member(:datasource_packages, Shapes::ShapeRef.new(shape: DatasourcePackageIngestDetails, location_name: "DatasourcePackages"))
    ListDatasourcePackagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDatasourcePackagesResponse.struct_class = Types::ListDatasourcePackagesResponse

    ListGraphsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListGraphsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: "MaxResults"))
    ListGraphsRequest.struct_class = Types::ListGraphsRequest

    ListGraphsResponse.add_member(:graph_list, Shapes::ShapeRef.new(shape: GraphList, location_name: "GraphList"))
    ListGraphsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListGraphsResponse.struct_class = Types::ListGraphsResponse

    ListIndicatorsRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    ListIndicatorsRequest.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, required: true, location_name: "InvestigationId"))
    ListIndicatorsRequest.add_member(:indicator_type, Shapes::ShapeRef.new(shape: IndicatorType, location_name: "IndicatorType"))
    ListIndicatorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: "NextToken"))
    ListIndicatorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListIndicatorsRequest.struct_class = Types::ListIndicatorsRequest

    ListIndicatorsResponse.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    ListIndicatorsResponse.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, location_name: "InvestigationId"))
    ListIndicatorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: "NextToken"))
    ListIndicatorsResponse.add_member(:indicators, Shapes::ShapeRef.new(shape: Indicators, location_name: "Indicators"))
    ListIndicatorsResponse.struct_class = Types::ListIndicatorsResponse

    ListInvestigationsRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    ListInvestigationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: "NextToken"))
    ListInvestigationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInvestigationsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "FilterCriteria"))
    ListInvestigationsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "SortCriteria"))
    ListInvestigationsRequest.struct_class = Types::ListInvestigationsRequest

    ListInvestigationsResponse.add_member(:investigation_details, Shapes::ShapeRef.new(shape: InvestigationDetails, location_name: "InvestigationDetails"))
    ListInvestigationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: AiPaginationToken, location_name: "NextToken"))
    ListInvestigationsResponse.struct_class = Types::ListInvestigationsResponse

    ListInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: "MaxResults"))
    ListInvitationsRequest.struct_class = Types::ListInvitationsRequest

    ListInvitationsResponse.add_member(:invitations, Shapes::ShapeRef.new(shape: MemberDetailList, location_name: "Invitations"))
    ListInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListInvitationsResponse.struct_class = Types::ListInvitationsResponse

    ListMembersRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: "MaxResults"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:member_details, Shapes::ShapeRef.new(shape: MemberDetailList, location_name: "MemberDetails"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

    ListOrganizationAdminAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListOrganizationAdminAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: "MaxResults"))
    ListOrganizationAdminAccountsRequest.struct_class = Types::ListOrganizationAdminAccountsRequest

    ListOrganizationAdminAccountsResponse.add_member(:administrators, Shapes::ShapeRef.new(shape: AdministratorList, location_name: "Administrators"))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListOrganizationAdminAccountsResponse.struct_class = Types::ListOrganizationAdminAccountsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MemberDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    MemberDetail.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    MemberDetail.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    MemberDetail.add_member(:master_id, Shapes::ShapeRef.new(shape: AccountId, deprecated: true, location_name: "MasterId", metadata: {"deprecatedMessage"=>"This property is deprecated. Use AdministratorId instead."}))
    MemberDetail.add_member(:administrator_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AdministratorId"))
    MemberDetail.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, location_name: "Status"))
    MemberDetail.add_member(:disabled_reason, Shapes::ShapeRef.new(shape: MemberDisabledReason, location_name: "DisabledReason"))
    MemberDetail.add_member(:invited_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InvitedTime"))
    MemberDetail.add_member(:updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedTime"))
    MemberDetail.add_member(:volume_usage_in_bytes, Shapes::ShapeRef.new(shape: ByteValue, deprecated: true, location_name: "VolumeUsageInBytes", metadata: {"deprecatedMessage"=>"This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}))
    MemberDetail.add_member(:volume_usage_updated_time, Shapes::ShapeRef.new(shape: Timestamp, deprecated: true, location_name: "VolumeUsageUpdatedTime", metadata: {"deprecatedMessage"=>"This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}))
    MemberDetail.add_member(:percent_of_graph_utilization, Shapes::ShapeRef.new(shape: Percentage, deprecated: true, location_name: "PercentOfGraphUtilization", metadata: {"deprecatedMessage"=>"This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}))
    MemberDetail.add_member(:percent_of_graph_utilization_updated_time, Shapes::ShapeRef.new(shape: Timestamp, deprecated: true, location_name: "PercentOfGraphUtilizationUpdatedTime", metadata: {"deprecatedMessage"=>"This property is deprecated. Use VolumeUsageByDatasourcePackage instead."}))
    MemberDetail.add_member(:invitation_type, Shapes::ShapeRef.new(shape: InvitationType, location_name: "InvitationType"))
    MemberDetail.add_member(:volume_usage_by_datasource_package, Shapes::ShapeRef.new(shape: VolumeUsageByDatasourcePackage, location_name: "VolumeUsageByDatasourcePackage"))
    MemberDetail.add_member(:datasource_package_ingest_states, Shapes::ShapeRef.new(shape: DatasourcePackageIngestStates, location_name: "DatasourcePackageIngestStates"))
    MemberDetail.struct_class = Types::MemberDetail

    MemberDetailList.member = Shapes::ShapeRef.new(shape: MemberDetail)

    MembershipDatasources.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    MembershipDatasources.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    MembershipDatasources.add_member(:datasource_package_ingest_history, Shapes::ShapeRef.new(shape: DatasourcePackageIngestHistory, location_name: "DatasourcePackageIngestHistory"))
    MembershipDatasources.struct_class = Types::MembershipDatasources

    MembershipDatasourcesList.member = Shapes::ShapeRef.new(shape: MembershipDatasources)

    NewAsoDetail.add_member(:aso, Shapes::ShapeRef.new(shape: Aso, location_name: "Aso"))
    NewAsoDetail.add_member(:is_new_for_entire_account, Shapes::ShapeRef.new(shape: IsNewForEntireAccount, location_name: "IsNewForEntireAccount"))
    NewAsoDetail.struct_class = Types::NewAsoDetail

    NewGeolocationDetail.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "Location"))
    NewGeolocationDetail.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    NewGeolocationDetail.add_member(:is_new_for_entire_account, Shapes::ShapeRef.new(shape: IsNewForEntireAccount, location_name: "IsNewForEntireAccount"))
    NewGeolocationDetail.struct_class = Types::NewGeolocationDetail

    NewUserAgentDetail.add_member(:user_agent, Shapes::ShapeRef.new(shape: UserAgent, location_name: "UserAgent"))
    NewUserAgentDetail.add_member(:is_new_for_entire_account, Shapes::ShapeRef.new(shape: IsNewForEntireAccount, location_name: "IsNewForEntireAccount"))
    NewUserAgentDetail.struct_class = Types::NewUserAgentDetail

    RejectInvitationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    RejectInvitationRequest.struct_class = Types::RejectInvitationRequest

    RelatedFindingDetail.add_member(:arn, Shapes::ShapeRef.new(shape: EntityArn, location_name: "Arn"))
    RelatedFindingDetail.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    RelatedFindingDetail.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    RelatedFindingDetail.struct_class = Types::RelatedFindingDetail

    RelatedFindingGroupDetail.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    RelatedFindingGroupDetail.struct_class = Types::RelatedFindingGroupDetail

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "Resources"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SortCriteria.add_member(:field, Shapes::ShapeRef.new(shape: Field, location_name: "Field"))
    SortCriteria.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SortCriteria.struct_class = Types::SortCriteria

    StartInvestigationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    StartInvestigationRequest.add_member(:entity_arn, Shapes::ShapeRef.new(shape: EntityArn, required: true, location_name: "EntityArn"))
    StartInvestigationRequest.add_member(:scope_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ScopeStartTime"))
    StartInvestigationRequest.add_member(:scope_end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ScopeEndTime"))
    StartInvestigationRequest.struct_class = Types::StartInvestigationRequest

    StartInvestigationResponse.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, location_name: "InvestigationId"))
    StartInvestigationResponse.struct_class = Types::StartInvestigationResponse

    StartMonitoringMemberRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    StartMonitoringMemberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    StartMonitoringMemberRequest.struct_class = Types::StartMonitoringMemberRequest

    StringFilter.add_member(:value, Shapes::ShapeRef.new(shape: Value, required: true, location_name: "Value"))
    StringFilter.struct_class = Types::StringFilter

    TTPsObservedDetail.add_member(:tactic, Shapes::ShapeRef.new(shape: Tactic, location_name: "Tactic"))
    TTPsObservedDetail.add_member(:technique, Shapes::ShapeRef.new(shape: Technique, location_name: "Technique"))
    TTPsObservedDetail.add_member(:procedure, Shapes::ShapeRef.new(shape: Procedure, location_name: "Procedure"))
    TTPsObservedDetail.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    TTPsObservedDetail.add_member(:api_name, Shapes::ShapeRef.new(shape: APIName, location_name: "APIName"))
    TTPsObservedDetail.add_member(:api_success_count, Shapes::ShapeRef.new(shape: APISuccessCount, location_name: "APISuccessCount"))
    TTPsObservedDetail.add_member(:api_failure_count, Shapes::ShapeRef.new(shape: APIFailureCount, location_name: "APIFailureCount"))
    TTPsObservedDetail.struct_class = Types::TTPsObservedDetail

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TimestampForCollection.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    TimestampForCollection.struct_class = Types::TimestampForCollection

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnprocessedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    UnprocessedAccount.add_member(:reason, Shapes::ShapeRef.new(shape: UnprocessedReason, location_name: "Reason"))
    UnprocessedAccount.struct_class = Types::UnprocessedAccount

    UnprocessedAccountList.member = Shapes::ShapeRef.new(shape: UnprocessedAccount)

    UnprocessedGraph.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    UnprocessedGraph.add_member(:reason, Shapes::ShapeRef.new(shape: UnprocessedReason, location_name: "Reason"))
    UnprocessedGraph.struct_class = Types::UnprocessedGraph

    UnprocessedGraphList.member = Shapes::ShapeRef.new(shape: UnprocessedGraph)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDatasourcePackagesRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    UpdateDatasourcePackagesRequest.add_member(:datasource_packages, Shapes::ShapeRef.new(shape: DatasourcePackageList, required: true, location_name: "DatasourcePackages"))
    UpdateDatasourcePackagesRequest.struct_class = Types::UpdateDatasourcePackagesRequest

    UpdateInvestigationStateRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    UpdateInvestigationStateRequest.add_member(:investigation_id, Shapes::ShapeRef.new(shape: InvestigationId, required: true, location_name: "InvestigationId"))
    UpdateInvestigationStateRequest.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "State"))
    UpdateInvestigationStateRequest.struct_class = Types::UpdateInvestigationStateRequest

    UpdateOrganizationConfigurationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnable"))
    UpdateOrganizationConfigurationRequest.struct_class = Types::UpdateOrganizationConfigurationRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    ValidationException.add_member(:error_code_reason, Shapes::ShapeRef.new(shape: ErrorCodeReason, location_name: "ErrorCodeReason"))
    ValidationException.struct_class = Types::ValidationException

    VolumeUsageByDatasourcePackage.key = Shapes::ShapeRef.new(shape: DatasourcePackage)
    VolumeUsageByDatasourcePackage.value = Shapes::ShapeRef.new(shape: DatasourcePackageUsageInfo)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-26"

      api.metadata = {
        "apiVersion" => "2018-10-26",
        "endpointPrefix" => "api.detective",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Detective",
        "serviceId" => "Detective",
        "signatureVersion" => "v4",
        "signingName" => "detective",
        "uid" => "detective-2018-10-26",
      }

      api.add_operation(:accept_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInvitation"
        o.http_method = "PUT"
        o.http_request_uri = "/invitation"
        o.input = Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:batch_get_graph_member_datasources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetGraphMemberDatasources"
        o.http_method = "POST"
        o.http_request_uri = "/graph/datasources/get"
        o.input = Shapes::ShapeRef.new(shape: BatchGetGraphMemberDatasourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetGraphMemberDatasourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:batch_get_membership_datasources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetMembershipDatasources"
        o.http_method = "POST"
        o.http_request_uri = "/membership/datasources/get"
        o.input = Shapes::ShapeRef.new(shape: BatchGetMembershipDatasourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetMembershipDatasourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGraph"
        o.http_method = "POST"
        o.http_request_uri = "/graph"
        o.input = Shapes::ShapeRef.new(shape: CreateGraphRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGraphResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/graph/members"
        o.input = Shapes::ShapeRef.new(shape: CreateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGraph"
        o.http_method = "POST"
        o.http_request_uri = "/graph/removal"
        o.input = Shapes::ShapeRef.new(shape: DeleteGraphRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/graph/members/removal"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/orgs/describeOrganizationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:disable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/orgs/disableAdminAccount"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:disassociate_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMembership"
        o.http_method = "POST"
        o.http_request_uri = "/membership/removal"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:enable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/orgs/enableAdminAccount"
        o.input = Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_investigation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvestigation"
        o.http_method = "POST"
        o.http_request_uri = "/investigations/getInvestigation"
        o.input = Shapes::ShapeRef.new(shape: GetInvestigationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvestigationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembers"
        o.http_method = "POST"
        o.http_request_uri = "/graph/members/get"
        o.input = Shapes::ShapeRef.new(shape: GetMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_datasource_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasourcePackages"
        o.http_method = "POST"
        o.http_request_uri = "/graph/datasources/list"
        o.input = Shapes::ShapeRef.new(shape: ListDatasourcePackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasourcePackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_graphs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGraphs"
        o.http_method = "POST"
        o.http_request_uri = "/graphs/list"
        o.input = Shapes::ShapeRef.new(shape: ListGraphsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGraphsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_indicators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndicators"
        o.http_method = "POST"
        o.http_request_uri = "/investigations/listIndicators"
        o.input = Shapes::ShapeRef.new(shape: ListIndicatorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIndicatorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_investigations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvestigations"
        o.http_method = "POST"
        o.http_request_uri = "/investigations/listInvestigations"
        o.input = Shapes::ShapeRef.new(shape: ListInvestigationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvestigationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/list"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "POST"
        o.http_request_uri = "/graph/members/list"
        o.input = Shapes::ShapeRef.new(shape: ListMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organization_admin_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationAdminAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/orgs/adminAccountslist"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reject_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/invitation/removal"
        o.input = Shapes::ShapeRef.new(shape: RejectInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_investigation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInvestigation"
        o.http_method = "POST"
        o.http_request_uri = "/investigations/startInvestigation"
        o.input = Shapes::ShapeRef.new(shape: StartInvestigationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartInvestigationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_monitoring_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMonitoringMember"
        o.http_method = "POST"
        o.http_request_uri = "/graph/member/monitoringstate"
        o.input = Shapes::ShapeRef.new(shape: StartMonitoringMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_datasource_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatasourcePackages"
        o.http_method = "POST"
        o.http_request_uri = "/graph/datasources/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasourcePackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_investigation_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInvestigationState"
        o.http_method = "POST"
        o.http_request_uri = "/investigations/updateInvestigationState"
        o.input = Shapes::ShapeRef.new(shape: UpdateInvestigationStateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/orgs/updateOrganizationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end

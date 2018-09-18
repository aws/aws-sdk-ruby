# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GuardDuty
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = Shapes::StructureShape.new(name: 'AcceptInvitationResponse')
    AccessKeyDetails = Shapes::StructureShape.new(name: 'AccessKeyDetails')
    AccountDetail = Shapes::StructureShape.new(name: 'AccountDetail')
    AccountDetails = Shapes::ListShape.new(name: 'AccountDetails')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIds = Shapes::ListShape.new(name: 'AccountIds')
    Action = Shapes::StructureShape.new(name: 'Action')
    Activate = Shapes::BooleanShape.new(name: 'Activate')
    ArchiveFindingsRequest = Shapes::StructureShape.new(name: 'ArchiveFindingsRequest')
    ArchiveFindingsResponse = Shapes::StructureShape.new(name: 'ArchiveFindingsResponse')
    AwsApiCallAction = Shapes::StructureShape.new(name: 'AwsApiCallAction')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    City = Shapes::StructureShape.new(name: 'City')
    Comments = Shapes::StringShape.new(name: 'Comments')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    CountBySeverityFindingStatistic = Shapes::IntegerShape.new(name: 'CountBySeverityFindingStatistic')
    Country = Shapes::StructureShape.new(name: 'Country')
    CreateDetectorRequest = Shapes::StructureShape.new(name: 'CreateDetectorRequest')
    CreateDetectorResponse = Shapes::StructureShape.new(name: 'CreateDetectorResponse')
    CreateFilterRequest = Shapes::StructureShape.new(name: 'CreateFilterRequest')
    CreateFilterResponse = Shapes::StructureShape.new(name: 'CreateFilterResponse')
    CreateIPSetRequest = Shapes::StructureShape.new(name: 'CreateIPSetRequest')
    CreateIPSetResponse = Shapes::StructureShape.new(name: 'CreateIPSetResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    CreateSampleFindingsRequest = Shapes::StructureShape.new(name: 'CreateSampleFindingsRequest')
    CreateSampleFindingsResponse = Shapes::StructureShape.new(name: 'CreateSampleFindingsResponse')
    CreateThreatIntelSetRequest = Shapes::StructureShape.new(name: 'CreateThreatIntelSetRequest')
    CreateThreatIntelSetResponse = Shapes::StructureShape.new(name: 'CreateThreatIntelSetResponse')
    CreatedAt = Shapes::StringShape.new(name: 'CreatedAt')
    DeclineInvitationsRequest = Shapes::StructureShape.new(name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Shapes::StructureShape.new(name: 'DeclineInvitationsResponse')
    DeleteDetectorRequest = Shapes::StructureShape.new(name: 'DeleteDetectorRequest')
    DeleteDetectorResponse = Shapes::StructureShape.new(name: 'DeleteDetectorResponse')
    DeleteFilterRequest = Shapes::StructureShape.new(name: 'DeleteFilterRequest')
    DeleteFilterResponse = Shapes::StructureShape.new(name: 'DeleteFilterResponse')
    DeleteIPSetRequest = Shapes::StructureShape.new(name: 'DeleteIPSetRequest')
    DeleteIPSetResponse = Shapes::StructureShape.new(name: 'DeleteIPSetResponse')
    DeleteInvitationsRequest = Shapes::StructureShape.new(name: 'DeleteInvitationsRequest')
    DeleteInvitationsResponse = Shapes::StructureShape.new(name: 'DeleteInvitationsResponse')
    DeleteMembersRequest = Shapes::StructureShape.new(name: 'DeleteMembersRequest')
    DeleteMembersResponse = Shapes::StructureShape.new(name: 'DeleteMembersResponse')
    DeleteThreatIntelSetRequest = Shapes::StructureShape.new(name: 'DeleteThreatIntelSetRequest')
    DeleteThreatIntelSetResponse = Shapes::StructureShape.new(name: 'DeleteThreatIntelSetResponse')
    DetectorId = Shapes::StringShape.new(name: 'DetectorId')
    DetectorIds = Shapes::ListShape.new(name: 'DetectorIds')
    DetectorStatus = Shapes::StringShape.new(name: 'DetectorStatus')
    DisassociateFromMasterAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountResponse')
    DisassociateMembersRequest = Shapes::StructureShape.new(name: 'DisassociateMembersRequest')
    DisassociateMembersResponse = Shapes::StructureShape.new(name: 'DisassociateMembersResponse')
    DnsRequestAction = Shapes::StructureShape.new(name: 'DnsRequestAction')
    Domain = Shapes::StringShape.new(name: 'Domain')
    DomainDetails = Shapes::StructureShape.new(name: 'DomainDetails')
    Email = Shapes::StringShape.new(name: 'Email')
    Enable = Shapes::BooleanShape.new(name: 'Enable')
    Eq = Shapes::ListShape.new(name: 'Eq')
    ErrorResponse = Shapes::StructureShape.new(name: 'ErrorResponse')
    Feedback = Shapes::StringShape.new(name: 'Feedback')
    FilterAction = Shapes::StringShape.new(name: 'FilterAction')
    FilterDescription = Shapes::StringShape.new(name: 'FilterDescription')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterNames = Shapes::ListShape.new(name: 'FilterNames')
    FilterRank = Shapes::IntegerShape.new(name: 'FilterRank')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingCriteria = Shapes::StructureShape.new(name: 'FindingCriteria')
    FindingId = Shapes::StringShape.new(name: 'FindingId')
    FindingIds = Shapes::ListShape.new(name: 'FindingIds')
    FindingStatisticType = Shapes::StringShape.new(name: 'FindingStatisticType')
    FindingStatisticTypes = Shapes::ListShape.new(name: 'FindingStatisticTypes')
    FindingStatistics = Shapes::StructureShape.new(name: 'FindingStatistics')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    FindingTypes = Shapes::ListShape.new(name: 'FindingTypes')
    Findings = Shapes::ListShape.new(name: 'Findings')
    GeoLocation = Shapes::StructureShape.new(name: 'GeoLocation')
    GetDetectorRequest = Shapes::StructureShape.new(name: 'GetDetectorRequest')
    GetDetectorResponse = Shapes::StructureShape.new(name: 'GetDetectorResponse')
    GetFilterRequest = Shapes::StructureShape.new(name: 'GetFilterRequest')
    GetFilterResponse = Shapes::StructureShape.new(name: 'GetFilterResponse')
    GetFindingsRequest = Shapes::StructureShape.new(name: 'GetFindingsRequest')
    GetFindingsResponse = Shapes::StructureShape.new(name: 'GetFindingsResponse')
    GetFindingsStatisticsRequest = Shapes::StructureShape.new(name: 'GetFindingsStatisticsRequest')
    GetFindingsStatisticsResponse = Shapes::StructureShape.new(name: 'GetFindingsStatisticsResponse')
    GetIPSetRequest = Shapes::StructureShape.new(name: 'GetIPSetRequest')
    GetIPSetResponse = Shapes::StructureShape.new(name: 'GetIPSetResponse')
    GetInvitationsCountRequest = Shapes::StructureShape.new(name: 'GetInvitationsCountRequest')
    GetInvitationsCountResponse = Shapes::StructureShape.new(name: 'GetInvitationsCountResponse')
    GetMasterAccountRequest = Shapes::StructureShape.new(name: 'GetMasterAccountRequest')
    GetMasterAccountResponse = Shapes::StructureShape.new(name: 'GetMasterAccountResponse')
    GetMembersRequest = Shapes::StructureShape.new(name: 'GetMembersRequest')
    GetMembersResponse = Shapes::StructureShape.new(name: 'GetMembersResponse')
    GetThreatIntelSetRequest = Shapes::StructureShape.new(name: 'GetThreatIntelSetRequest')
    GetThreatIntelSetResponse = Shapes::StructureShape.new(name: 'GetThreatIntelSetResponse')
    IamInstanceProfile = Shapes::StructureShape.new(name: 'IamInstanceProfile')
    InstanceDetails = Shapes::StructureShape.new(name: 'InstanceDetails')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    InvitationId = Shapes::StringShape.new(name: 'InvitationId')
    Invitations = Shapes::ListShape.new(name: 'Invitations')
    InviteMembersRequest = Shapes::StructureShape.new(name: 'InviteMembersRequest')
    InviteMembersResponse = Shapes::StructureShape.new(name: 'InviteMembersResponse')
    InvitedAt = Shapes::StringShape.new(name: 'InvitedAt')
    IpSetFormat = Shapes::StringShape.new(name: 'IpSetFormat')
    IpSetId = Shapes::StringShape.new(name: 'IpSetId')
    IpSetIds = Shapes::ListShape.new(name: 'IpSetIds')
    IpSetStatus = Shapes::StringShape.new(name: 'IpSetStatus')
    Ipv6Address = Shapes::StringShape.new(name: 'Ipv6Address')
    Ipv6Addresses = Shapes::ListShape.new(name: 'Ipv6Addresses')
    ListDetectorsRequest = Shapes::StructureShape.new(name: 'ListDetectorsRequest')
    ListDetectorsResponse = Shapes::StructureShape.new(name: 'ListDetectorsResponse')
    ListFiltersRequest = Shapes::StructureShape.new(name: 'ListFiltersRequest')
    ListFiltersResponse = Shapes::StructureShape.new(name: 'ListFiltersResponse')
    ListFindingsRequest = Shapes::StructureShape.new(name: 'ListFindingsRequest')
    ListFindingsResponse = Shapes::StructureShape.new(name: 'ListFindingsResponse')
    ListIPSetsRequest = Shapes::StructureShape.new(name: 'ListIPSetsRequest')
    ListIPSetsResponse = Shapes::StructureShape.new(name: 'ListIPSetsResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListThreatIntelSetsRequest = Shapes::StructureShape.new(name: 'ListThreatIntelSetsRequest')
    ListThreatIntelSetsResponse = Shapes::StructureShape.new(name: 'ListThreatIntelSetsResponse')
    LocalPortDetails = Shapes::StructureShape.new(name: 'LocalPortDetails')
    Location = Shapes::StringShape.new(name: 'Location')
    Master = Shapes::StructureShape.new(name: 'Master')
    MasterId = Shapes::StringShape.new(name: 'MasterId')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StructureShape.new(name: 'Member')
    Members = Shapes::ListShape.new(name: 'Members')
    Message = Shapes::StringShape.new(name: 'Message')
    Name = Shapes::StringShape.new(name: 'Name')
    Neq = Shapes::ListShape.new(name: 'Neq')
    NetworkConnectionAction = Shapes::StructureShape.new(name: 'NetworkConnectionAction')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    Organization = Shapes::StructureShape.new(name: 'Organization')
    PortProbeAction = Shapes::StructureShape.new(name: 'PortProbeAction')
    PortProbeDetail = Shapes::StructureShape.new(name: 'PortProbeDetail')
    PrivateDnsName = Shapes::StringShape.new(name: 'PrivateDnsName')
    PrivateIpAddress = Shapes::StringShape.new(name: 'PrivateIpAddress')
    PrivateIpAddressDetails = Shapes::StructureShape.new(name: 'PrivateIpAddressDetails')
    PrivateIpAddresses = Shapes::ListShape.new(name: 'PrivateIpAddresses')
    ProductCode = Shapes::StructureShape.new(name: 'ProductCode')
    ProductCodes = Shapes::ListShape.new(name: 'ProductCodes')
    RemoteIpDetails = Shapes::StructureShape.new(name: 'RemoteIpDetails')
    RemotePortDetails = Shapes::StructureShape.new(name: 'RemotePortDetails')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    SecurityGroup = Shapes::StructureShape.new(name: 'SecurityGroup')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceRole = Shapes::StringShape.new(name: 'ServiceRole')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    StartMonitoringMembersRequest = Shapes::StructureShape.new(name: 'StartMonitoringMembersRequest')
    StartMonitoringMembersResponse = Shapes::StructureShape.new(name: 'StartMonitoringMembersResponse')
    StopMonitoringMembersRequest = Shapes::StructureShape.new(name: 'StopMonitoringMembersRequest')
    StopMonitoringMembersResponse = Shapes::StructureShape.new(name: 'StopMonitoringMembersResponse')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThreatIntelSetFormat = Shapes::StringShape.new(name: 'ThreatIntelSetFormat')
    ThreatIntelSetId = Shapes::StringShape.new(name: 'ThreatIntelSetId')
    ThreatIntelSetIds = Shapes::ListShape.new(name: 'ThreatIntelSetIds')
    ThreatIntelSetStatus = Shapes::StringShape.new(name: 'ThreatIntelSetStatus')
    UnarchiveFindingsRequest = Shapes::StructureShape.new(name: 'UnarchiveFindingsRequest')
    UnarchiveFindingsResponse = Shapes::StructureShape.new(name: 'UnarchiveFindingsResponse')
    UnprocessedAccount = Shapes::StructureShape.new(name: 'UnprocessedAccount')
    UnprocessedAccounts = Shapes::ListShape.new(name: 'UnprocessedAccounts')
    UpdateDetectorRequest = Shapes::StructureShape.new(name: 'UpdateDetectorRequest')
    UpdateDetectorResponse = Shapes::StructureShape.new(name: 'UpdateDetectorResponse')
    UpdateFilterRequest = Shapes::StructureShape.new(name: 'UpdateFilterRequest')
    UpdateFilterResponse = Shapes::StructureShape.new(name: 'UpdateFilterResponse')
    UpdateFindingsFeedbackRequest = Shapes::StructureShape.new(name: 'UpdateFindingsFeedbackRequest')
    UpdateFindingsFeedbackResponse = Shapes::StructureShape.new(name: 'UpdateFindingsFeedbackResponse')
    UpdateIPSetRequest = Shapes::StructureShape.new(name: 'UpdateIPSetRequest')
    UpdateIPSetResponse = Shapes::StructureShape.new(name: 'UpdateIPSetResponse')
    UpdateThreatIntelSetRequest = Shapes::StructureShape.new(name: 'UpdateThreatIntelSetRequest')
    UpdateThreatIntelSetResponse = Shapes::StructureShape.new(name: 'UpdateThreatIntelSetResponse')
    UpdatedAt = Shapes::StringShape.new(name: 'UpdatedAt')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfPortProbeDetail = Shapes::ListShape.new(name: '__listOfPortProbeDetail')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOfCondition = Shapes::MapShape.new(name: '__mapOfCondition')
    __mapOfCountBySeverityFindingStatistic = Shapes::MapShape.new(name: '__mapOfCountBySeverityFindingStatistic')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin0Max64 = Shapes::StringShape.new(name: '__stringMin0Max64')
    __timestamp = Shapes::TimestampShape.new(name: '__timestamp')

    AcceptInvitationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    AcceptInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: InvitationId, location_name: "invitationId"))
    AcceptInvitationRequest.add_member(:master_id, Shapes::ShapeRef.new(shape: MasterId, location_name: "masterId"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    AcceptInvitationResponse.struct_class = Types::AcceptInvitationResponse

    AccessKeyDetails.add_member(:access_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "accessKeyId"))
    AccessKeyDetails.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    AccessKeyDetails.add_member(:user_name, Shapes::ShapeRef.new(shape: __string, location_name: "userName"))
    AccessKeyDetails.add_member(:user_type, Shapes::ShapeRef.new(shape: __string, location_name: "userType"))
    AccessKeyDetails.struct_class = Types::AccessKeyDetails

    AccountDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AccountDetail.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "email"))
    AccountDetail.struct_class = Types::AccountDetail

    AccountDetails.member = Shapes::ShapeRef.new(shape: AccountDetail)

    AccountIds.member = Shapes::ShapeRef.new(shape: __string)

    Action.add_member(:action_type, Shapes::ShapeRef.new(shape: __string, location_name: "actionType"))
    Action.add_member(:aws_api_call_action, Shapes::ShapeRef.new(shape: AwsApiCallAction, location_name: "awsApiCallAction"))
    Action.add_member(:dns_request_action, Shapes::ShapeRef.new(shape: DnsRequestAction, location_name: "dnsRequestAction"))
    Action.add_member(:network_connection_action, Shapes::ShapeRef.new(shape: NetworkConnectionAction, location_name: "networkConnectionAction"))
    Action.add_member(:port_probe_action, Shapes::ShapeRef.new(shape: PortProbeAction, location_name: "portProbeAction"))
    Action.struct_class = Types::Action

    ArchiveFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    ArchiveFindingsRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, location_name: "findingIds"))
    ArchiveFindingsRequest.struct_class = Types::ArchiveFindingsRequest

    ArchiveFindingsResponse.struct_class = Types::ArchiveFindingsResponse

    AwsApiCallAction.add_member(:api, Shapes::ShapeRef.new(shape: __string, location_name: "api"))
    AwsApiCallAction.add_member(:caller_type, Shapes::ShapeRef.new(shape: __string, location_name: "callerType"))
    AwsApiCallAction.add_member(:domain_details, Shapes::ShapeRef.new(shape: DomainDetails, location_name: "domainDetails"))
    AwsApiCallAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    AwsApiCallAction.add_member(:service_name, Shapes::ShapeRef.new(shape: __string, location_name: "serviceName"))
    AwsApiCallAction.struct_class = Types::AwsApiCallAction

    City.add_member(:city_name, Shapes::ShapeRef.new(shape: __string, location_name: "cityName"))
    City.struct_class = Types::City

    Condition.add_member(:eq, Shapes::ShapeRef.new(shape: Eq, location_name: "eq"))
    Condition.add_member(:gt, Shapes::ShapeRef.new(shape: __integer, location_name: "gt"))
    Condition.add_member(:gte, Shapes::ShapeRef.new(shape: __integer, location_name: "gte"))
    Condition.add_member(:lt, Shapes::ShapeRef.new(shape: __integer, location_name: "lt"))
    Condition.add_member(:lte, Shapes::ShapeRef.new(shape: __integer, location_name: "lte"))
    Condition.add_member(:neq, Shapes::ShapeRef.new(shape: Neq, location_name: "neq"))
    Condition.struct_class = Types::Condition

    Country.add_member(:country_code, Shapes::ShapeRef.new(shape: __string, location_name: "countryCode"))
    Country.add_member(:country_name, Shapes::ShapeRef.new(shape: __string, location_name: "countryName"))
    Country.struct_class = Types::Country

    CreateDetectorRequest.add_member(:enable, Shapes::ShapeRef.new(shape: Enable, location_name: "enable"))
    CreateDetectorRequest.struct_class = Types::CreateDetectorRequest

    CreateDetectorResponse.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    CreateDetectorResponse.struct_class = Types::CreateDetectorResponse

    CreateFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, location_name: "action"))
    CreateFilterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __stringMin0Max64, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    CreateFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    CreateFilterRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    CreateFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    CreateFilterRequest.add_member(:rank, Shapes::ShapeRef.new(shape: FilterRank, location_name: "rank"))
    CreateFilterRequest.struct_class = Types::CreateFilterRequest

    CreateFilterResponse.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    CreateFilterResponse.struct_class = Types::CreateFilterResponse

    CreateIPSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Activate, location_name: "activate"))
    CreateIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    CreateIPSetRequest.add_member(:format, Shapes::ShapeRef.new(shape: IpSetFormat, location_name: "format"))
    CreateIPSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    CreateIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateIPSetRequest.struct_class = Types::CreateIPSetRequest

    CreateIPSetResponse.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: IpSetId, location_name: "ipSetId"))
    CreateIPSetResponse.struct_class = Types::CreateIPSetResponse

    CreateMembersRequest.add_member(:account_details, Shapes::ShapeRef.new(shape: AccountDetails, location_name: "accountDetails"))
    CreateMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    CreateMembersRequest.struct_class = Types::CreateMembersRequest

    CreateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    CreateMembersResponse.struct_class = Types::CreateMembersResponse

    CreateSampleFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    CreateSampleFindingsRequest.add_member(:finding_types, Shapes::ShapeRef.new(shape: FindingTypes, location_name: "findingTypes"))
    CreateSampleFindingsRequest.struct_class = Types::CreateSampleFindingsRequest

    CreateSampleFindingsResponse.struct_class = Types::CreateSampleFindingsResponse

    CreateThreatIntelSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Activate, location_name: "activate"))
    CreateThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    CreateThreatIntelSetRequest.add_member(:format, Shapes::ShapeRef.new(shape: ThreatIntelSetFormat, location_name: "format"))
    CreateThreatIntelSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    CreateThreatIntelSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateThreatIntelSetRequest.struct_class = Types::CreateThreatIntelSetRequest

    CreateThreatIntelSetResponse.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: ThreatIntelSetId, location_name: "threatIntelSetId"))
    CreateThreatIntelSetResponse.struct_class = Types::CreateThreatIntelSetResponse

    DeclineInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    DeclineInvitationsRequest.struct_class = Types::DeclineInvitationsRequest

    DeclineInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    DeclineInvitationsResponse.struct_class = Types::DeclineInvitationsResponse

    DeleteDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    DeleteDetectorRequest.struct_class = Types::DeleteDetectorRequest

    DeleteDetectorResponse.struct_class = Types::DeleteDetectorResponse

    DeleteFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    DeleteFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "filterName"))
    DeleteFilterRequest.struct_class = Types::DeleteFilterRequest

    DeleteFilterResponse.struct_class = Types::DeleteFilterResponse

    DeleteIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    DeleteIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ipSetId"))
    DeleteIPSetRequest.struct_class = Types::DeleteIPSetRequest

    DeleteIPSetResponse.struct_class = Types::DeleteIPSetResponse

    DeleteInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    DeleteInvitationsRequest.struct_class = Types::DeleteInvitationsRequest

    DeleteInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    DeleteInvitationsResponse.struct_class = Types::DeleteInvitationsResponse

    DeleteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    DeleteMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    DeleteMembersRequest.struct_class = Types::DeleteMembersRequest

    DeleteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    DeleteMembersResponse.struct_class = Types::DeleteMembersResponse

    DeleteThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    DeleteThreatIntelSetRequest.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "threatIntelSetId"))
    DeleteThreatIntelSetRequest.struct_class = Types::DeleteThreatIntelSetRequest

    DeleteThreatIntelSetResponse.struct_class = Types::DeleteThreatIntelSetResponse

    DetectorIds.member = Shapes::ShapeRef.new(shape: DetectorId)

    DisassociateFromMasterAccountRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    DisassociateFromMasterAccountRequest.struct_class = Types::DisassociateFromMasterAccountRequest

    DisassociateFromMasterAccountResponse.struct_class = Types::DisassociateFromMasterAccountResponse

    DisassociateMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    DisassociateMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    DisassociateMembersRequest.struct_class = Types::DisassociateMembersRequest

    DisassociateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    DisassociateMembersResponse.struct_class = Types::DisassociateMembersResponse

    DnsRequestAction.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "domain"))
    DnsRequestAction.struct_class = Types::DnsRequestAction

    DomainDetails.struct_class = Types::DomainDetails

    Eq.member = Shapes::ShapeRef.new(shape: __string)

    ErrorResponse.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ErrorResponse.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "__type"))
    ErrorResponse.struct_class = Types::ErrorResponse

    FilterNames.member = Shapes::ShapeRef.new(shape: FilterName)

    Finding.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "accountId"))
    Finding.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "arn"))
    Finding.add_member(:confidence, Shapes::ShapeRef.new(shape: __double, location_name: "confidence"))
    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, required: true, location_name: "createdAt"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Finding.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    Finding.add_member(:partition, Shapes::ShapeRef.new(shape: __string, location_name: "partition"))
    Finding.add_member(:region, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "region"))
    Finding.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    Finding.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "schemaVersion"))
    Finding.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    Finding.add_member(:severity, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "severity"))
    Finding.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "title"))
    Finding.add_member(:type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "type"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    Finding.struct_class = Types::Finding

    FindingCriteria.add_member(:criterion, Shapes::ShapeRef.new(shape: __mapOfCondition, location_name: "criterion"))
    FindingCriteria.struct_class = Types::FindingCriteria

    FindingIds.member = Shapes::ShapeRef.new(shape: FindingId)

    FindingStatisticTypes.member = Shapes::ShapeRef.new(shape: FindingStatisticType)

    FindingStatistics.add_member(:count_by_severity, Shapes::ShapeRef.new(shape: __mapOfCountBySeverityFindingStatistic, location_name: "countBySeverity"))
    FindingStatistics.struct_class = Types::FindingStatistics

    FindingTypes.member = Shapes::ShapeRef.new(shape: FindingType)

    Findings.member = Shapes::ShapeRef.new(shape: Finding)

    GeoLocation.add_member(:lat, Shapes::ShapeRef.new(shape: __double, location_name: "lat"))
    GeoLocation.add_member(:lon, Shapes::ShapeRef.new(shape: __double, location_name: "lon"))
    GeoLocation.struct_class = Types::GeoLocation

    GetDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetDetectorRequest.struct_class = Types::GetDetectorRequest

    GetDetectorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    GetDetectorResponse.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    GetDetectorResponse.add_member(:status, Shapes::ShapeRef.new(shape: DetectorStatus, location_name: "status"))
    GetDetectorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, location_name: "updatedAt"))
    GetDetectorResponse.struct_class = Types::GetDetectorResponse

    GetFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "filterName"))
    GetFilterRequest.struct_class = Types::GetFilterRequest

    GetFilterResponse.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, location_name: "action"))
    GetFilterResponse.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    GetFilterResponse.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    GetFilterResponse.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    GetFilterResponse.add_member(:rank, Shapes::ShapeRef.new(shape: FilterRank, location_name: "rank"))
    GetFilterResponse.struct_class = Types::GetFilterResponse

    GetFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetFindingsRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, location_name: "findingIds"))
    GetFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    GetFindingsRequest.struct_class = Types::GetFindingsRequest

    GetFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: Findings, location_name: "findings"))
    GetFindingsResponse.struct_class = Types::GetFindingsResponse

    GetFindingsStatisticsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetFindingsStatisticsRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    GetFindingsStatisticsRequest.add_member(:finding_statistic_types, Shapes::ShapeRef.new(shape: FindingStatisticTypes, location_name: "findingStatisticTypes"))
    GetFindingsStatisticsRequest.struct_class = Types::GetFindingsStatisticsRequest

    GetFindingsStatisticsResponse.add_member(:finding_statistics, Shapes::ShapeRef.new(shape: FindingStatistics, location_name: "findingStatistics"))
    GetFindingsStatisticsResponse.struct_class = Types::GetFindingsStatisticsResponse

    GetIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ipSetId"))
    GetIPSetRequest.struct_class = Types::GetIPSetRequest

    GetIPSetResponse.add_member(:format, Shapes::ShapeRef.new(shape: IpSetFormat, location_name: "format"))
    GetIPSetResponse.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    GetIPSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetIPSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: IpSetStatus, location_name: "status"))
    GetIPSetResponse.struct_class = Types::GetIPSetResponse

    GetInvitationsCountRequest.struct_class = Types::GetInvitationsCountRequest

    GetInvitationsCountResponse.add_member(:invitations_count, Shapes::ShapeRef.new(shape: __integer, location_name: "invitationsCount"))
    GetInvitationsCountResponse.struct_class = Types::GetInvitationsCountResponse

    GetMasterAccountRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetMasterAccountRequest.struct_class = Types::GetMasterAccountRequest

    GetMasterAccountResponse.add_member(:master, Shapes::ShapeRef.new(shape: Master, location_name: "master"))
    GetMasterAccountResponse.struct_class = Types::GetMasterAccountResponse

    GetMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    GetMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetMembersRequest.struct_class = Types::GetMembersRequest

    GetMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: Members, location_name: "members"))
    GetMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    GetMembersResponse.struct_class = Types::GetMembersResponse

    GetThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    GetThreatIntelSetRequest.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "threatIntelSetId"))
    GetThreatIntelSetRequest.struct_class = Types::GetThreatIntelSetRequest

    GetThreatIntelSetResponse.add_member(:format, Shapes::ShapeRef.new(shape: ThreatIntelSetFormat, location_name: "format"))
    GetThreatIntelSetResponse.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    GetThreatIntelSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetThreatIntelSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: ThreatIntelSetStatus, location_name: "status"))
    GetThreatIntelSetResponse.struct_class = Types::GetThreatIntelSetResponse

    IamInstanceProfile.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    IamInstanceProfile.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    IamInstanceProfile.struct_class = Types::IamInstanceProfile

    InstanceDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    InstanceDetails.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: IamInstanceProfile, location_name: "iamInstanceProfile"))
    InstanceDetails.add_member(:image_description, Shapes::ShapeRef.new(shape: __string, location_name: "imageDescription"))
    InstanceDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: __string, location_name: "imageId"))
    InstanceDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: __string, location_name: "instanceId"))
    InstanceDetails.add_member(:instance_state, Shapes::ShapeRef.new(shape: __string, location_name: "instanceState"))
    InstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "instanceType"))
    InstanceDetails.add_member(:launch_time, Shapes::ShapeRef.new(shape: __string, location_name: "launchTime"))
    InstanceDetails.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    InstanceDetails.add_member(:platform, Shapes::ShapeRef.new(shape: __string, location_name: "platform"))
    InstanceDetails.add_member(:product_codes, Shapes::ShapeRef.new(shape: ProductCodes, location_name: "productCodes"))
    InstanceDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InstanceDetails.struct_class = Types::InstanceDetails

    Invitation.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    Invitation.add_member(:invitation_id, Shapes::ShapeRef.new(shape: InvitationId, location_name: "invitationId"))
    Invitation.add_member(:invited_at, Shapes::ShapeRef.new(shape: InvitedAt, location_name: "invitedAt"))
    Invitation.add_member(:relationship_status, Shapes::ShapeRef.new(shape: __string, location_name: "relationshipStatus"))
    Invitation.struct_class = Types::Invitation

    Invitations.member = Shapes::ShapeRef.new(shape: Invitation)

    InviteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    InviteMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    InviteMembersRequest.add_member(:disable_email_notification, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableEmailNotification"))
    InviteMembersRequest.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    InviteMembersRequest.struct_class = Types::InviteMembersRequest

    InviteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    InviteMembersResponse.struct_class = Types::InviteMembersResponse

    IpSetIds.member = Shapes::ShapeRef.new(shape: IpSetId)

    Ipv6Addresses.member = Shapes::ShapeRef.new(shape: Ipv6Address)

    ListDetectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListDetectorsRequest.struct_class = Types::ListDetectorsRequest

    ListDetectorsResponse.add_member(:detector_ids, Shapes::ShapeRef.new(shape: DetectorIds, location_name: "detectorIds"))
    ListDetectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDetectorsResponse.struct_class = Types::ListDetectorsResponse

    ListFiltersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    ListFiltersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListFiltersRequest.struct_class = Types::ListFiltersRequest

    ListFiltersResponse.add_member(:filter_names, Shapes::ShapeRef.new(shape: FilterNames, location_name: "filterNames"))
    ListFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFiltersResponse.struct_class = Types::ListFiltersResponse

    ListFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    ListFindingsRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    ListFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    ListFindingsRequest.struct_class = Types::ListFindingsRequest

    ListFindingsResponse.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, location_name: "findingIds"))
    ListFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingsResponse.struct_class = Types::ListFindingsResponse

    ListIPSetsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    ListIPSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIPSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListIPSetsRequest.struct_class = Types::ListIPSetsRequest

    ListIPSetsResponse.add_member(:ip_set_ids, Shapes::ShapeRef.new(shape: IpSetIds, location_name: "ipSetIds"))
    ListIPSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIPSetsResponse.struct_class = Types::ListIPSetsResponse

    ListInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInvitationsRequest.struct_class = Types::ListInvitationsRequest

    ListInvitationsResponse.add_member(:invitations, Shapes::ShapeRef.new(shape: Invitations, location_name: "invitations"))
    ListInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInvitationsResponse.struct_class = Types::ListInvitationsResponse

    ListMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListMembersRequest.add_member(:only_associated, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "onlyAssociated"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: Members, location_name: "members"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

    ListThreatIntelSetsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    ListThreatIntelSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListThreatIntelSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListThreatIntelSetsRequest.struct_class = Types::ListThreatIntelSetsRequest

    ListThreatIntelSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatIntelSetsResponse.add_member(:threat_intel_set_ids, Shapes::ShapeRef.new(shape: ThreatIntelSetIds, location_name: "threatIntelSetIds"))
    ListThreatIntelSetsResponse.struct_class = Types::ListThreatIntelSetsResponse

    LocalPortDetails.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    LocalPortDetails.add_member(:port_name, Shapes::ShapeRef.new(shape: __string, location_name: "portName"))
    LocalPortDetails.struct_class = Types::LocalPortDetails

    Master.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    Master.add_member(:invitation_id, Shapes::ShapeRef.new(shape: InvitationId, location_name: "invitationId"))
    Master.add_member(:invited_at, Shapes::ShapeRef.new(shape: InvitedAt, location_name: "invitedAt"))
    Master.add_member(:relationship_status, Shapes::ShapeRef.new(shape: __string, location_name: "relationshipStatus"))
    Master.struct_class = Types::Master

    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    Member.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "email"))
    Member.add_member(:invited_at, Shapes::ShapeRef.new(shape: InvitedAt, location_name: "invitedAt"))
    Member.add_member(:master_id, Shapes::ShapeRef.new(shape: MasterId, required: true, location_name: "masterId"))
    Member.add_member(:relationship_status, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "relationshipStatus"))
    Member.add_member(:updated_at, Shapes::ShapeRef.new(shape: UpdatedAt, required: true, location_name: "updatedAt"))
    Member.struct_class = Types::Member

    Members.member = Shapes::ShapeRef.new(shape: Member)

    Neq.member = Shapes::ShapeRef.new(shape: __string)

    NetworkConnectionAction.add_member(:blocked, Shapes::ShapeRef.new(shape: __boolean, location_name: "blocked"))
    NetworkConnectionAction.add_member(:connection_direction, Shapes::ShapeRef.new(shape: __string, location_name: "connectionDirection"))
    NetworkConnectionAction.add_member(:local_port_details, Shapes::ShapeRef.new(shape: LocalPortDetails, location_name: "localPortDetails"))
    NetworkConnectionAction.add_member(:protocol, Shapes::ShapeRef.new(shape: __string, location_name: "protocol"))
    NetworkConnectionAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    NetworkConnectionAction.add_member(:remote_port_details, Shapes::ShapeRef.new(shape: RemotePortDetails, location_name: "remotePortDetails"))
    NetworkConnectionAction.struct_class = Types::NetworkConnectionAction

    NetworkInterface.add_member(:ipv_6_addresses, Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: "ipv6Addresses"))
    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "networkInterfaceId"))
    NetworkInterface.add_member(:private_dns_name, Shapes::ShapeRef.new(shape: PrivateDnsName, location_name: "privateDnsName"))
    NetworkInterface.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: PrivateIpAddress, location_name: "privateIpAddress"))
    NetworkInterface.add_member(:private_ip_addresses, Shapes::ShapeRef.new(shape: PrivateIpAddresses, location_name: "privateIpAddresses"))
    NetworkInterface.add_member(:public_dns_name, Shapes::ShapeRef.new(shape: __string, location_name: "publicDnsName"))
    NetworkInterface.add_member(:public_ip, Shapes::ShapeRef.new(shape: __string, location_name: "publicIp"))
    NetworkInterface.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    NetworkInterface.add_member(:subnet_id, Shapes::ShapeRef.new(shape: __string, location_name: "subnetId"))
    NetworkInterface.add_member(:vpc_id, Shapes::ShapeRef.new(shape: __string, location_name: "vpcId"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    Organization.add_member(:asn, Shapes::ShapeRef.new(shape: __string, location_name: "asn"))
    Organization.add_member(:asn_org, Shapes::ShapeRef.new(shape: __string, location_name: "asnOrg"))
    Organization.add_member(:isp, Shapes::ShapeRef.new(shape: __string, location_name: "isp"))
    Organization.add_member(:org, Shapes::ShapeRef.new(shape: __string, location_name: "org"))
    Organization.struct_class = Types::Organization

    PortProbeAction.add_member(:blocked, Shapes::ShapeRef.new(shape: __boolean, location_name: "blocked"))
    PortProbeAction.add_member(:port_probe_details, Shapes::ShapeRef.new(shape: __listOfPortProbeDetail, location_name: "portProbeDetails"))
    PortProbeAction.struct_class = Types::PortProbeAction

    PortProbeDetail.add_member(:local_port_details, Shapes::ShapeRef.new(shape: LocalPortDetails, location_name: "localPortDetails"))
    PortProbeDetail.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    PortProbeDetail.struct_class = Types::PortProbeDetail

    PrivateIpAddressDetails.add_member(:private_dns_name, Shapes::ShapeRef.new(shape: PrivateDnsName, location_name: "privateDnsName"))
    PrivateIpAddressDetails.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: PrivateIpAddress, location_name: "privateIpAddress"))
    PrivateIpAddressDetails.struct_class = Types::PrivateIpAddressDetails

    PrivateIpAddresses.member = Shapes::ShapeRef.new(shape: PrivateIpAddressDetails)

    ProductCode.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    ProductCode.add_member(:product_type, Shapes::ShapeRef.new(shape: __string, location_name: "productType"))
    ProductCode.struct_class = Types::ProductCode

    ProductCodes.member = Shapes::ShapeRef.new(shape: ProductCode)

    RemoteIpDetails.add_member(:city, Shapes::ShapeRef.new(shape: City, location_name: "city"))
    RemoteIpDetails.add_member(:country, Shapes::ShapeRef.new(shape: Country, location_name: "country"))
    RemoteIpDetails.add_member(:geo_location, Shapes::ShapeRef.new(shape: GeoLocation, location_name: "geoLocation"))
    RemoteIpDetails.add_member(:ip_address_v4, Shapes::ShapeRef.new(shape: __string, location_name: "ipAddressV4"))
    RemoteIpDetails.add_member(:organization, Shapes::ShapeRef.new(shape: Organization, location_name: "organization"))
    RemoteIpDetails.struct_class = Types::RemoteIpDetails

    RemotePortDetails.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    RemotePortDetails.add_member(:port_name, Shapes::ShapeRef.new(shape: __string, location_name: "portName"))
    RemotePortDetails.struct_class = Types::RemotePortDetails

    Resource.add_member(:access_key_details, Shapes::ShapeRef.new(shape: AccessKeyDetails, location_name: "accessKeyDetails"))
    Resource.add_member(:instance_details, Shapes::ShapeRef.new(shape: InstanceDetails, location_name: "instanceDetails"))
    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location_name: "resourceType"))
    Resource.struct_class = Types::Resource

    SecurityGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: __string, location_name: "groupId"))
    SecurityGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: __string, location_name: "groupName"))
    SecurityGroup.struct_class = Types::SecurityGroup

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    Service.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "action"))
    Service.add_member(:archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "archived"))
    Service.add_member(:count, Shapes::ShapeRef.new(shape: __integer, location_name: "count"))
    Service.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    Service.add_member(:event_first_seen, Shapes::ShapeRef.new(shape: __string, location_name: "eventFirstSeen"))
    Service.add_member(:event_last_seen, Shapes::ShapeRef.new(shape: __string, location_name: "eventLastSeen"))
    Service.add_member(:resource_role, Shapes::ShapeRef.new(shape: __string, location_name: "resourceRole"))
    Service.add_member(:service_name, Shapes::ShapeRef.new(shape: __string, location_name: "serviceName"))
    Service.add_member(:user_feedback, Shapes::ShapeRef.new(shape: __string, location_name: "userFeedback"))
    Service.struct_class = Types::Service

    SortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: __string, location_name: "attributeName"))
    SortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    SortCriteria.struct_class = Types::SortCriteria

    StartMonitoringMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    StartMonitoringMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    StartMonitoringMembersRequest.struct_class = Types::StartMonitoringMembersRequest

    StartMonitoringMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    StartMonitoringMembersResponse.struct_class = Types::StartMonitoringMembersResponse

    StopMonitoringMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    StopMonitoringMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    StopMonitoringMembersRequest.struct_class = Types::StopMonitoringMembersRequest

    StopMonitoringMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    StopMonitoringMembersResponse.struct_class = Types::StopMonitoringMembersResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    Tag.struct_class = Types::Tag

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    ThreatIntelSetIds.member = Shapes::ShapeRef.new(shape: ThreatIntelSetId)

    UnarchiveFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    UnarchiveFindingsRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, location_name: "findingIds"))
    UnarchiveFindingsRequest.struct_class = Types::UnarchiveFindingsRequest

    UnarchiveFindingsResponse.struct_class = Types::UnarchiveFindingsResponse

    UnprocessedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "accountId"))
    UnprocessedAccount.add_member(:result, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "result"))
    UnprocessedAccount.struct_class = Types::UnprocessedAccount

    UnprocessedAccounts.member = Shapes::ShapeRef.new(shape: UnprocessedAccount)

    UpdateDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    UpdateDetectorRequest.add_member(:enable, Shapes::ShapeRef.new(shape: Enable, location_name: "enable"))
    UpdateDetectorRequest.struct_class = Types::UpdateDetectorRequest

    UpdateDetectorResponse.struct_class = Types::UpdateDetectorResponse

    UpdateFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, location_name: "action"))
    UpdateFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    UpdateFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    UpdateFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "filterName"))
    UpdateFilterRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    UpdateFilterRequest.add_member(:rank, Shapes::ShapeRef.new(shape: FilterRank, location_name: "rank"))
    UpdateFilterRequest.struct_class = Types::UpdateFilterRequest

    UpdateFilterResponse.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    UpdateFilterResponse.struct_class = Types::UpdateFilterResponse

    UpdateFindingsFeedbackRequest.add_member(:comments, Shapes::ShapeRef.new(shape: Comments, location_name: "comments"))
    UpdateFindingsFeedbackRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    UpdateFindingsFeedbackRequest.add_member(:feedback, Shapes::ShapeRef.new(shape: Feedback, location_name: "feedback"))
    UpdateFindingsFeedbackRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, location_name: "findingIds"))
    UpdateFindingsFeedbackRequest.struct_class = Types::UpdateFindingsFeedbackRequest

    UpdateFindingsFeedbackResponse.struct_class = Types::UpdateFindingsFeedbackResponse

    UpdateIPSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Activate, location_name: "activate"))
    UpdateIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    UpdateIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ipSetId"))
    UpdateIPSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    UpdateIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateIPSetRequest.struct_class = Types::UpdateIPSetRequest

    UpdateIPSetResponse.struct_class = Types::UpdateIPSetResponse

    UpdateThreatIntelSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Activate, location_name: "activate"))
    UpdateThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "detectorId"))
    UpdateThreatIntelSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    UpdateThreatIntelSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateThreatIntelSetRequest.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "threatIntelSetId"))
    UpdateThreatIntelSetRequest.struct_class = Types::UpdateThreatIntelSetRequest

    UpdateThreatIntelSetResponse.struct_class = Types::UpdateThreatIntelSetResponse

    __listOfPortProbeDetail.member = Shapes::ShapeRef.new(shape: PortProbeDetail)

    __mapOfCondition.key = Shapes::ShapeRef.new(shape: __string)
    __mapOfCondition.value = Shapes::ShapeRef.new(shape: Condition)

    __mapOfCountBySeverityFindingStatistic.key = Shapes::ShapeRef.new(shape: __string)
    __mapOfCountBySeverityFindingStatistic.value = Shapes::ShapeRef.new(shape: CountBySeverityFindingStatistic)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-28"

      api.metadata = {
        "apiVersion" => "2017-11-28",
        "endpointPrefix" => "guardduty",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon GuardDuty",
        "serviceId" => "GuardDuty",
        "signatureVersion" => "v4",
        "signingName" => "guardduty",
        "uid" => "guardduty-2017-11-28",
      }

      api.add_operation(:accept_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/master"
        o.input = Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:archive_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ArchiveFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/archive"
        o.input = Shapes::ShapeRef.new(shape: ArchiveFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ArchiveFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDetector"
        o.http_method = "POST"
        o.http_request_uri = "/detector"
        o.input = Shapes::ShapeRef.new(shape: CreateDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFilter"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/filter"
        o.input = Shapes::ShapeRef.new(shape: CreateFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/ipset"
        o.input = Shapes::ShapeRef.new(shape: CreateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member"
        o.input = Shapes::ShapeRef.new(shape: CreateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_sample_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSampleFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/create"
        o.input = Shapes::ShapeRef.new(shape: CreateSampleFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSampleFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThreatIntelSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/threatintelset"
        o.input = Shapes::ShapeRef.new(shape: CreateThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:decline_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeclineInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitation/decline"
        o.input = Shapes::ShapeRef.new(shape: DeclineInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeclineInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDetector"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFilter"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/filter/{filterName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIPSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/ipset/{ipSetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitation/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThreatIntelSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/threatintelset/{threatIntelSetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:disassociate_from_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromMasterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/master/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:disassociate_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDetector"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}"
        o.input = Shapes::ShapeRef.new(shape: GetDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFilter"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/filter/{filterName}"
        o.input = Shapes::ShapeRef.new(shape: GetFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/get"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_findings_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingsStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIPSet"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/ipset/{ipSetId}"
        o.input = Shapes::ShapeRef.new(shape: GetIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_invitations_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvitationsCount"
        o.http_method = "GET"
        o.http_request_uri = "/invitation/count"
        o.input = Shapes::ShapeRef.new(shape: GetInvitationsCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvitationsCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMasterAccount"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/master"
        o.input = Shapes::ShapeRef.new(shape: GetMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/get"
        o.input = Shapes::ShapeRef.new(shape: GetMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetThreatIntelSet"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/threatintelset/{threatIntelSetId}"
        o.input = Shapes::ShapeRef.new(shape: GetThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:invite_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/invite"
        o.input = Shapes::ShapeRef.new(shape: InviteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDetectors"
        o.http_method = "GET"
        o.http_request_uri = "/detector"
        o.input = Shapes::ShapeRef.new(shape: ListDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFilters"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/filter"
        o.input = Shapes::ShapeRef.new(shape: ListFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ip_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIPSets"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/ipset"
        o.input = Shapes::ShapeRef.new(shape: ListIPSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIPSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvitations"
        o.http_method = "GET"
        o.http_request_uri = "/invitation"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/member"
        o.input = Shapes::ShapeRef.new(shape: ListMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_threat_intel_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThreatIntelSets"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/threatintelset"
        o.input = Shapes::ShapeRef.new(shape: ListThreatIntelSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThreatIntelSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_monitoring_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMonitoringMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/start"
        o.input = Shapes::ShapeRef.new(shape: StartMonitoringMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMonitoringMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:stop_monitoring_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMonitoringMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/stop"
        o.input = Shapes::ShapeRef.new(shape: StopMonitoringMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: StopMonitoringMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:unarchive_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnarchiveFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/unarchive"
        o.input = Shapes::ShapeRef.new(shape: UnarchiveFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UnarchiveFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDetector"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFilter"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/filter/{filterName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_findings_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindingsFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/feedback"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingsFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFindingsFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/ipset/{ipSetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThreatIntelSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/threatintelset/{threatIntelSetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)
    end

  end
end

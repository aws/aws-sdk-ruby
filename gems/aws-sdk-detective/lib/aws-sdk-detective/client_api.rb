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

    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    Administrator = Shapes::StructureShape.new(name: 'Administrator')
    AdministratorList = Shapes::ListShape.new(name: 'AdministratorList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ByteValue = Shapes::IntegerShape.new(name: 'ByteValue')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateGraphRequest = Shapes::StructureShape.new(name: 'CreateGraphRequest')
    CreateGraphResponse = Shapes::StructureShape.new(name: 'CreateGraphResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    DeleteGraphRequest = Shapes::StructureShape.new(name: 'DeleteGraphRequest')
    DeleteMembersRequest = Shapes::StructureShape.new(name: 'DeleteMembersRequest')
    DeleteMembersResponse = Shapes::StructureShape.new(name: 'DeleteMembersResponse')
    DescribeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationResponse')
    DisassociateMembershipRequest = Shapes::StructureShape.new(name: 'DisassociateMembershipRequest')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailMessage = Shapes::StringShape.new(name: 'EmailMessage')
    EnableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountRequest')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetMembersRequest = Shapes::StructureShape.new(name: 'GetMembersRequest')
    GetMembersResponse = Shapes::StructureShape.new(name: 'GetMembersResponse')
    Graph = Shapes::StructureShape.new(name: 'Graph')
    GraphArn = Shapes::StringShape.new(name: 'GraphArn')
    GraphList = Shapes::ListShape.new(name: 'GraphList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvitationType = Shapes::StringShape.new(name: 'InvitationType')
    ListGraphsRequest = Shapes::StructureShape.new(name: 'ListGraphsRequest')
    ListGraphsResponse = Shapes::StructureShape.new(name: 'ListGraphsResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MemberDetail = Shapes::StructureShape.new(name: 'MemberDetail')
    MemberDetailList = Shapes::ListShape.new(name: 'MemberDetailList')
    MemberDisabledReason = Shapes::StringShape.new(name: 'MemberDisabledReason')
    MemberResultsLimit = Shapes::IntegerShape.new(name: 'MemberResultsLimit')
    MemberStatus = Shapes::StringShape.new(name: 'MemberStatus')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    RejectInvitationRequest = Shapes::StructureShape.new(name: 'RejectInvitationRequest')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartMonitoringMemberRequest = Shapes::StructureShape.new(name: 'StartMonitoringMemberRequest')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnprocessedAccount = Shapes::StructureShape.new(name: 'UnprocessedAccount')
    UnprocessedAccountList = Shapes::ListShape.new(name: 'UnprocessedAccountList')
    UnprocessedReason = Shapes::StringShape.new(name: 'UnprocessedReason')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AcceptInvitationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    Account.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    Account.struct_class = Types::Account

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    Administrator.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    Administrator.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    Administrator.add_member(:delegation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DelegationTime"))
    Administrator.struct_class = Types::Administrator

    AdministratorList.member = Shapes::ShapeRef.new(shape: Administrator)

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

    GetMembersRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    GetMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    GetMembersRequest.struct_class = Types::GetMembersRequest

    GetMembersResponse.add_member(:member_details, Shapes::ShapeRef.new(shape: MemberDetailList, location_name: "MemberDetails"))
    GetMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccountList, location_name: "UnprocessedAccounts"))
    GetMembersResponse.struct_class = Types::GetMembersResponse

    Graph.add_member(:arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "Arn"))
    Graph.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Graph.struct_class = Types::Graph

    GraphList.member = Shapes::ShapeRef.new(shape: Graph)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListGraphsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListGraphsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberResultsLimit, location_name: "MaxResults"))
    ListGraphsRequest.struct_class = Types::ListGraphsRequest

    ListGraphsResponse.add_member(:graph_list, Shapes::ShapeRef.new(shape: GraphList, location_name: "GraphList"))
    ListGraphsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListGraphsResponse.struct_class = Types::ListGraphsResponse

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
    MemberDetail.add_member(:volume_usage_in_bytes, Shapes::ShapeRef.new(shape: ByteValue, location_name: "VolumeUsageInBytes"))
    MemberDetail.add_member(:volume_usage_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "VolumeUsageUpdatedTime"))
    MemberDetail.add_member(:percent_of_graph_utilization, Shapes::ShapeRef.new(shape: Percentage, deprecated: true, location_name: "PercentOfGraphUtilization", metadata: {"deprecatedMessage"=>"This property is deprecated. Use VolumeUsageInBytes instead."}))
    MemberDetail.add_member(:percent_of_graph_utilization_updated_time, Shapes::ShapeRef.new(shape: Timestamp, deprecated: true, location_name: "PercentOfGraphUtilizationUpdatedTime", metadata: {"deprecatedMessage"=>"This property is deprecated. Use VolumeUsageUpdatedTime instead."}))
    MemberDetail.add_member(:invitation_type, Shapes::ShapeRef.new(shape: InvitationType, location_name: "InvitationType"))
    MemberDetail.struct_class = Types::MemberDetail

    MemberDetailList.member = Shapes::ShapeRef.new(shape: MemberDetail)

    RejectInvitationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    RejectInvitationRequest.struct_class = Types::RejectInvitationRequest

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartMonitoringMemberRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    StartMonitoringMemberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    StartMonitoringMemberRequest.struct_class = Types::StartMonitoringMemberRequest

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnprocessedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    UnprocessedAccount.add_member(:reason, Shapes::ShapeRef.new(shape: UnprocessedReason, location_name: "Reason"))
    UnprocessedAccount.struct_class = Types::UnprocessedAccount

    UnprocessedAccountList.member = Shapes::ShapeRef.new(shape: UnprocessedAccount)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateOrganizationConfigurationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnable"))
    UpdateOrganizationConfigurationRequest.struct_class = Types::UpdateOrganizationConfigurationRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembers"
        o.http_method = "POST"
        o.http_request_uri = "/graph/members/get"
        o.input = Shapes::ShapeRef.new(shape: GetMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_graphs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGraphs"
        o.http_method = "POST"
        o.http_request_uri = "/graphs/list"
        o.input = Shapes::ShapeRef.new(shape: ListGraphsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGraphsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/list"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_monitoring_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMonitoringMember"
        o.http_method = "POST"
        o.http_request_uri = "/graph/member/monitoringstate"
        o.input = Shapes::ShapeRef.new(shape: StartMonitoringMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/orgs/updateOrganizationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end

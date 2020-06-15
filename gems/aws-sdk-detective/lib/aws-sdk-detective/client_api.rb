# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateGraphResponse = Shapes::StructureShape.new(name: 'CreateGraphResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    DeleteGraphRequest = Shapes::StructureShape.new(name: 'DeleteGraphRequest')
    DeleteMembersRequest = Shapes::StructureShape.new(name: 'DeleteMembersRequest')
    DeleteMembersResponse = Shapes::StructureShape.new(name: 'DeleteMembersResponse')
    DisassociateMembershipRequest = Shapes::StructureShape.new(name: 'DisassociateMembershipRequest')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailMessage = Shapes::StringShape.new(name: 'EmailMessage')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetMembersRequest = Shapes::StructureShape.new(name: 'GetMembersRequest')
    GetMembersResponse = Shapes::StructureShape.new(name: 'GetMembersResponse')
    Graph = Shapes::StructureShape.new(name: 'Graph')
    GraphArn = Shapes::StringShape.new(name: 'GraphArn')
    GraphList = Shapes::ListShape.new(name: 'GraphList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListGraphsRequest = Shapes::StructureShape.new(name: 'ListGraphsRequest')
    ListGraphsResponse = Shapes::StructureShape.new(name: 'ListGraphsResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
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
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnprocessedAccount = Shapes::StructureShape.new(name: 'UnprocessedAccount')
    UnprocessedAccountList = Shapes::ListShape.new(name: 'UnprocessedAccountList')
    UnprocessedReason = Shapes::StringShape.new(name: 'UnprocessedReason')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AcceptInvitationRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    Account.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    Account.struct_class = Types::Account

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateGraphResponse.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    CreateGraphResponse.struct_class = Types::CreateGraphResponse

    CreateMembersRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    CreateMembersRequest.add_member(:message, Shapes::ShapeRef.new(shape: EmailMessage, location_name: "Message"))
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

    DisassociateMembershipRequest.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, required: true, location_name: "GraphArn"))
    DisassociateMembershipRequest.struct_class = Types::DisassociateMembershipRequest

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

    MemberDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    MemberDetail.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    MemberDetail.add_member(:graph_arn, Shapes::ShapeRef.new(shape: GraphArn, location_name: "GraphArn"))
    MemberDetail.add_member(:master_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "MasterId"))
    MemberDetail.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, location_name: "Status"))
    MemberDetail.add_member(:disabled_reason, Shapes::ShapeRef.new(shape: MemberDisabledReason, location_name: "DisabledReason"))
    MemberDetail.add_member(:invited_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "InvitedTime"))
    MemberDetail.add_member(:updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedTime"))
    MemberDetail.add_member(:percent_of_graph_utilization, Shapes::ShapeRef.new(shape: Percentage, location_name: "PercentOfGraphUtilization"))
    MemberDetail.add_member(:percent_of_graph_utilization_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "PercentOfGraphUtilizationUpdatedTime"))
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

    UnprocessedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    UnprocessedAccount.add_member(:reason, Shapes::ShapeRef.new(shape: UnprocessedReason, location_name: "Reason"))
    UnprocessedAccount.struct_class = Types::UnprocessedAccount

    UnprocessedAccountList.member = Shapes::ShapeRef.new(shape: UnprocessedAccount)

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
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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
    end

  end
end

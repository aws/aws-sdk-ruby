# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ManagedBlockchain
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Accessor = Shapes::StructureShape.new(name: 'Accessor')
    AccessorBillingTokenString = Shapes::StringShape.new(name: 'AccessorBillingTokenString')
    AccessorListMaxResults = Shapes::IntegerShape.new(name: 'AccessorListMaxResults')
    AccessorStatus = Shapes::StringShape.new(name: 'AccessorStatus')
    AccessorSummary = Shapes::StructureShape.new(name: 'AccessorSummary')
    AccessorSummaryList = Shapes::ListShape.new(name: 'AccessorSummaryList')
    AccessorType = Shapes::StringShape.new(name: 'AccessorType')
    ApprovalThresholdPolicy = Shapes::StructureShape.new(name: 'ApprovalThresholdPolicy')
    ArnString = Shapes::StringShape.new(name: 'ArnString')
    AvailabilityZoneString = Shapes::StringShape.new(name: 'AvailabilityZoneString')
    ClientRequestTokenString = Shapes::StringShape.new(name: 'ClientRequestTokenString')
    CreateAccessorInput = Shapes::StructureShape.new(name: 'CreateAccessorInput')
    CreateAccessorOutput = Shapes::StructureShape.new(name: 'CreateAccessorOutput')
    CreateMemberInput = Shapes::StructureShape.new(name: 'CreateMemberInput')
    CreateMemberOutput = Shapes::StructureShape.new(name: 'CreateMemberOutput')
    CreateNetworkInput = Shapes::StructureShape.new(name: 'CreateNetworkInput')
    CreateNetworkOutput = Shapes::StructureShape.new(name: 'CreateNetworkOutput')
    CreateNodeInput = Shapes::StructureShape.new(name: 'CreateNodeInput')
    CreateNodeOutput = Shapes::StructureShape.new(name: 'CreateNodeOutput')
    CreateProposalInput = Shapes::StructureShape.new(name: 'CreateProposalInput')
    CreateProposalOutput = Shapes::StructureShape.new(name: 'CreateProposalOutput')
    DeleteAccessorInput = Shapes::StructureShape.new(name: 'DeleteAccessorInput')
    DeleteAccessorOutput = Shapes::StructureShape.new(name: 'DeleteAccessorOutput')
    DeleteMemberInput = Shapes::StructureShape.new(name: 'DeleteMemberInput')
    DeleteMemberOutput = Shapes::StructureShape.new(name: 'DeleteMemberOutput')
    DeleteNodeInput = Shapes::StructureShape.new(name: 'DeleteNodeInput')
    DeleteNodeOutput = Shapes::StructureShape.new(name: 'DeleteNodeOutput')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    Edition = Shapes::StringShape.new(name: 'Edition')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Framework = Shapes::StringShape.new(name: 'Framework')
    FrameworkVersionString = Shapes::StringShape.new(name: 'FrameworkVersionString')
    GetAccessorInput = Shapes::StructureShape.new(name: 'GetAccessorInput')
    GetAccessorOutput = Shapes::StructureShape.new(name: 'GetAccessorOutput')
    GetMemberInput = Shapes::StructureShape.new(name: 'GetMemberInput')
    GetMemberOutput = Shapes::StructureShape.new(name: 'GetMemberOutput')
    GetNetworkInput = Shapes::StructureShape.new(name: 'GetNetworkInput')
    GetNetworkOutput = Shapes::StructureShape.new(name: 'GetNetworkOutput')
    GetNodeInput = Shapes::StructureShape.new(name: 'GetNodeInput')
    GetNodeOutput = Shapes::StructureShape.new(name: 'GetNodeOutput')
    GetProposalInput = Shapes::StructureShape.new(name: 'GetProposalInput')
    GetProposalOutput = Shapes::StructureShape.new(name: 'GetProposalOutput')
    IllegalActionException = Shapes::StructureShape.new(name: 'IllegalActionException')
    InputTagMap = Shapes::MapShape.new(name: 'InputTagMap')
    InstanceTypeString = Shapes::StringShape.new(name: 'InstanceTypeString')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    InvitationList = Shapes::ListShape.new(name: 'InvitationList')
    InvitationStatus = Shapes::StringShape.new(name: 'InvitationStatus')
    InviteAction = Shapes::StructureShape.new(name: 'InviteAction')
    InviteActionList = Shapes::ListShape.new(name: 'InviteActionList')
    IsOwned = Shapes::BooleanShape.new(name: 'IsOwned')
    ListAccessorsInput = Shapes::StructureShape.new(name: 'ListAccessorsInput')
    ListAccessorsOutput = Shapes::StructureShape.new(name: 'ListAccessorsOutput')
    ListInvitationsInput = Shapes::StructureShape.new(name: 'ListInvitationsInput')
    ListInvitationsOutput = Shapes::StructureShape.new(name: 'ListInvitationsOutput')
    ListMembersInput = Shapes::StructureShape.new(name: 'ListMembersInput')
    ListMembersOutput = Shapes::StructureShape.new(name: 'ListMembersOutput')
    ListNetworksInput = Shapes::StructureShape.new(name: 'ListNetworksInput')
    ListNetworksOutput = Shapes::StructureShape.new(name: 'ListNetworksOutput')
    ListNodesInput = Shapes::StructureShape.new(name: 'ListNodesInput')
    ListNodesOutput = Shapes::StructureShape.new(name: 'ListNodesOutput')
    ListProposalVotesInput = Shapes::StructureShape.new(name: 'ListProposalVotesInput')
    ListProposalVotesOutput = Shapes::StructureShape.new(name: 'ListProposalVotesOutput')
    ListProposalsInput = Shapes::StructureShape.new(name: 'ListProposalsInput')
    ListProposalsOutput = Shapes::StructureShape.new(name: 'ListProposalsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogConfigurations = Shapes::StructureShape.new(name: 'LogConfigurations')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberConfiguration = Shapes::StructureShape.new(name: 'MemberConfiguration')
    MemberFabricAttributes = Shapes::StructureShape.new(name: 'MemberFabricAttributes')
    MemberFabricConfiguration = Shapes::StructureShape.new(name: 'MemberFabricConfiguration')
    MemberFabricLogPublishingConfiguration = Shapes::StructureShape.new(name: 'MemberFabricLogPublishingConfiguration')
    MemberFrameworkAttributes = Shapes::StructureShape.new(name: 'MemberFrameworkAttributes')
    MemberFrameworkConfiguration = Shapes::StructureShape.new(name: 'MemberFrameworkConfiguration')
    MemberListMaxResults = Shapes::IntegerShape.new(name: 'MemberListMaxResults')
    MemberLogPublishingConfiguration = Shapes::StructureShape.new(name: 'MemberLogPublishingConfiguration')
    MemberStatus = Shapes::StringShape.new(name: 'MemberStatus')
    MemberSummary = Shapes::StructureShape.new(name: 'MemberSummary')
    MemberSummaryList = Shapes::ListShape.new(name: 'MemberSummaryList')
    NameString = Shapes::StringShape.new(name: 'NameString')
    Network = Shapes::StructureShape.new(name: 'Network')
    NetworkEthereumAttributes = Shapes::StructureShape.new(name: 'NetworkEthereumAttributes')
    NetworkFabricAttributes = Shapes::StructureShape.new(name: 'NetworkFabricAttributes')
    NetworkFabricConfiguration = Shapes::StructureShape.new(name: 'NetworkFabricConfiguration')
    NetworkFrameworkAttributes = Shapes::StructureShape.new(name: 'NetworkFrameworkAttributes')
    NetworkFrameworkConfiguration = Shapes::StructureShape.new(name: 'NetworkFrameworkConfiguration')
    NetworkListMaxResults = Shapes::IntegerShape.new(name: 'NetworkListMaxResults')
    NetworkMemberNameString = Shapes::StringShape.new(name: 'NetworkMemberNameString')
    NetworkStatus = Shapes::StringShape.new(name: 'NetworkStatus')
    NetworkSummary = Shapes::StructureShape.new(name: 'NetworkSummary')
    NetworkSummaryList = Shapes::ListShape.new(name: 'NetworkSummaryList')
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeConfiguration = Shapes::StructureShape.new(name: 'NodeConfiguration')
    NodeEthereumAttributes = Shapes::StructureShape.new(name: 'NodeEthereumAttributes')
    NodeFabricAttributes = Shapes::StructureShape.new(name: 'NodeFabricAttributes')
    NodeFabricLogPublishingConfiguration = Shapes::StructureShape.new(name: 'NodeFabricLogPublishingConfiguration')
    NodeFrameworkAttributes = Shapes::StructureShape.new(name: 'NodeFrameworkAttributes')
    NodeListMaxResults = Shapes::IntegerShape.new(name: 'NodeListMaxResults')
    NodeLogPublishingConfiguration = Shapes::StructureShape.new(name: 'NodeLogPublishingConfiguration')
    NodeStatus = Shapes::StringShape.new(name: 'NodeStatus')
    NodeSummary = Shapes::StructureShape.new(name: 'NodeSummary')
    NodeSummaryList = Shapes::ListShape.new(name: 'NodeSummaryList')
    OutputTagMap = Shapes::MapShape.new(name: 'OutputTagMap')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PasswordString = Shapes::StringShape.new(name: 'PasswordString')
    PrincipalString = Shapes::StringShape.new(name: 'PrincipalString')
    Proposal = Shapes::StructureShape.new(name: 'Proposal')
    ProposalActions = Shapes::StructureShape.new(name: 'ProposalActions')
    ProposalDurationInt = Shapes::IntegerShape.new(name: 'ProposalDurationInt')
    ProposalListMaxResults = Shapes::IntegerShape.new(name: 'ProposalListMaxResults')
    ProposalStatus = Shapes::StringShape.new(name: 'ProposalStatus')
    ProposalSummary = Shapes::StructureShape.new(name: 'ProposalSummary')
    ProposalSummaryList = Shapes::ListShape.new(name: 'ProposalSummaryList')
    ProposalVoteList = Shapes::ListShape.new(name: 'ProposalVoteList')
    RejectInvitationInput = Shapes::StructureShape.new(name: 'RejectInvitationInput')
    RejectInvitationOutput = Shapes::StructureShape.new(name: 'RejectInvitationOutput')
    RemoveAction = Shapes::StructureShape.new(name: 'RemoveAction')
    RemoveActionList = Shapes::ListShape.new(name: 'RemoveActionList')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceIdString = Shapes::StringShape.new(name: 'ResourceIdString')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotReadyException = Shapes::StructureShape.new(name: 'ResourceNotReadyException')
    StateDBType = Shapes::StringShape.new(name: 'StateDBType')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThresholdComparator = Shapes::StringShape.new(name: 'ThresholdComparator')
    ThresholdPercentageInt = Shapes::IntegerShape.new(name: 'ThresholdPercentageInt')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateMemberInput = Shapes::StructureShape.new(name: 'UpdateMemberInput')
    UpdateMemberOutput = Shapes::StructureShape.new(name: 'UpdateMemberOutput')
    UpdateNodeInput = Shapes::StructureShape.new(name: 'UpdateNodeInput')
    UpdateNodeOutput = Shapes::StructureShape.new(name: 'UpdateNodeOutput')
    UsernameString = Shapes::StringShape.new(name: 'UsernameString')
    VoteCount = Shapes::IntegerShape.new(name: 'VoteCount')
    VoteOnProposalInput = Shapes::StructureShape.new(name: 'VoteOnProposalInput')
    VoteOnProposalOutput = Shapes::StructureShape.new(name: 'VoteOnProposalOutput')
    VoteSummary = Shapes::StructureShape.new(name: 'VoteSummary')
    VoteValue = Shapes::StringShape.new(name: 'VoteValue')
    VotingPolicy = Shapes::StructureShape.new(name: 'VotingPolicy')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Accessor.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    Accessor.add_member(:type, Shapes::ShapeRef.new(shape: AccessorType, location_name: "Type"))
    Accessor.add_member(:billing_token, Shapes::ShapeRef.new(shape: AccessorBillingTokenString, location_name: "BillingToken"))
    Accessor.add_member(:status, Shapes::ShapeRef.new(shape: AccessorStatus, location_name: "Status"))
    Accessor.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    Accessor.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    Accessor.add_member(:tags, Shapes::ShapeRef.new(shape: OutputTagMap, location_name: "Tags"))
    Accessor.struct_class = Types::Accessor

    AccessorSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    AccessorSummary.add_member(:type, Shapes::ShapeRef.new(shape: AccessorType, location_name: "Type"))
    AccessorSummary.add_member(:status, Shapes::ShapeRef.new(shape: AccessorStatus, location_name: "Status"))
    AccessorSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    AccessorSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    AccessorSummary.struct_class = Types::AccessorSummary

    AccessorSummaryList.member = Shapes::ShapeRef.new(shape: AccessorSummary)

    ApprovalThresholdPolicy.add_member(:threshold_percentage, Shapes::ShapeRef.new(shape: ThresholdPercentageInt, location_name: "ThresholdPercentage"))
    ApprovalThresholdPolicy.add_member(:proposal_duration_in_hours, Shapes::ShapeRef.new(shape: ProposalDurationInt, location_name: "ProposalDurationInHours"))
    ApprovalThresholdPolicy.add_member(:threshold_comparator, Shapes::ShapeRef.new(shape: ThresholdComparator, location_name: "ThresholdComparator"))
    ApprovalThresholdPolicy.struct_class = Types::ApprovalThresholdPolicy

    CreateAccessorInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAccessorInput.add_member(:accessor_type, Shapes::ShapeRef.new(shape: AccessorType, required: true, location_name: "AccessorType"))
    CreateAccessorInput.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagMap, location_name: "Tags"))
    CreateAccessorInput.struct_class = Types::CreateAccessorInput

    CreateAccessorOutput.add_member(:accessor_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "AccessorId"))
    CreateAccessorOutput.add_member(:billing_token, Shapes::ShapeRef.new(shape: AccessorBillingTokenString, location_name: "BillingToken"))
    CreateAccessorOutput.struct_class = Types::CreateAccessorOutput

    CreateMemberInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMemberInput.add_member(:invitation_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location_name: "InvitationId"))
    CreateMemberInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    CreateMemberInput.add_member(:member_configuration, Shapes::ShapeRef.new(shape: MemberConfiguration, required: true, location_name: "MemberConfiguration"))
    CreateMemberInput.struct_class = Types::CreateMemberInput

    CreateMemberOutput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "MemberId"))
    CreateMemberOutput.struct_class = Types::CreateMemberOutput

    CreateNetworkInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNetworkInput.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "Name"))
    CreateNetworkInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateNetworkInput.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, required: true, location_name: "Framework"))
    CreateNetworkInput.add_member(:framework_version, Shapes::ShapeRef.new(shape: FrameworkVersionString, required: true, location_name: "FrameworkVersion"))
    CreateNetworkInput.add_member(:framework_configuration, Shapes::ShapeRef.new(shape: NetworkFrameworkConfiguration, location_name: "FrameworkConfiguration"))
    CreateNetworkInput.add_member(:voting_policy, Shapes::ShapeRef.new(shape: VotingPolicy, required: true, location_name: "VotingPolicy"))
    CreateNetworkInput.add_member(:member_configuration, Shapes::ShapeRef.new(shape: MemberConfiguration, required: true, location_name: "MemberConfiguration"))
    CreateNetworkInput.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagMap, location_name: "Tags"))
    CreateNetworkInput.struct_class = Types::CreateNetworkInput

    CreateNetworkOutput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "NetworkId"))
    CreateNetworkOutput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "MemberId"))
    CreateNetworkOutput.struct_class = Types::CreateNetworkOutput

    CreateNodeInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNodeInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    CreateNodeInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "MemberId"))
    CreateNodeInput.add_member(:node_configuration, Shapes::ShapeRef.new(shape: NodeConfiguration, required: true, location_name: "NodeConfiguration"))
    CreateNodeInput.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagMap, location_name: "Tags"))
    CreateNodeInput.struct_class = Types::CreateNodeInput

    CreateNodeOutput.add_member(:node_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "NodeId"))
    CreateNodeOutput.struct_class = Types::CreateNodeOutput

    CreateProposalInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestTokenString, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateProposalInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    CreateProposalInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location_name: "MemberId"))
    CreateProposalInput.add_member(:actions, Shapes::ShapeRef.new(shape: ProposalActions, required: true, location_name: "Actions"))
    CreateProposalInput.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateProposalInput.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagMap, location_name: "Tags"))
    CreateProposalInput.struct_class = Types::CreateProposalInput

    CreateProposalOutput.add_member(:proposal_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "ProposalId"))
    CreateProposalOutput.struct_class = Types::CreateProposalOutput

    DeleteAccessorInput.add_member(:accessor_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "AccessorId"))
    DeleteAccessorInput.struct_class = Types::DeleteAccessorInput

    DeleteAccessorOutput.struct_class = Types::DeleteAccessorOutput

    DeleteMemberInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    DeleteMemberInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "memberId"))
    DeleteMemberInput.struct_class = Types::DeleteMemberInput

    DeleteMemberOutput.struct_class = Types::DeleteMemberOutput

    DeleteNodeInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    DeleteNodeInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location: "querystring", location_name: "memberId"))
    DeleteNodeInput.add_member(:node_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "nodeId"))
    DeleteNodeInput.struct_class = Types::DeleteNodeInput

    DeleteNodeOutput.struct_class = Types::DeleteNodeOutput

    GetAccessorInput.add_member(:accessor_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "AccessorId"))
    GetAccessorInput.struct_class = Types::GetAccessorInput

    GetAccessorOutput.add_member(:accessor, Shapes::ShapeRef.new(shape: Accessor, location_name: "Accessor"))
    GetAccessorOutput.struct_class = Types::GetAccessorOutput

    GetMemberInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    GetMemberInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "memberId"))
    GetMemberInput.struct_class = Types::GetMemberInput

    GetMemberOutput.add_member(:member, Shapes::ShapeRef.new(shape: Member, location_name: "Member"))
    GetMemberOutput.struct_class = Types::GetMemberOutput

    GetNetworkInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    GetNetworkInput.struct_class = Types::GetNetworkInput

    GetNetworkOutput.add_member(:network, Shapes::ShapeRef.new(shape: Network, location_name: "Network"))
    GetNetworkOutput.struct_class = Types::GetNetworkOutput

    GetNodeInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    GetNodeInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location: "querystring", location_name: "memberId"))
    GetNodeInput.add_member(:node_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "nodeId"))
    GetNodeInput.struct_class = Types::GetNodeInput

    GetNodeOutput.add_member(:node, Shapes::ShapeRef.new(shape: Node, location_name: "Node"))
    GetNodeOutput.struct_class = Types::GetNodeOutput

    GetProposalInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    GetProposalInput.add_member(:proposal_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "proposalId"))
    GetProposalInput.struct_class = Types::GetProposalInput

    GetProposalOutput.add_member(:proposal, Shapes::ShapeRef.new(shape: Proposal, location_name: "Proposal"))
    GetProposalOutput.struct_class = Types::GetProposalOutput

    IllegalActionException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    IllegalActionException.struct_class = Types::IllegalActionException

    InputTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    InputTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    Invitation.add_member(:invitation_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "InvitationId"))
    Invitation.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    Invitation.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationDate"))
    Invitation.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, location_name: "Status"))
    Invitation.add_member(:network_summary, Shapes::ShapeRef.new(shape: NetworkSummary, location_name: "NetworkSummary"))
    Invitation.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    Invitation.struct_class = Types::Invitation

    InvitationList.member = Shapes::ShapeRef.new(shape: Invitation)

    InviteAction.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalString, required: true, location_name: "Principal"))
    InviteAction.struct_class = Types::InviteAction

    InviteActionList.member = Shapes::ShapeRef.new(shape: InviteAction)

    ListAccessorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: AccessorListMaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAccessorsInput.struct_class = Types::ListAccessorsInput

    ListAccessorsOutput.add_member(:accessors, Shapes::ShapeRef.new(shape: AccessorSummaryList, location_name: "Accessors"))
    ListAccessorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAccessorsOutput.struct_class = Types::ListAccessorsOutput

    ListInvitationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ProposalListMaxResults, location: "querystring", location_name: "maxResults"))
    ListInvitationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListInvitationsInput.struct_class = Types::ListInvitationsInput

    ListInvitationsOutput.add_member(:invitations, Shapes::ShapeRef.new(shape: InvitationList, location_name: "Invitations"))
    ListInvitationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListInvitationsOutput.struct_class = Types::ListInvitationsOutput

    ListMembersInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    ListMembersInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "name"))
    ListMembersInput.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, location: "querystring", location_name: "status"))
    ListMembersInput.add_member(:is_owned, Shapes::ShapeRef.new(shape: IsOwned, location: "querystring", location_name: "isOwned"))
    ListMembersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberListMaxResults, location: "querystring", location_name: "maxResults"))
    ListMembersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMembersInput.struct_class = Types::ListMembersInput

    ListMembersOutput.add_member(:members, Shapes::ShapeRef.new(shape: MemberSummaryList, location_name: "Members"))
    ListMembersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMembersOutput.struct_class = Types::ListMembersOutput

    ListNetworksInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "name"))
    ListNetworksInput.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location: "querystring", location_name: "framework"))
    ListNetworksInput.add_member(:status, Shapes::ShapeRef.new(shape: NetworkStatus, location: "querystring", location_name: "status"))
    ListNetworksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: NetworkListMaxResults, location: "querystring", location_name: "maxResults"))
    ListNetworksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListNetworksInput.struct_class = Types::ListNetworksInput

    ListNetworksOutput.add_member(:networks, Shapes::ShapeRef.new(shape: NetworkSummaryList, location_name: "Networks"))
    ListNetworksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListNetworksOutput.struct_class = Types::ListNetworksOutput

    ListNodesInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    ListNodesInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location: "querystring", location_name: "memberId"))
    ListNodesInput.add_member(:status, Shapes::ShapeRef.new(shape: NodeStatus, location: "querystring", location_name: "status"))
    ListNodesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: NodeListMaxResults, location: "querystring", location_name: "maxResults"))
    ListNodesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListNodesInput.struct_class = Types::ListNodesInput

    ListNodesOutput.add_member(:nodes, Shapes::ShapeRef.new(shape: NodeSummaryList, location_name: "Nodes"))
    ListNodesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListNodesOutput.struct_class = Types::ListNodesOutput

    ListProposalVotesInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    ListProposalVotesInput.add_member(:proposal_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "proposalId"))
    ListProposalVotesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ProposalListMaxResults, location: "querystring", location_name: "maxResults"))
    ListProposalVotesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProposalVotesInput.struct_class = Types::ListProposalVotesInput

    ListProposalVotesOutput.add_member(:proposal_votes, Shapes::ShapeRef.new(shape: ProposalVoteList, location_name: "ProposalVotes"))
    ListProposalVotesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProposalVotesOutput.struct_class = Types::ListProposalVotesOutput

    ListProposalsInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    ListProposalsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ProposalListMaxResults, location: "querystring", location_name: "maxResults"))
    ListProposalsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProposalsInput.struct_class = Types::ListProposalsInput

    ListProposalsOutput.add_member(:proposals, Shapes::ShapeRef.new(shape: ProposalSummaryList, location_name: "Proposals"))
    ListProposalsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProposalsOutput.struct_class = Types::ListProposalsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ArnString, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: OutputTagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    LogConfiguration.struct_class = Types::LogConfiguration

    LogConfigurations.add_member(:cloudwatch, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "Cloudwatch"))
    LogConfigurations.struct_class = Types::LogConfigurations

    Member.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "NetworkId"))
    Member.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    Member.add_member(:name, Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: "Name"))
    Member.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Member.add_member(:framework_attributes, Shapes::ShapeRef.new(shape: MemberFrameworkAttributes, location_name: "FrameworkAttributes"))
    Member.add_member(:log_publishing_configuration, Shapes::ShapeRef.new(shape: MemberLogPublishingConfiguration, location_name: "LogPublishingConfiguration"))
    Member.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, location_name: "Status"))
    Member.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    Member.add_member(:tags, Shapes::ShapeRef.new(shape: OutputTagMap, location_name: "Tags"))
    Member.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    Member.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    Member.struct_class = Types::Member

    MemberConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: NetworkMemberNameString, required: true, location_name: "Name"))
    MemberConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    MemberConfiguration.add_member(:framework_configuration, Shapes::ShapeRef.new(shape: MemberFrameworkConfiguration, required: true, location_name: "FrameworkConfiguration"))
    MemberConfiguration.add_member(:log_publishing_configuration, Shapes::ShapeRef.new(shape: MemberLogPublishingConfiguration, location_name: "LogPublishingConfiguration"))
    MemberConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagMap, location_name: "Tags"))
    MemberConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "KmsKeyArn"))
    MemberConfiguration.struct_class = Types::MemberConfiguration

    MemberFabricAttributes.add_member(:admin_username, Shapes::ShapeRef.new(shape: UsernameString, location_name: "AdminUsername"))
    MemberFabricAttributes.add_member(:ca_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "CaEndpoint"))
    MemberFabricAttributes.struct_class = Types::MemberFabricAttributes

    MemberFabricConfiguration.add_member(:admin_username, Shapes::ShapeRef.new(shape: UsernameString, required: true, location_name: "AdminUsername"))
    MemberFabricConfiguration.add_member(:admin_password, Shapes::ShapeRef.new(shape: PasswordString, required: true, location_name: "AdminPassword"))
    MemberFabricConfiguration.struct_class = Types::MemberFabricConfiguration

    MemberFabricLogPublishingConfiguration.add_member(:ca_logs, Shapes::ShapeRef.new(shape: LogConfigurations, location_name: "CaLogs"))
    MemberFabricLogPublishingConfiguration.struct_class = Types::MemberFabricLogPublishingConfiguration

    MemberFrameworkAttributes.add_member(:fabric, Shapes::ShapeRef.new(shape: MemberFabricAttributes, location_name: "Fabric"))
    MemberFrameworkAttributes.struct_class = Types::MemberFrameworkAttributes

    MemberFrameworkConfiguration.add_member(:fabric, Shapes::ShapeRef.new(shape: MemberFabricConfiguration, location_name: "Fabric"))
    MemberFrameworkConfiguration.struct_class = Types::MemberFrameworkConfiguration

    MemberLogPublishingConfiguration.add_member(:fabric, Shapes::ShapeRef.new(shape: MemberFabricLogPublishingConfiguration, location_name: "Fabric"))
    MemberLogPublishingConfiguration.struct_class = Types::MemberLogPublishingConfiguration

    MemberSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    MemberSummary.add_member(:name, Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: "Name"))
    MemberSummary.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    MemberSummary.add_member(:status, Shapes::ShapeRef.new(shape: MemberStatus, location_name: "Status"))
    MemberSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    MemberSummary.add_member(:is_owned, Shapes::ShapeRef.new(shape: IsOwned, location_name: "IsOwned"))
    MemberSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    MemberSummary.struct_class = Types::MemberSummary

    MemberSummaryList.member = Shapes::ShapeRef.new(shape: MemberSummary)

    Network.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    Network.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    Network.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Network.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "Framework"))
    Network.add_member(:framework_version, Shapes::ShapeRef.new(shape: FrameworkVersionString, location_name: "FrameworkVersion"))
    Network.add_member(:framework_attributes, Shapes::ShapeRef.new(shape: NetworkFrameworkAttributes, location_name: "FrameworkAttributes"))
    Network.add_member(:vpc_endpoint_service_name, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointServiceName"))
    Network.add_member(:voting_policy, Shapes::ShapeRef.new(shape: VotingPolicy, location_name: "VotingPolicy"))
    Network.add_member(:status, Shapes::ShapeRef.new(shape: NetworkStatus, location_name: "Status"))
    Network.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    Network.add_member(:tags, Shapes::ShapeRef.new(shape: OutputTagMap, location_name: "Tags"))
    Network.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    Network.struct_class = Types::Network

    NetworkEthereumAttributes.add_member(:chain_id, Shapes::ShapeRef.new(shape: String, location_name: "ChainId"))
    NetworkEthereumAttributes.struct_class = Types::NetworkEthereumAttributes

    NetworkFabricAttributes.add_member(:ordering_service_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "OrderingServiceEndpoint"))
    NetworkFabricAttributes.add_member(:edition, Shapes::ShapeRef.new(shape: Edition, location_name: "Edition"))
    NetworkFabricAttributes.struct_class = Types::NetworkFabricAttributes

    NetworkFabricConfiguration.add_member(:edition, Shapes::ShapeRef.new(shape: Edition, required: true, location_name: "Edition"))
    NetworkFabricConfiguration.struct_class = Types::NetworkFabricConfiguration

    NetworkFrameworkAttributes.add_member(:fabric, Shapes::ShapeRef.new(shape: NetworkFabricAttributes, location_name: "Fabric"))
    NetworkFrameworkAttributes.add_member(:ethereum, Shapes::ShapeRef.new(shape: NetworkEthereumAttributes, location_name: "Ethereum"))
    NetworkFrameworkAttributes.struct_class = Types::NetworkFrameworkAttributes

    NetworkFrameworkConfiguration.add_member(:fabric, Shapes::ShapeRef.new(shape: NetworkFabricConfiguration, location_name: "Fabric"))
    NetworkFrameworkConfiguration.struct_class = Types::NetworkFrameworkConfiguration

    NetworkSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    NetworkSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, location_name: "Name"))
    NetworkSummary.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    NetworkSummary.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "Framework"))
    NetworkSummary.add_member(:framework_version, Shapes::ShapeRef.new(shape: FrameworkVersionString, location_name: "FrameworkVersion"))
    NetworkSummary.add_member(:status, Shapes::ShapeRef.new(shape: NetworkStatus, location_name: "Status"))
    NetworkSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    NetworkSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    NetworkSummary.struct_class = Types::NetworkSummary

    NetworkSummaryList.member = Shapes::ShapeRef.new(shape: NetworkSummary)

    Node.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "NetworkId"))
    Node.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "MemberId"))
    Node.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    Node.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceTypeString, location_name: "InstanceType"))
    Node.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZoneString, location_name: "AvailabilityZone"))
    Node.add_member(:framework_attributes, Shapes::ShapeRef.new(shape: NodeFrameworkAttributes, location_name: "FrameworkAttributes"))
    Node.add_member(:log_publishing_configuration, Shapes::ShapeRef.new(shape: NodeLogPublishingConfiguration, location_name: "LogPublishingConfiguration"))
    Node.add_member(:state_db, Shapes::ShapeRef.new(shape: StateDBType, location_name: "StateDB"))
    Node.add_member(:status, Shapes::ShapeRef.new(shape: NodeStatus, location_name: "Status"))
    Node.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    Node.add_member(:tags, Shapes::ShapeRef.new(shape: OutputTagMap, location_name: "Tags"))
    Node.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    Node.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyArn"))
    Node.struct_class = Types::Node

    NodeConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceTypeString, required: true, location_name: "InstanceType"))
    NodeConfiguration.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZoneString, location_name: "AvailabilityZone"))
    NodeConfiguration.add_member(:log_publishing_configuration, Shapes::ShapeRef.new(shape: NodeLogPublishingConfiguration, location_name: "LogPublishingConfiguration"))
    NodeConfiguration.add_member(:state_db, Shapes::ShapeRef.new(shape: StateDBType, location_name: "StateDB"))
    NodeConfiguration.struct_class = Types::NodeConfiguration

    NodeEthereumAttributes.add_member(:http_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "HttpEndpoint"))
    NodeEthereumAttributes.add_member(:web_socket_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "WebSocketEndpoint"))
    NodeEthereumAttributes.struct_class = Types::NodeEthereumAttributes

    NodeFabricAttributes.add_member(:peer_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "PeerEndpoint"))
    NodeFabricAttributes.add_member(:peer_event_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "PeerEventEndpoint"))
    NodeFabricAttributes.struct_class = Types::NodeFabricAttributes

    NodeFabricLogPublishingConfiguration.add_member(:chaincode_logs, Shapes::ShapeRef.new(shape: LogConfigurations, location_name: "ChaincodeLogs"))
    NodeFabricLogPublishingConfiguration.add_member(:peer_logs, Shapes::ShapeRef.new(shape: LogConfigurations, location_name: "PeerLogs"))
    NodeFabricLogPublishingConfiguration.struct_class = Types::NodeFabricLogPublishingConfiguration

    NodeFrameworkAttributes.add_member(:fabric, Shapes::ShapeRef.new(shape: NodeFabricAttributes, location_name: "Fabric"))
    NodeFrameworkAttributes.add_member(:ethereum, Shapes::ShapeRef.new(shape: NodeEthereumAttributes, location_name: "Ethereum"))
    NodeFrameworkAttributes.struct_class = Types::NodeFrameworkAttributes

    NodeLogPublishingConfiguration.add_member(:fabric, Shapes::ShapeRef.new(shape: NodeFabricLogPublishingConfiguration, location_name: "Fabric"))
    NodeLogPublishingConfiguration.struct_class = Types::NodeLogPublishingConfiguration

    NodeSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "Id"))
    NodeSummary.add_member(:status, Shapes::ShapeRef.new(shape: NodeStatus, location_name: "Status"))
    NodeSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    NodeSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZoneString, location_name: "AvailabilityZone"))
    NodeSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceTypeString, location_name: "InstanceType"))
    NodeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    NodeSummary.struct_class = Types::NodeSummary

    NodeSummaryList.member = Shapes::ShapeRef.new(shape: NodeSummary)

    OutputTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    OutputTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    Proposal.add_member(:proposal_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "ProposalId"))
    Proposal.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "NetworkId"))
    Proposal.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    Proposal.add_member(:actions, Shapes::ShapeRef.new(shape: ProposalActions, location_name: "Actions"))
    Proposal.add_member(:proposed_by_member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "ProposedByMemberId"))
    Proposal.add_member(:proposed_by_member_name, Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: "ProposedByMemberName"))
    Proposal.add_member(:status, Shapes::ShapeRef.new(shape: ProposalStatus, location_name: "Status"))
    Proposal.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    Proposal.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationDate"))
    Proposal.add_member(:yes_vote_count, Shapes::ShapeRef.new(shape: VoteCount, location_name: "YesVoteCount"))
    Proposal.add_member(:no_vote_count, Shapes::ShapeRef.new(shape: VoteCount, location_name: "NoVoteCount"))
    Proposal.add_member(:outstanding_vote_count, Shapes::ShapeRef.new(shape: VoteCount, location_name: "OutstandingVoteCount"))
    Proposal.add_member(:tags, Shapes::ShapeRef.new(shape: OutputTagMap, location_name: "Tags"))
    Proposal.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    Proposal.struct_class = Types::Proposal

    ProposalActions.add_member(:invitations, Shapes::ShapeRef.new(shape: InviteActionList, location_name: "Invitations"))
    ProposalActions.add_member(:removals, Shapes::ShapeRef.new(shape: RemoveActionList, location_name: "Removals"))
    ProposalActions.struct_class = Types::ProposalActions

    ProposalSummary.add_member(:proposal_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "ProposalId"))
    ProposalSummary.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    ProposalSummary.add_member(:proposed_by_member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "ProposedByMemberId"))
    ProposalSummary.add_member(:proposed_by_member_name, Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: "ProposedByMemberName"))
    ProposalSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProposalStatus, location_name: "Status"))
    ProposalSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationDate"))
    ProposalSummary.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationDate"))
    ProposalSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ArnString, location_name: "Arn"))
    ProposalSummary.struct_class = Types::ProposalSummary

    ProposalSummaryList.member = Shapes::ShapeRef.new(shape: ProposalSummary)

    ProposalVoteList.member = Shapes::ShapeRef.new(shape: VoteSummary)

    RejectInvitationInput.add_member(:invitation_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "invitationId"))
    RejectInvitationInput.struct_class = Types::RejectInvitationInput

    RejectInvitationOutput.struct_class = Types::RejectInvitationOutput

    RemoveAction.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location_name: "MemberId"))
    RemoveAction.struct_class = Types::RemoveAction

    RemoveActionList.member = Shapes::ShapeRef.new(shape: RemoveAction)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: ArnString, location_name: "ResourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotReadyException.struct_class = Types::ResourceNotReadyException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ArnString, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: ArnString, location_name: "ResourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ArnString, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateMemberInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    UpdateMemberInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "memberId"))
    UpdateMemberInput.add_member(:log_publishing_configuration, Shapes::ShapeRef.new(shape: MemberLogPublishingConfiguration, location_name: "LogPublishingConfiguration"))
    UpdateMemberInput.struct_class = Types::UpdateMemberInput

    UpdateMemberOutput.struct_class = Types::UpdateMemberOutput

    UpdateNodeInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    UpdateNodeInput.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "MemberId"))
    UpdateNodeInput.add_member(:node_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "nodeId"))
    UpdateNodeInput.add_member(:log_publishing_configuration, Shapes::ShapeRef.new(shape: NodeLogPublishingConfiguration, location_name: "LogPublishingConfiguration"))
    UpdateNodeInput.struct_class = Types::UpdateNodeInput

    UpdateNodeOutput.struct_class = Types::UpdateNodeOutput

    VoteOnProposalInput.add_member(:network_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "networkId"))
    VoteOnProposalInput.add_member(:proposal_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "proposalId"))
    VoteOnProposalInput.add_member(:voter_member_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location_name: "VoterMemberId"))
    VoteOnProposalInput.add_member(:vote, Shapes::ShapeRef.new(shape: VoteValue, required: true, location_name: "Vote"))
    VoteOnProposalInput.struct_class = Types::VoteOnProposalInput

    VoteOnProposalOutput.struct_class = Types::VoteOnProposalOutput

    VoteSummary.add_member(:vote, Shapes::ShapeRef.new(shape: VoteValue, location_name: "Vote"))
    VoteSummary.add_member(:member_name, Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: "MemberName"))
    VoteSummary.add_member(:member_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "MemberId"))
    VoteSummary.struct_class = Types::VoteSummary

    VotingPolicy.add_member(:approval_threshold_policy, Shapes::ShapeRef.new(shape: ApprovalThresholdPolicy, location_name: "ApprovalThresholdPolicy"))
    VotingPolicy.struct_class = Types::VotingPolicy


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-24"

      api.metadata = {
        "apiVersion" => "2018-09-24",
        "endpointPrefix" => "managedblockchain",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "ManagedBlockchain",
        "serviceFullName" => "Amazon Managed Blockchain",
        "serviceId" => "ManagedBlockchain",
        "signatureVersion" => "v4",
        "signingName" => "managedblockchain",
        "uid" => "managedblockchain-2018-09-24",
      }

      api.add_operation(:create_accessor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessor"
        o.http_method = "POST"
        o.http_request_uri = "/accessors"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessorInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMember"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/members"
        o.input = Shapes::ShapeRef.new(shape: CreateMemberInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMemberOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/networks"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNode"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/nodes"
        o.input = Shapes::ShapeRef.new(shape: CreateNodeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProposal"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/proposals"
        o.input = Shapes::ShapeRef.new(shape: CreateProposalInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProposalOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:delete_accessor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessor"
        o.http_method = "DELETE"
        o.http_request_uri = "/accessors/{AccessorId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessorInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/networks/{networkId}/members/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemberInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemberOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNode"
        o.http_method = "DELETE"
        o.http_request_uri = "/networks/{networkId}/nodes/{nodeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNodeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_accessor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessor"
        o.http_method = "GET"
        o.http_request_uri = "/accessors/{AccessorId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccessorInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccessorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMember"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/members/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: GetMemberInput)
        o.output = Shapes::ShapeRef.new(shape: GetMemberOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetwork"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkInput)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNode"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/nodes/{nodeId}"
        o.input = Shapes::ShapeRef.new(shape: GetNodeInput)
        o.output = Shapes::ShapeRef.new(shape: GetNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProposal"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/proposals/{proposalId}"
        o.input = Shapes::ShapeRef.new(shape: GetProposalInput)
        o.output = Shapes::ShapeRef.new(shape: GetProposalOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_accessors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessors"
        o.http_method = "GET"
        o.http_request_uri = "/accessors"
        o.input = Shapes::ShapeRef.new(shape: ListAccessorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAccessorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
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
        o.http_request_uri = "/invitations"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
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
        o.http_request_uri = "/networks/{networkId}/members"
        o.input = Shapes::ShapeRef.new(shape: ListMembersInput)
        o.output = Shapes::ShapeRef.new(shape: ListMembersOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworks"
        o.http_method = "GET"
        o.http_request_uri = "/networks"
        o.input = Shapes::ShapeRef.new(shape: ListNetworksInput)
        o.output = Shapes::ShapeRef.new(shape: ListNetworksOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodes"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/nodes"
        o.input = Shapes::ShapeRef.new(shape: ListNodesInput)
        o.output = Shapes::ShapeRef.new(shape: ListNodesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_proposal_votes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProposalVotes"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/proposals/{proposalId}/votes"
        o.input = Shapes::ShapeRef.new(shape: ListProposalVotesInput)
        o.output = Shapes::ShapeRef.new(shape: ListProposalVotesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_proposals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProposals"
        o.http_method = "GET"
        o.http_request_uri = "/networks/{networkId}/proposals"
        o.input = Shapes::ShapeRef.new(shape: ListProposalsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProposalsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
      end)

      api.add_operation(:reject_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectInvitation"
        o.http_method = "DELETE"
        o.http_request_uri = "/invitations/{invitationId}"
        o.input = Shapes::ShapeRef.new(shape: RejectInvitationInput)
        o.output = Shapes::ShapeRef.new(shape: RejectInvitationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalActionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
      end)

      api.add_operation(:update_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMember"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/members/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMemberInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMemberOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:update_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNode"
        o.http_method = "PATCH"
        o.http_request_uri = "/networks/{networkId}/nodes/{nodeId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNodeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:vote_on_proposal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VoteOnProposal"
        o.http_method = "POST"
        o.http_request_uri = "/networks/{networkId}/proposals/{proposalId}/votes"
        o.input = Shapes::ShapeRef.new(shape: VoteOnProposalInput)
        o.output = Shapes::ShapeRef.new(shape: VoteOnProposalOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalActionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)
    end

  end
end

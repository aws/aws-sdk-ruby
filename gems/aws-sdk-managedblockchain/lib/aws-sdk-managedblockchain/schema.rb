# frozen_string_literal: true

# This is generated code!

module Aws::ManagedBlockchain
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Accessor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#Accessor', name: 'Accessor')
    AccessorBillingTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#AccessorBillingTokenString', name: 'AccessorBillingTokenString', traits: {"smithy.api#length" => {"min" => 42, "max" => 42}})
    AccessorListMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#AccessorListMaxResults', name: 'AccessorListMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    AccessorNetworkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#AccessorNetworkType', name: 'AccessorNetworkType')
    AccessorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#AccessorStatus', name: 'AccessorStatus')
    AccessorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#AccessorSummary', name: 'AccessorSummary')
    AccessorSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#AccessorSummaryList', name: 'AccessorSummaryList')
    AccessorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#AccessorType', name: 'AccessorType')
    ApprovalThresholdPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ApprovalThresholdPolicy', name: 'ApprovalThresholdPolicy')
    ArnString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#ArnString', name: 'ArnString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+:.+:.+:.+:.+$"})
    AvailabilityZoneString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#AvailabilityZoneString', name: 'AvailabilityZoneString')
    ClientRequestTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#ClientRequestTokenString', name: 'ClientRequestTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    CreateAccessorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateAccessorInput', name: 'CreateAccessorInput')
    CreateAccessorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateAccessorOutput', name: 'CreateAccessorOutput')
    CreateMemberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateMemberInput', name: 'CreateMemberInput')
    CreateMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateMemberOutput', name: 'CreateMemberOutput')
    CreateNetworkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateNetworkInput', name: 'CreateNetworkInput')
    CreateNetworkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateNetworkOutput', name: 'CreateNetworkOutput')
    CreateNodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateNodeInput', name: 'CreateNodeInput')
    CreateNodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateNodeOutput', name: 'CreateNodeOutput')
    CreateProposalInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateProposalInput', name: 'CreateProposalInput')
    CreateProposalOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#CreateProposalOutput', name: 'CreateProposalOutput')
    DeleteAccessorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#DeleteAccessorInput', name: 'DeleteAccessorInput')
    DeleteAccessorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#DeleteAccessorOutput', name: 'DeleteAccessorOutput')
    DeleteMemberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#DeleteMemberInput', name: 'DeleteMemberInput')
    DeleteMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#DeleteMemberOutput', name: 'DeleteMemberOutput')
    DeleteNodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#DeleteNodeInput', name: 'DeleteNodeInput')
    DeleteNodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#DeleteNodeOutput', name: 'DeleteNodeOutput')
    DescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#DescriptionString', name: 'DescriptionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    Edition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#Edition', name: 'Edition')
    Enabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.managedblockchain#Enabled', name: 'Enabled')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#ExceptionMessage', name: 'ExceptionMessage')
    Framework = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#Framework', name: 'Framework')
    FrameworkVersionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#FrameworkVersionString', name: 'FrameworkVersionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    GetAccessorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetAccessorInput', name: 'GetAccessorInput')
    GetAccessorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetAccessorOutput', name: 'GetAccessorOutput')
    GetMemberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetMemberInput', name: 'GetMemberInput')
    GetMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetMemberOutput', name: 'GetMemberOutput')
    GetNetworkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetNetworkInput', name: 'GetNetworkInput')
    GetNetworkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetNetworkOutput', name: 'GetNetworkOutput')
    GetNodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetNodeInput', name: 'GetNodeInput')
    GetNodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetNodeOutput', name: 'GetNodeOutput')
    GetProposalInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetProposalInput', name: 'GetProposalInput')
    GetProposalOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#GetProposalOutput', name: 'GetProposalOutput')
    IllegalActionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#IllegalActionException', name: 'IllegalActionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InputTagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.managedblockchain#InputTagMap', name: 'InputTagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InstanceTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#InstanceTypeString', name: 'InstanceTypeString')
    InternalServiceErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Invitation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#Invitation', name: 'Invitation')
    InvitationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#InvitationList', name: 'InvitationList')
    InvitationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#InvitationStatus', name: 'InvitationStatus')
    InviteAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#InviteAction', name: 'InviteAction')
    InviteActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#InviteActionList', name: 'InviteActionList')
    IsOwned = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.managedblockchain#IsOwned', name: 'IsOwned')
    ListAccessorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListAccessorsInput', name: 'ListAccessorsInput')
    ListAccessorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListAccessorsOutput', name: 'ListAccessorsOutput')
    ListInvitationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListInvitationsInput', name: 'ListInvitationsInput')
    ListInvitationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListInvitationsOutput', name: 'ListInvitationsOutput')
    ListMembersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListMembersInput', name: 'ListMembersInput')
    ListMembersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListMembersOutput', name: 'ListMembersOutput')
    ListNetworksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListNetworksInput', name: 'ListNetworksInput')
    ListNetworksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListNetworksOutput', name: 'ListNetworksOutput')
    ListNodesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListNodesInput', name: 'ListNodesInput')
    ListNodesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListNodesOutput', name: 'ListNodesOutput')
    ListProposalVotesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListProposalVotesInput', name: 'ListProposalVotesInput')
    ListProposalVotesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListProposalVotesOutput', name: 'ListProposalVotesOutput')
    ListProposalsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListProposalsInput', name: 'ListProposalsInput')
    ListProposalsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListProposalsOutput', name: 'ListProposalsOutput')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#LogConfiguration', name: 'LogConfiguration')
    LogConfigurations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#LogConfigurations', name: 'LogConfigurations')
    Member = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#Member', name: 'Member')
    MemberConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberConfiguration', name: 'MemberConfiguration')
    MemberFabricAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberFabricAttributes', name: 'MemberFabricAttributes')
    MemberFabricConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberFabricConfiguration', name: 'MemberFabricConfiguration')
    MemberFabricLogPublishingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberFabricLogPublishingConfiguration', name: 'MemberFabricLogPublishingConfiguration')
    MemberFrameworkAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberFrameworkAttributes', name: 'MemberFrameworkAttributes')
    MemberFrameworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberFrameworkConfiguration', name: 'MemberFrameworkConfiguration')
    MemberListMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#MemberListMaxResults', name: 'MemberListMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MemberLogPublishingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberLogPublishingConfiguration', name: 'MemberLogPublishingConfiguration')
    MemberStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#MemberStatus', name: 'MemberStatus')
    MemberSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#MemberSummary', name: 'MemberSummary')
    MemberSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#MemberSummaryList', name: 'MemberSummaryList')
    NameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#NameString', name: 'NameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "\\S"})
    Network = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#Network', name: 'Network')
    NetworkEthereumAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NetworkEthereumAttributes', name: 'NetworkEthereumAttributes')
    NetworkFabricAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NetworkFabricAttributes', name: 'NetworkFabricAttributes')
    NetworkFabricConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NetworkFabricConfiguration', name: 'NetworkFabricConfiguration')
    NetworkFrameworkAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NetworkFrameworkAttributes', name: 'NetworkFrameworkAttributes')
    NetworkFrameworkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NetworkFrameworkConfiguration', name: 'NetworkFrameworkConfiguration')
    NetworkListMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#NetworkListMaxResults', name: 'NetworkListMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    NetworkMemberNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#NetworkMemberNameString', name: 'NetworkMemberNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!-|[0-9])(?!.*-$)(?!.*?--)[a-zA-Z0-9-]+$"})
    NetworkStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#NetworkStatus', name: 'NetworkStatus')
    NetworkSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NetworkSummary', name: 'NetworkSummary')
    NetworkSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#NetworkSummaryList', name: 'NetworkSummaryList')
    Node = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#Node', name: 'Node')
    NodeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NodeConfiguration', name: 'NodeConfiguration')
    NodeEthereumAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NodeEthereumAttributes', name: 'NodeEthereumAttributes')
    NodeFabricAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NodeFabricAttributes', name: 'NodeFabricAttributes')
    NodeFabricLogPublishingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NodeFabricLogPublishingConfiguration', name: 'NodeFabricLogPublishingConfiguration')
    NodeFrameworkAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NodeFrameworkAttributes', name: 'NodeFrameworkAttributes')
    NodeListMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#NodeListMaxResults', name: 'NodeListMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    NodeLogPublishingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NodeLogPublishingConfiguration', name: 'NodeLogPublishingConfiguration')
    NodeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#NodeStatus', name: 'NodeStatus')
    NodeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#NodeSummary', name: 'NodeSummary')
    NodeSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#NodeSummaryList', name: 'NodeSummaryList')
    OutputTagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.managedblockchain#OutputTagMap', name: 'OutputTagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    PasswordString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#PasswordString', name: 'PasswordString', traits: {"smithy.api#length" => {"min" => 8, "max" => 32}, "smithy.api#pattern" => "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?!.*[@'\\\\\"/])[a-zA-Z0-9\\S]*$", "smithy.api#sensitive" => {}})
    PrincipalString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#PrincipalString', name: 'PrincipalString')
    Proposal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#Proposal', name: 'Proposal')
    ProposalActions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ProposalActions', name: 'ProposalActions')
    ProposalDurationInt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#ProposalDurationInt', name: 'ProposalDurationInt', traits: {"smithy.api#range" => {"min" => 1, "max" => 168}})
    ProposalListMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#ProposalListMaxResults', name: 'ProposalListMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ProposalStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#ProposalStatus', name: 'ProposalStatus')
    ProposalSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ProposalSummary', name: 'ProposalSummary')
    ProposalSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#ProposalSummaryList', name: 'ProposalSummaryList')
    ProposalVoteList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#ProposalVoteList', name: 'ProposalVoteList')
    RejectInvitationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#RejectInvitationInput', name: 'RejectInvitationInput')
    RejectInvitationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#RejectInvitationOutput', name: 'RejectInvitationOutput')
    RemoveAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#RemoveAction', name: 'RemoveAction')
    RemoveActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#RemoveActionList', name: 'RemoveActionList')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#ResourceIdString', name: 'ResourceIdString', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotReadyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ResourceNotReadyException', name: 'ResourceNotReadyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    StateDBType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#StateDBType', name: 'StateDBType')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#String', name: 'String')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.managedblockchain#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThresholdComparator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#ThresholdComparator', name: 'ThresholdComparator')
    ThresholdPercentageInt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#ThresholdPercentageInt', name: 'ThresholdPercentageInt', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.managedblockchain#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateMemberInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#UpdateMemberInput', name: 'UpdateMemberInput')
    UpdateMemberOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#UpdateMemberOutput', name: 'UpdateMemberOutput')
    UpdateNodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#UpdateNodeInput', name: 'UpdateNodeInput')
    UpdateNodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#UpdateNodeOutput', name: 'UpdateNodeOutput')
    UsernameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.managedblockchain#UsernameString', name: 'UsernameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*$"})
    VoteCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.managedblockchain#VoteCount', name: 'VoteCount')
    VoteOnProposalInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#VoteOnProposalInput', name: 'VoteOnProposalInput')
    VoteOnProposalOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#VoteOnProposalOutput', name: 'VoteOnProposalOutput')
    VoteSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#VoteSummary', name: 'VoteSummary')
    VoteValue = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.managedblockchain#VoteValue', name: 'VoteValue')
    VotingPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.managedblockchain#VotingPolicy', name: 'VotingPolicy')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    Accessor.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the accessor.</p>"}))
    Accessor.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the accessor.</p>\n         <note>\n            <p>Currently, accessor type is restricted to <code>BILLING_TOKEN</code>.</p>\n         </note>"}))
    Accessor.add_member(:billing_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorBillingTokenString, location_name: 'BillingToken', traits: {"smithy.api#documentation" => "<p>The billing token is a property of the Accessor. Use this token to \n         when making calls to the blockchain network. The billing token is used \n         to track your accessor token for billing requests.</p>"}))
    Accessor.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the accessor.</p>"}))
    Accessor.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The creation date and time of the accessor.</p>"}))
    Accessor.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accessor. For more information about \n         ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource \n            Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    Accessor.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the Accessor.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    Accessor.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorNetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The blockchain network that the Accessor token is created for.</p>"}))
    Accessor.type = Types::Accessor
    AccessorNetworkType.add_member(:ethereum_goerli, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ETHEREUM_GOERLI', traits: {"smithy.api#enumValue" => "ETHEREUM_GOERLI"}))
    AccessorNetworkType.add_member(:ethereum_mainnet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ETHEREUM_MAINNET', traits: {"smithy.api#enumValue" => "ETHEREUM_MAINNET"}))
    AccessorNetworkType.add_member(:ethereum_mainnet_and_goerli, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ETHEREUM_MAINNET_AND_GOERLI', traits: {"smithy.api#enumValue" => "ETHEREUM_MAINNET_AND_GOERLI"}))
    AccessorNetworkType.add_member(:polygon_mainnet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLYGON_MAINNET', traits: {"smithy.api#enumValue" => "POLYGON_MAINNET"}))
    AccessorNetworkType.add_member(:polygon_mumbai, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLYGON_MUMBAI', traits: {"smithy.api#enumValue" => "POLYGON_MUMBAI"}))
    AccessorStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AccessorStatus.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETION', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    AccessorStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    AccessorSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the accessor.</p>"}))
    AccessorSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the accessor.</p>\n         <note>\n            <p>Currently accessor type is restricted to <code>BILLING_TOKEN</code>.</p>\n         </note>"}))
    AccessorSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the accessor.</p>"}))
    AccessorSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The creation date and time of the accessor.</p>"}))
    AccessorSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accessor. For more information about \n         ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource \n            Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    AccessorSummary.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorNetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The blockchain network that the Accessor token is created for.</p>"}))
    AccessorSummary.type = Types::AccessorSummary
    AccessorSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorSummary)
    AccessorType.add_member(:billing_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_TOKEN', traits: {"smithy.api#enumValue" => "BILLING_TOKEN"}))
    ApprovalThresholdPolicy.add_member(:threshold_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdPercentageInt, location_name: 'ThresholdPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of votes among all members that must be <code>YES</code> for a proposal to be approved. For example, a <code>ThresholdPercentage</code> value of <code>50</code> indicates 50%. The <code>ThresholdComparator</code> determines the precise comparison. If a <code>ThresholdPercentage</code> value of <code>50</code> is specified on a network with 10 members, along with a <code>ThresholdComparator</code> value of <code>GREATER_THAN</code>, this indicates that 6 <code>YES</code> votes are required for the proposal to be approved.</p>"}))
    ApprovalThresholdPolicy.add_member(:proposal_duration_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalDurationInt, location_name: 'ProposalDurationInHours', traits: {"smithy.api#documentation" => "<p>The duration from the time that a proposal is created until it expires. If members cast neither the required number of <code>YES</code> votes to approve the proposal nor the number of <code>NO</code> votes required to reject it before the duration expires, the proposal is <code>EXPIRED</code> and <code>ProposalActions</code> aren't carried out.</p>"}))
    ApprovalThresholdPolicy.add_member(:threshold_comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdComparator, location_name: 'ThresholdComparator', traits: {"smithy.api#documentation" => "<p>Determines whether the vote percentage must be greater than the\n            <code>ThresholdPercentage</code> or must be greater than or equal to the\n            <code>ThresholdPercentage</code> to be approved.</p>"}))
    ApprovalThresholdPolicy.type = Types::ApprovalThresholdPolicy
    CreateAccessorInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>This is a unique, case-sensitive identifier that you provide to ensure the idempotency of \n         the operation. An idempotent operation completes no more than once. This \n         identifier is required only if you make a service request directly using \n         an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the \n         Amazon Web Services CLI.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAccessorInput.add_member(:accessor_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorType, location_name: 'AccessorType', traits: {"smithy.api#documentation" => "<p>The type of accessor.</p>\n         <note>\n            <p>Currently, accessor type is restricted to <code>BILLING_TOKEN</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateAccessorInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to assign to the Accessor.</p>\n         <p> Each tag consists of a key and an optional value. You can specify \n          multiple key-value pairs in a single request with an overall maximum of 50 tags \n          allowed per resource.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    CreateAccessorInput.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorNetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The blockchain network that the <code>Accessor</code> token is created for.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>Use the actual <code>networkType</code> value for the blockchain network that you are creating \n            the <code>Accessor</code> token for.</p>\n               </li>\n               <li>\n                  <p>With the shut down of the <i>Ethereum Goerli</i> and <i>Polygon Mumbai \n            Testnet</i> networks the following <code>networkType</code> values are no longer available \n            for selection and use.</p>\n                  <ul>\n                     <li>\n                        <p>\n                           <code>ETHEREUM_MAINNET_AND_GOERLI</code>\n                        </p>\n                     </li>\n                     <li>\n                        <p>\n                           <code>ETHEREUM_GOERLI</code>\n                        </p>\n                     </li>\n                     <li>\n                        <p>\n                           <code>POLYGON_MUMBAI</code>\n                        </p>\n                     </li>\n                  </ul>\n                  <p>However, your existing <code>Accessor</code> tokens with these <code>networkType</code> \n               values will remain unchanged.</p>\n               </li>\n            </ul>\n         </note>"}))
    CreateAccessorInput.type = Types::CreateAccessorInput
    CreateAccessorOutput.add_member(:accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'AccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the accessor.</p>"}))
    CreateAccessorOutput.add_member(:billing_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorBillingTokenString, location_name: 'BillingToken', traits: {"smithy.api#documentation" => "<p>The billing token is a property of the Accessor. Use this token to \n         when making calls to the blockchain network. The billing token is used \n         to track your accessor token for billing requests.</p>"}))
    CreateAccessorOutput.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorNetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The blockchain network that the accessor token is created for.</p>"}))
    CreateAccessorOutput.type = Types::CreateAccessorOutput
    CreateMemberInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMemberInput.add_member(:invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'InvitationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the invitation that is sent to the member to join the network.</p>", "smithy.api#required" => {}}))
    CreateMemberInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network in which the member is created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMemberInput.add_member(:member_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberConfiguration, location_name: 'MemberConfiguration', traits: {"smithy.api#documentation" => "<p>Member configuration parameters.</p>", "smithy.api#required" => {}}))
    CreateMemberInput.type = Types::CreateMemberInput
    CreateMemberOutput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member.</p>"}))
    CreateMemberOutput.type = Types::CreateMemberOutput
    CreateNetworkInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>This is a unique, case-sensitive identifier that you provide to ensure the idempotency of the\n         operation. An idempotent operation completes no more than once. This identifier is required only \n         if you make a service request directly using an HTTP client. It is generated automatically if you \n         use an Amazon Web Services SDK or the Amazon Web Services CLI.\n      </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateNetworkInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the network.</p>", "smithy.api#required" => {}}))
    CreateNetworkInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description for the network.</p>"}))
    CreateNetworkInput.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'Framework', traits: {"smithy.api#documentation" => "<p>The blockchain framework that the network uses.</p>", "smithy.api#required" => {}}))
    CreateNetworkInput.add_member(:framework_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkVersionString, location_name: 'FrameworkVersion', traits: {"smithy.api#documentation" => "<p>The version of the blockchain framework that the network uses.</p>", "smithy.api#required" => {}}))
    CreateNetworkInput.add_member(:framework_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFrameworkConfiguration, location_name: 'FrameworkConfiguration', traits: {"smithy.api#documentation" => "<p>\n         Configuration properties of the blockchain framework relevant to the network configuration.\n      </p>"}))
    CreateNetworkInput.add_member(:voting_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: VotingPolicy, location_name: 'VotingPolicy', traits: {"smithy.api#documentation" => "<p>\n         The voting rules used by the network to determine if a proposal is approved.\n      </p>", "smithy.api#required" => {}}))
    CreateNetworkInput.add_member(:member_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberConfiguration, location_name: 'MemberConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties for the first member within the network.</p>", "smithy.api#required" => {}}))
    CreateNetworkInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to assign to the network.</p>\n         <p> Each tag consists of a key and an optional value. You can specify \n          multiple key-value pairs in a single request with an overall maximum of 50 tags \n          allowed per resource.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    CreateNetworkInput.type = Types::CreateNetworkInput
    CreateNetworkOutput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the network.</p>"}))
    CreateNetworkOutput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the first member within the network.</p>"}))
    CreateNetworkOutput.type = Types::CreateNetworkOutput
    CreateNodeInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateNodeInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network for the node.</p>\n         <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>n-ethereum-mainnet</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateNodeInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member that owns this node.</p>\n         <p>Applies only to Hyperledger Fabric.</p>"}))
    CreateNodeInput.add_member(:node_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfiguration, location_name: 'NodeConfiguration', traits: {"smithy.api#documentation" => "<p>The properties of a node configuration.</p>", "smithy.api#required" => {}}))
    CreateNodeInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to assign to the node.</p>\n         <p> Each tag consists of a key and an optional value. You can specify \n          multiple key-value pairs in a single request with an overall maximum of 50 tags \n          allowed per resource.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    CreateNodeInput.type = Types::CreateNodeInput
    CreateNodeOutput.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the node.</p>"}))
    CreateNodeOutput.type = Types::CreateNodeOutput
    CreateProposalInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenString, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProposalInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the network for which the proposal is made.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProposalInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member that is creating the proposal. This \n         identifier is especially useful for identifying the member making the proposal \n         when multiple members exist in a single Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    CreateProposalInput.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalActions, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The type of actions proposed, such as inviting a member or removing a member. The types of <code>Actions</code> in a proposal are mutually exclusive. For example, a proposal with <code>Invitations</code> actions cannot also contain <code>Removals</code> actions.</p>", "smithy.api#required" => {}}))
    CreateProposalInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the proposal that is visible to voting members, for example, \"Proposal to add Example Corp. as member.\"</p>"}))
    CreateProposalInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags to assign to the proposal.</p>\n         <p> Each tag consists of a key and an optional value. You can specify \n          multiple key-value pairs in a single request with an overall maximum of 50 tags \n          allowed per resource.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    CreateProposalInput.type = Types::CreateProposalInput
    CreateProposalOutput.add_member(:proposal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposalId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the proposal.</p>"}))
    CreateProposalOutput.type = Types::CreateProposalOutput
    DeleteAccessorInput.add_member(:accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'AccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the accessor.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessorInput.type = Types::DeleteAccessorInput
    DeleteAccessorOutput.type = Types::DeleteAccessorOutput
    DeleteMemberInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network from which the member is removed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemberInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member to remove.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemberInput.type = Types::DeleteMemberInput
    DeleteMemberOutput.type = Types::DeleteMemberOutput
    DeleteNodeInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network that the node is on.</p>\n         <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>n-ethereum-mainnet</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNodeInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member that owns this node.</p>\n         <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>", "smithy.api#httpQuery" => "memberId"}))
    DeleteNodeInput.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the node.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNodeInput.type = Types::DeleteNodeInput
    DeleteNodeOutput.type = Types::DeleteNodeOutput
    Edition.add_member(:starter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTER', traits: {"smithy.api#enumValue" => "STARTER"}))
    Edition.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    Framework.add_member(:hyperledger_fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYPERLEDGER_FABRIC', traits: {"smithy.api#enumValue" => "HYPERLEDGER_FABRIC"}))
    Framework.add_member(:ethereum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ETHEREUM', traits: {"smithy.api#enumValue" => "ETHEREUM"}))
    GetAccessorInput.add_member(:accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'AccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the accessor.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessorInput.type = Types::GetAccessorInput
    GetAccessorOutput.add_member(:accessor, Smithy::Schema::Shapes::ShapeRef.new(shape: Accessor, location_name: 'Accessor', traits: {"smithy.api#documentation" => "<p>The properties of the accessor.</p>"}))
    GetAccessorOutput.type = Types::GetAccessorOutput
    GetMemberInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network to which the member belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemberInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemberInput.type = Types::GetMemberInput
    GetMemberOutput.add_member(:member, Smithy::Schema::Shapes::ShapeRef.new(shape: Member, location_name: 'Member', traits: {"smithy.api#documentation" => "<p>The properties of a member.</p>"}))
    GetMemberOutput.type = Types::GetMemberOutput
    GetNetworkInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network to get information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkInput.type = Types::GetNetworkInput
    GetNetworkOutput.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: Network, location_name: 'Network', traits: {"smithy.api#documentation" => "<p>An object containing network configuration parameters.</p>"}))
    GetNetworkOutput.type = Types::GetNetworkOutput
    GetNodeInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network that the node is on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNodeInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member that owns the node.</p>\n         <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>", "smithy.api#httpQuery" => "memberId"}))
    GetNodeInput.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the node.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNodeInput.type = Types::GetNodeInput
    GetNodeOutput.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: Node, location_name: 'Node', traits: {"smithy.api#documentation" => "<p>Properties of the node configuration.</p>"}))
    GetNodeOutput.type = Types::GetNodeOutput
    GetProposalInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network for which the proposal is made.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProposalInput.add_member(:proposal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposalId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the proposal.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProposalInput.type = Types::GetProposalInput
    GetProposalOutput.add_member(:proposal, Smithy::Schema::Shapes::ShapeRef.new(shape: Proposal, location_name: 'Proposal', traits: {"smithy.api#documentation" => "<p>Information about a proposal.</p>"}))
    GetProposalOutput.type = Types::GetProposalOutput
    IllegalActionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    IllegalActionException.type = Types::IllegalActionException
    InputTagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    InputTagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    Invitation.add_member(:invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'InvitationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the invitation.</p>"}))
    Invitation.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the invitation was created.</p>"}))
    Invitation.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the invitation expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, the invitee can no longer create a member and join the network using this <code>InvitationId</code>.</p>"}))
    Invitation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InvitationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the invitation:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> - The invitee hasn't created a member to join the network, and the invitation hasn't yet expired.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCEPTING</code> - The invitee has begun creating a member, and creation hasn't yet completed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCEPTED</code> - The invitee created a member and joined the network using the <code>InvitationID</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REJECTED</code> - The invitee rejected the invitation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXPIRED</code> - The invitee neither created a member nor rejected the invitation before the <code>ExpirationDate</code>.</p>\n            </li>\n         </ul>"}))
    Invitation.add_member(:network_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkSummary, location_name: 'NetworkSummary'))
    Invitation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the invitation. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    Invitation.type = Types::Invitation
    InvitationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Invitation)
    InvitationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    InvitationStatus.add_member(:accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    InvitationStatus.add_member(:accepting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTING', traits: {"smithy.api#enumValue" => "ACCEPTING"}))
    InvitationStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    InvitationStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    InviteAction.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalString, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID to invite.</p>", "smithy.api#required" => {}}))
    InviteAction.type = Types::InviteAction
    InviteActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InviteAction)
    ListAccessorsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorListMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of accessors to list.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAccessorsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that indicates the next set of results to retrieve. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAccessorsInput.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorNetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The blockchain network that the <code>Accessor</code> token is created for.</p>\n         <note>\n            <p>Use the value <code>ETHEREUM_MAINNET_AND_GOERLI</code> for all \n         existing <code>Accessors</code> tokens that were created before the <code>networkType</code> \n         property was introduced.</p>\n         </note>", "smithy.api#httpQuery" => "networkType"}))
    ListAccessorsInput.type = Types::ListAccessorsInput
    ListAccessorsOutput.add_member(:accessors, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessorSummaryList, location_name: 'Accessors', traits: {"smithy.api#documentation" => "<p>An array of AccessorSummary objects that contain configuration properties for \n         each accessor.</p>"}))
    ListAccessorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> The pagination token that indicates the next set of results to retrieve. </p>"}))
    ListAccessorsOutput.type = Types::ListAccessorsOutput
    ListInvitationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalListMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of invitations to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListInvitationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInvitationsInput.type = Types::ListInvitationsInput
    ListInvitationsOutput.add_member(:invitations, Smithy::Schema::Shapes::ShapeRef.new(shape: InvitationList, location_name: 'Invitations', traits: {"smithy.api#documentation" => "<p>The invitations for the network.</p>"}))
    ListInvitationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListInvitationsOutput.type = Types::ListInvitationsOutput
    ListMembersInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network for which to list members.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMembersInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The optional name of the member to list.</p>", "smithy.api#httpQuery" => "name"}))
    ListMembersInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>An optional status specifier. If provided, only members currently in this status are listed.</p>", "smithy.api#httpQuery" => "status"}))
    ListMembersInput.add_member(:is_owned, Smithy::Schema::Shapes::ShapeRef.new(shape: IsOwned, location_name: 'IsOwned', traits: {"smithy.api#documentation" => "<p>An optional Boolean value. If provided, the request is limited either to\n         members that the current Amazon Web Services account owns (<code>true</code>) or that other Amazon Web Services accountsn\n         own (<code>false</code>). If omitted, all members are listed.</p>", "smithy.api#httpQuery" => "isOwned"}))
    ListMembersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberListMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of members to return in the request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMembersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMembersInput.type = Types::ListMembersInput
    ListMembersOutput.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberSummaryList, location_name: 'Members', traits: {"smithy.api#documentation" => "<p>An array of <code>MemberSummary</code> objects. Each object contains details about a network member.</p>"}))
    ListMembersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListMembersOutput.type = Types::ListMembersOutput
    ListNetworksInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the network.</p>", "smithy.api#httpQuery" => "name"}))
    ListNetworksInput.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'Framework', traits: {"smithy.api#documentation" => "<p>An optional framework specifier. If provided, only networks of this framework type are listed.</p>", "smithy.api#httpQuery" => "framework"}))
    ListNetworksInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>An optional status specifier. If provided, only networks currently in this status are listed.</p>\n         <p>Applies only to Hyperledger Fabric.</p>", "smithy.api#httpQuery" => "status"}))
    ListNetworksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkListMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of networks to list.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListNetworksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNetworksInput.type = Types::ListNetworksInput
    ListNetworksOutput.add_member(:networks, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkSummaryList, location_name: 'Networks', traits: {"smithy.api#documentation" => "<p>An array of <code>NetworkSummary</code> objects that contain configuration properties for each network.</p>"}))
    ListNetworksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListNetworksOutput.type = Types::ListNetworksOutput
    ListNodesInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network for which to list nodes.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNodesInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member who owns the nodes to list.</p>\n         <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>", "smithy.api#httpQuery" => "memberId"}))
    ListNodesInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>An optional status specifier. If provided, only nodes currently in this status are listed.</p>", "smithy.api#httpQuery" => "status"}))
    ListNodesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeListMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of nodes to list.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListNodesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNodesInput.type = Types::ListNodesInput
    ListNodesOutput.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeSummaryList, location_name: 'Nodes', traits: {"smithy.api#documentation" => "<p>An array of <code>NodeSummary</code> objects that contain configuration properties for each node.</p>"}))
    ListNodesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListNodesOutput.type = Types::ListNodesOutput
    ListProposalVotesInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the network.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProposalVotesInput.add_member(:proposal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposalId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the proposal.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProposalVotesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalListMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n         The maximum number of votes to return.\n      </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProposalVotesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n         The pagination token that indicates the next set of results to retrieve.\n      </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProposalVotesInput.type = Types::ListProposalVotesInput
    ListProposalVotesOutput.add_member(:proposal_votes, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalVoteList, location_name: 'ProposalVotes', traits: {"smithy.api#documentation" => "<p>\n         The list of votes.\n      </p>"}))
    ListProposalVotesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n         The pagination token that indicates the next set of results to retrieve.\n      </p>"}))
    ListProposalVotesOutput.type = Types::ListProposalVotesOutput
    ListProposalsInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the network.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProposalsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalListMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n         The maximum number of proposals to return.\n      </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListProposalsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n         The pagination token that indicates the next set of results to retrieve.\n      </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListProposalsInput.type = Types::ListProposalsInput
    ListProposalsOutput.add_member(:proposals, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalSummaryList, location_name: 'Proposals', traits: {"smithy.api#documentation" => "<p>The summary of each proposal made on the network.</p>"}))
    ListProposalsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    ListProposalsOutput.type = Types::ListProposalsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether logging is enabled.</p>"}))
    LogConfiguration.type = Types::LogConfiguration
    LogConfigurations.add_member(:cloudwatch, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'Cloudwatch', traits: {"smithy.api#documentation" => "<p>Parameters for publishing logs to Amazon CloudWatch Logs.</p>"}))
    LogConfigurations.type = Types::LogConfigurations
    Member.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network to which the member belongs.</p>"}))
    Member.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member.</p>"}))
    Member.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the member.</p>"}))
    Member.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description for the member.</p>"}))
    Member.add_member(:framework_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberFrameworkAttributes, location_name: 'FrameworkAttributes', traits: {"smithy.api#documentation" => "<p>Attributes relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>"}))
    Member.add_member(:log_publishing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberLogPublishingConfiguration, location_name: 'LogPublishingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with a member.</p>"}))
    Member.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a member.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> - The Amazon Web Services account is in the process of creating a member.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AVAILABLE</code> - The member has been created and can participate in the network.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED</code> - The Amazon Web Services account attempted to create a member and creation failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATING</code> - The member is in the process of being updated.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>\n                  <code>PROPOSAL</code> to remove the member.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>\n                  <code>PROPOSAL</code> to remove the member.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The member is impaired and might not function as expected because it cannot access the specified customer managed key in KMS for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>\n               <p>The effect of disabling or deleting a key or of revoking a grant isn't immediate. It might take some time for the member resource to discover that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>\n            </li>\n         </ul>"}))
    Member.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the member was created.</p>"}))
    Member.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to the member. Tags consist of a key and optional value.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    Member.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the member. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    Member.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer managed key in Key Management Service (KMS) that the member uses for encryption at rest. If the value of this parameter is <code>\"AWS Owned KMS Key\"</code>, the member uses an Amazon Web Services owned KMS key for encryption. This parameter is inherited by the nodes that this member owns.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/managed-blockchain-encryption-at-rest.html\">Encryption at Rest</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    Member.type = Types::Member
    MemberConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the member.</p>", "smithy.api#required" => {}}))
    MemberConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of the member.</p>"}))
    MemberConfiguration.add_member(:framework_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberFrameworkConfiguration, location_name: 'FrameworkConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties of the blockchain framework relevant to the member.</p>", "smithy.api#required" => {}}))
    MemberConfiguration.add_member(:log_publishing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberLogPublishingConfiguration, location_name: 'LogPublishingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network.</p>"}))
    MemberConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to the member. Tags consist of a key and optional value. </p>\n         <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    MemberConfiguration.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer managed key in Key Management Service (KMS) to use for encryption at rest in the member. This parameter is inherited by any nodes that this member creates. For more information, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/managed-blockchain-encryption-at-rest.html\">Encryption at Rest</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>\n         <p>Use one of the following options to specify this parameter:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>Undefined or empty string</b> - By default, use an KMS key that is owned and managed by Amazon Web Services on your behalf.</p>\n            </li>\n            <li>\n               <p>\n                  <b>A valid symmetric customer managed KMS key</b> - Use the specified KMS key in your account that you create, own, and manage.</p>\n               <p>Amazon Managed Blockchain doesn't support asymmetric keys. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer Guide</i>.</p>\n               <p>The following is an example of a KMS key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>\n               </p>\n            </li>\n         </ul>"}))
    MemberConfiguration.type = Types::MemberConfiguration
    MemberFabricAttributes.add_member(:admin_username, Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameString, location_name: 'AdminUsername', traits: {"smithy.api#documentation" => "<p>The user name for the initial administrator user for the member.</p>"}))
    MemberFabricAttributes.add_member(:ca_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CaEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint used to access the member's certificate authority.</p>"}))
    MemberFabricAttributes.type = Types::MemberFabricAttributes
    MemberFabricConfiguration.add_member(:admin_username, Smithy::Schema::Shapes::ShapeRef.new(shape: UsernameString, location_name: 'AdminUsername', traits: {"smithy.api#documentation" => "<p>The user name for the member's initial administrative user.</p>", "smithy.api#required" => {}}))
    MemberFabricConfiguration.add_member(:admin_password, Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordString, location_name: 'AdminPassword', traits: {"smithy.api#documentation" => "<p>The password for the member's initial administrative user. The <code>AdminPassword</code> must be at least 8 characters long and no more than 32 characters. It must contain at least one uppercase letter, one lowercase letter, and one digit. It cannot have a single quotation mark (‘), a double quotation marks (“), a forward slash(/), a backward slash(\\), @, or a space.</p>", "smithy.api#required" => {}}))
    MemberFabricConfiguration.type = Types::MemberFabricConfiguration
    MemberFabricLogPublishingConfiguration.add_member(:ca_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurations, location_name: 'CaLogs', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with a member's Certificate Authority (CA). CA logs help you determine when a member in your account joins the network, or when new peers register with a member CA.</p>"}))
    MemberFabricLogPublishingConfiguration.type = Types::MemberFabricLogPublishingConfiguration
    MemberFrameworkAttributes.add_member(:fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberFabricAttributes, location_name: 'Fabric', traits: {"smithy.api#documentation" => "<p>Attributes of Hyperledger Fabric relevant to a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>"}))
    MemberFrameworkAttributes.type = Types::MemberFrameworkAttributes
    MemberFrameworkConfiguration.add_member(:fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberFabricConfiguration, location_name: 'Fabric', traits: {"smithy.api#documentation" => "<p>Attributes of Hyperledger Fabric for a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>"}))
    MemberFrameworkConfiguration.type = Types::MemberFrameworkConfiguration
    MemberLogPublishingConfiguration.add_member(:fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberFabricLogPublishingConfiguration, location_name: 'Fabric', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"}))
    MemberLogPublishingConfiguration.type = Types::MemberLogPublishingConfiguration
    MemberStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    MemberStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    MemberStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    MemberStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    MemberStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    MemberStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    MemberStatus.add_member(:inaccessible_encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACCESSIBLE_ENCRYPTION_KEY', traits: {"smithy.api#enumValue" => "INACCESSIBLE_ENCRYPTION_KEY"}))
    MemberSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member.</p>"}))
    MemberSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the member.</p>"}))
    MemberSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of the member.</p>"}))
    MemberSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the member.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> - The Amazon Web Services account is in the process of creating a member.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AVAILABLE</code> - The member has been created and can participate in the network.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED</code> - The Amazon Web Services account attempted to create a member and creation failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATING</code> - The member is in the process of being updated.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>\n                  <code>PROPOSAL</code> to remove the member.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>\n                  <code>PROPOSAL</code> to remove the member.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The member is impaired and might not function as expected because it cannot access the specified customer managed key in Key Management Service (KMS) for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>\n               <p>The effect of disabling or deleting a key or of revoking a grant isn't immediate. It might take some time for the member resource to discover that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>\n            </li>\n         </ul>"}))
    MemberSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the member was created.</p>"}))
    MemberSummary.add_member(:is_owned, Smithy::Schema::Shapes::ShapeRef.new(shape: IsOwned, location_name: 'IsOwned', traits: {"smithy.api#documentation" => "<p>An indicator of whether the member is owned by your Amazon Web Services account or a different Amazon Web Services account.</p>"}))
    MemberSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the member. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    MemberSummary.type = Types::MemberSummary
    MemberSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberSummary)
    Network.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network.</p>"}))
    Network.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the network.</p>"}))
    Network.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Attributes of the blockchain framework for the network.</p>"}))
    Network.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'Framework', traits: {"smithy.api#documentation" => "<p>The blockchain framework that the network uses.</p>"}))
    Network.add_member(:framework_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkVersionString, location_name: 'FrameworkVersion', traits: {"smithy.api#documentation" => "<p>The version of the blockchain framework that the network uses.</p>"}))
    Network.add_member(:framework_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFrameworkAttributes, location_name: 'FrameworkAttributes', traits: {"smithy.api#documentation" => "<p>Attributes of the blockchain framework that the network uses.</p>"}))
    Network.add_member(:vpc_endpoint_service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointServiceName', traits: {"smithy.api#documentation" => "<p>The VPC endpoint service name of the VPC endpoint service of the network. Members use the VPC endpoint service name to create a VPC endpoint to access network resources.</p>"}))
    Network.add_member(:voting_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: VotingPolicy, location_name: 'VotingPolicy', traits: {"smithy.api#documentation" => "<p>The voting rules that the network uses to decide if a proposal is accepted.</p>"}))
    Network.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the network.</p>"}))
    Network.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the network was created.</p>"}))
    Network.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to the network. Each tag consists of a key and optional value.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    Network.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the network. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    Network.type = Types::Network
    NetworkEthereumAttributes.add_member(:chain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChainId', traits: {"smithy.api#documentation" => "<p>The Ethereum <code>CHAIN_ID</code> associated with the Ethereum network. Chain IDs are as follows:</p>\n         <ul>\n            <li>\n               <p>mainnet = <code>1</code>\n               </p>\n            </li>\n         </ul>"}))
    NetworkEthereumAttributes.type = Types::NetworkEthereumAttributes
    NetworkFabricAttributes.add_member(:ordering_service_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OrderingServiceEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of the ordering service for the network.</p>"}))
    NetworkFabricAttributes.add_member(:edition, Smithy::Schema::Shapes::ShapeRef.new(shape: Edition, location_name: 'Edition', traits: {"smithy.api#documentation" => "<p>The edition of Amazon Managed Blockchain that Hyperledger Fabric uses. For more information, see <a href=\"http://aws.amazon.com/managed-blockchain/pricing/\">Amazon Managed Blockchain Pricing</a>.</p>"}))
    NetworkFabricAttributes.type = Types::NetworkFabricAttributes
    NetworkFabricConfiguration.add_member(:edition, Smithy::Schema::Shapes::ShapeRef.new(shape: Edition, location_name: 'Edition', traits: {"smithy.api#documentation" => "<p>The edition of Amazon Managed Blockchain that the network uses. For more information, see <a href=\"http://aws.amazon.com/managed-blockchain/pricing/\">Amazon Managed Blockchain Pricing</a>.</p>", "smithy.api#required" => {}}))
    NetworkFabricConfiguration.type = Types::NetworkFabricConfiguration
    NetworkFrameworkAttributes.add_member(:fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFabricAttributes, location_name: 'Fabric', traits: {"smithy.api#documentation" => "<p>Attributes of Hyperledger Fabric for a Managed Blockchain network that uses Hyperledger Fabric.</p>"}))
    NetworkFrameworkAttributes.add_member(:ethereum, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkEthereumAttributes, location_name: 'Ethereum', traits: {"smithy.api#documentation" => "<p>Attributes of an Ethereum network for Managed Blockchain resources participating in an Ethereum network. </p>"}))
    NetworkFrameworkAttributes.type = Types::NetworkFrameworkAttributes
    NetworkFrameworkConfiguration.add_member(:fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFabricConfiguration, location_name: 'Fabric', traits: {"smithy.api#documentation" => "<p>\n         Hyperledger Fabric configuration properties for a Managed Blockchain network that uses Hyperledger Fabric.\n      </p>"}))
    NetworkFrameworkConfiguration.type = Types::NetworkFrameworkConfiguration
    NetworkStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    NetworkStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    NetworkStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    NetworkStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    NetworkStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    NetworkSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network.</p>"}))
    NetworkSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the network.</p>"}))
    NetworkSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of the network.</p>"}))
    NetworkSummary.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'Framework', traits: {"smithy.api#documentation" => "<p>The blockchain framework that the network uses.</p>"}))
    NetworkSummary.add_member(:framework_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkVersionString, location_name: 'FrameworkVersion', traits: {"smithy.api#documentation" => "<p>The version of the blockchain framework that the network uses.</p>"}))
    NetworkSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the network.</p>"}))
    NetworkSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the network was created.</p>"}))
    NetworkSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the network. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    NetworkSummary.type = Types::NetworkSummary
    NetworkSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkSummary)
    Node.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network that the node is on.</p>"}))
    Node.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member to which the node belongs.</p>\n         <p>Applies only to Hyperledger Fabric.</p>"}))
    Node.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the node.</p>"}))
    Node.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeString, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type of the node.</p>"}))
    Node.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneString, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone in which the node exists. Required for Ethereum nodes. </p>"}))
    Node.add_member(:framework_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFrameworkAttributes, location_name: 'FrameworkAttributes', traits: {"smithy.api#documentation" => "<p>Attributes of the blockchain framework being used.</p>"}))
    Node.add_member(:log_publishing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeLogPublishingConfiguration, location_name: 'LogPublishingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.</p>"}))
    Node.add_member(:state_db, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDBType, location_name: 'StateDB', traits: {"smithy.api#documentation" => "<p>The state database that the node uses. Values are <code>LevelDB</code> or <code>CouchDB</code>.</p>\n         <p>Applies only to Hyperledger Fabric.</p>"}))
    Node.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the node.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> - The Amazon Web Services account is in the process of creating a node.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AVAILABLE</code> - The node has been created and can participate in the network.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNHEALTHY</code> - The node is impaired and might not function as expected. Amazon Managed Blockchain automatically finds nodes in this state and tries to recover them. If a node is recoverable, it returns to <code>AVAILABLE</code>. Otherwise, it moves to <code>FAILED</code> status.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED</code> - The Amazon Web Services account attempted to create a node and creation failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATING</code> - The node is in the process of being updated.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> - The node is in the process of being deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETED</code> - The node can no longer participate on the network.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - The node is no longer functional, cannot be recovered, and must be deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The node is impaired and might not function as expected because it cannot access the specified customer managed key in KMS for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>\n               <p>The effect of disabling or deleting a key or of revoking a grant isn't immediate. It might take some time for the node resource to discover that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>\n            </li>\n         </ul>"}))
    Node.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the node was created.</p>"}))
    Node.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to the node. Each tag consists of a key and optional value.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    Node.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the node. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    Node.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer managed key in Key Management Service (KMS) that the node uses for encryption at rest. If the value of this parameter is <code>\"AWS Owned KMS Key\"</code>, the node uses an Amazon Web Services owned KMS key for encryption. The node inherits this parameter from the member that it belongs to.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/managed-blockchain-encryption-at-rest.html\">Encryption at Rest</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>\n         <p>Applies only to Hyperledger Fabric.</p>"}))
    Node.type = Types::Node
    NodeConfiguration.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeString, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The Amazon Managed Blockchain instance type for the node.</p>", "smithy.api#required" => {}}))
    NodeConfiguration.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneString, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone in which the node exists. Required for Ethereum nodes. </p>"}))
    NodeConfiguration.add_member(:log_publishing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeLogPublishingConfiguration, location_name: 'LogPublishingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.      \n      </p>"}))
    NodeConfiguration.add_member(:state_db, Smithy::Schema::Shapes::ShapeRef.new(shape: StateDBType, location_name: 'StateDB', traits: {"smithy.api#documentation" => "<p>The state database that the node uses. Values are <code>LevelDB</code> or <code>CouchDB</code>. When using an Amazon Managed Blockchain network with Hyperledger Fabric version 1.4 or later, the default is <code>CouchDB</code>.</p>\n         <p>Applies only to Hyperledger Fabric.</p>"}))
    NodeConfiguration.type = Types::NodeConfiguration
    NodeEthereumAttributes.add_member(:http_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HttpEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint on which the Ethereum node listens to run Ethereum API methods over HTTP connections from a client. Use this endpoint in client code for smart contracts when using an HTTP connection. Connections to this endpoint are authenticated using <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p>"}))
    NodeEthereumAttributes.add_member(:web_socket_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WebSocketEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint on which the Ethereum node listens to run Ethereum JSON-RPC methods over WebSocket connections from a client. Use this endpoint in client code for smart contracts when using a WebSocket connection. Connections to this endpoint are authenticated using <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p>"}))
    NodeEthereumAttributes.type = Types::NodeEthereumAttributes
    NodeFabricAttributes.add_member(:peer_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PeerEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint that identifies the peer node for all services except peer channel-based event services.</p>"}))
    NodeFabricAttributes.add_member(:peer_event_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PeerEventEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint that identifies the peer node for peer channel-based event services.</p>"}))
    NodeFabricAttributes.type = Types::NodeFabricAttributes
    NodeFabricLogPublishingConfiguration.add_member(:chaincode_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurations, location_name: 'ChaincodeLogs', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with chaincode execution on a peer node. Chaincode logs contain the results of instantiating, invoking, and querying the chaincode. A peer can run multiple instances of chaincode. When enabled, a log stream is created for all chaincodes, with an individual log stream for each chaincode.</p>"}))
    NodeFabricLogPublishingConfiguration.add_member(:peer_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurations, location_name: 'PeerLogs', traits: {"smithy.api#documentation" => "<p>Configuration properties for a peer node log. Peer node logs contain messages generated when your client submits transaction proposals to peer nodes, requests to join channels, enrolls an admin peer, and lists the chaincode instances on a peer node. </p>"}))
    NodeFabricLogPublishingConfiguration.type = Types::NodeFabricLogPublishingConfiguration
    NodeFrameworkAttributes.add_member(:fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFabricAttributes, location_name: 'Fabric', traits: {"smithy.api#documentation" => "<p>Attributes of Hyperledger Fabric for a peer node on a Managed Blockchain network that uses Hyperledger Fabric.</p>"}))
    NodeFrameworkAttributes.add_member(:ethereum, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeEthereumAttributes, location_name: 'Ethereum', traits: {"smithy.api#documentation" => "<p>Attributes of Ethereum for a node on a Managed Blockchain network that uses Ethereum. </p>"}))
    NodeFrameworkAttributes.type = Types::NodeFrameworkAttributes
    NodeLogPublishingConfiguration.add_member(:fabric, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFabricLogPublishingConfiguration, location_name: 'Fabric', traits: {"smithy.api#documentation" => "<p>Configuration properties for logging events associated with a node that is owned by a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"}))
    NodeLogPublishingConfiguration.type = Types::NodeLogPublishingConfiguration
    NodeStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    NodeStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    NodeStatus.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    NodeStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    NodeStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    NodeStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    NodeStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    NodeStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    NodeStatus.add_member(:inaccessible_encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACCESSIBLE_ENCRYPTION_KEY', traits: {"smithy.api#enumValue" => "INACCESSIBLE_ENCRYPTION_KEY"}))
    NodeSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the node.</p>"}))
    NodeSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the node.</p>"}))
    NodeSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The date and time that the node was created.</p>"}))
    NodeSummary.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneString, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone in which the node exists.</p>"}))
    NodeSummary.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeString, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The EC2 instance type for the node.</p>"}))
    NodeSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the node. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    NodeSummary.type = Types::NodeSummary
    NodeSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeSummary)
    OutputTagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    OutputTagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    Proposal.add_member(:proposal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposalId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the proposal.</p>"}))
    Proposal.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network for which the proposal is made.</p>"}))
    Proposal.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the proposal.</p>"}))
    Proposal.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalActions, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions to perform on the network if the proposal is <code>APPROVED</code>.</p>"}))
    Proposal.add_member(:proposed_by_member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposedByMemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member that created the proposal.</p>"}))
    Proposal.add_member(:proposed_by_member_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: 'ProposedByMemberName', traits: {"smithy.api#documentation" => "<p>The name of the member that created the proposal.</p>"}))
    Proposal.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the proposal. Values are as follows:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> aren't carried out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXPIRED</code> - Members didn't cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> aren't carried out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved couldn't be completed because of an error. The <code>ACTION_FAILED</code> status occurs even if only one ProposalAction fails and other actions are successful.</p>\n            </li>\n         </ul>"}))
    Proposal.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>\n         The date and time that the proposal was created.\n      </p>"}))
    Proposal.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationDate', traits: {"smithy.api#documentation" => "<p>\n         The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, if members haven't cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> aren't carried out.\n      </p>"}))
    Proposal.add_member(:yes_vote_count, Smithy::Schema::Shapes::ShapeRef.new(shape: VoteCount, location_name: 'YesVoteCount', traits: {"smithy.api#documentation" => "<p>\n         The current total of <code>YES</code> votes cast on the proposal by members.\n      </p>"}))
    Proposal.add_member(:no_vote_count, Smithy::Schema::Shapes::ShapeRef.new(shape: VoteCount, location_name: 'NoVoteCount', traits: {"smithy.api#documentation" => "<p>\n         The current total of <code>NO</code> votes cast on the proposal by members.\n      </p>"}))
    Proposal.add_member(:outstanding_vote_count, Smithy::Schema::Shapes::ShapeRef.new(shape: VoteCount, location_name: 'OutstandingVoteCount', traits: {"smithy.api#documentation" => "<p>\n         The number of votes remaining to be cast on the proposal by members. In other words, the number of members minus the sum of <code>YES</code> votes and <code>NO</code> votes.\n      </p>"}))
    Proposal.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags assigned to the proposal. Each tag consists of a key and optional value.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"}))
    Proposal.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the proposal. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    Proposal.type = Types::Proposal
    ProposalActions.add_member(:invitations, Smithy::Schema::Shapes::ShapeRef.new(shape: InviteActionList, location_name: 'Invitations', traits: {"smithy.api#documentation" => "<p>\n         The actions to perform for an <code>APPROVED</code> proposal to invite an Amazon Web Services account to create a member and join the network.\n      </p>"}))
    ProposalActions.add_member(:removals, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveActionList, location_name: 'Removals', traits: {"smithy.api#documentation" => "<p>\n         The actions to perform for an <code>APPROVED</code> proposal to remove a member from the network, which deletes the member and all associated member resources from the network. \n      </p>"}))
    ProposalActions.type = Types::ProposalActions
    ProposalStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ProposalStatus.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    ProposalStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    ProposalStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ProposalStatus.add_member(:action_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTION_FAILED', traits: {"smithy.api#enumValue" => "ACTION_FAILED"}))
    ProposalSummary.add_member(:proposal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposalId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the proposal.\n      </p>"}))
    ProposalSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n         The description of the proposal.\n      </p>"}))
    ProposalSummary.add_member(:proposed_by_member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposedByMemberId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the member that created the proposal.\n      </p>"}))
    ProposalSummary.add_member(:proposed_by_member_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: 'ProposedByMemberName', traits: {"smithy.api#documentation" => "<p>\n         The name of the member that created the proposal.\n      </p>"}))
    ProposalSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the proposal. Values are as follows:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> aren't carried out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXPIRED</code> - Members didn't cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> aren't carried out.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved couldn't be completed because of an error.</p>\n            </li>\n         </ul>"}))
    ProposalSummary.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>\n         The date and time that the proposal was created.\n      </p>"}))
    ProposalSummary.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationDate', traits: {"smithy.api#documentation" => "<p>\n         The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>.  After this date and time, if members haven't cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> aren't carried out.\n      </p>"}))
    ProposalSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the proposal. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>"}))
    ProposalSummary.type = Types::ProposalSummary
    ProposalSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProposalSummary)
    ProposalVoteList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VoteSummary)
    RejectInvitationInput.add_member(:invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'InvitationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the invitation to reject.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectInvitationInput.type = Types::RejectInvitationInput
    RejectInvitationOutput.type = Types::RejectInvitationOutput
    RemoveAction.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member to remove.</p>", "smithy.api#required" => {}}))
    RemoveAction.type = Types::RemoveAction
    RemoveActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAction)
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>A requested resource doesn't exist. It may have been deleted or referenced inaccurately.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotReadyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotReadyException.type = Types::ResourceNotReadyException
    StateDBType.add_member(:level_db, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LevelDB', traits: {"smithy.api#enumValue" => "LevelDB"}))
    StateDBType.add_member(:couch_db, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CouchDB', traits: {"smithy.api#enumValue" => "CouchDB"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to assign to the specified resource. Tag values can be empty, for example, <code>\"MyTagKey\" : \"\"</code>. You can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThresholdComparator.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ThresholdComparator.add_member(:greater_than_or_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL_TO', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL_TO"}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p></p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnString, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateMemberInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Managed Blockchain network to which the member belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMemberInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMemberInput.add_member(:log_publishing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberLogPublishingConfiguration, location_name: 'LogPublishingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>"}))
    UpdateMemberInput.type = Types::UpdateMemberInput
    UpdateMemberOutput.type = Types::UpdateMemberOutput
    UpdateNodeInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the network that the node is on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodeInput.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member that owns the node.</p>\n         <p>Applies only to Hyperledger Fabric.</p>"}))
    UpdateNodeInput.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the node.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodeInput.add_member(:log_publishing_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeLogPublishingConfiguration, location_name: 'LogPublishingConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>"}))
    UpdateNodeInput.type = Types::UpdateNodeInput
    UpdateNodeOutput.type = Types::UpdateNodeOutput
    VoteOnProposalInput.add_member(:network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'NetworkId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the network.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    VoteOnProposalInput.add_member(:proposal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'ProposalId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the proposal.\n      </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    VoteOnProposalInput.add_member(:voter_member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'VoterMemberId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the member casting the vote.\n      </p>", "smithy.api#required" => {}}))
    VoteOnProposalInput.add_member(:vote, Smithy::Schema::Shapes::ShapeRef.new(shape: VoteValue, location_name: 'Vote', traits: {"smithy.api#documentation" => "<p>\n         The value of the vote.\n      </p>", "smithy.api#required" => {}}))
    VoteOnProposalInput.type = Types::VoteOnProposalInput
    VoteOnProposalOutput.type = Types::VoteOnProposalOutput
    VoteSummary.add_member(:vote, Smithy::Schema::Shapes::ShapeRef.new(shape: VoteValue, location_name: 'Vote', traits: {"smithy.api#documentation" => "<p>\n         The vote value, either <code>YES</code> or <code>NO</code>.\n      </p>"}))
    VoteSummary.add_member(:member_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkMemberNameString, location_name: 'MemberName', traits: {"smithy.api#documentation" => "<p>\n         The name of the member that cast the vote.\n      </p>"}))
    VoteSummary.add_member(:member_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdString, location_name: 'MemberId', traits: {"smithy.api#documentation" => "<p>\n         The unique identifier of the member that cast the vote.\n      </p>"}))
    VoteSummary.type = Types::VoteSummary
    VoteValue.add_member(:yes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YES', traits: {"smithy.api#enumValue" => "YES"}))
    VoteValue.add_member(:no, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO', traits: {"smithy.api#enumValue" => "NO"}))
    VotingPolicy.add_member(:approval_threshold_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalThresholdPolicy, location_name: 'ApprovalThresholdPolicy', traits: {"smithy.api#documentation" => "<p>Defines the rules for the network for voting on proposals, such as the percentage of <code>YES</code> votes required for the proposal to be approved and the duration of the proposal. The policy applies to all proposals and is specified when the network is created.</p>"}))
    VotingPolicy.type = Types::VotingPolicy

    TaigaWebService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.managedblockchain#TaigaWebService"
      service.name = "TaigaWebService"
      service.version = "2018-09-24"
      service.traits = {"aws.api#service" => {"sdkId" => "ManagedBlockchain", "arnNamespace" => "managedblockchain", "cloudFormationName" => "ManagedBlockchain", "cloudTrailEventSource" => "managedblockchain.amazonaws.com", "endpointPrefix" => "managedblockchain"}, "aws.auth#sigv4" => {"name" => "managedblockchain"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Managed Blockchain"}
      service.add_operation(:create_accessor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#CreateAccessor"
        operation.name = "CreateAccessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accessors", "code" => 200}}
      end)
      service.add_operation(:create_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#CreateMember"
        operation.name = "CreateMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/networks/{NetworkId}/members", "code" => 200}}
      end)
      service.add_operation(:create_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#CreateNetwork"
        operation.name = "CreateNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/networks", "code" => 200}}
      end)
      service.add_operation(:create_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#CreateNode"
        operation.name = "CreateNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNodeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNodeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/networks/{NetworkId}/nodes", "code" => 200}}
      end)
      service.add_operation(:create_proposal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#CreateProposal"
        operation.name = "CreateProposal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProposalInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProposalOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/networks/{NetworkId}/proposals", "code" => 200}}
      end)
      service.add_operation(:delete_accessor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#DeleteAccessor"
        operation.name = "DeleteAccessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/accessors/{AccessorId}", "code" => 200}}
      end)
      service.add_operation(:delete_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#DeleteMember"
        operation.name = "DeleteMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/networks/{NetworkId}/members/{MemberId}", "code" => 200}}
      end)
      service.add_operation(:delete_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#DeleteNode"
        operation.name = "DeleteNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNodeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNodeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/networks/{NetworkId}/nodes/{NodeId}", "code" => 200}}
      end)
      service.add_operation(:get_accessor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#GetAccessor"
        operation.name = "GetAccessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accessors/{AccessorId}", "code" => 200}}
      end)
      service.add_operation(:get_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#GetMember"
        operation.name = "GetMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}/members/{MemberId}", "code" => 200}}
      end)
      service.add_operation(:get_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#GetNetwork"
        operation.name = "GetNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNetworkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}", "code" => 200}}
      end)
      service.add_operation(:get_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#GetNode"
        operation.name = "GetNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNodeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNodeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}/nodes/{NodeId}", "code" => 200}}
      end)
      service.add_operation(:get_proposal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#GetProposal"
        operation.name = "GetProposal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProposalInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProposalOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}/proposals/{ProposalId}", "code" => 200}}
      end)
      service.add_operation(:list_accessors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListAccessors"
        operation.name = "ListAccessors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/accessors", "code" => 200}}
        operation[:paginator] = Paginators::ListAccessors.new
      end)
      service.add_operation(:list_invitations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListInvitations"
        operation.name = "ListInvitations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/invitations", "code" => 200}}
        operation[:paginator] = Paginators::ListInvitations.new
      end)
      service.add_operation(:list_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListMembers"
        operation.name = "ListMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}/members", "code" => 200}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_networks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListNetworks"
        operation.name = "ListNetworks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNetworksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks", "code" => 200}}
        operation[:paginator] = Paginators::ListNetworks.new
      end)
      service.add_operation(:list_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListNodes"
        operation.name = "ListNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}/nodes", "code" => 200}}
        operation[:paginator] = Paginators::ListNodes.new
      end)
      service.add_operation(:list_proposal_votes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListProposalVotes"
        operation.name = "ListProposalVotes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProposalVotesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProposalVotesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}/proposals/{ProposalId}/votes", "code" => 200}}
        operation[:paginator] = Paginators::ListProposalVotes.new
      end)
      service.add_operation(:list_proposals, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListProposals"
        operation.name = "ListProposals"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProposalsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProposalsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/networks/{NetworkId}/proposals", "code" => 200}}
        operation[:paginator] = Paginators::ListProposals.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:reject_invitation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#RejectInvitation"
        operation.name = "RejectInvitation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInvitationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectInvitationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalActionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/invitations/{InvitationId}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#UpdateMember"
        operation.name = "UpdateMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemberInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemberOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/networks/{NetworkId}/members/{MemberId}", "code" => 200}}
      end)
      service.add_operation(:update_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#UpdateNode"
        operation.name = "UpdateNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNodeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNodeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/networks/{NetworkId}/nodes/{NodeId}", "code" => 200}}
      end)
      service.add_operation(:vote_on_proposal, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.managedblockchain#VoteOnProposal"
        operation.name = "VoteOnProposal"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: VoteOnProposalInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VoteOnProposalOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalActionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/networks/{NetworkId}/proposals/{ProposalId}/votes", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

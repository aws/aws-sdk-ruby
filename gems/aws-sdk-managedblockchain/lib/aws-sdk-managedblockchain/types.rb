# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ManagedBlockchain
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # A policy type that defines the voting rules for the network. The rules
    # decide if a proposal is approved. Approval may be based on criteria
    # such as the percentage of `YES` votes and the duration of the
    # proposal. The policy applies to all proposals and is specified when
    # the network is created.
    #
    # @note When making an API call, you may pass ApprovalThresholdPolicy
    #   data as a hash:
    #
    #       {
    #         threshold_percentage: 1,
    #         proposal_duration_in_hours: 1,
    #         threshold_comparator: "GREATER_THAN", # accepts GREATER_THAN, GREATER_THAN_OR_EQUAL_TO
    #       }
    #
    # @!attribute [rw] threshold_percentage
    #   The percentage of votes among all members that must be `YES` for a
    #   proposal to be approved. For example, a `ThresholdPercentage` value
    #   of `50` indicates 50%. The `ThresholdComparator` determines the
    #   precise comparison. If a `ThresholdPercentage` value of `50` is
    #   specified on a network with 10 members, along with a
    #   `ThresholdComparator` value of `GREATER_THAN`, this indicates that 6
    #   `YES` votes are required for the proposal to be approved.
    #   @return [Integer]
    #
    # @!attribute [rw] proposal_duration_in_hours
    #   The duration from the time that a proposal is created until it
    #   expires. If members cast neither the required number of `YES` votes
    #   to approve the proposal nor the number of `NO` votes required to
    #   reject it before the duration expires, the proposal is `EXPIRED` and
    #   `ProposalActions` are not carried out.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold_comparator
    #   Determines whether the vote percentage must be greater than the
    #   `ThresholdPercentage` or must be greater than or equal to the
    #   `ThreholdPercentage` to be approved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ApprovalThresholdPolicy AWS API Documentation
    #
    class ApprovalThresholdPolicy < Struct.new(
      :threshold_percentage,
      :proposal_duration_in_hours,
      :threshold_comparator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMemberInput
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestTokenString", # required
    #         invitation_id: "ResourceIdString", # required
    #         network_id: "ResourceIdString", # required
    #         member_configuration: { # required
    #           name: "NetworkMemberNameString", # required
    #           description: "DescriptionString",
    #           framework_configuration: { # required
    #             fabric: {
    #               admin_username: "UsernameString", # required
    #               admin_password: "PasswordString", # required
    #             },
    #           },
    #           log_publishing_configuration: {
    #             fabric: {
    #               ca_logs: {
    #                 cloudwatch: {
    #                   enabled: false,
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The unique identifier of the invitation that is sent to the member
    #   to join the network.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network in which the member is created.
    #   @return [String]
    #
    # @!attribute [rw] member_configuration
    #   Member configuration parameters.
    #   @return [Types::MemberConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateMemberInput AWS API Documentation
    #
    class CreateMemberInput < Struct.new(
      :client_request_token,
      :invitation_id,
      :network_id,
      :member_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_id
    #   The unique identifier of the member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateMemberOutput AWS API Documentation
    #
    class CreateMemberOutput < Struct.new(
      :member_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNetworkInput
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestTokenString", # required
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         framework: "HYPERLEDGER_FABRIC", # required, accepts HYPERLEDGER_FABRIC
    #         framework_version: "FrameworkVersionString", # required
    #         framework_configuration: {
    #           fabric: {
    #             edition: "STARTER", # required, accepts STARTER, STANDARD
    #           },
    #         },
    #         voting_policy: { # required
    #           approval_threshold_policy: {
    #             threshold_percentage: 1,
    #             proposal_duration_in_hours: 1,
    #             threshold_comparator: "GREATER_THAN", # accepts GREATER_THAN, GREATER_THAN_OR_EQUAL_TO
    #           },
    #         },
    #         member_configuration: { # required
    #           name: "NetworkMemberNameString", # required
    #           description: "DescriptionString",
    #           framework_configuration: { # required
    #             fabric: {
    #               admin_username: "UsernameString", # required
    #               admin_password: "PasswordString", # required
    #             },
    #           },
    #           log_publishing_configuration: {
    #             fabric: {
    #               ca_logs: {
    #                 cloudwatch: {
    #                   enabled: false,
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the network.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   The blockchain framework that the network uses.
    #   @return [String]
    #
    # @!attribute [rw] framework_version
    #   The version of the blockchain framework that the network uses.
    #   @return [String]
    #
    # @!attribute [rw] framework_configuration
    #   Configuration properties of the blockchain framework relevant to the
    #   network configuration.
    #   @return [Types::NetworkFrameworkConfiguration]
    #
    # @!attribute [rw] voting_policy
    #   The voting rules used by the network to determine if a proposal is
    #   approved.
    #   @return [Types::VotingPolicy]
    #
    # @!attribute [rw] member_configuration
    #   Configuration properties for the first member within the network.
    #   @return [Types::MemberConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNetworkInput AWS API Documentation
    #
    class CreateNetworkInput < Struct.new(
      :client_request_token,
      :name,
      :description,
      :framework,
      :framework_version,
      :framework_configuration,
      :voting_policy,
      :member_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The unique identifier for the network.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier for the first member within the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNetworkOutput AWS API Documentation
    #
    class CreateNetworkOutput < Struct.new(
      :network_id,
      :member_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNodeInput
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestTokenString", # required
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #         node_configuration: { # required
    #           instance_type: "InstanceTypeString", # required
    #           availability_zone: "AvailabilityZoneString", # required
    #           log_publishing_configuration: {
    #             fabric: {
    #               chaincode_logs: {
    #                 cloudwatch: {
    #                   enabled: false,
    #                 },
    #               },
    #               peer_logs: {
    #                 cloudwatch: {
    #                   enabled: false,
    #                 },
    #               },
    #             },
    #           },
    #           state_db: "LevelDB", # accepts LevelDB, CouchDB
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network in which this node runs.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member that owns this node.
    #   @return [String]
    #
    # @!attribute [rw] node_configuration
    #   The properties of a node configuration.
    #   @return [Types::NodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNodeInput AWS API Documentation
    #
    class CreateNodeInput < Struct.new(
      :client_request_token,
      :network_id,
      :member_id,
      :node_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] node_id
    #   The unique identifier of the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateNodeOutput AWS API Documentation
    #
    class CreateNodeOutput < Struct.new(
      :node_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProposalInput
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestTokenString", # required
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #         actions: { # required
    #           invitations: [
    #             {
    #               principal: "PrincipalString", # required
    #             },
    #           ],
    #           removals: [
    #             {
    #               member_id: "ResourceIdString", # required
    #             },
    #           ],
    #         },
    #         description: "DescriptionString",
    #       }
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the operation. An idempotent operation completes no
    #   more than one time. This identifier is required only if you make a
    #   service request directly using an HTTP client. It is generated
    #   automatically if you use an AWS SDK or the AWS CLI.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network for which the proposal is made.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member that is creating the proposal.
    #   This identifier is especially useful for identifying the member
    #   making the proposal when multiple members exist in a single AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The type of actions proposed, such as inviting a member or removing
    #   a member. The types of `Actions` in a proposal are mutually
    #   exclusive. For example, a proposal with `Invitations` actions cannot
    #   also contain `Removals` actions.
    #   @return [Types::ProposalActions]
    #
    # @!attribute [rw] description
    #   A description for the proposal that is visible to voting members,
    #   for example, "Proposal to add Example Corp. as member."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateProposalInput AWS API Documentation
    #
    class CreateProposalInput < Struct.new(
      :client_request_token,
      :network_id,
      :member_id,
      :actions,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proposal_id
    #   The unique identifier of the proposal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/CreateProposalOutput AWS API Documentation
    #
    class CreateProposalOutput < Struct.new(
      :proposal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMemberInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network from which the member is
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteMemberInput AWS API Documentation
    #
    class DeleteMemberInput < Struct.new(
      :network_id,
      :member_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteMemberOutput AWS API Documentation
    #
    class DeleteMemberOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteNodeInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #         node_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network that the node belongs to.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member that owns this node.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The unique identifier of the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteNodeInput AWS API Documentation
    #
    class DeleteNodeInput < Struct.new(
      :network_id,
      :member_id,
      :node_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/DeleteNodeOutput AWS API Documentation
    #
    class DeleteNodeOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetMemberInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network to which the member belongs.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetMemberInput AWS API Documentation
    #
    class GetMemberInput < Struct.new(
      :network_id,
      :member_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member
    #   The properties of a member.
    #   @return [Types::Member]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetMemberOutput AWS API Documentation
    #
    class GetMemberOutput < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetNetworkInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNetworkInput AWS API Documentation
    #
    class GetNetworkInput < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network
    #   An object containing network configuration parameters.
    #   @return [Types::Network]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNetworkOutput AWS API Documentation
    #
    class GetNetworkOutput < Struct.new(
      :network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetNodeInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #         node_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network to which the node belongs.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member that owns the node.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The unique identifier of the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNodeInput AWS API Documentation
    #
    class GetNodeInput < Struct.new(
      :network_id,
      :member_id,
      :node_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] node
    #   Properties of the node configuration.
    #   @return [Types::Node]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetNodeOutput AWS API Documentation
    #
    class GetNodeOutput < Struct.new(
      :node)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProposalInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         proposal_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network for which the proposal is made.
    #   @return [String]
    #
    # @!attribute [rw] proposal_id
    #   The unique identifier of the proposal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetProposalInput AWS API Documentation
    #
    class GetProposalInput < Struct.new(
      :network_id,
      :proposal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proposal
    #   Information about a proposal.
    #   @return [Types::Proposal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/GetProposalOutput AWS API Documentation
    #
    class GetProposalOutput < Struct.new(
      :proposal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/IllegalActionException AWS API Documentation
    #
    class IllegalActionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Aws::EmptyStructure; end

    # The action or operation requested is invalid. Verify that the action
    # is typed correctly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invitation to an AWS account to create a member and join the
    # network.
    #
    # @!attribute [rw] invitation_id
    #   The unique identifier for the invitation.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the invitation was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date and time that the invitation expires. This is the
    #   `CreationDate` plus the `ProposalDurationInHours` that is specified
    #   in the `ProposalThresholdPolicy`. After this date and time, the
    #   invitee can no longer create a member and join the network using
    #   this `InvitationId`.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the invitation:
    #
    #   * `PENDING` - The invitee has not created a member to join the
    #     network, and the invitation has not yet expired.
    #
    #   * `ACCEPTING` - The invitee has begun creating a member, and
    #     creation has not yet completed.
    #
    #   * `ACCEPTED` - The invitee created a member and joined the network
    #     using the `InvitationID`.
    #
    #   * `REJECTED` - The invitee rejected the invitation.
    #
    #   * `EXPIRED` - The invitee neither created a member nor rejected the
    #     invitation before the `ExpirationDate`.
    #   @return [String]
    #
    # @!attribute [rw] network_summary
    #   A summary of network configuration properties.
    #   @return [Types::NetworkSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :invitation_id,
      :creation_date,
      :expiration_date,
      :status,
      :network_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # An action to invite a specific AWS account to create a member and join
    # the network. The `InviteAction` is carried out when a `Proposal` is
    # `APPROVED`.
    #
    # @note When making an API call, you may pass InviteAction
    #   data as a hash:
    #
    #       {
    #         principal: "PrincipalString", # required
    #       }
    #
    # @!attribute [rw] principal
    #   The AWS account ID to invite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/InviteAction AWS API Documentation
    #
    class InviteAction < Struct.new(
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInvitationsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of invitations to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListInvitationsInput AWS API Documentation
    #
    class ListInvitationsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invitations
    #   The invitations for the network.
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListInvitationsOutput AWS API Documentation
    #
    class ListInvitationsOutput < Struct.new(
      :invitations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMembersInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         name: "String",
    #         status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, UPDATING, DELETING, DELETED
    #         is_owned: false,
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network for which to list members.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The optional name of the member to list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional status specifier. If provided, only members currently in
    #   this status are listed.
    #   @return [String]
    #
    # @!attribute [rw] is_owned
    #   An optional Boolean value. If provided, the request is limited
    #   either to members that the current AWS account owns (`true`) or that
    #   other AWS accounts own (`false`). If omitted, all members are
    #   listed.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of members to return in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListMembersInput AWS API Documentation
    #
    class ListMembersInput < Struct.new(
      :network_id,
      :name,
      :status,
      :is_owned,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   An array of `MemberSummary` objects. Each object contains details
    #   about a network member.
    #   @return [Array<Types::MemberSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListMembersOutput AWS API Documentation
    #
    class ListMembersOutput < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNetworksInput
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         framework: "HYPERLEDGER_FABRIC", # accepts HYPERLEDGER_FABRIC
    #         status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, DELETING, DELETED
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the network.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   An optional framework specifier. If provided, only networks of this
    #   framework type are listed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional status specifier. If provided, only networks currently
    #   in this status are listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of networks to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNetworksInput AWS API Documentation
    #
    class ListNetworksInput < Struct.new(
      :name,
      :framework,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] networks
    #   An array of `NetworkSummary` objects that contain configuration
    #   properties for each network.
    #   @return [Array<Types::NetworkSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNetworksOutput AWS API Documentation
    #
    class ListNetworksOutput < Struct.new(
      :networks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNodesInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #         status: "CREATING", # accepts CREATING, AVAILABLE, CREATE_FAILED, UPDATING, DELETING, DELETED, FAILED
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network for which to list nodes.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member who owns the nodes to list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional status specifier. If provided, only nodes currently in
    #   this status are listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of nodes to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNodesInput AWS API Documentation
    #
    class ListNodesInput < Struct.new(
      :network_id,
      :member_id,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodes
    #   An array of `NodeSummary` objects that contain configuration
    #   properties for each node.
    #   @return [Array<Types::NodeSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListNodesOutput AWS API Documentation
    #
    class ListNodesOutput < Struct.new(
      :nodes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProposalVotesInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         proposal_id: "ResourceIdString", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network.
    #   @return [String]
    #
    # @!attribute [rw] proposal_id
    #   The unique identifier of the proposal.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of votes to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposalVotesInput AWS API Documentation
    #
    class ListProposalVotesInput < Struct.new(
      :network_id,
      :proposal_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proposal_votes
    #   The listing of votes.
    #   @return [Array<Types::VoteSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposalVotesOutput AWS API Documentation
    #
    class ListProposalVotesOutput < Struct.new(
      :proposal_votes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProposalsInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of proposals to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposalsInput AWS API Documentation
    #
    class ListProposalsInput < Struct.new(
      :network_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proposals
    #   The summary of each proposal made on the network.
    #   @return [Array<Types::ProposalSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ListProposalsOutput AWS API Documentation
    #
    class ListProposalsOutput < Struct.new(
      :proposals,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for logging events.
    #
    # @note When making an API call, you may pass LogConfiguration
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether logging is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of log configurations.
    #
    # @note When making an API call, you may pass LogConfigurations
    #   data as a hash:
    #
    #       {
    #         cloudwatch: {
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] cloudwatch
    #   Parameters for publishing logs to Amazon CloudWatch Logs.
    #   @return [Types::LogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/LogConfigurations AWS API Documentation
    #
    class LogConfigurations < Struct.new(
      :cloudwatch)
      SENSITIVE = []
      include Aws::Structure
    end

    # Member configuration properties.
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network to which the member belongs.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the member.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the member.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the member.
    #   @return [String]
    #
    # @!attribute [rw] framework_attributes
    #   Attributes relevant to a member for the blockchain framework that
    #   the Managed Blockchain network uses.
    #   @return [Types::MemberFrameworkAttributes]
    #
    # @!attribute [rw] log_publishing_configuration
    #   Configuration properties for logging events associated with a
    #   member.
    #   @return [Types::MemberLogPublishingConfiguration]
    #
    # @!attribute [rw] status
    #   The status of a member.
    #
    #   * `CREATING` - The AWS account is in the process of creating a
    #     member.
    #
    #   * `AVAILABLE` - The member has been created and can participate in
    #     the network.
    #
    #   * `CREATE_FAILED` - The AWS account attempted to create a member and
    #     creation failed.
    #
    #   * `DELETING` - The member and all associated resources are in the
    #     process of being deleted. Either the AWS account that owns the
    #     member deleted it, or the member is being deleted as the result of
    #     an `APPROVED` `PROPOSAL` to remove the member.
    #
    #   * `DELETED` - The member can no longer participate on the network
    #     and all associated resources are deleted. Either the AWS account
    #     that owns the member deleted it, or the member is being deleted as
    #     the result of an `APPROVED` `PROPOSAL` to remove the member.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the member was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/Member AWS API Documentation
    #
    class Member < Struct.new(
      :network_id,
      :id,
      :name,
      :description,
      :framework_attributes,
      :log_publishing_configuration,
      :status,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties of the member.
    #
    # @note When making an API call, you may pass MemberConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "NetworkMemberNameString", # required
    #         description: "DescriptionString",
    #         framework_configuration: { # required
    #           fabric: {
    #             admin_username: "UsernameString", # required
    #             admin_password: "PasswordString", # required
    #           },
    #         },
    #         log_publishing_configuration: {
    #           fabric: {
    #             ca_logs: {
    #               cloudwatch: {
    #                 enabled: false,
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the member.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the member.
    #   @return [String]
    #
    # @!attribute [rw] framework_configuration
    #   Configuration properties of the blockchain framework relevant to the
    #   member.
    #   @return [Types::MemberFrameworkConfiguration]
    #
    # @!attribute [rw] log_publishing_configuration
    #   Configuration properties for logging events associated with a member
    #   of a Managed Blockchain network.
    #   @return [Types::MemberLogPublishingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberConfiguration AWS API Documentation
    #
    class MemberConfiguration < Struct.new(
      :name,
      :description,
      :framework_configuration,
      :log_publishing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of Hyperledger Fabric for a member in a Managed Blockchain
    # network using the Hyperledger Fabric framework.
    #
    # @!attribute [rw] admin_username
    #   The user name for the initial administrator user for the member.
    #   @return [String]
    #
    # @!attribute [rw] ca_endpoint
    #   The endpoint used to access the member's certificate authority.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberFabricAttributes AWS API Documentation
    #
    class MemberFabricAttributes < Struct.new(
      :admin_username,
      :ca_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties for Hyperledger Fabric for a member in a
    # Managed Blockchain network using the Hyperledger Fabric framework.
    #
    # @note When making an API call, you may pass MemberFabricConfiguration
    #   data as a hash:
    #
    #       {
    #         admin_username: "UsernameString", # required
    #         admin_password: "PasswordString", # required
    #       }
    #
    # @!attribute [rw] admin_username
    #   The user name for the member's initial administrative user.
    #   @return [String]
    #
    # @!attribute [rw] admin_password
    #   The password for the member's initial administrative user. The
    #   `AdminPassword` must be at least eight characters long and no more
    #   than 32 characters. It must contain at least one uppercase letter,
    #   one lowercase letter, and one digit. It cannot have a single
    #   quote(‘), double quote(“), forward slash(/), backward slash(\\), @,
    #   or a space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberFabricConfiguration AWS API Documentation
    #
    class MemberFabricConfiguration < Struct.new(
      :admin_username,
      :admin_password)
      SENSITIVE = [:admin_password]
      include Aws::Structure
    end

    # Configuration properties for logging events associated with a member
    # of a Managed Blockchain network using the Hyperledger Fabric
    # framework.
    #
    # @note When making an API call, you may pass MemberFabricLogPublishingConfiguration
    #   data as a hash:
    #
    #       {
    #         ca_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] ca_logs
    #   Configuration properties for logging events associated with a
    #   member's Certificate Authority (CA). CA logs help you determine
    #   when a member in your account joins the network, or when new peers
    #   register with a member CA.
    #   @return [Types::LogConfigurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberFabricLogPublishingConfiguration AWS API Documentation
    #
    class MemberFabricLogPublishingConfiguration < Struct.new(
      :ca_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes relevant to a member for the blockchain framework that the
    # Managed Blockchain network uses.
    #
    # @!attribute [rw] fabric
    #   Attributes of Hyperledger Fabric relevant to a member on a Managed
    #   Blockchain network that uses Hyperledger Fabric.
    #   @return [Types::MemberFabricAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberFrameworkAttributes AWS API Documentation
    #
    class MemberFrameworkAttributes < Struct.new(
      :fabric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties relevant to a member for the blockchain
    # framework that the Managed Blockchain network uses.
    #
    # @note When making an API call, you may pass MemberFrameworkConfiguration
    #   data as a hash:
    #
    #       {
    #         fabric: {
    #           admin_username: "UsernameString", # required
    #           admin_password: "PasswordString", # required
    #         },
    #       }
    #
    # @!attribute [rw] fabric
    #   Attributes of Hyperledger Fabric for a member on a Managed
    #   Blockchain network that uses Hyperledger Fabric.
    #   @return [Types::MemberFabricConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberFrameworkConfiguration AWS API Documentation
    #
    class MemberFrameworkConfiguration < Struct.new(
      :fabric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties for logging events associated with a member
    # of a Managed Blockchain network.
    #
    # @note When making an API call, you may pass MemberLogPublishingConfiguration
    #   data as a hash:
    #
    #       {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] fabric
    #   Configuration properties for logging events associated with a member
    #   of a Managed Blockchain network using the Hyperledger Fabric
    #   framework.
    #   @return [Types::MemberFabricLogPublishingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberLogPublishingConfiguration AWS API Documentation
    #
    class MemberLogPublishingConfiguration < Struct.new(
      :fabric)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of configuration properties for a member.
    #
    # @!attribute [rw] id
    #   The unique identifier of the member.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the member.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the member.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the member.
    #
    #   * `CREATING` - The AWS account is in the process of creating a
    #     member.
    #
    #   * `AVAILABLE` - The member has been created and can participate in
    #     the network.
    #
    #   * `CREATE_FAILED` - The AWS account attempted to create a member and
    #     creation failed.
    #
    #   * `DELETING` - The member and all associated resources are in the
    #     process of being deleted. Either the AWS account that owns the
    #     member deleted it, or the member is being deleted as the result of
    #     an `APPROVED` `PROPOSAL` to remove the member.
    #
    #   * `DELETED` - The member can no longer participate on the network
    #     and all associated resources are deleted. Either the AWS account
    #     that owns the member deleted it, or the member is being deleted as
    #     the result of an `APPROVED` `PROPOSAL` to remove the member.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the member was created.
    #   @return [Time]
    #
    # @!attribute [rw] is_owned
    #   An indicator of whether the member is owned by your AWS account or a
    #   different AWS account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/MemberSummary AWS API Documentation
    #
    class MemberSummary < Struct.new(
      :id,
      :name,
      :description,
      :status,
      :creation_date,
      :is_owned)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network configuration properties.
    #
    # @!attribute [rw] id
    #   The unique identifier of the network.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Attributes of the blockchain framework for the network.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   The blockchain framework that the network uses.
    #   @return [String]
    #
    # @!attribute [rw] framework_version
    #   The version of the blockchain framework that the network uses.
    #   @return [String]
    #
    # @!attribute [rw] framework_attributes
    #   Attributes of the blockchain framework that the network uses.
    #   @return [Types::NetworkFrameworkAttributes]
    #
    # @!attribute [rw] vpc_endpoint_service_name
    #   The VPC endpoint service name of the VPC endpoint service of the
    #   network. Members use the VPC endpoint service name to create a VPC
    #   endpoint to access network resources.
    #   @return [String]
    #
    # @!attribute [rw] voting_policy
    #   The voting rules for the network to decide if a proposal is
    #   accepted.
    #   @return [Types::VotingPolicy]
    #
    # @!attribute [rw] status
    #   The current status of the network.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the network was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/Network AWS API Documentation
    #
    class Network < Struct.new(
      :id,
      :name,
      :description,
      :framework,
      :framework_version,
      :framework_attributes,
      :vpc_endpoint_service_name,
      :voting_policy,
      :status,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of Hyperledger Fabric for a network.
    #
    # @!attribute [rw] ordering_service_endpoint
    #   The endpoint of the ordering service for the network.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The edition of Amazon Managed Blockchain that Hyperledger Fabric
    #   uses. For more information, see [Amazon Managed Blockchain
    #   Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/managed-blockchain/pricing/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NetworkFabricAttributes AWS API Documentation
    #
    class NetworkFabricAttributes < Struct.new(
      :ordering_service_endpoint,
      :edition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hyperledger Fabric configuration properties for the network.
    #
    # @note When making an API call, you may pass NetworkFabricConfiguration
    #   data as a hash:
    #
    #       {
    #         edition: "STARTER", # required, accepts STARTER, STANDARD
    #       }
    #
    # @!attribute [rw] edition
    #   The edition of Amazon Managed Blockchain that the network uses. For
    #   more information, see [Amazon Managed Blockchain Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/managed-blockchain/pricing/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NetworkFabricConfiguration AWS API Documentation
    #
    class NetworkFabricConfiguration < Struct.new(
      :edition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes relevant to the network for the blockchain framework that
    # the network uses.
    #
    # @!attribute [rw] fabric
    #   Attributes of Hyperledger Fabric for a Managed Blockchain network
    #   that uses Hyperledger Fabric.
    #   @return [Types::NetworkFabricAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NetworkFrameworkAttributes AWS API Documentation
    #
    class NetworkFrameworkAttributes < Struct.new(
      :fabric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties relevant to the network for the blockchain
    # framework that the network uses.
    #
    # @note When making an API call, you may pass NetworkFrameworkConfiguration
    #   data as a hash:
    #
    #       {
    #         fabric: {
    #           edition: "STARTER", # required, accepts STARTER, STANDARD
    #         },
    #       }
    #
    # @!attribute [rw] fabric
    #   Hyperledger Fabric configuration properties for a Managed Blockchain
    #   network that uses Hyperledger Fabric.
    #   @return [Types::NetworkFabricConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NetworkFrameworkConfiguration AWS API Documentation
    #
    class NetworkFrameworkConfiguration < Struct.new(
      :fabric)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of network configuration properties.
    #
    # @!attribute [rw] id
    #   The unique identifier of the network.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the network.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   The blockchain framework that the network uses.
    #   @return [String]
    #
    # @!attribute [rw] framework_version
    #   The version of the blockchain framework that the network uses.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the network.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the network was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NetworkSummary AWS API Documentation
    #
    class NetworkSummary < Struct.new(
      :id,
      :name,
      :description,
      :framework,
      :framework_version,
      :status,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties of a peer node.
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network that the node is in.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member to which the node belongs.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the node.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the node.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the node exists.
    #   @return [String]
    #
    # @!attribute [rw] framework_attributes
    #   Attributes of the blockchain framework being used.
    #   @return [Types::NodeFrameworkAttributes]
    #
    # @!attribute [rw] log_publishing_configuration
    #   Configuration properties for logging events associated with a peer
    #   node owned by a member in a Managed Blockchain network.
    #   @return [Types::NodeLogPublishingConfiguration]
    #
    # @!attribute [rw] state_db
    #   The state database that the node uses. Values are `LevelDB` or
    #   `CouchDB`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the node.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the node was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/Node AWS API Documentation
    #
    class Node < Struct.new(
      :network_id,
      :member_id,
      :id,
      :instance_type,
      :availability_zone,
      :framework_attributes,
      :log_publishing_configuration,
      :state_db,
      :status,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties of a peer node.
    #
    # @note When making an API call, you may pass NodeConfiguration
    #   data as a hash:
    #
    #       {
    #         instance_type: "InstanceTypeString", # required
    #         availability_zone: "AvailabilityZoneString", # required
    #         log_publishing_configuration: {
    #           fabric: {
    #             chaincode_logs: {
    #               cloudwatch: {
    #                 enabled: false,
    #               },
    #             },
    #             peer_logs: {
    #               cloudwatch: {
    #                 enabled: false,
    #               },
    #             },
    #           },
    #         },
    #         state_db: "LevelDB", # accepts LevelDB, CouchDB
    #       }
    #
    # @!attribute [rw] instance_type
    #   The Amazon Managed Blockchain instance type for the node.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the node exists.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_configuration
    #   Configuration properties for logging events associated with a peer
    #   node owned by a member in a Managed Blockchain network.
    #   @return [Types::NodeLogPublishingConfiguration]
    #
    # @!attribute [rw] state_db
    #   The state database that the node uses. Values are `LevelDB` or
    #   `CouchDB`. When using an Amazon Managed Blockchain network with
    #   Hyperledger Fabric version 1.4 or later, the default is `CouchDB`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NodeConfiguration AWS API Documentation
    #
    class NodeConfiguration < Struct.new(
      :instance_type,
      :availability_zone,
      :log_publishing_configuration,
      :state_db)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of Hyperledger Fabric for a peer node on a Managed
    # Blockchain network that uses Hyperledger Fabric.
    #
    # @!attribute [rw] peer_endpoint
    #   The endpoint that identifies the peer node for all services except
    #   peer channel-based event services.
    #   @return [String]
    #
    # @!attribute [rw] peer_event_endpoint
    #   The endpoint that identifies the peer node for peer channel-based
    #   event services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NodeFabricAttributes AWS API Documentation
    #
    class NodeFabricAttributes < Struct.new(
      :peer_endpoint,
      :peer_event_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties for logging events associated with a peer
    # node owned by a member in a Managed Blockchain network.
    #
    # @note When making an API call, you may pass NodeFabricLogPublishingConfiguration
    #   data as a hash:
    #
    #       {
    #         chaincode_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #         peer_logs: {
    #           cloudwatch: {
    #             enabled: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] chaincode_logs
    #   Configuration properties for logging events associated with
    #   chaincode execution on a peer node. Chaincode logs contain the
    #   results of instantiating, invoking, and querying the chaincode. A
    #   peer can run multiple instances of chaincode. When enabled, a log
    #   stream is created for all chaincodes, with an individual log stream
    #   for each chaincode.
    #   @return [Types::LogConfigurations]
    #
    # @!attribute [rw] peer_logs
    #   Configuration properties for a peer node log. Peer node logs contain
    #   messages generated when your client submits transaction proposals to
    #   peer nodes, requests to join channels, enrolls an admin peer, and
    #   lists the chaincode instances on a peer node.
    #   @return [Types::LogConfigurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NodeFabricLogPublishingConfiguration AWS API Documentation
    #
    class NodeFabricLogPublishingConfiguration < Struct.new(
      :chaincode_logs,
      :peer_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes relevant to a peer node on a Managed Blockchain network for
    # the blockchain framework that the network uses.
    #
    # @!attribute [rw] fabric
    #   Attributes of Hyperledger Fabric for a peer node on a Managed
    #   Blockchain network that uses Hyperledger Fabric.
    #   @return [Types::NodeFabricAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NodeFrameworkAttributes AWS API Documentation
    #
    class NodeFrameworkAttributes < Struct.new(
      :fabric)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration properties for logging events associated with a peer
    # node owned by a member in a Managed Blockchain network.
    #
    # @note When making an API call, you may pass NodeLogPublishingConfiguration
    #   data as a hash:
    #
    #       {
    #         fabric: {
    #           chaincode_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #           peer_logs: {
    #             cloudwatch: {
    #               enabled: false,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] fabric
    #   Configuration properties for logging events associated with a node
    #   that is owned by a member of a Managed Blockchain network using the
    #   Hyperledger Fabric framework.
    #   @return [Types::NodeFabricLogPublishingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NodeLogPublishingConfiguration AWS API Documentation
    #
    class NodeLogPublishingConfiguration < Struct.new(
      :fabric)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of configuration properties for a peer node.
    #
    # @!attribute [rw] id
    #   The unique identifier of the node.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the node.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the node was created.
    #   @return [Time]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the node exists.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type for the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/NodeSummary AWS API Documentation
    #
    class NodeSummary < Struct.new(
      :id,
      :status,
      :creation_date,
      :availability_zone,
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of a proposal on a Managed Blockchain network.
    #
    # @!attribute [rw] proposal_id
    #   The unique identifier of the proposal.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network for which the proposal is made.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the proposal.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions to perform on the network if the proposal is `APPROVED`.
    #   @return [Types::ProposalActions]
    #
    # @!attribute [rw] proposed_by_member_id
    #   The unique identifier of the member that created the proposal.
    #   @return [String]
    #
    # @!attribute [rw] proposed_by_member_name
    #   The name of the member that created the proposal.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the proposal. Values are as follows:
    #
    #   * `IN_PROGRESS` - The proposal is active and open for member voting.
    #
    #   * `APPROVED` - The proposal was approved with sufficient `YES` votes
    #     among members according to the `VotingPolicy` specified for the
    #     `Network`. The specified proposal actions are carried out.
    #
    #   * `REJECTED` - The proposal was rejected with insufficient `YES`
    #     votes among members according to the `VotingPolicy` specified for
    #     the `Network`. The specified `ProposalActions` are not carried
    #     out.
    #
    #   * `EXPIRED` - Members did not cast the number of votes required to
    #     determine the proposal outcome before the proposal expired. The
    #     specified `ProposalActions` are not carried out.
    #
    #   * `ACTION_FAILED` - One or more of the specified `ProposalActions`
    #     in a proposal that was approved could not be completed because of
    #     an error. The `ACTION_FAILED` status occurs even if only one
    #     ProposalAction fails and other actions are successful.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the proposal was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date and time that the proposal expires. This is the
    #   `CreationDate` plus the `ProposalDurationInHours` that is specified
    #   in the `ProposalThresholdPolicy`. After this date and time, if
    #   members have not cast enough votes to determine the outcome
    #   according to the voting policy, the proposal is `EXPIRED` and
    #   `Actions` are not carried out.
    #   @return [Time]
    #
    # @!attribute [rw] yes_vote_count
    #   The current total of `YES` votes cast on the proposal by members.
    #   @return [Integer]
    #
    # @!attribute [rw] no_vote_count
    #   The current total of `NO` votes cast on the proposal by members.
    #   @return [Integer]
    #
    # @!attribute [rw] outstanding_vote_count
    #   The number of votes remaining to be cast on the proposal by members.
    #   In other words, the number of members minus the sum of `YES` votes
    #   and `NO` votes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/Proposal AWS API Documentation
    #
    class Proposal < Struct.new(
      :proposal_id,
      :network_id,
      :description,
      :actions,
      :proposed_by_member_id,
      :proposed_by_member_name,
      :status,
      :creation_date,
      :expiration_date,
      :yes_vote_count,
      :no_vote_count,
      :outstanding_vote_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The actions to carry out if a proposal is `APPROVED`.
    #
    # @note When making an API call, you may pass ProposalActions
    #   data as a hash:
    #
    #       {
    #         invitations: [
    #           {
    #             principal: "PrincipalString", # required
    #           },
    #         ],
    #         removals: [
    #           {
    #             member_id: "ResourceIdString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] invitations
    #   The actions to perform for an `APPROVED` proposal to invite an AWS
    #   account to create a member and join the network.
    #   @return [Array<Types::InviteAction>]
    #
    # @!attribute [rw] removals
    #   The actions to perform for an `APPROVED` proposal to remove a member
    #   from the network, which deletes the member and all associated member
    #   resources from the network.
    #   @return [Array<Types::RemoveAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ProposalActions AWS API Documentation
    #
    class ProposalActions < Struct.new(
      :invitations,
      :removals)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of a proposal.
    #
    # @!attribute [rw] proposal_id
    #   The unique identifier of the proposal.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the proposal.
    #   @return [String]
    #
    # @!attribute [rw] proposed_by_member_id
    #   The unique identifier of the member that created the proposal.
    #   @return [String]
    #
    # @!attribute [rw] proposed_by_member_name
    #   The name of the member that created the proposal.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the proposal. Values are as follows:
    #
    #   * `IN_PROGRESS` - The proposal is active and open for member voting.
    #
    #   * `APPROVED` - The proposal was approved with sufficient `YES` votes
    #     among members according to the `VotingPolicy` specified for the
    #     `Network`. The specified proposal actions are carried out.
    #
    #   * `REJECTED` - The proposal was rejected with insufficient `YES`
    #     votes among members according to the `VotingPolicy` specified for
    #     the `Network`. The specified `ProposalActions` are not carried
    #     out.
    #
    #   * `EXPIRED` - Members did not cast the number of votes required to
    #     determine the proposal outcome before the proposal expired. The
    #     specified `ProposalActions` are not carried out.
    #
    #   * `ACTION_FAILED` - One or more of the specified `ProposalActions`
    #     in a proposal that was approved could not be completed because of
    #     an error.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that the proposal was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date and time that the proposal expires. This is the
    #   `CreationDate` plus the `ProposalDurationInHours` that is specified
    #   in the `ProposalThresholdPolicy`. After this date and time, if
    #   members have not cast enough votes to determine the outcome
    #   according to the voting policy, the proposal is `EXPIRED` and
    #   `Actions` are not carried out.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ProposalSummary AWS API Documentation
    #
    class ProposalSummary < Struct.new(
      :proposal_id,
      :description,
      :proposed_by_member_id,
      :proposed_by_member_name,
      :status,
      :creation_date,
      :expiration_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RejectInvitationInput
    #   data as a hash:
    #
    #       {
    #         invitation_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] invitation_id
    #   The unique identifier of the invitation to reject.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/RejectInvitationInput AWS API Documentation
    #
    class RejectInvitationInput < Struct.new(
      :invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/RejectInvitationOutput AWS API Documentation
    #
    class RejectInvitationOutput < Aws::EmptyStructure; end

    # An action to remove a member from a Managed Blockchain network as the
    # result of a removal proposal that is `APPROVED`. The member and all
    # associated resources are deleted from the network.
    #
    # @note When making an API call, you may pass RemoveAction
    #   data as a hash:
    #
    #       {
    #         member_id: "ResourceIdString", # required
    #       }
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/RemoveAction AWS API Documentation
    #
    class RemoveAction < Struct.new(
      :member_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource request is issued for a resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of resources of that type already exist. Ensure the
    # resources requested are within the boundaries of the service edition
    # and your account limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A requested resource does not exist on the network. It may have been
    # deleted or referenced inaccurately.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource exists but is not in a status that can complete
    # the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ResourceNotReadyException AWS API Documentation
    #
    class ResourceNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request or operation could not be performed because a service is
    # throttling requests. The most common source of throttling errors is
    # launching EC2 instances such that your service limit for EC2 instances
    # is exceeded. Request a limit increase or delete unused resources if
    # possible.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateMemberInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #         log_publishing_configuration: {
    #           fabric: {
    #             ca_logs: {
    #               cloudwatch: {
    #                 enabled: false,
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique ID of the Managed Blockchain network to which the member
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique ID of the member.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_configuration
    #   Configuration properties for publishing to Amazon CloudWatch Logs.
    #   @return [Types::MemberLogPublishingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateMemberInput AWS API Documentation
    #
    class UpdateMemberInput < Struct.new(
      :network_id,
      :member_id,
      :log_publishing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateMemberOutput AWS API Documentation
    #
    class UpdateMemberOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateNodeInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         member_id: "ResourceIdString", # required
    #         node_id: "ResourceIdString", # required
    #         log_publishing_configuration: {
    #           fabric: {
    #             chaincode_logs: {
    #               cloudwatch: {
    #                 enabled: false,
    #               },
    #             },
    #             peer_logs: {
    #               cloudwatch: {
    #                 enabled: false,
    #               },
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique ID of the Managed Blockchain network to which the node
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique ID of the member that owns the node.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The unique ID of the node.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_configuration
    #   Configuration properties for publishing to Amazon CloudWatch Logs.
    #   @return [Types::NodeLogPublishingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateNodeInput AWS API Documentation
    #
    class UpdateNodeInput < Struct.new(
      :network_id,
      :member_id,
      :node_id,
      :log_publishing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/UpdateNodeOutput AWS API Documentation
    #
    class UpdateNodeOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass VoteOnProposalInput
    #   data as a hash:
    #
    #       {
    #         network_id: "ResourceIdString", # required
    #         proposal_id: "ResourceIdString", # required
    #         voter_member_id: "ResourceIdString", # required
    #         vote: "YES", # required, accepts YES, NO
    #       }
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network.
    #   @return [String]
    #
    # @!attribute [rw] proposal_id
    #   The unique identifier of the proposal.
    #   @return [String]
    #
    # @!attribute [rw] voter_member_id
    #   The unique identifier of the member casting the vote.
    #   @return [String]
    #
    # @!attribute [rw] vote
    #   The value of the vote.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/VoteOnProposalInput AWS API Documentation
    #
    class VoteOnProposalInput < Struct.new(
      :network_id,
      :proposal_id,
      :voter_member_id,
      :vote)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/VoteOnProposalOutput AWS API Documentation
    #
    class VoteOnProposalOutput < Aws::EmptyStructure; end

    # Properties of an individual vote that a member cast for a proposal.
    #
    # @!attribute [rw] vote
    #   The vote value, either `YES` or `NO`.
    #   @return [String]
    #
    # @!attribute [rw] member_name
    #   The name of the member that cast the vote.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The unique identifier of the member that cast the vote.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/VoteSummary AWS API Documentation
    #
    class VoteSummary < Struct.new(
      :vote,
      :member_name,
      :member_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The voting rules for the network to decide if a proposal is accepted
    #
    # @note When making an API call, you may pass VotingPolicy
    #   data as a hash:
    #
    #       {
    #         approval_threshold_policy: {
    #           threshold_percentage: 1,
    #           proposal_duration_in_hours: 1,
    #           threshold_comparator: "GREATER_THAN", # accepts GREATER_THAN, GREATER_THAN_OR_EQUAL_TO
    #         },
    #       }
    #
    # @!attribute [rw] approval_threshold_policy
    #   Defines the rules for the network for voting on proposals, such as
    #   the percentage of `YES` votes required for the proposal to be
    #   approved and the duration of the proposal. The policy applies to all
    #   proposals and is specified when the network is created.
    #   @return [Types::ApprovalThresholdPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/managedblockchain-2018-09-24/VotingPolicy AWS API Documentation
    #
    class VotingPolicy < Struct.new(
      :approval_threshold_policy)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

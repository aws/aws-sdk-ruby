# frozen_string_literal: true

# This is generated code!

module Aws::ManagedBlockchain
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of the Accessor.</p>
    # @!attribute id
    #   <p>The unique identifier of the accessor.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the accessor.</p>
    #            <note>
    #               <p>Currently, accessor type is restricted to <code>BILLING_TOKEN</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute billing_token
    #   <p>The billing token is a property of the Accessor. Use this token to 
    #            when making calls to the blockchain network. The billing token is used 
    #            to track your accessor token for billing requests.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the accessor.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date and time of the accessor.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the accessor. For more information about 
    #            ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource 
    #               Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the Accessor.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute network_type
    #   <p>The blockchain network that the Accessor token is created for.</p>
    #   @return [String]
    class Accessor < Struct.new(
      :id,
      :type,
      :billing_token,
      :status,
      :creation_date,
      :arn,
      :tags,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccessorNetworkType
      ETHEREUM_GOERLI = 'ETHEREUM_GOERLI'
      ETHEREUM_MAINNET = 'ETHEREUM_MAINNET'
      ETHEREUM_MAINNET_AND_GOERLI = 'ETHEREUM_MAINNET_AND_GOERLI'
      POLYGON_MAINNET = 'POLYGON_MAINNET'
      POLYGON_MUMBAI = 'POLYGON_MUMBAI'
    end

    module AccessorStatus
      AVAILABLE = 'AVAILABLE'
      PENDING_DELETION = 'PENDING_DELETION'
      DELETED = 'DELETED'
    end

    # <p>A summary of accessor properties.</p>
    # @!attribute id
    #   <p>The unique identifier of the accessor.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the accessor.</p>
    #            <note>
    #               <p>Currently accessor type is restricted to <code>BILLING_TOKEN</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the accessor.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date and time of the accessor.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the accessor. For more information about 
    #            ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource 
    #               Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The blockchain network that the Accessor token is created for.</p>
    #   @return [String]
    class AccessorSummary < Struct.new(
      :id,
      :type,
      :status,
      :creation_date,
      :arn,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccessorType
      BILLING_TOKEN = 'BILLING_TOKEN'
    end

    # <p>A policy type that defines the voting rules for the network. The rules decide if a proposal is approved. Approval may be based on criteria such as the percentage of <code>YES</code> votes and the duration of the proposal. The policy applies to all proposals and is specified when the network is created.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute threshold_percentage
    #   <p>The percentage of votes among all members that must be <code>YES</code> for a proposal to be approved. For example, a <code>ThresholdPercentage</code> value of <code>50</code> indicates 50%. The <code>ThresholdComparator</code> determines the precise comparison. If a <code>ThresholdPercentage</code> value of <code>50</code> is specified on a network with 10 members, along with a <code>ThresholdComparator</code> value of <code>GREATER_THAN</code>, this indicates that 6 <code>YES</code> votes are required for the proposal to be approved.</p>
    #   @return [Integer]
    # @!attribute proposal_duration_in_hours
    #   <p>The duration from the time that a proposal is created until it expires. If members cast neither the required number of <code>YES</code> votes to approve the proposal nor the number of <code>NO</code> votes required to reject it before the duration expires, the proposal is <code>EXPIRED</code> and <code>ProposalActions</code> aren't carried out.</p>
    #   @return [Integer]
    # @!attribute threshold_comparator
    #   <p>Determines whether the vote percentage must be greater than the
    #               <code>ThresholdPercentage</code> or must be greater than or equal to the
    #               <code>ThresholdPercentage</code> to be approved.</p>
    #   @return [String]
    class ApprovalThresholdPolicy < Struct.new(
      :threshold_percentage,
      :proposal_duration_in_hours,
      :threshold_comparator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>This is a unique, case-sensitive identifier that you provide to ensure the idempotency of 
    #            the operation. An idempotent operation completes no more than once. This 
    #            identifier is required only if you make a service request directly using 
    #            an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the 
    #            Amazon Web Services CLI.</p>
    #   @return [String]
    # @!attribute accessor_type
    #   <p>The type of accessor.</p>
    #            <note>
    #               <p>Currently, accessor type is restricted to <code>BILLING_TOKEN</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to assign to the Accessor.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute network_type
    #   <p>The blockchain network that the <code>Accessor</code> token is created for.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Use the actual <code>networkType</code> value for the blockchain network that you are creating 
    #               the <code>Accessor</code> token for.</p>
    #                  </li>
    #                  <li>
    #                     <p>With the shut down of the <i>Ethereum Goerli</i> and <i>Polygon Mumbai 
    #               Testnet</i> networks the following <code>networkType</code> values are no longer available 
    #               for selection and use.</p>
    #                     <ul>
    #                        <li>
    #                           <p>
    #                              <code>ETHEREUM_MAINNET_AND_GOERLI</code>
    #                           </p>
    #                        </li>
    #                        <li>
    #                           <p>
    #                              <code>ETHEREUM_GOERLI</code>
    #                           </p>
    #                        </li>
    #                        <li>
    #                           <p>
    #                              <code>POLYGON_MUMBAI</code>
    #                           </p>
    #                        </li>
    #                     </ul>
    #                     <p>However, your existing <code>Accessor</code> tokens with these <code>networkType</code> 
    #                  values will remain unchanged.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    class CreateAccessorInput < Struct.new(
      :client_request_token,
      :accessor_type,
      :tags,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accessor_id
    #   <p>The unique identifier of the accessor.</p>
    #   @return [String]
    # @!attribute billing_token
    #   <p>The billing token is a property of the Accessor. Use this token to 
    #            when making calls to the blockchain network. The billing token is used 
    #            to track your accessor token for billing requests.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The blockchain network that the accessor token is created for.</p>
    #   @return [String]
    class CreateAccessorOutput < Struct.new(
      :accessor_id,
      :billing_token,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>
    #   @return [String]
    # @!attribute invitation_id
    #   <p>The unique identifier of the invitation that is sent to the member to join the network.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The unique identifier of the network in which the member is created.</p>
    #   @return [String]
    # @!attribute member_configuration
    #   <p>Member configuration parameters.</p>
    #   @return [Types::MemberConfiguration]
    class CreateMemberInput < Struct.new(
      :client_request_token,
      :invitation_id,
      :network_id,
      :member_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute member_id
    #   <p>The unique identifier of the member.</p>
    #   @return [String]
    class CreateMemberOutput < Struct.new(
      :member_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>This is a unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            operation. An idempotent operation completes no more than once. This identifier is required only 
    #            if you make a service request directly using an HTTP client. It is generated automatically if you 
    #            use an Amazon Web Services SDK or the Amazon Web Services CLI.
    #         </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the network.</p>
    #   @return [String]
    # @!attribute framework
    #   <p>The blockchain framework that the network uses.</p>
    #   @return [String]
    # @!attribute framework_version
    #   <p>The version of the blockchain framework that the network uses.</p>
    #   @return [String]
    # @!attribute framework_configuration
    #   <p>
    #            Configuration properties of the blockchain framework relevant to the network configuration.
    #         </p>
    #   @return [Types::NetworkFrameworkConfiguration]
    # @!attribute voting_policy
    #   <p>
    #            The voting rules used by the network to determine if a proposal is approved.
    #         </p>
    #   @return [Types::VotingPolicy]
    # @!attribute member_configuration
    #   <p>Configuration properties for the first member within the network.</p>
    #   @return [Types::MemberConfiguration]
    # @!attribute tags
    #   <p>Tags to assign to the network.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateNetworkInput < Struct.new(
      :client_request_token,
      :name,
      :description,
      :framework,
      :framework_version,
      :framework_configuration,
      :voting_policy,
      :member_configuration,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier for the network.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier for the first member within the network.</p>
    #   @return [String]
    class CreateNetworkOutput < Struct.new(
      :network_id,
      :member_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The unique identifier of the network for the node.</p>
    #            <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-mainnet</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member that owns this node.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute node_configuration
    #   <p>The properties of a node configuration.</p>
    #   @return [Types::NodeConfiguration]
    # @!attribute tags
    #   <p>Tags to assign to the node.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateNodeInput < Struct.new(
      :client_request_token,
      :network_id,
      :member_id,
      :node_configuration,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute node_id
    #   <p>The unique identifier of the node.</p>
    #   @return [String]
    class CreateNodeOutput < Struct.new(
      :node_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an Amazon Web Services SDK or the CLI.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>
    #            The unique identifier of the network for which the proposal is made.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member that is creating the proposal. This 
    #            identifier is especially useful for identifying the member making the proposal 
    #            when multiple members exist in a single Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The type of actions proposed, such as inviting a member or removing a member. The types of <code>Actions</code> in a proposal are mutually exclusive. For example, a proposal with <code>Invitations</code> actions cannot also contain <code>Removals</code> actions.</p>
    #   @return [Types::ProposalActions]
    # @!attribute description
    #   <p>A description for the proposal that is visible to voting members, for example, "Proposal to add Example Corp. as member."</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to assign to the proposal.</p>
    #            <p> Each tag consists of a key and an optional value. You can specify 
    #             multiple key-value pairs in a single request with an overall maximum of 50 tags 
    #             allowed per resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class CreateProposalInput < Struct.new(
      :client_request_token,
      :network_id,
      :member_id,
      :actions,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proposal_id
    #   <p>The unique identifier of the proposal.</p>
    #   @return [String]
    class CreateProposalOutput < Struct.new(
      :proposal_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accessor_id
    #   <p>The unique identifier of the accessor.</p>
    #   @return [String]
    class DeleteAccessorInput < Struct.new(
      :accessor_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAccessorOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network from which the member is removed.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member to remove.</p>
    #   @return [String]
    class DeleteMemberInput < Struct.new(
      :network_id,
      :member_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteMemberOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #            <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-mainnet</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member that owns this node.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The unique identifier of the node.</p>
    #   @return [String]
    class DeleteNodeInput < Struct.new(
      :network_id,
      :member_id,
      :node_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteNodeOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Edition
      STARTER = 'STARTER'
      STANDARD = 'STANDARD'
    end

    module Framework
      HYPERLEDGER_FABRIC = 'HYPERLEDGER_FABRIC'
      ETHEREUM = 'ETHEREUM'
    end

    # @!attribute accessor_id
    #   <p>The unique identifier of the accessor.</p>
    #   @return [String]
    class GetAccessorInput < Struct.new(
      :accessor_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accessor
    #   <p>The properties of the accessor.</p>
    #   @return [Types::Accessor]
    class GetAccessorOutput < Struct.new(
      :accessor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network to which the member belongs.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member.</p>
    #   @return [String]
    class GetMemberInput < Struct.new(
      :network_id,
      :member_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute member
    #   <p>The properties of a member.</p>
    #   @return [Types::Member]
    class GetMemberOutput < Struct.new(
      :member,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network to get information about.</p>
    #   @return [String]
    class GetNetworkInput < Struct.new(
      :network_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network
    #   <p>An object containing network configuration parameters.</p>
    #   @return [Types::Network]
    class GetNetworkOutput < Struct.new(
      :network,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member that owns the node.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The unique identifier of the node.</p>
    #   @return [String]
    class GetNodeInput < Struct.new(
      :network_id,
      :member_id,
      :node_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute node
    #   <p>Properties of the node configuration.</p>
    #   @return [Types::Node]
    class GetNodeOutput < Struct.new(
      :node,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network for which the proposal is made.</p>
    #   @return [String]
    # @!attribute proposal_id
    #   <p>The unique identifier of the proposal.</p>
    #   @return [String]
    class GetProposalInput < Struct.new(
      :network_id,
      :proposal_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proposal
    #   <p>Information about a proposal.</p>
    #   @return [Types::Proposal]
    class GetProposalOutput < Struct.new(
      :proposal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class IllegalActionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    class InternalServiceErrorException < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The action or operation requested is invalid. Verify that the action is typed correctly.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An invitation to an Amazon Web Services account to create a member and join the network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute invitation_id
    #   <p>The unique identifier for the invitation.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that the invitation was created.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The date and time that the invitation expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, the invitee can no longer create a member and join the network using this <code>InvitationId</code>.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the invitation:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The invitee hasn't created a member to join the network, and the invitation hasn't yet expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCEPTING</code> - The invitee has begun creating a member, and creation hasn't yet completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCEPTED</code> - The invitee created a member and joined the network using the <code>InvitationID</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The invitee rejected the invitation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code> - The invitee neither created a member nor rejected the invitation before the <code>ExpirationDate</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute network_summary
    #   <p>A summary of network configuration properties.</p>
    #   @return [Types::NetworkSummary]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the invitation. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class Invitation < Struct.new(
      :invitation_id,
      :creation_date,
      :expiration_date,
      :status,
      :network_summary,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InvitationStatus
      PENDING = 'PENDING'
      ACCEPTED = 'ACCEPTED'
      ACCEPTING = 'ACCEPTING'
      REJECTED = 'REJECTED'
      EXPIRED = 'EXPIRED'
    end

    # <p>An action to invite a specific Amazon Web Services account to create a member and join the network. The <code>InviteAction</code> is carried out when a <code>Proposal</code> is <code>APPROVED</code>.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute principal
    #   <p>The Amazon Web Services account ID to invite.</p>
    #   @return [String]
    class InviteAction < Struct.new(
      :principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of accessors to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token that indicates the next set of results to retrieve. </p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The blockchain network that the <code>Accessor</code> token is created for.</p>
    #            <note>
    #               <p>Use the value <code>ETHEREUM_MAINNET_AND_GOERLI</code> for all 
    #            existing <code>Accessors</code> tokens that were created before the <code>networkType</code> 
    #            property was introduced.</p>
    #            </note>
    #   @return [String]
    class ListAccessorsInput < Struct.new(
      :max_results,
      :next_token,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accessors
    #   <p>An array of AccessorSummary objects that contain configuration properties for 
    #            each accessor.</p>
    #   @return [Array<Types::AccessorSummary>]
    # @!attribute next_token
    #   <p> The pagination token that indicates the next set of results to retrieve. </p>
    #   @return [String]
    class ListAccessorsOutput < Struct.new(
      :accessors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of invitations to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListInvitationsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute invitations
    #   <p>The invitations for the network.</p>
    #   @return [Array<Types::Invitation>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListInvitationsOutput < Struct.new(
      :invitations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network for which to list members.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The optional name of the member to list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An optional status specifier. If provided, only members currently in this status are listed.</p>
    #   @return [String]
    # @!attribute is_owned
    #   <p>An optional Boolean value. If provided, the request is limited either to
    #            members that the current Amazon Web Services account owns (<code>true</code>) or that other Amazon Web Services accountsn
    #            own (<code>false</code>). If omitted, all members are listed.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of members to return in the request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListMembersInput < Struct.new(
      :network_id,
      :name,
      :status,
      :is_owned,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>An array of <code>MemberSummary</code> objects. Each object contains details about a network member.</p>
    #   @return [Array<Types::MemberSummary>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListMembersOutput < Struct.new(
      :members,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the network.</p>
    #   @return [String]
    # @!attribute framework
    #   <p>An optional framework specifier. If provided, only networks of this framework type are listed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An optional status specifier. If provided, only networks currently in this status are listed.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of networks to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListNetworksInput < Struct.new(
      :name,
      :framework,
      :status,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute networks
    #   <p>An array of <code>NetworkSummary</code> objects that contain configuration properties for each network.</p>
    #   @return [Array<Types::NetworkSummary>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListNetworksOutput < Struct.new(
      :networks,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network for which to list nodes.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member who owns the nodes to list.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute status
    #   <p>An optional status specifier. If provided, only nodes currently in this status are listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of nodes to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListNodesInput < Struct.new(
      :network_id,
      :member_id,
      :status,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nodes
    #   <p>An array of <code>NodeSummary</code> objects that contain configuration properties for each node.</p>
    #   @return [Array<Types::NodeSummary>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListNodesOutput < Struct.new(
      :nodes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    #   @return [String]
    # @!attribute proposal_id
    #   <p>
    #            The unique identifier of the proposal.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #            The maximum number of votes to return.
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #            The pagination token that indicates the next set of results to retrieve.
    #         </p>
    #   @return [String]
    class ListProposalVotesInput < Struct.new(
      :network_id,
      :proposal_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proposal_votes
    #   <p>
    #            The list of votes.
    #         </p>
    #   @return [Array<Types::VoteSummary>]
    # @!attribute next_token
    #   <p>
    #            The pagination token that indicates the next set of results to retrieve.
    #         </p>
    #   @return [String]
    class ListProposalVotesOutput < Struct.new(
      :proposal_votes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #            The maximum number of proposals to return.
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #            The pagination token that indicates the next set of results to retrieve.
    #         </p>
    #   @return [String]
    class ListProposalsInput < Struct.new(
      :network_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute proposals
    #   <p>The summary of each proposal made on the network.</p>
    #   @return [Array<Types::ProposalSummary>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListProposalsOutput < Struct.new(
      :proposals,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags assigned to the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A configuration for logging events.</p>
    # @!attribute enabled
    #   <p>Indicates whether logging is enabled.</p>
    #   @return [Boolean]
    class LogConfiguration < Struct.new(
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A collection of log configurations.</p>
    # @!attribute cloudwatch
    #   <p>Parameters for publishing logs to Amazon CloudWatch Logs.</p>
    #   @return [Types::LogConfiguration]
    class LogConfigurations < Struct.new(
      :cloudwatch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Member configuration properties.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute network_id
    #   <p>The unique identifier of the network to which the member belongs.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the member.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the member.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the member.</p>
    #   @return [String]
    # @!attribute framework_attributes
    #   <p>Attributes relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>
    #   @return [Types::MemberFrameworkAttributes]
    # @!attribute log_publishing_configuration
    #   <p>Configuration properties for logging events associated with a member.</p>
    #   @return [Types::MemberLogPublishingConfiguration]
    # @!attribute status
    #   <p>The status of a member.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The Amazon Web Services account is in the process of creating a member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The member has been created and can participate in the network.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> - The Amazon Web Services account attempted to create a member and creation failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The member is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>
    #                     <code>PROPOSAL</code> to remove the member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>
    #                     <code>PROPOSAL</code> to remove the member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The member is impaired and might not function as expected because it cannot access the specified customer managed key in KMS for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>
    #                  <p>The effect of disabling or deleting a key or of revoking a grant isn't immediate. It might take some time for the member resource to discover that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that the member was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags assigned to the member. Tags consist of a key and optional value.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the member. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed key in Key Management Service (KMS) that the member uses for encryption at rest. If the value of this parameter is <code>"AWS Owned KMS Key"</code>, the member uses an Amazon Web Services owned KMS key for encryption. This parameter is inherited by the nodes that this member owns.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/managed-blockchain-encryption-at-rest.html">Encryption at Rest</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [String]
    class Member < Struct.new(
      :network_id,
      :id,
      :name,
      :description,
      :framework_attributes,
      :log_publishing_configuration,
      :status,
      :creation_date,
      :tags,
      :arn,
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties of the member.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute name
    #   <p>The name of the member.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the member.</p>
    #   @return [String]
    # @!attribute framework_configuration
    #   <p>Configuration properties of the blockchain framework relevant to the member.</p>
    #   @return [Types::MemberFrameworkConfiguration]
    # @!attribute log_publishing_configuration
    #   <p>Configuration properties for logging events associated with a member of a Managed Blockchain network.</p>
    #   @return [Types::MemberLogPublishingConfiguration]
    # @!attribute tags
    #   <p>Tags assigned to the member. Tags consist of a key and optional value. </p>
    #            <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed key in Key Management Service (KMS) to use for encryption at rest in the member. This parameter is inherited by any nodes that this member creates. For more information, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/managed-blockchain-encryption-at-rest.html">Encryption at Rest</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #            <p>Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Undefined or empty string</b> - By default, use an KMS key that is owned and managed by Amazon Web Services on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A valid symmetric customer managed KMS key</b> - Use the specified KMS key in your account that you create, own, and manage.</p>
    #                  <p>Amazon Managed Blockchain doesn't support asymmetric keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                  <p>The following is an example of a KMS key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class MemberConfiguration < Struct.new(
      :name,
      :description,
      :framework_configuration,
      :log_publishing_configuration,
      :tags,
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes of Hyperledger Fabric for a member in a Managed Blockchain network using the Hyperledger Fabric framework.</p>
    # @!attribute admin_username
    #   <p>The user name for the initial administrator user for the member.</p>
    #   @return [String]
    # @!attribute ca_endpoint
    #   <p>The endpoint used to access the member's certificate authority.</p>
    #   @return [String]
    class MemberFabricAttributes < Struct.new(
      :admin_username,
      :ca_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties for Hyperledger Fabric for a member in a Managed Blockchain network that is using the Hyperledger Fabric framework.</p>
    # @!attribute admin_username
    #   <p>The user name for the member's initial administrative user.</p>
    #   @return [String]
    # @!attribute admin_password
    #   <p>The password for the member's initial administrative user. The <code>AdminPassword</code> must be at least 8 characters long and no more than 32 characters. It must contain at least one uppercase letter, one lowercase letter, and one digit. It cannot have a single quotation mark (‘), a double quotation marks (“), a forward slash(/), a backward slash(\), @, or a space.</p>
    #   @return [String]
    class MemberFabricConfiguration < Struct.new(
      :admin_username,
      :admin_password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties for logging events associated with a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>
    # @!attribute ca_logs
    #   <p>Configuration properties for logging events associated with a member's Certificate Authority (CA). CA logs help you determine when a member in your account joins the network, or when new peers register with a member CA.</p>
    #   @return [Types::LogConfigurations]
    class MemberFabricLogPublishingConfiguration < Struct.new(
      :ca_logs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>
    # @!attribute fabric
    #   <p>Attributes of Hyperledger Fabric relevant to a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>
    #   @return [Types::MemberFabricAttributes]
    class MemberFrameworkAttributes < Struct.new(
      :fabric,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>
    # @!attribute fabric
    #   <p>Attributes of Hyperledger Fabric for a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>
    #   @return [Types::MemberFabricConfiguration]
    class MemberFrameworkConfiguration < Struct.new(
      :fabric,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties for logging events associated with a member of a Managed Blockchain network.</p>
    # @!attribute fabric
    #   <p>Configuration properties for logging events associated with a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>
    #   @return [Types::MemberFabricLogPublishingConfiguration]
    class MemberLogPublishingConfiguration < Struct.new(
      :fabric,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MemberStatus
      CREATING = 'CREATING'
      AVAILABLE = 'AVAILABLE'
      CREATE_FAILED = 'CREATE_FAILED'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      INACCESSIBLE_ENCRYPTION_KEY = 'INACCESSIBLE_ENCRYPTION_KEY'
    end

    # <p>A summary of configuration properties for a member.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute id
    #   <p>The unique identifier of the member.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the member.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the member.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the member.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The Amazon Web Services account is in the process of creating a member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The member has been created and can participate in the network.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> - The Amazon Web Services account attempted to create a member and creation failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The member is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>
    #                     <code>PROPOSAL</code> to remove the member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the Amazon Web Services account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code>
    #                     <code>PROPOSAL</code> to remove the member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The member is impaired and might not function as expected because it cannot access the specified customer managed key in Key Management Service (KMS) for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>
    #                  <p>The effect of disabling or deleting a key or of revoking a grant isn't immediate. It might take some time for the member resource to discover that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that the member was created.</p>
    #   @return [Time]
    # @!attribute is_owned
    #   <p>An indicator of whether the member is owned by your Amazon Web Services account or a different Amazon Web Services account.</p>
    #   @return [Boolean]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the member. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class MemberSummary < Struct.new(
      :id,
      :name,
      :description,
      :status,
      :creation_date,
      :is_owned,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Network configuration properties.</p>
    # @!attribute id
    #   <p>The unique identifier of the network.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Attributes of the blockchain framework for the network.</p>
    #   @return [String]
    # @!attribute framework
    #   <p>The blockchain framework that the network uses.</p>
    #   @return [String]
    # @!attribute framework_version
    #   <p>The version of the blockchain framework that the network uses.</p>
    #   @return [String]
    # @!attribute framework_attributes
    #   <p>Attributes of the blockchain framework that the network uses.</p>
    #   @return [Types::NetworkFrameworkAttributes]
    # @!attribute vpc_endpoint_service_name
    #   <p>The VPC endpoint service name of the VPC endpoint service of the network. Members use the VPC endpoint service name to create a VPC endpoint to access network resources.</p>
    #   @return [String]
    # @!attribute voting_policy
    #   <p>The voting rules that the network uses to decide if a proposal is accepted.</p>
    #   @return [Types::VotingPolicy]
    # @!attribute status
    #   <p>The current status of the network.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that the network was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags assigned to the network. Each tag consists of a key and optional value.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the network. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
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
      :creation_date,
      :tags,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes of Ethereum for a network. </p>
    # @!attribute chain_id
    #   <p>The Ethereum <code>CHAIN_ID</code> associated with the Ethereum network. Chain IDs are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>mainnet = <code>1</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class NetworkEthereumAttributes < Struct.new(
      :chain_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes of Hyperledger Fabric for a network.</p>
    # @!attribute ordering_service_endpoint
    #   <p>The endpoint of the ordering service for the network.</p>
    #   @return [String]
    # @!attribute edition
    #   <p>The edition of Amazon Managed Blockchain that Hyperledger Fabric uses. For more information, see <a href="http://aws.amazon.com/managed-blockchain/pricing/">Amazon Managed Blockchain Pricing</a>.</p>
    #   @return [String]
    class NetworkFabricAttributes < Struct.new(
      :ordering_service_endpoint,
      :edition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Hyperledger Fabric configuration properties for the network.</p>
    # @!attribute edition
    #   <p>The edition of Amazon Managed Blockchain that the network uses. For more information, see <a href="http://aws.amazon.com/managed-blockchain/pricing/">Amazon Managed Blockchain Pricing</a>.</p>
    #   @return [String]
    class NetworkFabricConfiguration < Struct.new(
      :edition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes relevant to the network for the blockchain framework that the network uses.</p>
    # @!attribute fabric
    #   <p>Attributes of Hyperledger Fabric for a Managed Blockchain network that uses Hyperledger Fabric.</p>
    #   @return [Types::NetworkFabricAttributes]
    # @!attribute ethereum
    #   <p>Attributes of an Ethereum network for Managed Blockchain resources participating in an Ethereum network. </p>
    #   @return [Types::NetworkEthereumAttributes]
    class NetworkFrameworkAttributes < Struct.new(
      :fabric,
      :ethereum,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Configuration properties relevant to the network for the blockchain framework that the network uses.
    #       </p>
    # @!attribute fabric
    #   <p>
    #            Hyperledger Fabric configuration properties for a Managed Blockchain network that uses Hyperledger Fabric.
    #         </p>
    #   @return [Types::NetworkFabricConfiguration]
    class NetworkFrameworkConfiguration < Struct.new(
      :fabric,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NetworkStatus
      CREATING = 'CREATING'
      AVAILABLE = 'AVAILABLE'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
    end

    # <p>A summary of network configuration properties.</p>
    # @!attribute id
    #   <p>The unique identifier of the network.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the network.</p>
    #   @return [String]
    # @!attribute framework
    #   <p>The blockchain framework that the network uses.</p>
    #   @return [String]
    # @!attribute framework_version
    #   <p>The version of the blockchain framework that the network uses.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the network.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that the network was created.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the network. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class NetworkSummary < Struct.new(
      :id,
      :name,
      :description,
      :framework,
      :framework_version,
      :status,
      :creation_date,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties of a node.</p>
    # @!attribute network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member to which the node belongs.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the node.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type of the node.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the node exists. Required for Ethereum nodes. </p>
    #   @return [String]
    # @!attribute framework_attributes
    #   <p>Attributes of the blockchain framework being used.</p>
    #   @return [Types::NodeFrameworkAttributes]
    # @!attribute log_publishing_configuration
    #   <p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.</p>
    #   @return [Types::NodeLogPublishingConfiguration]
    # @!attribute state_db
    #   <p>The state database that the node uses. Values are <code>LevelDB</code> or <code>CouchDB</code>.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the node.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The Amazon Web Services account is in the process of creating a node.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The node has been created and can participate in the network.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> - The node is impaired and might not function as expected. Amazon Managed Blockchain automatically finds nodes in this state and tries to recover them. If a node is recoverable, it returns to <code>AVAILABLE</code>. Otherwise, it moves to <code>FAILED</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> - The Amazon Web Services account attempted to create a node and creation failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The node is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The node is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The node can no longer participate on the network.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The node is no longer functional, cannot be recovered, and must be deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The node is impaired and might not function as expected because it cannot access the specified customer managed key in KMS for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>
    #                  <p>The effect of disabling or deleting a key or of revoking a grant isn't immediate. It might take some time for the node resource to discover that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that the node was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags assigned to the node. Each tag consists of a key and optional value.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the node. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed key in Key Management Service (KMS) that the node uses for encryption at rest. If the value of this parameter is <code>"AWS Owned KMS Key"</code>, the node uses an Amazon Web Services owned KMS key for encryption. The node inherits this parameter from the member that it belongs to.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/managed-blockchain-encryption-at-rest.html">Encryption at Rest</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #   @return [String]
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
      :creation_date,
      :tags,
      :arn,
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties of a node.</p>
    # @!attribute instance_type
    #   <p>The Amazon Managed Blockchain instance type for the node.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the node exists. Required for Ethereum nodes. </p>
    #   @return [String]
    # @!attribute log_publishing_configuration
    #   <p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.      
    #         </p>
    #   @return [Types::NodeLogPublishingConfiguration]
    # @!attribute state_db
    #   <p>The state database that the node uses. Values are <code>LevelDB</code> or <code>CouchDB</code>. When using an Amazon Managed Blockchain network with Hyperledger Fabric version 1.4 or later, the default is <code>CouchDB</code>.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #   @return [String]
    class NodeConfiguration < Struct.new(
      :instance_type,
      :availability_zone,
      :log_publishing_configuration,
      :state_db,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes of an Ethereum node.</p>
    # @!attribute http_endpoint
    #   <p>The endpoint on which the Ethereum node listens to run Ethereum API methods over HTTP connections from a client. Use this endpoint in client code for smart contracts when using an HTTP connection. Connections to this endpoint are authenticated using <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #   @return [String]
    # @!attribute web_socket_endpoint
    #   <p>The endpoint on which the Ethereum node listens to run Ethereum JSON-RPC methods over WebSocket connections from a client. Use this endpoint in client code for smart contracts when using a WebSocket connection. Connections to this endpoint are authenticated using <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #   @return [String]
    class NodeEthereumAttributes < Struct.new(
      :http_endpoint,
      :web_socket_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes of Hyperledger Fabric for a peer node on a Hyperledger Fabric network on Managed Blockchain.</p>
    # @!attribute peer_endpoint
    #   <p>The endpoint that identifies the peer node for all services except peer channel-based event services.</p>
    #   @return [String]
    # @!attribute peer_event_endpoint
    #   <p>The endpoint that identifies the peer node for peer channel-based event services.</p>
    #   @return [String]
    class NodeFabricAttributes < Struct.new(
      :peer_endpoint,
      :peer_event_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties for logging events associated with a peer node owned by a member in a Managed Blockchain network.</p>
    # @!attribute chaincode_logs
    #   <p>Configuration properties for logging events associated with chaincode execution on a peer node. Chaincode logs contain the results of instantiating, invoking, and querying the chaincode. A peer can run multiple instances of chaincode. When enabled, a log stream is created for all chaincodes, with an individual log stream for each chaincode.</p>
    #   @return [Types::LogConfigurations]
    # @!attribute peer_logs
    #   <p>Configuration properties for a peer node log. Peer node logs contain messages generated when your client submits transaction proposals to peer nodes, requests to join channels, enrolls an admin peer, and lists the chaincode instances on a peer node. </p>
    #   @return [Types::LogConfigurations]
    class NodeFabricLogPublishingConfiguration < Struct.new(
      :chaincode_logs,
      :peer_logs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes relevant to a node on a Managed Blockchain network for the blockchain framework that the network uses.</p>
    # @!attribute fabric
    #   <p>Attributes of Hyperledger Fabric for a peer node on a Managed Blockchain network that uses Hyperledger Fabric.</p>
    #   @return [Types::NodeFabricAttributes]
    # @!attribute ethereum
    #   <p>Attributes of Ethereum for a node on a Managed Blockchain network that uses Ethereum. </p>
    #   @return [Types::NodeEthereumAttributes]
    class NodeFrameworkAttributes < Struct.new(
      :fabric,
      :ethereum,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.</p>
    # @!attribute fabric
    #   <p>Configuration properties for logging events associated with a node that is owned by a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>
    #   @return [Types::NodeFabricLogPublishingConfiguration]
    class NodeLogPublishingConfiguration < Struct.new(
      :fabric,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NodeStatus
      CREATING = 'CREATING'
      AVAILABLE = 'AVAILABLE'
      UNHEALTHY = 'UNHEALTHY'
      CREATE_FAILED = 'CREATE_FAILED'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      FAILED = 'FAILED'
      INACCESSIBLE_ENCRYPTION_KEY = 'INACCESSIBLE_ENCRYPTION_KEY'
    end

    # <p>A summary of configuration properties for a node.</p>
    # @!attribute id
    #   <p>The unique identifier of the node.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the node.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that the node was created.</p>
    #   @return [Time]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the node exists.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The EC2 instance type for the node.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the node. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class NodeSummary < Struct.new(
      :id,
      :status,
      :creation_date,
      :availability_zone,
      :instance_type,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Properties of a proposal on a Managed Blockchain network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute proposal_id
    #   <p>The unique identifier of the proposal.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The unique identifier of the network for which the proposal is made.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the proposal.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions to perform on the network if the proposal is <code>APPROVED</code>.</p>
    #   @return [Types::ProposalActions]
    # @!attribute proposed_by_member_id
    #   <p>The unique identifier of the member that created the proposal.</p>
    #   @return [String]
    # @!attribute proposed_by_member_name
    #   <p>The name of the member that created the proposal.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the proposal. Values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> aren't carried out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code> - Members didn't cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> aren't carried out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved couldn't be completed because of an error. The <code>ACTION_FAILED</code> status occurs even if only one ProposalAction fails and other actions are successful.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date
    #   <p>
    #            The date and time that the proposal was created.
    #         </p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>
    #            The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, if members haven't cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> aren't carried out.
    #         </p>
    #   @return [Time]
    # @!attribute yes_vote_count
    #   <p>
    #            The current total of <code>YES</code> votes cast on the proposal by members.
    #         </p>
    #   @return [Integer]
    # @!attribute no_vote_count
    #   <p>
    #            The current total of <code>NO</code> votes cast on the proposal by members.
    #         </p>
    #   @return [Integer]
    # @!attribute outstanding_vote_count
    #   <p>
    #            The number of votes remaining to be cast on the proposal by members. In other words, the number of members minus the sum of <code>YES</code> votes and <code>NO</code> votes.
    #         </p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags assigned to the proposal. Each tag consists of a key and optional value.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the proposal. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
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
      :outstanding_vote_count,
      :tags,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          The actions to carry out if a proposal is <code>APPROVED</code>.
    #       </p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute invitations
    #   <p>
    #            The actions to perform for an <code>APPROVED</code> proposal to invite an Amazon Web Services account to create a member and join the network.
    #         </p>
    #   @return [Array<Types::InviteAction>]
    # @!attribute removals
    #   <p>
    #            The actions to perform for an <code>APPROVED</code> proposal to remove a member from the network, which deletes the member and all associated member resources from the network. 
    #         </p>
    #   @return [Array<Types::RemoveAction>]
    class ProposalActions < Struct.new(
      :invitations,
      :removals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProposalStatus
      IN_PROGRESS = 'IN_PROGRESS'
      APPROVED = 'APPROVED'
      REJECTED = 'REJECTED'
      EXPIRED = 'EXPIRED'
      ACTION_FAILED = 'ACTION_FAILED'
    end

    # <p>Properties of a proposal.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute proposal_id
    #   <p>
    #            The unique identifier of the proposal.
    #         </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #            The description of the proposal.
    #         </p>
    #   @return [String]
    # @!attribute proposed_by_member_id
    #   <p>
    #            The unique identifier of the member that created the proposal.
    #         </p>
    #   @return [String]
    # @!attribute proposed_by_member_name
    #   <p>
    #            The name of the member that created the proposal.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the proposal. Values are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> aren't carried out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code> - Members didn't cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> aren't carried out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved couldn't be completed because of an error.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date
    #   <p>
    #            The date and time that the proposal was created.
    #         </p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>
    #            The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>.  After this date and time, if members haven't cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> aren't carried out.
    #         </p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the proposal. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class ProposalSummary < Struct.new(
      :proposal_id,
      :description,
      :proposed_by_member_id,
      :proposed_by_member_name,
      :status,
      :creation_date,
      :expiration_date,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute invitation_id
    #   <p>The unique identifier of the invitation to reject.</p>
    #   @return [String]
    class RejectInvitationInput < Struct.new(
      :invitation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RejectInvitationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An action to remove a member from a Managed Blockchain network as the result of a removal proposal that is <code>APPROVED</code>. The member and all associated resources are deleted from the network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute member_id
    #   <p>The unique identifier of the member to remove.</p>
    #   @return [String]
    class RemoveAction < Struct.new(
      :member_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource request is issued for a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The maximum number of resources of that type already exist. Ensure the resources requested 
    #          are within the boundaries of the service edition and your account limits.</p>
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A requested resource doesn't exist. It may have been deleted or referenced incorrectly.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>A requested resource doesn't exist. It may have been deleted or referenced inaccurately.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested resource exists but isn't in a status that can complete the operation.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotReadyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StateDBType
      LevelDB = 'LevelDB'
      CouchDB = 'CouchDB'
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the specified resource. Tag values can be empty, for example, <code>"MyTagKey" : ""</code>. You can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ThresholdComparator
      GREATER_THAN = 'GREATER_THAN'
      GREATER_THAN_OR_EQUAL_TO = 'GREATER_THAN_OR_EQUAL_TO'
    end

    # <p>The request or operation couldn't be performed because a service is 
    #          throttling requests. The most common source of throttling errors is 
    #          creating resources that exceed your service limit for this resource type. 
    #          Request a limit increase or delete unused resources if possible.</p>
    class ThrottlingException < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p></p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the Managed Blockchain network to which the member belongs.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member.</p>
    #   @return [String]
    # @!attribute log_publishing_configuration
    #   <p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>
    #   @return [Types::MemberLogPublishingConfiguration]
    class UpdateMemberInput < Struct.new(
      :network_id,
      :member_id,
      :log_publishing_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateMemberOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The unique identifier of the member that owns the node.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The unique identifier of the node.</p>
    #   @return [String]
    # @!attribute log_publishing_configuration
    #   <p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>
    #   @return [Types::NodeLogPublishingConfiguration]
    class UpdateNodeInput < Struct.new(
      :network_id,
      :member_id,
      :node_id,
      :log_publishing_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateNodeOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    #   @return [String]
    # @!attribute proposal_id
    #   <p>
    #            The unique identifier of the proposal.
    #         </p>
    #   @return [String]
    # @!attribute voter_member_id
    #   <p>The unique identifier of the member casting the vote.
    #         </p>
    #   @return [String]
    # @!attribute vote
    #   <p>
    #            The value of the vote.
    #         </p>
    #   @return [String]
    class VoteOnProposalInput < Struct.new(
      :network_id,
      :proposal_id,
      :voter_member_id,
      :vote,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class VoteOnProposalOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Properties of an individual vote that a member cast for a proposal.
    #       </p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute vote
    #   <p>
    #            The vote value, either <code>YES</code> or <code>NO</code>.
    #         </p>
    #   @return [String]
    # @!attribute member_name
    #   <p>
    #            The name of the member that cast the vote.
    #         </p>
    #   @return [String]
    # @!attribute member_id
    #   <p>
    #            The unique identifier of the member that cast the vote.
    #         </p>
    #   @return [String]
    class VoteSummary < Struct.new(
      :vote,
      :member_name,
      :member_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VoteValue
      YES = 'YES'
      NO = 'NO'
    end

    # <p>
    #          The voting rules for the network to decide if a proposal is accepted
    #       </p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    # @!attribute approval_threshold_policy
    #   <p>Defines the rules for the network for voting on proposals, such as the percentage of <code>YES</code> votes required for the proposal to be approved and the duration of the proposal. The policy applies to all proposals and is specified when the network is created.</p>
    #   @return [Types::ApprovalThresholdPolicy]
    class VotingPolicy < Struct.new(
      :approval_threshold_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end

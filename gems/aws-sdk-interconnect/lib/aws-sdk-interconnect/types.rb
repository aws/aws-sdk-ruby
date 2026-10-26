# frozen_string_literal: true

# This is generated code!

module Aws::Interconnect
  # This module contains the types returned by client operations.
  module Types

    # @!attribute attach_point
    #   <p>The Attach Point to which the connection should be associated.</p>
    #   @return [Types::AttachPoint]
    # @!attribute activation_key
    #   <p>An Activation Key that was generated on a supported partner's portal. This key captures the desired parameters from the initial creation request.</p> <p>The details of this request can be described using with <a>DescribeConnectionProposal</a>. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description to distinguish this <a>Connection</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the resulting <a>Connection</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Idempotency token used for the request.</p>
    #   @return [String]
    class AcceptConnectionProposalRequest < Struct.new(
      nil,
      :attach_point,
      :activation_key,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The created <a>Connection</a> object.</p>
    #   @return [Types::Connection]
    class AcceptConnectionProposalResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The calling principal is not allowed to access the specified resource, or the resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies an attach point to use with a Connection.</p>
    # @!attribute direct_connect_gateway
    #   <p>Identifies an DirectConnect Gateway attach point by DirectConnectGatewayID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Identifies an attach point by full ARN.</p>
    #   @return [String]
    class AttachPoint < Struct.new(
      :direct_connect_gateway,
      :arn,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DirectConnectGateway < AttachPoint; end
      class Arn < AttachPoint; end
      class Unknown < AttachPoint; end
    end

    # <p>Describes a possible Attach Point for a Connection.</p>
    # @!attribute type
    #   <p>The type of this AttachPoint, which will dictate the syntax of the identifier.</p> <p>Current types include:</p> <ul> <li> <p>ARN</p> </li> <li> <p>DirectConnect Gateway</p> </li> </ul>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier for the specific type of the AttachPoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the identifier attach point.</p>
    #   @return [String]
    class AttachPointDescriptor < Struct.new(
      nil,
      :type,
      :identifier,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details about the available and supported bandwidths.</p>
    # @!attribute available
    #   <p>The list of currently available bandwidths.</p>
    #   @return [Array<String>]
    # @!attribute supported
    #   <p>The list of all bandwidths that this environment plans to support</p>
    #   @return [Array<String>]
    class Bandwidths < Struct.new(
      nil,
      :available,
      :supported,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The object describing the provided connectivity from the AWS region to the partner location.</p>
    # @!attribute id
    #   <p>The short identifier of the connection object.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>An ARN of a <a>Connection</a> object.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A descriptive name for the connection.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The specific selected bandwidth of this connection.</p>
    #   @return [String]
    # @!attribute attach_point
    #   <p>The Attach Point to which the connection should be associated."</p>
    #   @return [Types::AttachPoint]
    # @!attribute environment_id
    #   <p>The specific <a>Environment</a> this connection is placed upon.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider on the remote side of this <a>Connection</a>.</p>
    #   @return [Types::Provider]
    # @!attribute location
    #   <p>The provider specific location on the remote side of this <a>Connection</a> </p>
    #   @return [String]
    # @!attribute type
    #   <p>The specific product type of this <a>Connection</a>.</p>
    #   @return [String]
    # @!attribute state
    #   <ul> <li> <p> <code>requested</code>: The initial state of a connection. The state will remain here until the Connection is accepted on the Partner portal.</p> </li> <li> <p> <code>pending</code>: The connection has been accepted and is being provisioned between AWS and the Partner.</p> </li> <li> <p> <code>available</code>: The connection has been fully provisioned between AWS and the Partner.</p> </li> <li> <p> <code>deleting</code>: The connection is being deleted.</p> </li> <li> <p> <code>deleted</code>: The connection has been deleted.</p> </li> <li> <p> <code>failed</code>: The connection has failed to be created.</p> </li> <li> <p> <code>updating</code>: The connection is being updated.</p> </li> </ul>
    #   @return [String]
    # @!attribute shared_id
    #   <p>An identifier used by both AWS and the remote partner to identify the specific connection.</p>
    #   @return [String]
    # @!attribute billing_tier
    #   <p>The billing tier this connection is currently assigned.</p>
    #   @return [Integer]
    # @!attribute owner_account
    #   <p>The account that owns this <a>Connection</a> </p>
    #   @return [String]
    # @!attribute activation_key
    #   <p>The Activation Key associated to this connection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags on the <a>Connection</a> </p>
    #   @return [Hash<String, String>]
    class Connection < Struct.new(
      nil,
      :id,
      :arn,
      :description,
      :bandwidth,
      :attach_point,
      :environment_id,
      :provider,
      :location,
      :type,
      :state,
      :shared_id,
      :billing_tier,
      :owner_account,
      :activation_key,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized view of a Connection object.</p>
    # @!attribute id
    #   <p>The identifier of the requested <a>Connection</a> </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the <a>Connection</a> </p>
    #   @return [String]
    # @!attribute description
    #   <p>A descriptive name of the <a>Connection</a> </p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The bandwidth of the <a>Connection</a> </p>
    #   @return [String]
    # @!attribute attach_point
    #   <p>The Attach Point to which the connection should be associated.</p>
    #   @return [Types::AttachPoint]
    # @!attribute environment_id
    #   <p>The <a>Environment</a> that this <a>Connection</a> is created on.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider on the remote end of this <a>Connection</a> </p>
    #   @return [Types::Provider]
    # @!attribute location
    #   <p>The provider specific location at the remote end of this <a>Connection</a> </p>
    #   @return [String]
    # @!attribute type
    #   <p>The product variant supplied by this resource.</p>
    #   @return [String]
    # @!attribute state
    #   <ul> <li> <p> <code>requested</code>: The initial state of a connection. The state will remain here until the Connection is accepted on the Partner portal.</p> </li> <li> <p> <code>pending</code>: The connection has been accepted and is being provisioned between AWS and the Partner.</p> </li> <li> <p> <code>available</code>: The connection has been fully provisioned between AWS and the Partner.</p> </li> <li> <p> <code>deleting</code>: The connection is being deleted.</p> </li> <li> <p> <code>deleted</code>: The connection has been deleted.</p> </li> <li> <p> <code>failed</code>: The connection has failed to be created.</p> </li> <li> <p> <code>updating</code>: The connection is being updated.</p> </li> </ul>
    #   @return [String]
    # @!attribute shared_id
    #   <p>An identifier used by both AWS and the remote partner to identify the specific connection.</p>
    #   @return [String]
    # @!attribute billing_tier
    #   <p>The billing tier this connection is currently assigned.</p>
    #   @return [Integer]
    class ConnectionSummary < Struct.new(
      nil,
      :id,
      :arn,
      :description,
      :bandwidth,
      :attach_point,
      :environment_id,
      :provider,
      :location,
      :type,
      :state,
      :shared_id,
      :billing_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description to distinguish this <a>Connection</a>.</p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>The desired bandwidth of the requested <a>Connection</a> </p>
    #   @return [String]
    # @!attribute attach_point
    #   <p>The Attach Point to which the connection should be associated."</p>
    #   @return [Types::AttachPoint]
    # @!attribute environment_id
    #   <p>The identifier of the <a>Environment</a> across which this <a>Connection</a> should be created.</p> <p>The available <a>Environment</a> objects can be determined using <a>ListEnvironments</a>.</p>
    #   @return [String]
    # @!attribute remote_account
    #   <p>Account and/or principal identifying information that can be verified by the partner of this specific Environment.</p>
    #   @return [Types::RemoteAccountIdentifier]
    # @!attribute tags
    #   <p>The tag to associate with the resulting <a>Connection</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Idempotency token used for the request.</p>
    #   @return [String]
    class CreateConnectionRequest < Struct.new(
      nil,
      :description,
      :bandwidth,
      :attach_point,
      :environment_id,
      :remote_account,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The resulting <a>Connection</a>.</p>
    #   @return [Types::Connection]
    class CreateConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the <a>Connection</a> to be deleted. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token used for the request.</p>
    #   @return [String]
    class DeleteConnectionRequest < Struct.new(
      nil,
      :identifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The <a>Connection</a> object that has been marked for deletion.</p>
    #   @return [Types::Connection]
    class DeleteConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute activation_key
    #   <p>An Activation Key that was generated on a supported partner's portal. This key captures the desired parameters from the initial creation request.</p>
    #   @return [String]
    class DescribeConnectionProposalRequest < Struct.new(
      nil,
      :activation_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bandwidth
    #   <p>The bandwidth of the proposed <a>Connection</a>. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The identifier of the <a>Environment</a> upon which the <a>Connection</a> would be placed if this proposal were accepted.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The partner provider of the specific <a>Environment</a> of the proposal.</p>
    #   @return [Types::Provider]
    # @!attribute location
    #   <p>The partner specific location distinguisher of the specific <a>Environment</a> of the proposal.</p>
    #   @return [String]
    class DescribeConnectionProposalResponse < Struct.new(
      nil,
      :bandwidth,
      :environment_id,
      :provider,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the logical topology that an AWS Interconnect Connection is created upon.</p> <p>Specifically, an Environment defines the partner The remote Cloud Service Provider of this resource. or The remote Last Mile Provider of this resource. and the region or location specification to which an AWS Interconnect Connection can be made.</p>
    # @!attribute provider
    #   <p>The provider on the remote side of this <a>Connection</a>.</p>
    #   @return [Types::Provider]
    # @!attribute location
    #   <p>The provider specific location on the remote side of this <a>Connection</a>.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The identifier of this <a>Environment</a> </p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the <a>Environment</a>. Possible values:</p> <ul> <li> <p> <code>available</code>: The environment is available and new <a>Connection</a> objects can be requested.</p> </li> <li> <p> <code>limited</code>: The environment is available, but overall capacity is limited. The set of available bandwidths </p> </li> <li> <p> <code>unavailable</code>: The environment is currently unavailable.</p> </li> </ul>
    #   @return [String]
    # @!attribute bandwidths
    #   <p>The sets of bandwidths that are available and supported on this environment.</p>
    #   @return [Types::Bandwidths]
    # @!attribute type
    #   <p>The specific product type of <a>Connection</a> objects provided by this <a>Environment</a>.</p>
    #   @return [String]
    # @!attribute activation_page_url
    #   <p>An HTTPS URL on the remote partner portal where the Activation Key should be brought to complete the creation process.</p>
    #   @return [String]
    # @!attribute remote_identifier_type
    #   <p>The type of identifying information that should be supplied to the <code>remoteAccount</code> parameter of a <a>CreateConnection</a> call for this specific Environment.</p>
    #   @return [String]
    class Environment < Struct.new(
      nil,
      :provider,
      :location,
      :environment_id,
      :state,
      :bandwidths,
      :type,
      :activation_page_url,
      :remote_identifier_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the requested <a>Connection</a> </p>
    #   @return [String]
    class GetConnectionRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The existing <a>Connection</a> resource.</p>
    #   @return [Types::Connection]
    class GetConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the specific <a>Environment</a> to describe.</p>
    #   @return [String]
    class GetEnvironmentRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>The requested <a>Environment</a> structure.</p>
    #   @return [Types::Environment]
    class GetEnvironmentResponse < Struct.new(
      nil,
      :environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to incorrect client supplied parameters.</p>
    # @!attribute message
    #   @return [String]
    class InterconnectClientException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request resulted in an exception internal to the service.</p>
    # @!attribute message
    #   @return [String]
    class InterconnectServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified.</p>
    # @!attribute message
    #   @return [String]
    class InterconnectValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier of the <a>Environment</a> for which to list valid Attach Points.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The max number of list results in a single paginated response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token from a previous paginated response indicating you wish to get the next page.</p>
    #   @return [String]
    class ListAttachPointsRequest < Struct.new(
      nil,
      :environment_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attach_points
    #   <p>The valid <a>AttachPoint</a> </p>
    #   @return [Array<Types::AttachPointDescriptor>]
    # @!attribute next_token
    #   <p>A pagination token indicating that there are more results that can be fetched.</p>
    #   @return [String]
    class ListAttachPointsResponse < Struct.new(
      nil,
      :attach_points,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The max number of list results in a single paginated response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token from a previous paginated response indicating you wish to get the next page of results.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Filter the results to only include <a>Connection</a> objects in the given <a>Connection$state</a>.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>Filter the results to only include <a>Connection</a> objects on the given <a>Environment</a>.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>Filter the results to only include <a>Connection</a> objects to the given <a>Provider</a>.</p>
    #   @return [Types::Provider]
    # @!attribute attach_point
    #   <p>Filter results to only include <a>Connection</a> objects attached to the given <a>AttachPoint</a>.</p>
    #   @return [Types::AttachPoint]
    class ListConnectionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :state,
      :environment_id,
      :provider,
      :attach_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connections
    #   <p>The resulting list of <a>Connection</a> objects.</p>
    #   @return [Array<Types::ConnectionSummary>]
    # @!attribute next_token
    #   <p>A pagination token for use in subsequent calls to fetch the next page of results.</p>
    #   @return [String]
    class ListConnectionsResponse < Struct.new(
      nil,
      :connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The max number of list results in a single paginated response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token from a previous paginated response indicating you wish to get the next page of results.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>Filter results to only include <a>Environment</a> objects that connect to the <a>Provider</a>.</p>
    #   @return [Types::Provider]
    # @!attribute location
    #   <p>Filter results to only include <a>Environment</a> objects that connect to a given location distiguisher.</p>
    #   @return [String]
    class ListEnvironmentsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :provider,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environments
    #   <p>The list of matching <a>Environment</a> objects.</p>
    #   @return [Array<Types::Environment>]
    # @!attribute next_token
    #   <p>A pagination token for use in subsequent calls to fetch the next page of results.</p>
    #   @return [String]
    class ListEnvironmentsResponse < Struct.new(
      nil,
      :environments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The resource ARN for which to list tags. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags on the specified ARN.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the respective AWS Interconnect Partner organization.</p>
    # @!attribute cloud_service_provider
    #   <p>The provider's name. Specifically, connections to/from this Cloud Service Provider will be considered Multicloud connections.</p>
    #   @return [String]
    # @!attribute last_mile_provider
    #   <p>The provider's name. Specifically, connections to/from this Last Mile Provider will be considered LastMile connections.</p>
    #   @return [String]
    class Provider < Struct.new(
      :cloud_service_provider,
      :last_mile_provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudServiceProvider < Provider; end
      class LastMileProvider < Provider; end
      class Unknown < Provider; end
    end

    # <p>The types of identifiers that may be needed for remote account specification.</p>
    # @!attribute identifier
    #   <p>A generic bit of identifying information. Can be used in place of any of the more specific types.</p>
    #   @return [String]
    class RemoteAccountIdentifier < Struct.new(
      :identifier,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Identifier < RemoteAccountIdentifier; end
      class Unknown < RemoteAccountIdentifier; end
    end

    # <p>The request specifies a resource that does not exist on the server.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would result in the calling principal exceeding their allotted quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource that should receive the new tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags to apply to the specified resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource from which the specified tags should be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys that should be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the <a>Connection</a> that should be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An updated description to apply to the <a>Connection</a> </p>
    #   @return [String]
    # @!attribute bandwidth
    #   <p>Request a new bandwidth size on the given <a>Connection</a>.</p> <p>Note that changes to the size may be subject to additional policy, and does require the remote partner provider to acknowledge and permit this new bandwidth size.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token used for the request.</p>
    #   @return [String]
    class UpdateConnectionRequest < Struct.new(
      nil,
      :identifier,
      :description,
      :bandwidth,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The resulting updated <a>Connection</a> </p>
    #   @return [Types::Connection]
    class UpdateConnectionResponse < Struct.new(
      nil,
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

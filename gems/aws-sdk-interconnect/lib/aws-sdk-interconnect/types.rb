# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Interconnect
  module Types

    # @!attribute [rw] attach_point
    #   The Attach Point to which the connection should be associated.
    #   @return [Types::AttachPoint]
    #
    # @!attribute [rw] activation_key
    #   An Activation Key that was generated on a supported partner's
    #   portal. This key captures the desired parameters from the initial
    #   creation request.
    #
    #   The details of this request can be described using with
    #   DescribeConnectionProposal.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description to distinguish this Connection.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the resulting Connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/AcceptConnectionProposalRequest AWS API Documentation
    #
    class AcceptConnectionProposalRequest < Struct.new(
      :attach_point,
      :activation_key,
      :description,
      :tags,
      :client_token)
      SENSITIVE = [:activation_key]
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The created Connection object.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/AcceptConnectionProposalResponse AWS API Documentation
    #
    class AcceptConnectionProposalResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # The calling principal is not allowed to access the specified resource,
    # or the resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an attach point to use with a Connection.
    #
    # @note AttachPoint is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AttachPoint is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AttachPoint corresponding to the set member.
    #
    # @!attribute [rw] direct_connect_gateway
    #   Identifies an DirectConnect Gateway attach point by
    #   DirectConnectGatewayID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Identifies an attach point by full ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/AttachPoint AWS API Documentation
    #
    class AttachPoint < Struct.new(
      :direct_connect_gateway,
      :arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DirectConnectGateway < AttachPoint; end
      class Arn < AttachPoint; end
      class Unknown < AttachPoint; end
    end

    # Describes a possible Attach Point for a Connection.
    #
    # @!attribute [rw] type
    #   The type of this AttachPoint, which will dictate the syntax of the
    #   identifier.
    #
    #   Current types include:
    #
    #   * ARN
    #
    #   * DirectConnect Gateway
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the specific type of the AttachPoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the identifier attach point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/AttachPointDescriptor AWS API Documentation
    #
    class AttachPointDescriptor < Struct.new(
      :type,
      :identifier,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details about the available and supported bandwidths.
    #
    # @!attribute [rw] available
    #   The list of currently available bandwidths.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported
    #   The list of all bandwidths that this environment plans to support
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/Bandwidths AWS API Documentation
    #
    class Bandwidths < Struct.new(
      :available,
      :supported)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object describing the provided connectivity from the AWS region to
    # the partner location.
    #
    # @!attribute [rw] id
    #   The short identifier of the connection object.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   An ARN of a Connection object.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A descriptive name for the connection.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The specific selected bandwidth of this connection.
    #   @return [String]
    #
    # @!attribute [rw] attach_point
    #   The Attach Point to which the connection should be associated."
    #   @return [Types::AttachPoint]
    #
    # @!attribute [rw] environment_id
    #   The specific Environment this connection is placed upon.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider on the remote side of this Connection.
    #   @return [Types::Provider]
    #
    # @!attribute [rw] location
    #   The provider specific location on the remote side of this Connection
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The specific product type of this Connection.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   * `requested`: The initial state of a connection. The state will
    #     remain here until the Connection is accepted on the Partner
    #     portal.
    #
    #   * `pending`: The connection has been accepted and is being
    #     provisioned between AWS and the Partner.
    #
    #   * `available`: The connection has been fully provisioned between AWS
    #     and the Partner.
    #
    #   * `deleting`: The connection is being deleted.
    #
    #   * `deleted`: The connection has been deleted.
    #
    #   * `failed`: The connection has failed to be created.
    #
    #   * `updating`: The connection is being updated.
    #   @return [String]
    #
    # @!attribute [rw] shared_id
    #   An identifier used by both AWS and the remote partner to identify
    #   the specific connection.
    #   @return [String]
    #
    # @!attribute [rw] billing_tier
    #   The billing tier this connection is currently assigned.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_account
    #   The account that owns this Connection
    #   @return [String]
    #
    # @!attribute [rw] activation_key
    #   The Activation Key associated to this connection.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags on the Connection
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/Connection AWS API Documentation
    #
    class Connection < Struct.new(
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
      :tags)
      SENSITIVE = [:activation_key]
      include Aws::Structure
    end

    # Summarized view of a Connection object.
    #
    # @!attribute [rw] id
    #   The identifier of the requested Connection
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the Connection
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A descriptive name of the Connection
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The bandwidth of the Connection
    #   @return [String]
    #
    # @!attribute [rw] attach_point
    #   The Attach Point to which the connection should be associated.
    #   @return [Types::AttachPoint]
    #
    # @!attribute [rw] environment_id
    #   The Environment that this Connection is created on.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider on the remote end of this Connection
    #   @return [Types::Provider]
    #
    # @!attribute [rw] location
    #   The provider specific location at the remote end of this Connection
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The product variant supplied by this resource.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   * `requested`: The initial state of a connection. The state will
    #     remain here until the Connection is accepted on the Partner
    #     portal.
    #
    #   * `pending`: The connection has been accepted and is being
    #     provisioned between AWS and the Partner.
    #
    #   * `available`: The connection has been fully provisioned between AWS
    #     and the Partner.
    #
    #   * `deleting`: The connection is being deleted.
    #
    #   * `deleted`: The connection has been deleted.
    #
    #   * `failed`: The connection has failed to be created.
    #
    #   * `updating`: The connection is being updated.
    #   @return [String]
    #
    # @!attribute [rw] shared_id
    #   An identifier used by both AWS and the remote partner to identify
    #   the specific connection.
    #   @return [String]
    #
    # @!attribute [rw] billing_tier
    #   The billing tier this connection is currently assigned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ConnectionSummary AWS API Documentation
    #
    class ConnectionSummary < Struct.new(
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
      :billing_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description to distinguish this Connection.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   The desired bandwidth of the requested Connection
    #   @return [String]
    #
    # @!attribute [rw] attach_point
    #   The Attach Point to which the connection should be associated."
    #   @return [Types::AttachPoint]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the Environment across which this Connection
    #   should be created.
    #
    #   The available Environment objects can be determined using
    #   ListEnvironments.
    #   @return [String]
    #
    # @!attribute [rw] remote_account
    #   Account and/or principal identifying information that can be
    #   verified by the partner of this specific Environment.
    #   @return [Types::RemoteAccountIdentifier]
    #
    # @!attribute [rw] tags
    #   The tag to associate with the resulting Connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :description,
      :bandwidth,
      :attach_point,
      :environment_id,
      :remote_account,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The resulting Connection.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the Connection to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The Connection object that has been marked for deletion.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activation_key
    #   An Activation Key that was generated on a supported partner's
    #   portal. This key captures the desired parameters from the initial
    #   creation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/DescribeConnectionProposalRequest AWS API Documentation
    #
    class DescribeConnectionProposalRequest < Struct.new(
      :activation_key)
      SENSITIVE = [:activation_key]
      include Aws::Structure
    end

    # @!attribute [rw] bandwidth
    #   The bandwidth of the proposed Connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the Environment upon which the Connection would be
    #   placed if this proposal were accepted.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The partner provider of the specific Environment of the proposal.
    #   @return [Types::Provider]
    #
    # @!attribute [rw] location
    #   The partner specific location distinguisher of the specific
    #   Environment of the proposal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/DescribeConnectionProposalResponse AWS API Documentation
    #
    class DescribeConnectionProposalResponse < Struct.new(
      :bandwidth,
      :environment_id,
      :provider,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the logical topology that an AWS Interconnect Connection is
    # created upon.
    #
    # Specifically, an Environment defines the partner The remote Cloud
    # Service Provider of this resource. or The remote Last Mile Provider of
    # this resource. and the region or location specification to which an
    # AWS Interconnect Connection can be made.
    #
    # @!attribute [rw] provider
    #   The provider on the remote side of this Connection.
    #   @return [Types::Provider]
    #
    # @!attribute [rw] location
    #   The provider specific location on the remote side of this
    #   Connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of this Environment
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Environment. Possible values:
    #
    #   * `available`: The environment is available and new Connection
    #     objects can be requested.
    #
    #   * `limited`: The environment is available, but overall capacity is
    #     limited. The set of available bandwidths
    #
    #   * `unavailable`: The environment is currently unavailable.
    #   @return [String]
    #
    # @!attribute [rw] bandwidths
    #   The sets of bandwidths that are available and supported on this
    #   environment.
    #   @return [Types::Bandwidths]
    #
    # @!attribute [rw] type
    #   The specific product type of Connection objects provided by this
    #   Environment.
    #   @return [String]
    #
    # @!attribute [rw] activation_page_url
    #   An HTTPS URL on the remote partner portal where the Activation Key
    #   should be brought to complete the creation process.
    #   @return [String]
    #
    # @!attribute [rw] remote_identifier_type
    #   The type of identifying information that should be supplied to the
    #   `remoteAccount` parameter of a CreateConnection call for this
    #   specific Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :provider,
      :location,
      :environment_id,
      :state,
      :bandwidths,
      :type,
      :activation_page_url,
      :remote_identifier_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the requested Connection
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/GetConnectionRequest AWS API Documentation
    #
    class GetConnectionRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The existing Connection resource.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/GetConnectionResponse AWS API Documentation
    #
    class GetConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the specific Environment to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The requested Environment structure.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/GetEnvironmentResponse AWS API Documentation
    #
    class GetEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to incorrect client supplied parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/InterconnectClientException AWS API Documentation
    #
    class InterconnectClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request resulted in an exception internal to the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/InterconnectServerException AWS API Documentation
    #
    class InterconnectServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/InterconnectValidationException AWS API Documentation
    #
    class InterconnectValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The identifier of the Environment for which to list valid Attach
    #   Points.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max number of list results in a single paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token from a previous paginated response indicating you
    #   wish to get the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListAttachPointsRequest AWS API Documentation
    #
    class ListAttachPointsRequest < Struct.new(
      :environment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attach_points
    #   The valid AttachPoint
    #   @return [Array<Types::AttachPointDescriptor>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating that there are more results that can
    #   be fetched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListAttachPointsResponse AWS API Documentation
    #
    class ListAttachPointsResponse < Struct.new(
      :attach_points,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The max number of list results in a single paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token from a previous paginated response indicating you
    #   wish to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Filter the results to only include Connection objects in the given
    #   Connection$state.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   Filter the results to only include Connection objects on the given
    #   Environment.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   Filter the results to only include Connection objects to the given
    #   Provider.
    #   @return [Types::Provider]
    #
    # @!attribute [rw] attach_point
    #   Filter results to only include Connection objects attached to the
    #   given AttachPoint.
    #   @return [Types::AttachPoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListConnectionsRequest AWS API Documentation
    #
    class ListConnectionsRequest < Struct.new(
      :max_results,
      :next_token,
      :state,
      :environment_id,
      :provider,
      :attach_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   The resulting list of Connection objects.
    #   @return [Array<Types::ConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for use in subsequent calls to fetch the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListConnectionsResponse AWS API Documentation
    #
    class ListConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The max number of list results in a single paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token from a previous paginated response indicating you
    #   wish to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   Filter results to only include Environment objects that connect to
    #   the Provider.
    #   @return [Types::Provider]
    #
    # @!attribute [rw] location
    #   Filter results to only include Environment objects that connect to a
    #   given location distiguisher.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :max_results,
      :next_token,
      :provider,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   The list of matching Environment objects.
    #   @return [Array<Types::Environment>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for use in subsequent calls to fetch the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListEnvironmentsResponse AWS API Documentation
    #
    class ListEnvironmentsResponse < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The resource ARN for which to list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags on the specified ARN.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the respective AWS Interconnect Partner organization.
    #
    # @note Provider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Provider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Provider corresponding to the set member.
    #
    # @!attribute [rw] cloud_service_provider
    #   The provider's name. Specifically, connections to/from this Cloud
    #   Service Provider will be considered Multicloud connections.
    #   @return [String]
    #
    # @!attribute [rw] last_mile_provider
    #   The provider's name. Specifically, connections to/from this Last
    #   Mile Provider will be considered LastMile connections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/Provider AWS API Documentation
    #
    class Provider < Struct.new(
      :cloud_service_provider,
      :last_mile_provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudServiceProvider < Provider; end
      class LastMileProvider < Provider; end
      class Unknown < Provider; end
    end

    # The types of identifiers that may be needed for remote account
    # specification.
    #
    # @note RemoteAccountIdentifier is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] identifier
    #   A generic bit of identifying information. Can be used in place of
    #   any of the more specific types.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/RemoteAccountIdentifier AWS API Documentation
    #
    class RemoteAccountIdentifier < Struct.new(
      :identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Identifier < RemoteAccountIdentifier; end
      class Unknown < RemoteAccountIdentifier; end
    end

    # The request specifies a resource that does not exist on the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would result in the calling principal
    # exceeding their allotted quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource that should receive the new tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tags to apply to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource from which the specified tags should be
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys that should be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The identifier of the Connection that should be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An updated description to apply to the Connection
    #   @return [String]
    #
    # @!attribute [rw] bandwidth
    #   Request a new bandwidth size on the given Connection.
    #
    #   Note that changes to the size may be subject to additional policy,
    #   and does require the remote partner provider to acknowledge and
    #   permit this new bandwidth size.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token used for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/UpdateConnectionRequest AWS API Documentation
    #
    class UpdateConnectionRequest < Struct.new(
      :identifier,
      :description,
      :bandwidth,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The resulting updated Connection
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/interconnect-2022-07-26/UpdateConnectionResponse AWS API Documentation
    #
    class UpdateConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


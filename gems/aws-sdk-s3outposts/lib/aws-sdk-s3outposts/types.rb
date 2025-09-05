# frozen_string_literal: true

# This is generated code!

module Aws::S3Outposts
  # This module contains the types returned by client operations.
  module Types

    # <p>Access was denied for this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There was a conflict with this action, and it could not be completed.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute outpost_id
    #   <p>The ID of the Outposts. </p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost
    #               that has Amazon S3 on Outposts provisioned.</p>
    #   @return [String]
    # @!attribute security_group_id
    #   <p>The ID of the security group to use with the endpoint.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use
    #               the Amazon Web Services VPC, choose <code>Private</code>. To use the endpoint with an on-premises
    #               network, choose <code>CustomerOwnedIp</code>.  If you choose
    #                   <code>CustomerOwnedIp</code>, you must also provide the customer-owned IP address
    #               pool (CoIP pool).</p>
    #            <note>
    #               <p>
    #                  <code>Private</code> is the default access type value.</p>
    #            </note>
    #   @return [String]
    # @!attribute customer_owned_ipv4_pool
    #   <p>The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses
    #               are allocated from this pool for the endpoint.</p>
    #   @return [String]
    class CreateEndpointRequest < Struct.new(
      :outpost_id,
      :subnet_id,
      :security_group_id,
      :access_type,
      :customer_owned_ipv4_pool,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    class CreateEndpointResult < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_id
    #   <p>The ID of the endpoint.</p>
    #   @return [String]
    # @!attribute outpost_id
    #   <p>The ID of the Outposts. </p>
    #   @return [String]
    class DeleteEndpointRequest < Struct.new(
      :endpoint_id,
      :outpost_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. 
    #             S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your 
    #                virtual private cloud (VPC). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/WorkingWithS3Outposts.html">
    #         Accessing S3 on Outposts using VPC-only access points</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute outposts_id
    #   <p>The ID of the Outposts.</p>
    #   @return [String]
    # @!attribute cidr_block
    #   <p>The VPC CIDR committed by this endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the endpoint.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the endpoint was created.</p>
    #   @return [Time]
    # @!attribute network_interfaces
    #   <p>The network interface of the endpoint.</p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute vpc_id
    #   <p>The ID of the VPC used for the endpoint.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet used for the endpoint.</p>
    #   @return [String]
    # @!attribute security_group_id
    #   <p>The ID of the security group used for the endpoint.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>The type of connectivity used to access the Amazon S3 on Outposts endpoint.</p>
    #   @return [String]
    # @!attribute customer_owned_ipv4_pool
    #   <p>The ID of the customer-owned IPv4 address pool used for the endpoint.</p>
    #   @return [String]
    # @!attribute failed_reason
    #   <p>The failure reason, if any, for a create or delete endpoint operation.</p>
    #   @return [Types::FailedReason]
    class Endpoint < Struct.new(
      :endpoint_arn,
      :outposts_id,
      :cidr_block,
      :status,
      :creation_time,
      :network_interfaces,
      :vpc_id,
      :subnet_id,
      :security_group_id,
      :access_type,
      :customer_owned_ipv4_pool,
      :failed_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The failure reason, if any, for a create or delete endpoint operation.</p>
    # @!attribute error_code
    #   <p>The failure code, if any, for a create or delete endpoint operation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Additional error details describing the endpoint failure and recommended action.</p>
    #   @return [String]
    class FailedReason < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There was an exception with the internal server.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If a previous response from this operation included a <code>NextToken</code> value, 
    #               provide that value here to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of endpoints that will be returned in the response.</p>
    #   @return [Integer]
    class ListEndpointsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>The list of endpoints associated with the specified Outpost.</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute next_token
    #   <p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>, 
    #               you can include this value in subsequent calls to this operation to retrieve more results.</p>
    #   @return [String]
    class ListEndpointsResult < Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you can get additional results from the <code>ListOutpostsWithS3</code> call, a
    #                   <code>NextToken</code> parameter is returned in the output. You can then pass in a
    #               subsequent command to the <code>NextToken</code> parameter to continue listing
    #               additional Outposts.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Outposts to return. The limit is 100.</p>
    #   @return [Integer]
    class ListOutpostsWithS3Request < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute outposts
    #   <p>Returns the list of Outposts that have the following characteristics:</p>
    #            <ul>
    #               <li>
    #                  <p>outposts that have S3 provisioned</p>
    #               </li>
    #               <li>
    #                  <p>outposts that are <code>Active</code> (not pending any provisioning nor decommissioned)</p>
    #               </li>
    #               <li>
    #                  <p>outposts to which the the calling Amazon Web Services account has access</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Outpost>]
    # @!attribute next_token
    #   <p>Returns a token that you can use to call <code>ListOutpostsWithS3</code> again and receive additional results, if there are any.</p>
    #   @return [String]
    class ListOutpostsWithS3Result < Struct.new(
      :outposts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If a previous response from this operation included a <code>NextToken</code> value, you
    #               can provide that value here to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of endpoints that will be returned in the response.</p>
    #   @return [Integer]
    # @!attribute outpost_id
    #   <p>The ID of the Amazon Web Services Outpost.</p>
    #   @return [String]
    class ListSharedEndpointsRequest < Struct.new(
      :next_token,
      :max_results,
      :outpost_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>The list of endpoints associated with the specified Outpost that have been shared by Amazon Web Services Resource Access Manager (RAM).</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute next_token
    #   <p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>, 
    #               you can include this value in subsequent calls to this operation to retrieve more results.</p>
    #   @return [String]
    class ListSharedEndpointsResult < Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the network interface.</p>
    # @!attribute network_interface_id
    #   <p>The ID for the network interface.</p>
    #   @return [String]
    class NetworkInterface < Struct.new(
      :network_interface_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for the Outpost object.</p>
    # @!attribute outpost_arn
    #   <p>Specifies the unique Amazon Resource Name (ARN) for the outpost.</p>
    #   @return [String]
    # @!attribute s3_outpost_arn
    #   <p>Specifies the unique S3 on Outposts ARN for use with Resource Access Manager (RAM).</p>
    #   @return [String]
    # @!attribute outpost_id
    #   <p>Specifies the unique identifier for the outpost.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>Returns the Amazon Web Services account ID of the outpost owner. Useful for comparing owned versus shared outposts.</p>
    #   @return [String]
    # @!attribute capacity_in_bytes
    #   <p>The Amazon S3 capacity of the outpost in bytes.</p>
    #   @return [Integer]
    class Outpost < Struct.new(
      :outpost_arn,
      :s3_outpost_arn,
      :outpost_id,
      :owner_id,
      :capacity_in_bytes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:capacity_in_bytes] = 0 unless options.key?(:capacity_in_bytes)
        super
      end
    end

    # <p>The service link connection to your Outposts home Region is down. Check your connection and try again.</p>
    # @!attribute message
    #   @return [String]
    class OutpostOfflineException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There was an exception validating this data.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

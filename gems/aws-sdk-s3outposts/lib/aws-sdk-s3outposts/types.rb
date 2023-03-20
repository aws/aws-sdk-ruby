# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Outposts
  module Types

    # Access was denied for this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict with this action, and it could not be completed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outpost_id
    #   The ID of the Outposts.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in the selected VPC. The endpoint subnet must
    #   belong to the Outpost that has Amazon S3 on Outposts provisioned.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id
    #   The ID of the security group to use with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The type of access for the network connectivity for the Amazon S3 on
    #   Outposts endpoint. To use the Amazon Web Services VPC, choose
    #   `Private`. To use the endpoint with an on-premises network, choose
    #   `CustomerOwnedIp`. If you choose `CustomerOwnedIp`, you must also
    #   provide the customer-owned IP address pool (CoIP pool).
    #
    #   <note markdown="1"> `Private` is the default access type value.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] customer_owned_ipv_4_pool
    #   The ID of the customer-owned IPv4 address pool (CoIP pool) for the
    #   endpoint. IP addresses are allocated from this pool for the
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/CreateEndpointRequest AWS API Documentation
    #
    class CreateEndpointRequest < Struct.new(
      :outpost_id,
      :subnet_id,
      :security_group_id,
      :access_type,
      :customer_owned_ipv_4_pool)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/CreateEndpointResult AWS API Documentation
    #
    class CreateEndpointResult < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_id
    #   The ID of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outposts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/DeleteEndpointRequest AWS API Documentation
    #
    class DeleteEndpointRequest < Struct.new(
      :endpoint_id,
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 on Outposts Access Points simplify managing data access at
    # scale for shared datasets in S3 on Outposts. S3 on Outposts uses
    # endpoints to connect to Outposts buckets so that you can perform
    # actions within your virtual private cloud (VPC). For more information,
    # see [ Accessing S3 on Outposts using VPC-only access points][1] in the
    # *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/WorkingWithS3Outposts.html
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] outposts_id
    #   The ID of the Outposts.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block
    #   The VPC CIDR committed by this endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] network_interfaces
    #   The network interface of the endpoint.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC used for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet used for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id
    #   The ID of the security group used for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The type of connectivity used to access the Amazon S3 on Outposts
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] customer_owned_ipv_4_pool
    #   The ID of the customer-owned IPv4 address pool used for the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] failed_reason
    #   The failure reason, if any, for a create or delete endpoint
    #   operation.
    #   @return [Types::FailedReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/Endpoint AWS API Documentation
    #
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
      :customer_owned_ipv_4_pool,
      :failed_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The failure reason, if any, for a create or delete endpoint operation.
    #
    # @!attribute [rw] error_code
    #   The failure code, if any, for a create or delete endpoint operation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Additional error details describing the endpoint failure and
    #   recommended action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/FailedReason AWS API Documentation
    #
    class FailedReason < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an exception with the internal server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If a previous response from this operation included a `NextToken`
    #   value, provide that value here to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of endpoints that will be returned in the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListEndpointsRequest AWS API Documentation
    #
    class ListEndpointsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   The list of endpoints associated with the specified Outpost.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] next_token
    #   If the number of endpoints associated with the specified Outpost
    #   exceeds `MaxResults`, you can include this value in subsequent calls
    #   to this operation to retrieve more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListEndpointsResult AWS API Documentation
    #
    class ListEndpointsResult < Struct.new(
      :endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListOutpostsWithS3`
    #   call, a `NextToken` parameter is returned in the output. You can
    #   then pass in a subsequent command to the `NextToken` parameter to
    #   continue listing additional Outposts.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Outposts to return. The limit is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListOutpostsWithS3Request AWS API Documentation
    #
    class ListOutpostsWithS3Request < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outposts
    #   Returns the list of Outposts that have the following
    #   characteristics:
    #
    #   * outposts that have S3 provisioned
    #
    #   * outposts that are `Active` (not pending any provisioning nor
    #     decommissioned)
    #
    #   * outposts to which the the calling Amazon Web Services account has
    #     access
    #   @return [Array<Types::Outpost>]
    #
    # @!attribute [rw] next_token
    #   Returns a token that you can use to call `ListOutpostsWithS3` again
    #   and receive additional results, if there are any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListOutpostsWithS3Result AWS API Documentation
    #
    class ListOutpostsWithS3Result < Struct.new(
      :outposts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If a previous response from this operation included a `NextToken`
    #   value, you can provide that value here to retrieve the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of endpoints that will be returned in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Amazon Web Services Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListSharedEndpointsRequest AWS API Documentation
    #
    class ListSharedEndpointsRequest < Struct.new(
      :next_token,
      :max_results,
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   The list of endpoints associated with the specified Outpost that
    #   have been shared by Amazon Web Services Resource Access Manager
    #   (RAM).
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] next_token
    #   If the number of endpoints associated with the specified Outpost
    #   exceeds `MaxResults`, you can include this value in subsequent calls
    #   to this operation to retrieve more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListSharedEndpointsResult AWS API Documentation
    #
    class ListSharedEndpointsResult < Struct.new(
      :endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the network interface.
    #
    # @!attribute [rw] network_interface_id
    #   The ID for the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :network_interface_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for the Outpost object.
    #
    # @!attribute [rw] outpost_arn
    #   Specifies the unique Amazon Resource Name (ARN) for the outpost.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   Specifies the unique identifier for the outpost.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   Returns the Amazon Web Services account ID of the outpost owner.
    #   Useful for comparing owned versus shared outposts.
    #   @return [String]
    #
    # @!attribute [rw] capacity_in_bytes
    #   The Amazon S3 capacity of the outpost in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/Outpost AWS API Documentation
    #
    class Outpost < Struct.new(
      :outpost_arn,
      :outpost_id,
      :owner_id,
      :capacity_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service link connection to your Outposts home Region is down.
    # Check your connection and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/OutpostOfflineException AWS API Documentation
    #
    class OutpostOfflineException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an exception validating this data.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

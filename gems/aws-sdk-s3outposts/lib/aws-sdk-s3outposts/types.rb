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
      :customer_owned_ipv_4_pool)
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

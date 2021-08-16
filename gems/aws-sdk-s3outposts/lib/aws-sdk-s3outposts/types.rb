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

    # @note When making an API call, you may pass CreateEndpointRequest
    #   data as a hash:
    #
    #       {
    #         outpost_id: "OutpostId", # required
    #         subnet_id: "SubnetId", # required
    #         security_group_id: "SecurityGroupId", # required
    #         access_type: "Private", # accepts Private, CustomerOwnedIp
    #         customer_owned_ipv_4_pool: "CustomerOwnedIpv4Pool",
    #       }
    #
    # @!attribute [rw] outpost_id
    #   The ID of the AWS Outposts.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in the selected VPC. The endpoint subnet must
    #   belong to the Outpost that has the Amazon S3 on Outposts
    #   provisioned.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id
    #   The ID of the security group to use with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The type of access for the on-premise network connectivity for the
    #   Outpost endpoint. To access the endpoint from an on-premises
    #   network, you must specify the access type and provide the customer
    #   owned IPv4 pool.
    #   @return [String]
    #
    # @!attribute [rw] customer_owned_ipv_4_pool
    #   The ID of the customer-owned IPv4 pool for the endpoint. IP
    #   addresses will be allocated from this pool for the endpoint.
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

    # @note When making an API call, you may pass DeleteEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_id: "EndpointId", # required
    #         outpost_id: "OutpostId", # required
    #       }
    #
    # @!attribute [rw] endpoint_id
    #   The ID of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the AWS Outposts.
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
    # see [ Accessing S3 on Outposts using VPC only access points][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] outposts_id
    #   The ID of the AWS Outposts.
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
    #   @return [String]
    #
    # @!attribute [rw] customer_owned_ipv_4_pool
    #   The ID of the customer-owned IPv4 pool used for the endpoint.
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

    # @note When making an API call, you may pass ListEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The next endpoint requested in the list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max number of endpoints that can be returned on the request.
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
    #   Returns an array of endpoints associated with AWS Outposts.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] next_token
    #   The next endpoint returned in the list.
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

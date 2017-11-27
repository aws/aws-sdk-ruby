# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaStore
  module Types

    # This section describes operations that you can perform on an AWS
    # Elemental MediaStore container.
    #
    # @!attribute [rw] endpoint
    #   The DNS endpoint of the container. Use from 1 to 255 characters. Use
    #   this endpoint to identify this container when sending requests to
    #   the data plane.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Unix timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the container. The ARN has the
    #   following format:
    #
    #   arn:aws:&lt;region&gt;\:&lt;account that owns this
    #   container&gt;\:container/&lt;name of container&gt;
    #
    #   For example:
    #   arn:aws:mediastore:us-west-2:111122223333:container/movies
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of container creation or deletion. The status is one of
    #   the following: `CREATING`, `ACTIVE`, or `DELETING`. While the
    #   service is creating the container, the status is `CREATING`. When
    #   the endpoint is available, the status changes to `ACTIVE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/Container AWS API Documentation
    #
    class Container < Struct.new(
      :endpoint,
      :creation_time,
      :arn,
      :name,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContainerInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name for the container. The name must be from 1 to 255
    #   characters. Container names must be unique to your AWS account
    #   within a specific region. As an example, you could create a
    #   container named `movies` in every region, as long as you don’t have
    #   an existing container with that name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CreateContainerInput AWS API Documentation
    #
    class CreateContainerInput < Struct.new(
      :container_name)
      include Aws::Structure
    end

    # @!attribute [rw] container
    #   ContainerARN: The Amazon Resource Name (ARN) of the newly created
    #   container. The ARN has the following format:
    #   arn:aws:&lt;region&gt;\:&lt;account that owns this
    #   container&gt;\:container/&lt;name of container&gt;. For example:
    #   arn:aws:mediastore:us-west-2:111122223333:container/movies
    #
    #   ContainerName: The container name as specified in the request.
    #
    #   CreationTime: Unix timestamp.
    #
    #   Status: The status of container creation or deletion. The status is
    #   one of the following: `CREATING`, `ACTIVE`, or `DELETING`. While the
    #   service is creating the container, the status is `CREATING`. When an
    #   endpoint is available, the status changes to `ACTIVE`.
    #
    #   The return value does not include the container's endpoint. To make
    #   downstream requests, you must obtain this value by using
    #   DescribeContainer or ListContainers.
    #   @return [Types::Container]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CreateContainerOutput AWS API Documentation
    #
    class CreateContainerOutput < Struct.new(
      :container)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteContainerInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainerInput AWS API Documentation
    #
    class DeleteContainerInput < Struct.new(
      :container_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainerOutput AWS API Documentation
    #
    class DeleteContainerOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteContainerPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that holds the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainerPolicyInput AWS API Documentation
    #
    class DeleteContainerPolicyInput < Struct.new(
      :container_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainerPolicyOutput AWS API Documentation
    #
    class DeleteContainerPolicyOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeContainerInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName",
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DescribeContainerInput AWS API Documentation
    #
    class DescribeContainerInput < Struct.new(
      :container_name)
      include Aws::Structure
    end

    # @!attribute [rw] container
    #   The name of the queried container.
    #   @return [Types::Container]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DescribeContainerOutput AWS API Documentation
    #
    class DescribeContainerOutput < Struct.new(
      :container)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContainerPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetContainerPolicyInput AWS API Documentation
    #
    class GetContainerPolicyInput < Struct.new(
      :container_name)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The contents of the access policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetContainerPolicyOutput AWS API Documentation
    #
    class GetContainerPolicyOutput < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListContainersInput
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Only if you used `MaxResults` in the first command, enter the token
    #   (which was included in the previous response) to obtain the next set
    #   of containers. This token is included in a response only if there
    #   actually are more containers to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Enter the maximum number of containers in the response. Use from 1
    #   to 255 characters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListContainersInput AWS API Documentation
    #
    class ListContainersInput < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] containers
    #   The names of the containers.
    #   @return [Array<Types::Container>]
    #
    # @!attribute [rw] next_token
    #   `NextToken` is the token to use in the next call to
    #   `ListContainers`. This token is returned only if you included the
    #   `MaxResults` tag in the original command, and only if there are
    #   still containers to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListContainersOutput AWS API Documentation
    #
    class ListContainersOutput < Struct.new(
      :containers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutContainerPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #         policy: "ContainerPolicy", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The contents of the policy, which includes the following:
    #
    #   * One `Version` tag
    #
    #   * One `Statement` tag that contains the standard tags for the
    #     policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutContainerPolicyInput AWS API Documentation
    #
    class PutContainerPolicyInput < Struct.new(
      :container_name,
      :policy)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutContainerPolicyOutput AWS API Documentation
    #
    class PutContainerPolicyOutput < Aws::EmptyStructure; end

  end
end

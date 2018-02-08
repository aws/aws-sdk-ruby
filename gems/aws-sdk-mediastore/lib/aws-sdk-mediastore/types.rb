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
    #   The DNS endpoint of the container. Use the endpoint to identify the
    #   specific container when sending requests to the data plane. The
    #   service assigns this value when the container is created. Once the
    #   value has been assigned, it does not change.
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

    # A rule for a CORS policy. You can add up to 100 rules to a CORS
    # policy. If more than one rule applies, the service uses the first
    # applicable rule listed.
    #
    # @note When making an API call, you may pass CorsRule
    #   data as a hash:
    #
    #       {
    #         allowed_origins: ["Origin"],
    #         allowed_methods: ["PUT"], # accepts PUT, GET, DELETE, HEAD
    #         allowed_headers: ["Header"],
    #         max_age_seconds: 1,
    #         expose_headers: ["Header"],
    #       }
    #
    # @!attribute [rw] allowed_origins
    #   One or more response headers that you want users to be able to
    #   access from their applications (for example, from a JavaScript
    #   `XMLHttpRequest` object).
    #
    #   Each CORS rule must have at least one `AllowedOrigin` element. The
    #   string value can include only one wildcard character (*), for
    #   example, http://*.example.com. Additionally, you can specify only
    #   one wildcard character to allow cross-origin access for all origins.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_methods
    #   Identifies an HTTP method that the origin that is specified in the
    #   rule is allowed to execute.
    #
    #   Each CORS rule must contain at least one `AllowedMethod` and one
    #   `AllowedOrigin` element.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_headers
    #   Specifies which headers are allowed in a preflight `OPTIONS` request
    #   through the `Access-Control-Request-Headers` header. Each header
    #   name that is specified in `Access-Control-Request-Headers` must have
    #   a corresponding entry in the rule. Only the headers that were
    #   requested are sent back.
    #
    #   This element can contain only one wildcard character (*).
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_age_seconds
    #   The time in seconds that your browser caches the preflight response
    #   for the specified resource.
    #
    #   A CORS rule can have only one `MaxAgeSeconds` element.
    #   @return [Integer]
    #
    # @!attribute [rw] expose_headers
    #   One or more headers in the response that you want users to be able
    #   to access from their applications (for example, from a JavaScript
    #   `XMLHttpRequest` object).
    #
    #   This element is optional for each rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CorsRule AWS API Documentation
    #
    class CorsRule < Struct.new(
      :allowed_origins,
      :allowed_methods,
      :allowed_headers,
      :max_age_seconds,
      :expose_headers)
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
    #   CreationTime: Unix time stamp.
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

    # @note When making an API call, you may pass DeleteCorsPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container to remove the policy from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteCorsPolicyInput AWS API Documentation
    #
    class DeleteCorsPolicyInput < Struct.new(
      :container_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteCorsPolicyOutput AWS API Documentation
    #
    class DeleteCorsPolicyOutput < Aws::EmptyStructure; end

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

    # @note When making an API call, you may pass GetCorsPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that the policy is assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetCorsPolicyInput AWS API Documentation
    #
    class GetCorsPolicyInput < Struct.new(
      :container_name)
      include Aws::Structure
    end

    # @!attribute [rw] cors_policy
    #   The CORS policy of the container.
    #   @return [Array<Types::CorsRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetCorsPolicyOutput AWS API Documentation
    #
    class GetCorsPolicyOutput < Struct.new(
      :cors_policy)
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

    # @note When making an API call, you may pass PutCorsPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #         cors_policy: [ # required
    #           {
    #             allowed_origins: ["Origin"],
    #             allowed_methods: ["PUT"], # accepts PUT, GET, DELETE, HEAD
    #             allowed_headers: ["Header"],
    #             max_age_seconds: 1,
    #             expose_headers: ["Header"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that you want to assign the CORS policy
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] cors_policy
    #   The CORS policy to apply to the container.
    #   @return [Array<Types::CorsRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutCorsPolicyInput AWS API Documentation
    #
    class PutCorsPolicyInput < Struct.new(
      :container_name,
      :cors_policy)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutCorsPolicyOutput AWS API Documentation
    #
    class PutCorsPolicyOutput < Aws::EmptyStructure; end

  end
end

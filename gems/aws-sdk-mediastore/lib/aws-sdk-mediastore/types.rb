# frozen_string_literal: true

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
    # @!attribute [rw] access_logging_enabled
    #   The state of access logging on the container. This value is `false`
    #   by default, indicating that AWS Elemental MediaStore does not send
    #   access logs to Amazon CloudWatch Logs. When you enable access
    #   logging on the container, MediaStore changes this value to `true`,
    #   indicating that the service delivers access logs for objects stored
    #   in that container to CloudWatch Logs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/Container AWS API Documentation
    #
    class Container < Struct.new(
      :endpoint,
      :creation_time,
      :arn,
      :name,
      :status,
      :access_logging_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container that you specified in the request already exists or is
    # being updated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ContainerInUseException AWS API Documentation
    #
    class ContainerInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container that you specified in the request does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ContainerNotFoundException AWS API Documentation
    #
    class ContainerNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CORS policy that you specified in the request does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CorsPolicyNotFoundException AWS API Documentation
    #
    class CorsPolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    #         allowed_origins: ["Origin"], # required
    #         allowed_methods: ["PUT"], # accepts PUT, GET, DELETE, HEAD
    #         allowed_headers: ["Header"], # required
    #         max_age_seconds: 1,
    #         expose_headers: ["Header"],
    #       }
    #
    # @!attribute [rw] allowed_origins
    #   One or more response headers that you want users to be able to
    #   access from their applications (for example, from a JavaScript
    #   `XMLHttpRequest` object).
    #
    #   Each CORS rule must have at least one `AllowedOrigins` element. The
    #   string value can include only one wildcard character (*), for
    #   example, http://*.example.com. Additionally, you can specify only
    #   one wildcard character to allow cross-origin access for all origins.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_methods
    #   Identifies an HTTP method that the origin that is specified in the
    #   rule is allowed to execute.
    #
    #   Each CORS rule must contain at least one `AllowedMethods` and one
    #   `AllowedOrigins` element.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContainerInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
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
    # @!attribute [rw] tags
    #   An array of key:value pairs that you define. These values can be
    #   anything that you want. Typically, the tag key represents a category
    #   (such as "environment") and the tag value represents a specific
    #   value within that category (such as "test," "development," or
    #   "production"). You can add up to 50 tags to each container. For
    #   more information about tagging, including naming and usage
    #   conventions, see [Tagging Resources in MediaStore][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CreateContainerInput AWS API Documentation
    #
    class CreateContainerInput < Struct.new(
      :container_name,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteCorsPolicyOutput AWS API Documentation
    #
    class DeleteCorsPolicyOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLifecyclePolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that holds the object lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteLifecyclePolicyInput AWS API Documentation
    #
    class DeleteLifecyclePolicyInput < Struct.new(
      :container_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteLifecyclePolicyOutput AWS API Documentation
    #
    class DeleteLifecyclePolicyOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteMetricPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that is associated with the metric policy
    #   that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteMetricPolicyInput AWS API Documentation
    #
    class DeleteMetricPolicyInput < Struct.new(
      :container_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteMetricPolicyOutput AWS API Documentation
    #
    class DeleteMetricPolicyOutput < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cors_policy
    #   The CORS policy assigned to the container.
    #   @return [Array<Types::CorsRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetCorsPolicyOutput AWS API Documentation
    #
    class GetCorsPolicyOutput < Struct.new(
      :cors_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLifecyclePolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that the object lifecycle policy is
    #   assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetLifecyclePolicyInput AWS API Documentation
    #
    class GetLifecyclePolicyInput < Struct.new(
      :container_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_policy
    #   The object lifecycle policy that is assigned to the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetLifecyclePolicyOutput AWS API Documentation
    #
    class GetLifecyclePolicyOutput < Struct.new(
      :lifecycle_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMetricPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that is associated with the metric policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetMetricPolicyInput AWS API Documentation
    #
    class GetMetricPolicyInput < Struct.new(
      :container_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_policy
    #   The metric policy that is associated with the specific container.
    #   @return [Types::MetricPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetMetricPolicyOutput AWS API Documentation
    #
    class GetMetricPolicyOutput < Struct.new(
      :metric_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource: "ContainerARN", # required
    #       }
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) for the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of key:value pairs that are assigned to the container.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric policy that is associated with the container. A metric
    # policy allows AWS Elemental MediaStore to send metrics to Amazon
    # CloudWatch. In the policy, you must indicate whether you want
    # MediaStore to send container-level metrics. You can also include rules
    # to define groups of objects that you want MediaStore to send
    # object-level metrics for.
    #
    # To view examples of how to construct a metric policy for your use
    # case, see [Example Metric Policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediastore/latest/ug/policies-metric-examples.html
    #
    # @note When making an API call, you may pass MetricPolicy
    #   data as a hash:
    #
    #       {
    #         container_level_metrics: "ENABLED", # required, accepts ENABLED, DISABLED
    #         metric_policy_rules: [
    #           {
    #             object_group: "ObjectGroup", # required
    #             object_group_name: "ObjectGroupName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] container_level_metrics
    #   A setting to enable or disable metrics at the container level.
    #   @return [String]
    #
    # @!attribute [rw] metric_policy_rules
    #   A parameter that holds an array of rules that enable metrics at the
    #   object level. This parameter is optional, but if you choose to
    #   include it, you must also include at least one rule. By default, you
    #   can include up to five rules. You can also [request a quota
    #   increase][1] to allow up to 300 rules per policy.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas
    #   @return [Array<Types::MetricPolicyRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/MetricPolicy AWS API Documentation
    #
    class MetricPolicy < Struct.new(
      :container_level_metrics,
      :metric_policy_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # A setting that enables metrics at the object level. Each rule contains
    # an object group and an object group name. If the policy includes the
    # MetricPolicyRules parameter, you must include at least one rule. Each
    # metric policy can include up to five rules by default. You can also
    # [request a quota increase][1] to allow up to 300 rules per policy.
    #
    #
    #
    # [1]: https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas
    #
    # @note When making an API call, you may pass MetricPolicyRule
    #   data as a hash:
    #
    #       {
    #         object_group: "ObjectGroup", # required
    #         object_group_name: "ObjectGroupName", # required
    #       }
    #
    # @!attribute [rw] object_group
    #   A path or file name that defines which objects to include in the
    #   group. Wildcards (*) are acceptable.
    #   @return [String]
    #
    # @!attribute [rw] object_group_name
    #   A name that allows you to refer to the object group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/MetricPolicyRule AWS API Documentation
    #
    class MetricPolicyRule < Struct.new(
      :object_group,
      :object_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy that you specified in the request does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PolicyNotFoundException AWS API Documentation
    #
    class PolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #             allowed_origins: ["Origin"], # required
    #             allowed_methods: ["PUT"], # accepts PUT, GET, DELETE, HEAD
    #             allowed_headers: ["Header"], # required
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutCorsPolicyOutput AWS API Documentation
    #
    class PutCorsPolicyOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutLifecyclePolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #         lifecycle_policy: "LifecyclePolicy", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that you want to assign the object
    #   lifecycle policy to.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_policy
    #   The object lifecycle policy to apply to the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutLifecyclePolicyInput AWS API Documentation
    #
    class PutLifecyclePolicyInput < Struct.new(
      :container_name,
      :lifecycle_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutLifecyclePolicyOutput AWS API Documentation
    #
    class PutLifecyclePolicyOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutMetricPolicyInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #         metric_policy: { # required
    #           container_level_metrics: "ENABLED", # required, accepts ENABLED, DISABLED
    #           metric_policy_rules: [
    #             {
    #               object_group: "ObjectGroup", # required
    #               object_group_name: "ObjectGroupName", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that you want to add the metric policy to.
    #   @return [String]
    #
    # @!attribute [rw] metric_policy
    #   The metric policy that you want to associate with the container. In
    #   the policy, you must indicate whether you want MediaStore to send
    #   container-level metrics. You can also include up to five rules to
    #   define groups of objects that you want MediaStore to send
    #   object-level metrics for. If you include rules in the policy,
    #   construct each rule with both of the following:
    #
    #   * An object group that defines which objects to include in the
    #     group. The definition can be a path or a file name, but it can't
    #     have more than 900 characters. Valid characters are: a-z, A-Z,
    #     0-9, \_ (underscore), = (equal), : (colon), . (period), -
    #     (hyphen), ~ (tilde), / (forward slash), and * (asterisk).
    #     Wildcards (*) are acceptable.
    #
    #   * An object group name that allows you to refer to the object group.
    #     The name can't have more than 30 characters. Valid characters
    #     are: a-z, A-Z, 0-9, and \_ (underscore).
    #   @return [Types::MetricPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutMetricPolicyInput AWS API Documentation
    #
    class PutMetricPolicyInput < Struct.new(
      :container_name,
      :metric_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutMetricPolicyOutput AWS API Documentation
    #
    class PutMetricPolicyOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartAccessLoggingInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that you want to start access logging on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/StartAccessLoggingInput AWS API Documentation
    #
    class StartAccessLoggingInput < Struct.new(
      :container_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/StartAccessLoggingOutput AWS API Documentation
    #
    class StartAccessLoggingOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopAccessLoggingInput
    #   data as a hash:
    #
    #       {
    #         container_name: "ContainerName", # required
    #       }
    #
    # @!attribute [rw] container_name
    #   The name of the container that you want to stop access logging on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/StopAccessLoggingInput AWS API Documentation
    #
    class StopAccessLoggingInput < Struct.new(
      :container_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/StopAccessLoggingOutput AWS API Documentation
    #
    class StopAccessLoggingOutput < Aws::EmptyStructure; end

    # A collection of tags associated with a container. Each tag consists of
    # a key:value pair, which can be anything you define. Typically, the tag
    # key represents a category (such as "environment") and the tag value
    # represents a specific value within that category (such as "test,"
    # "development," or "production"). You can add up to 50 tags to each
    # container. For more information about tagging, including naming and
    # usage conventions, see [Tagging Resources in MediaStore][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   Part of the key:value pair that defines a tag. You can use a tag key
    #   to describe a category of information, such as "customer." Tag
    #   keys are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Part of the key:value pair that defines a tag. You can use a tag
    #   value to describe a specific value within a category, such as
    #   "companyA" or "companyB." Tag values are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource: "ContainerARN", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) for the container.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key:value pairs that you want to add to the container.
    #   You need to specify only the tags that you want to add or update.
    #   For example, suppose a container already has two tags
    #   (customer:CompanyA and priority:High). You want to change the
    #   priority tag and also add a third tag (type:Contract). For
    #   TagResource, you specify the following tags: priority:Medium,
    #   type:Contract. The result is that your container has three tags:
    #   customer:CompanyA, priority:Medium, and type:Contract.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource: "ContainerARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) for the container.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A comma-separated list of keys for tags that you want to remove from
    #   the container. For example, if your container has two tags
    #   (customer:CompanyA and priority:High) and you want to remove one of
    #   the tags (priority:High), you specify the key for the tag that you
    #   want to remove (priority).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

  end
end

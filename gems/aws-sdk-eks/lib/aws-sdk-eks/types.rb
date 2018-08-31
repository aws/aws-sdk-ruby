# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKS
  module Types

    # An object representing the `certificate-authority-data` for your
    # cluster.
    #
    # @!attribute [rw] data
    #   The base64 encoded certificate data required to communicate with
    #   your cluster. Add this to the `certificate-authority-data` section
    #   of the `kubeconfig` file for your cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :data)
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster.
    #
    # @!attribute [rw] name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch time stamp in seconds for when the cluster was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The Kubernetes server version for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint for your Kubernetes API server.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the Kubernetes control plane to make calls to AWS
    #   API operations on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC subnets and security groups used by the cluster control
    #   plane. Amazon EKS VPC resources have specific requirements to work
    #   properly with Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigResponse]
    #
    # @!attribute [rw] status
    #   The current status of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The `certificate-authority-data` for your cluster.
    #   @return [Types::Certificate]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version of your Amazon EKS cluster. For more
    #   information, see [Platform
    #   Versions](eks/latest/userguide/platform-versions.html) in the <i>
    #   <i>Amazon EKS User Guide</i> </i>.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :name,
      :arn,
      :created_at,
      :version,
      :endpoint,
      :role_arn,
      :resources_vpc_config,
      :status,
      :certificate_authority,
      :client_request_token,
      :platform_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         name: "ClusterName", # required
    #         version: "String",
    #         role_arn: "String", # required
    #         resources_vpc_config: { # required
    #           subnet_ids: ["String"], # required
    #           security_group_ids: ["String"],
    #         },
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The unique name to give to your cluster.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The desired Kubernetes version for your cluster. If you do not
    #   specify a value here, the latest version available in Amazon EKS is
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for Amazon EKS to make calls to other AWS API operations
    #   on your behalf. For more information, see [Amazon EKS Service IAM
    #   Role][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC subnets and security groups used by the cluster control
    #   plane. Amazon EKS VPC resources have specific requirements to work
    #   properly with Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*. You must specify at least two subnets.
    #   You may specify up to 5 security groups, but we recommend that you
    #   use a dedicated security group for your cluster control plane.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigRequest]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :name,
      :version,
      :role_arn,
      :resources_vpc_config,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your new cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the cluster to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of the cluster to delete.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the cluster to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterRequest AWS API Documentation
    #
    class DescribeClusterRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your specified cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeClusterResponse AWS API Documentation
    #
    class DescribeClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListClustersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of cluster results returned by `ListClusters` in
    #   paginated output. When this parameter is used, `ListClusters` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListClusters` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListClusters` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListClusters` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   A list of all of the clusters for your account in the specified
    #   Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListClusters` request.
    #   When the results of a `ListClusters` request exceed `maxResults`,
    #   this value can be used to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token)
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster VPC configuration
    # request.
    #
    # @note When making an API call, you may pass VpcConfigRequest
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["String"], # required
    #         security_group_ids: ["String"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates
    #   cross-account elastic network interfaces in these subnets to allow
    #   communication between your worker nodes and the Kubernetes control
    #   plane.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specify one or more security groups for the cross-account elastic
    #   network interfaces that Amazon EKS creates to use to allow
    #   communication between your worker nodes and the Kubernetes control
    #   plane.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigRequest AWS API Documentation
    #
    class VpcConfigRequest < Struct.new(
      :subnet_ids,
      :security_group_ids)
      include Aws::Structure
    end

    # An object representing an Amazon EKS cluster VPC configuration
    # response.
    #
    # @!attribute [rw] subnet_ids
    #   The subnets associated with your cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups associated with the cross-account elastic
    #   network interfaces that are used to allow communication between your
    #   worker nodes and the Kubernetes control plane.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The VPC associated with your cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigResponse AWS API Documentation
    #
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id)
      include Aws::Structure
    end

  end
end

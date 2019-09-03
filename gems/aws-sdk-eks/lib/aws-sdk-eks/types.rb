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
    #   The Base64-encoded certificate data required to communicate with
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

    # These errors are usually caused by a client action. Actions can
    # include using an action or resource on behalf of a user that doesn't
    # have permissions to use the action or resource or specifying an
    # identifier that is not valid.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :cluster_name,
      :message)
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
    #   The Unix epoch timestamp in seconds for when the cluster was
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
    #   The VPC configuration used by the cluster control plane. Amazon EKS
    #   VPC resources have specific requirements to work properly with
    #   Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigResponse]
    #
    # @!attribute [rw] logging
    #   The logging configuration for your cluster.
    #   @return [Types::Logging]
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
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version of your Amazon EKS cluster. For more
    #   information, see [Platform Versions][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html
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
      :logging,
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
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #           endpoint_public_access: false,
    #           endpoint_private_access: false,
    #         },
    #         logging: {
    #           cluster_logging: [
    #             {
    #               types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #               enabled: false,
    #             },
    #           ],
    #         },
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The unique name to give to your cluster.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The desired Kubernetes version for your cluster. If you don't
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
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   The VPC configuration used by the cluster control plane. Amazon EKS
    #   VPC resources have specific requirements to work properly with
    #   Kubernetes. For more information, see [Cluster VPC
    #   Considerations][1] and [Cluster Security Group Considerations][2] in
    #   the *Amazon EKS User Guide*. You must specify at least two subnets.
    #   You can specify up to five security groups, but we recommend that
    #   you use a dedicated security group for your cluster control plane.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
    #   @return [Types::VpcConfigRequest]
    #
    # @!attribute [rw] logging
    #   Enable or disable exporting the Kubernetes control plane logs for
    #   your cluster to CloudWatch Logs. By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs. For more information, see
    #   [Amazon EKS Cluster Control Plane Logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [Amazon CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #   @return [Types::Logging]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
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
      :logging,
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

    # @note When making an API call, you may pass DescribeUpdateRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         update_id: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] update_id
    #   The ID of the update to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdateRequest AWS API Documentation
    #
    class DescribeUpdateRequest < Struct.new(
      :name,
      :update_id)
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   The full description of the specified update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeUpdateResponse AWS API Documentation
    #
    class DescribeUpdateResponse < Struct.new(
      :update)
      include Aws::Structure
    end

    # An object representing an error when an asynchronous operation fails.
    #
    # @!attribute [rw] error_code
    #   A brief description of the error.
    #
    #   * **SubnetNotFound**\: We couldn't find one of the subnets
    #     associated with the cluster.
    #
    #   * **SecurityGroupNotFound**\: We couldn't find one of the security
    #     groups associated with the cluster.
    #
    #   * **EniLimitReached**\: You have reached the elastic network
    #     interface limit for your account.
    #
    #   * **IpNotAvailable**\: A subnet associated with the cluster doesn't
    #     have any free IP addresses.
    #
    #   * **AccessDenied**\: You don't have permissions to perform the
    #     specified operation.
    #
    #   * **OperationNotPermitted**\: The service role associated with the
    #     cluster doesn't have the required access permissions for Amazon
    #     EKS.
    #
    #   * **VpcIdNotFound**\: We couldn't find the VPC associated with the
    #     cluster.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A more complete description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   An optional field that contains the resource IDs associated with the
    #   error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message,
      :resource_ids)
      include Aws::Structure
    end

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :cluster_name,
      :message)
      include Aws::Structure
    end

    # The request is invalid given the state of the cluster. Check the state
    # of the cluster and the associated operations.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :cluster_name,
      :message)
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
    #   paginated output. When you use this parameter, `ListClusters`
    #   returns only `maxResults` results in a single page along with a
    #   `nextToken` response element. You can see the remaining results of
    #   the initial request by sending another `ListClusters` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If you don't use this parameter, `ListClusters` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListClusters` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used
    #   only to retrieve the next items in a list and not for other
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
    #   you can use this value to retrieve the next page of results. This
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

    # @note When making an API call, you may pass ListUpdatesRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to list updates for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListUpdates` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of update results returned by `ListUpdates` in
    #   paginated output. When you use this parameter, `ListUpdates` returns
    #   only `maxResults` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListUpdates` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If you
    #   don't use this parameter, `ListUpdates` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdatesRequest AWS API Documentation
    #
    class ListUpdatesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] update_ids
    #   A list of all the updates for the specified cluster and Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListUpdates` request.
    #   When the results of a `ListUpdates` request exceed `maxResults`, you
    #   can use this value to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListUpdatesResponse AWS API Documentation
    #
    class ListUpdatesResponse < Struct.new(
      :update_ids,
      :next_token)
      include Aws::Structure
    end

    # An object representing the enabled or disabled Kubernetes control
    # plane logs for your cluster.
    #
    # @note When making an API call, you may pass LogSetup
    #   data as a hash:
    #
    #       {
    #         types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] types
    #   The available cluster control plane log types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   If a log type is enabled, that log type exports its control plane
    #   logs to CloudWatch Logs. If a log type isn't enabled, that log type
    #   doesn't export its control plane logs. Each individual log type can
    #   be enabled or disabled independently.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/LogSetup AWS API Documentation
    #
    class LogSetup < Struct.new(
      :types,
      :enabled)
      include Aws::Structure
    end

    # An object representing the logging configuration for resources in your
    # cluster.
    #
    # @note When making an API call, you may pass Logging
    #   data as a hash:
    #
    #       {
    #         cluster_logging: [
    #           {
    #             types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #             enabled: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster_logging
    #   The cluster control plane logging configuration for your cluster.
    #   @return [Array<Types::LogSetup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Logging AWS API Documentation
    #
    class Logging < Struct.new(
      :cluster_logging)
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :cluster_name,
      :message)
      include Aws::Structure
    end

    # You have encountered a service limit on the specified resource.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :cluster_name,
      :message)
      include Aws::Structure
    end

    # The specified resource could not be found. You can view your available
    # clusters with ListClusters. Amazon EKS clusters are Region-specific.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :cluster_name,
      :message)
      include Aws::Structure
    end

    # These errors are usually caused by a server-side issue.
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :cluster_name,
      :message)
      include Aws::Structure
    end

    # The service is unavailable. Back off and retry the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      include Aws::Structure
    end

    # At least one of your specified cluster subnets is in an Availability
    # Zone that does not support Amazon EKS. The exception output specifies
    # the supported Availability Zones for your account, from which you can
    # choose subnets for your cluster.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The Amazon EKS cluster associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] valid_zones
    #   The supported Availability Zones for your account. Choose subnets in
    #   these Availability Zones for your cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UnsupportedAvailabilityZoneException AWS API Documentation
    #
    class UnsupportedAvailabilityZoneException < Struct.new(
      :message,
      :cluster_name,
      :valid_zones)
      include Aws::Structure
    end

    # An object representing an asynchronous update.
    #
    # @!attribute [rw] id
    #   A UUID that is used to track the update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the update.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the update.
    #   @return [String]
    #
    # @!attribute [rw] params
    #   A key-value map that contains the parameters associated with the
    #   update.
    #   @return [Array<Types::UpdateParam>]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the update was created.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   Any errors associated with a `Failed` update.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/Update AWS API Documentation
    #
    class Update < Struct.new(
      :id,
      :status,
      :type,
      :params,
      :created_at,
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateClusterConfigRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         resources_vpc_config: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #           endpoint_public_access: false,
    #           endpoint_private_access: false,
    #         },
    #         logging: {
    #           cluster_logging: [
    #             {
    #               types: ["api"], # accepts api, audit, authenticator, controllerManager, scheduler
    #               enabled: false,
    #             },
    #           ],
    #         },
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] resources_vpc_config
    #   An object representing the VPC configuration to use for an Amazon
    #   EKS cluster.
    #   @return [Types::VpcConfigRequest]
    #
    # @!attribute [rw] logging
    #   Enable or disable exporting the Kubernetes control plane logs for
    #   your cluster to CloudWatch Logs. By default, cluster control plane
    #   logs aren't exported to CloudWatch Logs. For more information, see
    #   [Amazon EKS Cluster Control Plane Logs][1] in the <i> <i>Amazon EKS
    #   User Guide</i> </i>.
    #
    #   <note markdown="1"> CloudWatch Logs ingestion, archive storage, and data scanning rates
    #   apply to exported control plane logs. For more information, see
    #   [Amazon CloudWatch Pricing][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    #   [2]: http://aws.amazon.com/cloudwatch/pricing/
    #   @return [Types::Logging]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfigRequest AWS API Documentation
    #
    class UpdateClusterConfigRequest < Struct.new(
      :name,
      :resources_vpc_config,
      :logging,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   An object representing an asynchronous update.
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterConfigResponse AWS API Documentation
    #
    class UpdateClusterConfigResponse < Struct.new(
      :update)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateClusterVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         version: "String", # required
    #         client_request_token: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon EKS cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The desired Kubernetes version following a successful update.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersionRequest AWS API Documentation
    #
    class UpdateClusterVersionRequest < Struct.new(
      :name,
      :version,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] update
    #   The full description of the specified update
    #   @return [Types::Update]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateClusterVersionResponse AWS API Documentation
    #
    class UpdateClusterVersionResponse < Struct.new(
      :update)
      include Aws::Structure
    end

    # An object representing the details of an update request.
    #
    # @!attribute [rw] type
    #   The keys associated with an update request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the keys submitted as part of an update request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/UpdateParam AWS API Documentation
    #
    class UpdateParam < Struct.new(
      :type,
      :value)
      include Aws::Structure
    end

    # An object representing the VPC configuration to use for an Amazon EKS
    # cluster.
    #
    # @note When making an API call, you may pass VpcConfigRequest
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #         endpoint_public_access: false,
    #         endpoint_private_access: false,
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
    #   plane. If you don't specify a security group, the default security
    #   group for your VPC is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_public_access
    #   Set this value to `false` to disable public access for your
    #   cluster's Kubernetes API server endpoint. If you disable public
    #   access, your cluster's Kubernetes API server can receive only
    #   requests from within the cluster VPC. The default value for this
    #   parameter is `true`, which enables public access for your Kubernetes
    #   API server. For more information, see [Amazon EKS Cluster Endpoint
    #   Access Control][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_private_access
    #   Set this value to `true` to enable private access for your
    #   cluster's Kubernetes API server endpoint. If you enable private
    #   access, Kubernetes API requests from within your cluster's VPC use
    #   the private VPC endpoint. The default value for this parameter is
    #   `false`, which disables private access for your Kubernetes API
    #   server. For more information, see [Amazon EKS Cluster Endpoint
    #   Access Control][1] in the <i> <i>Amazon EKS User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigRequest AWS API Documentation
    #
    class VpcConfigRequest < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :endpoint_public_access,
      :endpoint_private_access)
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
    # @!attribute [rw] endpoint_public_access
    #   This parameter indicates whether the Amazon EKS public API server
    #   endpoint is enabled. If the Amazon EKS public API server endpoint is
    #   disabled, your cluster's Kubernetes API server can receive only
    #   requests that originate from within the cluster VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_private_access
    #   This parameter indicates whether the Amazon EKS private API server
    #   endpoint is enabled. If the Amazon EKS private API server endpoint
    #   is enabled, Kubernetes API requests that originate from within your
    #   cluster's VPC use the private VPC endpoint instead of traversing
    #   the internet.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/VpcConfigResponse AWS API Documentation
    #
    class VpcConfigResponse < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_id,
      :endpoint_public_access,
      :endpoint_private_access)
      include Aws::Structure
    end

  end
end

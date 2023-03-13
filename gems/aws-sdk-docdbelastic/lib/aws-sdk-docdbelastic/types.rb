# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DocDBElastic
  module Types

    # An exception that occurs when there are not sufficient permissions to
    # perform an action.
    #
    # @!attribute [rw] message
    #   An error message explaining why access was denied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a specific Elastic DocumentDB cluster.
    #
    # @!attribute [rw] admin_user_name
    #   The name of the Elastic DocumentDB cluster administrator.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type for the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The URL used to connect to the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the Elastic DocumentDB cluster was created in
    #   Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier to use to encrypt the Elastic DocumentDB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #   @return [String]
    #
    # @!attribute [rw] shard_capacity
    #   The capacity of each shard in the Elastic DocumentDB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_count
    #   The number of shards in the Elastic DocumentDB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the Elastic DocumentDB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups associated with this cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :admin_user_name,
      :auth_type,
      :cluster_arn,
      :cluster_endpoint,
      :cluster_name,
      :create_time,
      :kms_key_id,
      :preferred_maintenance_window,
      :shard_capacity,
      :shard_count,
      :status,
      :subnet_ids,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Elastic DocumentDB cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ClusterInList AWS API Documentation
    #
    class ClusterInList < Struct.new(
      :cluster_arn,
      :cluster_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a specific Elastic DocumentDB snapshot.
    #
    # @!attribute [rw] admin_user_name
    #   The name of the Elastic DocumentDB cluster administrator.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_creation_time
    #   The time when the Elastic DocumentDB cluster was created in
    #   Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier to use to encrypt the Elastic DocumentDB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot
    #   @return [String]
    #
    # @!attribute [rw] snapshot_creation_time
    #   The time when the Elastic DocumentDB snapshot was created in
    #   Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the Elastic DocumentDB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Elastic DocumentDB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of the IDs of subnets associated with the DB cluster
    #   snapshot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of the IDs of the VPC security groups associated with the
    #   cluster snapshot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ClusterSnapshot AWS API Documentation
    #
    class ClusterSnapshot < Struct.new(
      :admin_user_name,
      :cluster_arn,
      :cluster_creation_time,
      :kms_key_id,
      :snapshot_arn,
      :snapshot_creation_time,
      :snapshot_name,
      :status,
      :subnet_ids,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Elastic DocumentDB snapshots.
    #
    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot
    #   @return [String]
    #
    # @!attribute [rw] snapshot_creation_time
    #   The time when the Elastic DocumentDB snapshot was created in
    #   Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the Elastic DocumentDB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Elastic DocumentDB snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ClusterSnapshotInList AWS API Documentation
    #
    class ClusterSnapshotInList < Struct.new(
      :cluster_arn,
      :snapshot_arn,
      :snapshot_creation_time,
      :snapshot_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an access conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource where there was an access conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource where there was an access conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_user_name
    #   The name of the Elastic DocumentDB cluster administrator.
    #
    #   *Constraints*:
    #
    #   * Must be from 1 to 63 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word.
    #   @return [String]
    #
    # @!attribute [rw] admin_user_password
    #   The password for the Elastic DocumentDB cluster administrator and
    #   can contain any printable ASCII characters.
    #
    #   *Constraints*:
    #
    #   * Must contain from 8 to 100 characters.
    #
    #   * Cannot contain a forward slash (/), double quote ("), or the
    #     "at" symbol (@).
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type for the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token for the Elastic DocumentDB cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the new Elastic DocumentDB cluster. This parameter is
    #   stored as a lowercase string.
    #
    #   *Constraints*:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   *Example*: `my-cluster`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier to use to encrypt the new Elastic DocumentDB
    #   cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   account that owns this KMS encryption key, you can use the KMS key
    #   alias instead of the ARN as the KMS encryption key.
    #
    #   If an encryption key is not specified, Elastic DocumentDB uses the
    #   default encryption key that KMS creates for your account. Your
    #   account has a different default encryption key for each Amazon
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   *Default*: a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   *Constraints*: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] shard_capacity
    #   The capacity of each shard in the new Elastic DocumentDB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_count
    #   The number of shards to create in the new Elastic DocumentDB
    #   cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the new Elastic DocumentDB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the new Elastic DocumentDB cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the new Elastic
    #   DocumentDB cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterInput AWS API Documentation
    #
    class CreateClusterInput < Struct.new(
      :admin_user_name,
      :admin_user_password,
      :auth_type,
      :client_token,
      :cluster_name,
      :kms_key_id,
      :preferred_maintenance_window,
      :shard_capacity,
      :shard_count,
      :subnet_ids,
      :tags,
      :vpc_security_group_ids)
      SENSITIVE = [:admin_user_password]
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The new Elastic DocumentDB cluster that has been created.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterOutput AWS API Documentation
    #
    class CreateClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster that the snapshot will be
    #   taken from.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the Elastic DocumentDB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the new Elastic DocumentDB snapshot.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterSnapshotInput AWS API Documentation
    #
    class CreateClusterSnapshotInput < Struct.new(
      :cluster_arn,
      :snapshot_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Returns information about the new Elastic DocumentDB snapshot.
    #   @return [Types::ClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterSnapshotOutput AWS API Documentation
    #
    class CreateClusterSnapshotOutput < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster that is to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterInput AWS API Documentation
    #
    class DeleteClusterInput < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about the newly deleted Elastic DocumentDB
    #   cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterOutput AWS API Documentation
    #
    class DeleteClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot that is to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterSnapshotInput AWS API Documentation
    #
    class DeleteClusterSnapshotInput < Struct.new(
      :snapshot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Returns information about the newly deleted Elastic DocumentDB
    #   snapshot.
    #   @return [Types::ClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterSnapshotOutput AWS API Documentation
    #
    class DeleteClusterSnapshotOutput < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterInput AWS API Documentation
    #
    class GetClusterInput < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about a specific Elastic DocumentDB cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterOutput AWS API Documentation
    #
    class GetClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterSnapshotInput AWS API Documentation
    #
    class GetClusterSnapshotInput < Struct.new(
      :snapshot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Returns information about a specific Elastic DocumentDB snapshot.
    #   @return [Types::ClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterSnapshotOutput AWS API Documentation
    #
    class GetClusterSnapshotOutput < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of entries to recieve in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken which is used the get the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClusterSnapshotsInput AWS API Documentation
    #
    class ListClusterSnapshotsInput < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The response will provide a nextToken if there is more data beyond
    #   the maxResults.
    #
    #   If there is no more data in the responce, the nextToken will not be
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of Elastic DocumentDB snapshots for a specified cluster.
    #   @return [Array<Types::ClusterSnapshotInList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClusterSnapshotsOutput AWS API Documentation
    #
    class ListClusterSnapshotsOutput < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of entries to recieve in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The nextToken which is used the get the next page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClustersInput AWS API Documentation
    #
    class ListClustersInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   A list of Elastic DocumentDB cluster.
    #   @return [Array<Types::ClusterInList>]
    #
    # @!attribute [rw] next_token
    #   The response will provide a nextToken if there is more data beyond
    #   the maxResults.
    #
    #   If there is no more data in the responce, the nextToken will not be
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClustersOutput AWS API Documentation
    #
    class ListClustersOutput < Struct.new(
      :clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The arn of the Elastic DocumentDB resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags for the specified Elastic DocumentDB resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be located.
    #
    # @!attribute [rw] message
    #   An error message describing the failure.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that could not be located.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier to use to encrypt the new Elastic DocumentDB
    #   cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   account that owns this KMS encryption key, you can use the KMS key
    #   alias instead of the ARN as the KMS encryption key.
    #
    #   If an encryption key is not specified here, Elastic DocumentDB uses
    #   the default encryption key that KMS creates for your account. Your
    #   account has a different default encryption key for each Amazon
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The arn of the Elastic DocumentDB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the Elastic DocumentDB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of the tag names to be assigned to the restored DB cluster,
    #   in the form of an array of key-value pairs in which the key is the
    #   tag name and the value is the key value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the Elastic
    #   DocumentDB cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/RestoreClusterFromSnapshotInput AWS API Documentation
    #
    class RestoreClusterFromSnapshotInput < Struct.new(
      :cluster_name,
      :kms_key_id,
      :snapshot_arn,
      :subnet_ids,
      :tags,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about a the restored Elastic DocumentDB cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/RestoreClusterFromSnapshotOutput AWS API Documentation
    #
    class RestoreClusterFromSnapshotOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service quota for the action was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The arn of the Elastic DocumentDB resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Elastic DocumentDB resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # ThrottlingException will be thrown when request was denied due to
    # request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The arn of the Elastic DocumentDB resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to be removed from the Elastic DocumentDB resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] admin_user_password
    #   The password for the Elastic DocumentDB cluster administrator. This
    #   password can contain any printable ASCII character except forward
    #   slash (/), double quote ("), or the "at" symbol (@).
    #
    #   *Constraints*: Must contain from 8 to 100 characters.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type for the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token for the Elastic DocumentDB cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The arn of the Elastic DocumentDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   *Default*: a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   *Constraints*: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] shard_capacity
    #   The capacity of each shard in the Elastic DocumentDB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_count
    #   The number of shards to create in the Elastic DocumentDB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_ids
    #   The number of shards to create in the Elastic DocumentDB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the new Elastic
    #   DocumentDB cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UpdateClusterInput AWS API Documentation
    #
    class UpdateClusterInput < Struct.new(
      :admin_user_password,
      :auth_type,
      :client_token,
      :cluster_arn,
      :preferred_maintenance_window,
      :shard_capacity,
      :shard_count,
      :subnet_ids,
      :vpc_security_group_ids)
      SENSITIVE = [:admin_user_password]
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about the updated Elastic DocumentDB cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UpdateClusterOutput AWS API Documentation
    #
    class UpdateClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure defining a validation exception.
    #
    # @!attribute [rw] field_list
    #   A list of the fields in which the validation exception occurred.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   An error message describing the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the validation exception occurred (one of
    #   `unknownOperation`, `cannotParse`, `fieldValidationFailed`, or
    #   `other`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specific field in which a given validation exception occurred.
    #
    # @!attribute [rw] message
    #   An error message describing the validation exception in this field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field where the validation exception occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DSQL
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the properties of a cluster.
    #
    # @!attribute [rw] identifier
    #   The ID of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ClusterSummary AWS API Documentation
    #
    class ClusterSummary < Struct.new(
      :identifier,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The submitted action has conflicts.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Resource Id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource Type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deletion_protection_enabled
    #   If enabled, you can't delete your cluster. You must first disable
    #   this property before you can delete your cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_encryption_key
    #   The KMS key that encrypts and protects the data on your cluster. You
    #   can specify the ARN, ID, or alias of an existing key or have Amazon
    #   Web Services create a default key for you.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key and value pairs to use to tag your cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] multi_region_properties
    #   The configuration settings when creating a multi-Region cluster,
    #   including the witness region and linked cluster properties.
    #   @return [Types::MultiRegionProperties]
    #
    # @!attribute [rw] policy
    #   An optional resource-based policy document in JSON format that
    #   defines access permissions for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] bypass_policy_lockout_safety_check
    #   An optional field that controls whether to bypass the lockout
    #   prevention check. When set to true, this parameter allows you to
    #   apply a policy that might lock you out of the cluster. Use with
    #   caution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/CreateClusterInput AWS API Documentation
    #
    class CreateClusterInput < Struct.new(
      :deletion_protection_enabled,
      :kms_encryption_key,
      :tags,
      :client_token,
      :multi_region_properties,
      :policy,
      :bypass_policy_lockout_safety_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of a created cluster.
    #
    # @!attribute [rw] identifier
    #   The ID of the created cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the created cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time of when created the cluster.
    #   @return [Time]
    #
    # @!attribute [rw] multi_region_properties
    #   The multi-Region cluster configuration details that were set during
    #   cluster creation
    #   @return [Types::MultiRegionProperties]
    #
    # @!attribute [rw] encryption_details
    #   The encryption configuration for the cluster that was specified
    #   during the creation process, including the KMS key identifier and
    #   encryption state.
    #   @return [Types::EncryptionDetails]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Whether deletion protection is enabled on this cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint for the created cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/CreateClusterOutput AWS API Documentation
    #
    class CreateClusterOutput < Struct.new(
      :identifier,
      :arn,
      :status,
      :creation_time,
      :multi_region_properties,
      :encryption_details,
      :deletion_protection_enabled,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID of the cluster to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully. The subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/DeleteClusterInput AWS API Documentation
    #
    class DeleteClusterInput < Struct.new(
      :identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output from a deleted cluster.
    #
    # @!attribute [rw] identifier
    #   The ID of the deleted cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the deleted cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time of when the cluster was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/DeleteClusterOutput AWS API Documentation
    #
    class DeleteClusterOutput < Struct.new(
      :identifier,
      :arn,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] expected_policy_version
    #   The expected version of the policy to delete. This parameter ensures
    #   that you're deleting the correct version of the policy and helps
    #   prevent accidental deletions.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token so a request is only processed once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/DeleteClusterPolicyInput AWS API Documentation
    #
    class DeleteClusterPolicyInput < Struct.new(
      :identifier,
      :expected_policy_version,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_version
    #   The version of the policy that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/DeleteClusterPolicyOutput AWS API Documentation
    #
    class DeleteClusterPolicyOutput < Struct.new(
      :policy_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details about encryption for the cluster including the
    # KMS key ARN, encryption type, and encryption status.
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption that protects the data on your cluster.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key that encrypts data in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] encryption_status
    #   The status of encryption for the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/EncryptionDetails AWS API Documentation
    #
    class EncryptionDetails < Struct.new(
      :encryption_type,
      :kms_key_arn,
      :encryption_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID of the cluster to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetClusterInput AWS API Documentation
    #
    class GetClusterInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of a cluster.
    #
    # @!attribute [rw] identifier
    #   The ID of the retrieved cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the retrieved cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retrieved cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time of when the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Whether deletion protection is enabled in this cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] multi_region_properties
    #   Returns the current multi-Region cluster configuration, including
    #   witness region and linked cluster information.
    #   @return [Types::MultiRegionProperties]
    #
    # @!attribute [rw] tags
    #   Map of tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_details
    #   The current encryption configuration details for the cluster.
    #   @return [Types::EncryptionDetails]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint for the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetClusterOutput AWS API Documentation
    #
    class GetClusterOutput < Struct.new(
      :identifier,
      :arn,
      :status,
      :creation_time,
      :deletion_protection_enabled,
      :multi_region_properties,
      :tags,
      :encryption_details,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID of the cluster to retrieve the policy from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetClusterPolicyInput AWS API Documentation
    #
    class GetClusterPolicyInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource-based policy document attached to the cluster, returned
    #   as a JSON string.
    #   @return [String]
    #
    # @!attribute [rw] policy_version
    #   The version of the policy document. This version number is
    #   incremented each time the policy is updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetClusterPolicyOutput AWS API Documentation
    #
    class GetClusterPolicyOutput < Struct.new(
      :policy,
      :policy_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID of the cluster to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetVpcEndpointServiceNameInput AWS API Documentation
    #
    class GetVpcEndpointServiceNameInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_name
    #   The VPC endpoint service name.
    #   @return [String]
    #
    # @!attribute [rw] cluster_vpc_endpoint
    #   The VPC connection endpoint for the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/GetVpcEndpointServiceNameOutput AWS API Documentation
    #
    class GetVpcEndpointServiceNameOutput < Struct.new(
      :service_name,
      :cluster_vpc_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Retry after seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use nextToken to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial ListClusters operation returns a nextToken, you can
    #   include the returned nextToken in following ListClusters operations,
    #   which returns results in the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ListClustersInput AWS API Documentation
    #
    class ListClustersInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. The
    #   value of nextToken is a unique pagination token for each page. To
    #   retrieve the next page, make the call again using the returned
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   An array of the returned clusters.
    #   @return [Array<Types::ClusterSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ListClustersOutput AWS API Documentation
    #
    class ListClustersOutput < Struct.new(
      :next_token,
      :clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to list the tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of key and value pairs that you used to tag your resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the structure for multi-Region cluster configurations,
    # containing the witness region and linked cluster settings.
    #
    # @!attribute [rw] witness_region
    #   The Region that serves as the witness region for a multi-Region
    #   cluster. The witness Region helps maintain cluster consistency and
    #   quorum.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   The set of peered clusters that form the multi-Region cluster
    #   configuration. Each peered cluster represents a database instance in
    #   a different Region.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/MultiRegionProperties AWS API Documentation
    #
    class MultiRegionProperties < Struct.new(
      :witness_region,
      :clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource-based policy document to attach to the cluster. This
    #   should be a valid JSON policy document that defines permissions and
    #   conditions.
    #   @return [String]
    #
    # @!attribute [rw] bypass_policy_lockout_safety_check
    #   A flag that allows you to bypass the policy lockout safety check.
    #   When set to true, this parameter allows you to apply a policy that
    #   might lock you out of the cluster. Use with caution.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_policy_version
    #   The expected version of the current policy. This parameter ensures
    #   that you're updating the correct version of the policy and helps
    #   prevent concurrent modification conflicts.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token so a request is only processed once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/PutClusterPolicyInput AWS API Documentation
    #
    class PutClusterPolicyInput < Struct.new(
      :identifier,
      :policy,
      :bypass_policy_lockout_safety_check,
      :expected_policy_version,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_version
    #   The version of the policy after it has been updated or created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/PutClusterPolicyOutput AWS API Documentation
    #
    class PutClusterPolicyOutput < Struct.new(
      :policy_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service limit was exceeded.
    #
    # @!attribute [rw] message
    #   The service exception for exceeding a quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID exceeds a quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type exceeds a quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The request exceeds a service quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The service exceeds a quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key and value pairs to use to tag your resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   The message that the request was denied due to request throttling.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The request exceeds a service quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The request exceeds a request rate quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The request exceeds a request rate quota. Retry after seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource from which to remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The array of keys of the tags that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ID of the cluster you want to update.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   Specifies whether to enable deletion protection in your cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_encryption_key
    #   The KMS key that encrypts and protects the data on your cluster. You
    #   can specify the ARN, ID, or alias of an existing key or have Amazon
    #   Web Services create a default key for you.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully. The subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] multi_region_properties
    #   The new multi-Region cluster configuration settings to be applied
    #   during an update operation.
    #   @return [Types::MultiRegionProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/UpdateClusterInput AWS API Documentation
    #
    class UpdateClusterInput < Struct.new(
      :identifier,
      :deletion_protection_enabled,
      :kms_encryption_key,
      :client_token,
      :multi_region_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the cluster after it has been updated.
    #
    # @!attribute [rw] identifier
    #   The ID of the cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the updated cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the updated cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time of when the cluster was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/UpdateClusterOutput AWS API Documentation
    #
    class UpdateClusterOutput < Struct.new(
      :identifier,
      :arn,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that didn't validate.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an validation error.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why this field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dsql-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


# frozen_string_literal: true

# This is generated code!

module Aws::DSQL
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the properties of a cluster.</p>
    # @!attribute identifier
    #   <p>The ID of the cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the cluster.</p>
    #   @return [String]
    class ClusterSummary < Struct.new(
      nil,
      :identifier,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The submitted action has conflicts.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Resource Id</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource Type</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_protection_enabled
    #   <p>If enabled, you can't delete your cluster. You must first disable this property before
    #            you can delete your cluster.</p>
    #   @return [Boolean]
    # @!attribute kms_encryption_key
    #   <p>The KMS key that encrypts and protects the data on your cluster. You can specify the ARN, ID, or alias of an existing key or have Amazon Web Services create a default key for you.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of key and value pairs to use to tag your cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, the subsequent retries with the
    #            same client token return the result from the original successful request and they have no
    #            additional effect.</p>
    #            <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates
    #            one.</p>
    #   @return [String]
    # @!attribute multi_region_properties
    #   <p>The configuration settings when creating a multi-Region cluster, including the witness region and linked cluster properties.</p>
    #   @return [Types::MultiRegionProperties]
    class CreateClusterInput < Struct.new(
      nil,
      :deletion_protection_enabled,
      :kms_encryption_key,
      :tags,
      :client_token,
      :multi_region_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of a created cluster.</p>
    # @!attribute identifier
    #   <p>The ID of the created cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the created cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the created cluster.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time of when  created the cluster.</p>
    #   @return [Time]
    # @!attribute multi_region_properties
    #   <p>The multi-Region cluster configuration details that were set during cluster creation</p>
    #   @return [Types::MultiRegionProperties]
    # @!attribute encryption_details
    #   <p>The encryption configuration for the cluster that was specified during the creation process, including the KMS key identifier and encryption state.</p>
    #   @return [Types::EncryptionDetails]
    # @!attribute deletion_protection_enabled
    #   <p>Whether deletion protection is enabled on this cluster.</p>
    #   @return [Boolean]
    class CreateClusterOutput < Struct.new(
      nil,
      :identifier,
      :arn,
      :status,
      :creation_time,
      :multi_region_properties,
      :encryption_details,
      :deletion_protection_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the cluster to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully. The subsequent retries with the
    #            same client token return the result from the original successful request and they have no
    #            additional effect.</p>
    #            <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates
    #            one.</p>
    #   @return [String]
    class DeleteClusterInput < Struct.new(
      nil,
      :identifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from a deleted cluster.</p>
    # @!attribute identifier
    #   <p>The ID of the deleted cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the deleted cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the cluster.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time of when the cluster was created.</p>
    #   @return [Time]
    class DeleteClusterOutput < Struct.new(
      nil,
      :identifier,
      :arn,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details about encryption for the cluster including the KMS key ARN, encryption type, and encryption status.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption that protects the data on your cluster.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key that encrypts data in the cluster.</p>
    #   @return [String]
    # @!attribute encryption_status
    #   <p>The status of encryption for the cluster.</p>
    #   @return [String]
    class EncryptionDetails < Struct.new(
      nil,
      :encryption_type,
      :kms_key_arn,
      :encryption_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the cluster to retrieve.</p>
    #   @return [String]
    class GetClusterInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of a cluster.</p>
    # @!attribute identifier
    #   <p>The ID of the retrieved cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the retrieved cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the retrieved cluster.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time of when the cluster was created.</p>
    #   @return [Time]
    # @!attribute deletion_protection_enabled
    #   <p>Whether deletion protection is enabled in this cluster.</p>
    #   @return [Boolean]
    # @!attribute multi_region_properties
    #   <p>Returns the current multi-Region cluster configuration, including witness region and linked cluster information.</p>
    #   @return [Types::MultiRegionProperties]
    # @!attribute tags
    #   <p>Map of tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_details
    #   <p>The current encryption configuration details for the cluster.</p>
    #   @return [Types::EncryptionDetails]
    class GetClusterOutput < Struct.new(
      nil,
      :identifier,
      :arn,
      :status,
      :creation_time,
      :deletion_protection_enabled,
      :multi_region_properties,
      :tags,
      :encryption_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the cluster to retrieve.</p>
    #   @return [String]
    class GetVpcEndpointServiceNameInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The VPC endpoint service name.</p>
    #   @return [String]
    class GetVpcEndpointServiceNameOutput < Struct.new(
      nil,
      :service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #          failure.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Retry after seconds.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #            use nextToken to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial ListClusters operation returns a nextToken, you can include the returned
    #            nextToken in following ListClusters operations, which returns results in the next
    #            page.</p>
    #   @return [String]
    class ListClustersInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. The value of nextToken is a
    #            unique pagination token for each page. To retrieve the next page, make the call again using
    #            the returned token.</p>
    #   @return [String]
    # @!attribute clusters
    #   <p>An array of the returned clusters.</p>
    #   @return [Array<Types::ClusterSummary>]
    class ListClustersOutput < Struct.new(
      nil,
      :next_token,
      :clusters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to list the tags.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of key and value pairs that you used to tag your resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the structure for multi-Region cluster configurations, containing the witness region and linked cluster settings.</p>
    # @!attribute witness_region
    #   <p>The  that serves as the witness region for a multi-Region cluster. The witness region helps maintain cluster consistency and quorum.</p>
    #   @return [String]
    # @!attribute clusters
    #   <p>The set of linked clusters that form the multi-Region cluster configuration. Each linked cluster represents a database instance in a different  Region.</p>
    #   @return [Array<String>]
    class MultiRegionProperties < Struct.new(
      nil,
      :witness_region,
      :clusters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID could not be found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service limit was exceeded.</p>
    # @!attribute message
    #   <p>The service exception for exceeding a quota.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID exceeds a quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type exceeds a quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The request exceeds a service quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The service exceeds a quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of key and value pairs to use to tag your resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   <p>The message that the request was denied due to request throttling.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The request exceeds a service quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The request exceeds a request rate quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The request exceeds a request rate quota. Retry after seconds.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource from which to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The array of keys of the tags that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID of the cluster you want to update.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Specifies whether to enable deletion protection in your cluster.</p>
    #   @return [Boolean]
    # @!attribute kms_encryption_key
    #   <p>The KMS key that encrypts and protects the data on your cluster. You can specify the ARN, ID, or alias of an existing key or have Amazon Web Services create a default key for you.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully. The subsequent retries with the
    #            same client token return the result from the original successful request and they have no
    #            additional effect.</p>
    #            <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates
    #            one.</p>
    #   @return [String]
    # @!attribute multi_region_properties
    #   <p>The new multi-Region cluster configuration settings to be applied during an update operation.</p>
    #   @return [Types::MultiRegionProperties]
    class UpdateClusterInput < Struct.new(
      nil,
      :identifier,
      :deletion_protection_enabled,
      :kms_encryption_key,
      :client_token,
      :multi_region_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the cluster after it has been updated.</p>
    # @!attribute identifier
    #   <p>The ID of the cluster to update.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the updated cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the updated cluster.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time of when the cluster was created.</p>
    #   @return [Time]
    class UpdateClusterOutput < Struct.new(
      nil,
      :identifier,
      :arn,
      :status,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation exception.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that didn't validate.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an validation
    #          error.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why this field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
